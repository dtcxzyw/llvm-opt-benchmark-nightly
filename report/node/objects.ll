Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/objects?download=true
inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN2v88internal6Object16ConvertToNumericINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntEEEEE9MaybeTypeEPNS0_7IsolateES5_:bb.a

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp ult i16 %i.n, 128
  br i1 %i.o, label %bb.b, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.p = tail call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.037.0) #27
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.q = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 131
  br i1 %i.u, label %bb.c, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.w, ptr %.0.i.i, align 8
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 128
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 209, ptr null, i64 0) #27
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.am, ptr noundef null) #27 ; 0 uses
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 129
  br i1 %i.as, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.at = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.037.0, i32 noundef 1) #27 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, !llvm.loop !65

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %bb.b
  %.sroa.042.0 = phi ptr [ null, %bb.e ], [ %i.p, %bb.b ], [ %.0.i.i, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ], [ %.sroa.037.0, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ null, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.037.0, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.037.0, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object16ConvertToNumericINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.a
  %.sroa.039.0 = phi ptr [ %1, %bb.a ], [ %i.at, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 6 uses
  %i.a = load i64, ptr %.sroa.039.0, align 8      ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp ult i16 %i.n, 128
  br i1 %i.o, label %bb.b, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.p = tail call ptr @_ZN2v88internal6String8ToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.039.0) #27
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.q = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 131
  br i1 %i.u, label %bb.c, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.w, ptr %.0.i.i, align 8
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 128
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 209, ptr null, i64 0) #27
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.am, ptr noundef null) #27 ; 0 uses
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 129
  br i1 %i.as, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.at = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.039.0, i32 noundef 1) #27 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %bb.b
  %.sroa.044.0 = phi ptr [ null, %bb.e ], [ %i.p, %bb.b ], [ %.0.i.i, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ], [ %.sroa.039.0, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ], [ null, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.039.0, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.039.0, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.g, align 1 ; 6 uses
  %or.cond.i = fcmp ueq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.i = fcmp ueq double %i.h, +inf
  br i1 %i.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = fcmp ogt double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i)
  %i.m = fadd double %i.l, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.0.i = phi double [ 0.000000e+00, %bb.c ], [ %.0.copyload.i.i.i.i, %bb.d ], [ %i.k, %bb.f ], [ %i.m, %bb.g ] ; 5 uses
  %i.n = fcmp oge double %.0.i, f0xC1E0000000000000
  %i.o = fcmp ole double %.0.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.p = fptosi double %.0.i to i32               ; 2 uses
  %i.q = sitofp i32 %i.p to double
  %i.r = fcmp oeq double %.0.i, %i.q
  br i1 %i.r, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.i

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.s = sext i32 %i.p to i64
  %i.t = shl nsw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.h:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.h, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.z, %bb.h ], [ %i.v, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.t, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

bb.i:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.ad = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store double %.0.i, ptr %i.ah, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.b, %bb.a
  %.sroa.013.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ad, %bb.i ]
  ret ptr %.sroa.013.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = fcmp oge double %1, f0xC1E0000000000000
  %i.b = fcmp ole double %1, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  br i1 %i.c, label %bb.d, label %_ZN2v88internal11IsSmiDoubleEd.exit.i

_ZN2v88internal11IsSmiDoubleEd.exit.i:            ; preds = %bb.b
  %i.d = fptosi double %1 to i32                  ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %1, %i.e
  br i1 %i.f, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit, label %bb.d

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit:     ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i
  %i.g = sext i32 %i.d to i64
  %i.h = shl nsw i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !52

bb.c:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i, %bb.b, %bb.a
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %1, ptr %i.v, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.r, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %i.c, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.h, align 1 ; 6 uses
  %or.cond.i = fcmp ueq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.j = fcmp ueq double %i.i, +inf
  br i1 %i.j, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp ogt double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i)
  %i.n = fadd double %i.m, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.0.i9 = phi double [ 0.000000e+00, %bb.c ], [ %.0.copyload.i.i.i.i, %bb.d ], [ %i.l, %bb.f ], [ %i.n, %bb.g ] ; 5 uses
  %i.o = fcmp oge double %.0.i9, f0xC1E0000000000000
  %i.p = fcmp ole double %.0.i9, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.q = fptosi double %.0.i9 to i32              ; 2 uses
  %i.r = sitofp i32 %i.q to double
  %i.s = fcmp oeq double %.0.i9, %i.r
  br i1 %i.s, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.i

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.t = sext i32 %i.q to i64
  %i.u = shl nsw i64 %i.t, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.h, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.h:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.h, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.w, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.0.i.i.i to i64
  %i.ac = add i64 %i.ab, 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.v, align 8
  store i64 %i.u, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

bb.i:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.ae = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %.0.i9, ptr %i.ai, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit: ; preds = %bb.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.b, %bb.a
  %.sroa.014.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ae, %bb.i ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object14ConvertToInt32INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.g, align 1 ; 5 uses
  %i.h = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.i = fcmp one double %i.h, +inf
  %i.j = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.j, %i.i
  %i.k = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.k, %or.cond.i
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fptosi double %.0.copyload.i.i.i.i to i32
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

bb.e:                                             ; preds = %bb.c
  %i.m = bitcast double %.0.copyload.i.i.i.i to i64 ; 5 uses
  %i.n = and i64 %i.m, 9218868437227405312
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.p = lshr i64 %i.m, 52
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 2047
  %i.s = add nsw i32 %i.r, -1075
  %.0.i.i = select i1 %i.o, i32 -1074, i32 %i.s   ; 5 uses
  %i.t = icmp slt i32 %.0.i.i, 0
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %.0.i.i, -52
  br i1 %i.u, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.m, 4503599627370495           ; 2 uses
  %i.w = or disjoint i64 %i.v, 4503599627370496
  %.0.i17.i = select i1 %i.o, i64 %i.v, i64 %i.w
  %i.x = sub nsw i32 0, %.0.i.i
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %.0.i17.i, %i.y
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.aa = icmp samesign ugt i32 %.0.i.i, 31
  br i1 %i.aa, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = zext nneg i32 %.0.i.i to i64
  %i.ac = shl i64 %i.m, %i.ab
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.g ], [ %i.ac, %bb.i ]
  %i.ad = trunc i64 %.0.i to i32                  ; 2 uses
  %i.ae = sub i32 0, %i.ad
  %i.af = icmp slt i64 %i.m, 0
  %i.ag = select i1 %i.af, i32 %i.ae, i32 %i.ad
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

_ZN2v88internal13DoubleToInt32Ed.exit:            ; preds = %bb.d, %bb.f, %bb.h, %bb.j
  %.1.i = phi i32 [ %i.l, %bb.d ], [ 0, %bb.f ], [ %i.ag, %bb.j ], [ 0, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, !prof !52

bb.k:                                             ; preds = %_ZN2v88internal13DoubleToInt32Ed.exit
  %i.am = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit: ; preds = %_ZN2v88internal13DoubleToInt32Ed.exit, %bb.k
  %.0.i.i.i = phi ptr [ %i.am, %bb.k ], [ %i.ai, %_ZN2v88internal13DoubleToInt32Ed.exit ] ; 3 uses
  %i.an = sext i32 %.1.i to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = ptrtoint ptr %.0.i.i.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.ah, align 8
  store i64 %i.ao, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.b, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit
  %.sroa.013.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.a, %bb.b ]
  ret ptr %.sroa.013.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object14ConvertToInt32INS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %i.c, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.h, align 1 ; 5 uses
  %i.i = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.j = fcmp one double %i.i, +inf
  %i.k = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.k, %i.j
  %i.l = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.l, %or.cond.i
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = fptosi double %.0.copyload.i.i.i.i to i32
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

bb.e:                                             ; preds = %bb.c
  %i.n = bitcast double %.0.copyload.i.i.i.i to i64 ; 5 uses
  %i.o = and i64 %i.n, 9218868437227405312
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.q = lshr i64 %i.n, 52
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 2047
  %i.t = add nsw i32 %i.s, -1075
  %.0.i.i = select i1 %i.p, i32 -1074, i32 %i.t   ; 5 uses
  %i.u = icmp slt i32 %.0.i.i, 0
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = icmp samesign ult i32 %.0.i.i, -52
  br i1 %i.v, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = and i64 %i.n, 4503599627370495           ; 2 uses
  %i.x = or disjoint i64 %i.w, 4503599627370496
  %.0.i17.i = select i1 %i.p, i64 %i.w, i64 %i.x
  %i.y = sub nsw i32 0, %.0.i.i
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %.0.i17.i, %i.z
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ab = icmp samesign ugt i32 %.0.i.i, 31
  br i1 %i.ab, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %.0.i.i to i64
  %i.ad = shl i64 %i.n, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0.i9 = phi i64 [ %i.aa, %bb.g ], [ %i.ad, %bb.i ]
  %i.ae = trunc i64 %.0.i9 to i32                 ; 2 uses
  %i.af = sub i32 0, %i.ae
  %i.ag = icmp slt i64 %i.n, 0
  %i.ah = select i1 %i.ag, i32 %i.af, i32 %i.ae
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

_ZN2v88internal13DoubleToInt32Ed.exit:            ; preds = %bb.d, %bb.f, %bb.h, %bb.j
  %.1.i = phi i32 [ %i.m, %bb.d ], [ 0, %bb.f ], [ %i.ah, %bb.j ], [ 0, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, !prof !52

bb.k:                                             ; preds = %_ZN2v88internal13DoubleToInt32Ed.exit
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit: ; preds = %_ZN2v88internal13DoubleToInt32Ed.exit, %bb.k
  %.0.i.i.i = phi ptr [ %i.an, %bb.k ], [ %i.aj, %_ZN2v88internal13DoubleToInt32Ed.exit ] ; 3 uses
  %i.ao = sext i32 %.1.i to i64
  %i.ap = shl nsw i64 %i.ao, 32
  %i.aq = ptrtoint ptr %.0.i.i.i to i64
  %i.ar = add i64 %i.aq, 8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %i.ai, align 8
  store i64 %i.ap, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit: ; preds = %bb.b, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit
  %.sroa.014.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.a, %bb.b ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object15ConvertToUint32INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = icmp slt i32 %i.f, 1
  %i.h = and i64 %i.b, -4294967296
  %.sroa.0.0.i = select i1 %i.g, i64 0, i64 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %.sroa.0.0.i, ptr %.0.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.r = add nsw i64 %i.b, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.t, align 1 ; 5 uses
  %i.u = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.v = fcmp one double %i.u, +inf
  %i.w = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.w, %i.v
  %i.x = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i = and i1 %i.x, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = fptosi double %.0.copyload.i.i.i.i to i32
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

bb.g:                                             ; preds = %bb.e
  %i.z = bitcast double %.0.copyload.i.i.i.i to i64 ; 5 uses
  %i.aa = and i64 %i.z, 9218868437227405312
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = lshr i64 %i.z, 52
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 2047
  %i.af = add nsw i32 %i.ae, -1075
  %.0.i.i.i = select i1 %i.ab, i32 -1074, i32 %i.af ; 5 uses
  %i.ag = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp samesign ult i32 %.0.i.i.i, -52
  br i1 %i.ah, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = and i64 %i.z, 4503599627370495          ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 4503599627370496
  %.0.i17.i.i = select i1 %i.ab, i64 %i.ai, i64 %i.aj
  %i.ak = sub nsw i32 0, %.0.i.i.i
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr i64 %.0.i17.i.i, %i.al
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.an = icmp samesign ugt i32 %.0.i.i.i, 31
  br i1 %i.an, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = zext nneg i32 %.0.i.i.i to i64
  %i.ap = shl i64 %i.z, %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i = phi i64 [ %i.am, %bb.i ], [ %i.ap, %bb.k ]
  %i.aq = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.ar = sub i32 0, %i.aq
  %i.as = icmp slt i64 %i.z, 0
  %i.at = select i1 %i.as, i32 %i.ar, i32 %i.aq
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

_ZN2v88internal14DoubleToUint32Ed.exit:           ; preds = %bb.f, %bb.l
  %.1.i.i = phi i32 [ %i.y, %bb.f ], [ %i.at, %bb.l ] ; 3 uses
  %i.au = icmp sgt i32 %.1.i.i, -1
  br i1 %i.au, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.n

_ZN2v88internal14DoubleToUint32Ed.exit.thread:    ; preds = %bb.j, %bb.h, %_ZN2v88internal14DoubleToUint32Ed.exit
  %.1.i.i35 = phi i32 [ %.1.i.i, %_ZN2v88internal14DoubleToUint32Ed.exit ], [ 0, %bb.h ], [ 0, %bb.j ]
  %i.av = zext nneg i32 %.1.i.i35 to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.m, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.m:                                             ; preds = %_ZN2v88internal14DoubleToUint32Ed.exit.thread
  %i.bc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.m, %_ZN2v88internal14DoubleToUint32Ed.exit.thread
  %.0.i.i.i12 = phi ptr [ %i.bc, %bb.m ], [ %i.ay, %_ZN2v88internal14DoubleToUint32Ed.exit.thread ] ; 3 uses
  %i.bd = ptrtoint ptr %.0.i.i.i12 to i64
  %i.be = add i64 %i.bd, 8
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %i.bf, ptr %i.ax, align 8
  store i64 %i.aw, ptr %.0.i.i.i12, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

bb.n:                                             ; preds = %_ZN2v88internal14DoubleToUint32Ed.exit
  %i.bg = uitofp i32 %.1.i.i to double
  %i.bh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store double %i.bg, ptr %i.bl, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.n, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.a, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.019.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %bb.a ], [ %.0.i.i.i12, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bh, %bb.n ]
  ret ptr %.sroa.019.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = shl nuw nsw i64 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = ptrtoint ptr %.0.i.i to i64
  %i.k = add i64 %i.j, 8
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.d, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = uitofp i32 %1 to double
  %i.n = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store double %i.m, ptr %i.r, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.n, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object15ConvertToUint32INS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 4 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.c, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = icmp slt i32 %i.g, 1
  %i.i = and i64 %i.c, -4294967296
  %.sroa.0.0.i = select i1 %i.h, i64 0, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %.sroa.0.0.i, ptr %.0.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.s = add nsw i64 %i.c, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.u, align 1 ; 5 uses
  %i.v = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.w = fcmp one double %i.v, +inf
  %i.x = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.x, %i.w
  %i.y = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i = and i1 %i.y, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = fptosi double %.0.copyload.i.i.i.i to i32
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = bitcast double %.0.copyload.i.i.i.i to i64 ; 5 uses
  %i.ab = and i64 %i.aa, 9218868437227405312
  %i.ac = icmp eq i64 %i.ab, 0                    ; 2 uses
  %i.ad = lshr i64 %i.aa, 52
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 2047
  %i.ag = add nsw i32 %i.af, -1075
  %.0.i.i.i = select i1 %i.ac, i32 -1074, i32 %i.ag ; 5 uses
  %i.ah = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp samesign ult i32 %.0.i.i.i, -52
  br i1 %i.ai, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = and i64 %i.aa, 4503599627370495         ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 4503599627370496
  %.0.i17.i.i = select i1 %i.ac, i64 %i.aj, i64 %i.ak
  %i.al = sub nsw i32 0, %.0.i.i.i
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %.0.i17.i.i, %i.am
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ao = icmp samesign ugt i32 %.0.i.i.i, 31
  br i1 %i.ao, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = zext nneg i32 %.0.i.i.i to i64
  %i.aq = shl i64 %i.aa, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i = phi i64 [ %i.an, %bb.i ], [ %i.aq, %bb.k ]
  %i.ar = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.as = sub i32 0, %i.ar
  %i.at = icmp slt i64 %i.aa, 0
  %i.au = select i1 %i.at, i32 %i.as, i32 %i.ar
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

_ZN2v88internal14DoubleToUint32Ed.exit:           ; preds = %bb.f, %bb.l
  %.1.i.i = phi i32 [ %i.z, %bb.f ], [ %i.au, %bb.l ] ; 3 uses
  %i.av = icmp sgt i32 %.1.i.i, -1
  br i1 %i.av, label %_ZN2v88internal14DoubleToUint32Ed.exit.thread, label %bb.n

_ZN2v88internal14DoubleToUint32Ed.exit.thread:    ; preds = %bb.j, %bb.h, %_ZN2v88internal14DoubleToUint32Ed.exit
  %.1.i.i35 = phi i32 [ %.1.i.i, %_ZN2v88internal14DoubleToUint32Ed.exit ], [ 0, %bb.h ], [ 0, %bb.j ]
  %i.aw = zext nneg i32 %.1.i.i35 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.m:                                             ; preds = %_ZN2v88internal14DoubleToUint32Ed.exit.thread
  %i.bd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.m, %_ZN2v88internal14DoubleToUint32Ed.exit.thread
  %.0.i.i.i13 = phi ptr [ %i.bd, %bb.m ], [ %i.az, %_ZN2v88internal14DoubleToUint32Ed.exit.thread ] ; 3 uses
  %i.be = ptrtoint ptr %.0.i.i.i13 to i64
  %i.bf = add i64 %i.be, 8
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ay, align 8
  store i64 %i.ax, ptr %.0.i.i.i13, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

bb.n:                                             ; preds = %_ZN2v88internal14DoubleToUint32Ed.exit
  %i.bh = uitofp i32 %.1.i.i to double
  %i.bi = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store double %i.bh, ptr %i.bm, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit: ; preds = %bb.n, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.a, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.020.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %bb.a ], [ %.0.i.i.i13, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bi, %bb.n ]
  ret ptr %.sroa.020.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object13ConvertToNameINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp ult i16 %i.i, 132
  br i1 %i.j, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.k = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %1, i32 noundef 2) #27 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge: ; preds = %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit
  %.pre = load i64, ptr %i.k, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27: ; preds = %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge, %bb.a, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.l = phi i64 [ %.pre, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge ], [ %i.a, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.05.0.i2529 = phi ptr [ %i.k, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge ], [ %1, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %bb.a ] ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp ult i16 %i.s, 129
  br i1 %i.t, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit
  %i.u = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = icmp ult i16 %i.x, 128
  br i1 %i.y, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread27, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.z = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i2529)
  br label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit
  %.sroa.010.0 = phi ptr [ null, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ %.sroa.05.0.i2529, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.z, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %.sroa.05.0.i2529, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret ptr %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object13ConvertToNameINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp ult i16 %i.i, 132
  br i1 %i.j, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.k = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %1, i32 noundef 2) #27 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26_crit_edge

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26_crit_edge: ; preds = %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit
  %.pre = load i64, ptr %i.k, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26: ; preds = %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26_crit_edge, %bb.a, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.m = phi i64 [ %.pre, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26_crit_edge ], [ %i.a, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.05.0.i2329 = phi ptr [ %i.k, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit._ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26_crit_edge ], [ %1, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %bb.a ] ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread26
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ult i16 %i.t, 129
  br i1 %i.u, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_:bb.a
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  br i1 %i.b, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 131
  br i1 %i.i, label %bb.b, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i33 = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i33 to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.k, ptr %.0.i33, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.u = and i64 %i.a, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.w = add nsw i64 %i.a, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.d

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ad = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.047.0, i32 noundef 2) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.d:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.b, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.ae = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 128
  br i1 %i.ai, label %bb.e, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aj = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 210, ptr null, i64 0) #27
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ak, ptr noundef null) #27 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.am = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 129
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ar = tail call ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %.sroa.047.0, i32 noundef 10, i32 noundef 1) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  %i.aw = icmp eq i16 %i.av, 294
  br i1 %i.aw, label %bb.g, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6864
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.047.0, i32 noundef 2) #27 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ba = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %.split, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.backedge

.split:                                           ; preds = %bb.h
  %i.bc = add nsw i64 %i.ba, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp ult i16 %i.bh, 128
  br i1 %i.bi, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.backedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.backedge: ; preds = %.split, %bb.h
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !67

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %.split, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.g, %bb.f, %bb.e, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.053.0 = phi ptr [ %.0.i33, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.ad, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %bb.e ], [ %i.ar, %bb.f ], [ %i.ax, %bb.g ], [ %i.ay, %.split ], [ null, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret ptr %.sroa.053.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object14ConvertToIndexINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_NS0_15MessageTemplateE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 0, ptr %.0.i, align 8
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.n = and i64 %i.a, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.p = add nsw i64 %i.a, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.w = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %1) ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.o, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.w, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61_crit_edge, %bb.d, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.x = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61_crit_edge ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.d ] ; 4 uses
  %.sroa.07.0.i5963 = phi ptr [ %i.w, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61_crit_edge ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %bb.d ]
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61
  %i.aa = icmp sgt i64 %i.x, -1
  br i1 %i.aa, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = lshr i64 %i.x, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = sitofp i32 %i.ac to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread61
  %i.ae = add nsw i64 %i.x, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ag, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.f, %bb.g
  %i.ah = phi double [ %i.ad, %bb.f ], [ %.0.copyload.i.i.i.i.i, %bb.g ] ; 6 uses
  %or.cond.i = fcmp ueq double %i.ah, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %i.aj = fcmp ueq double %i.ai, +inf
  br i1 %i.aj, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = fcmp ogt double %i.ah, 0.000000e+00
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call double @llvm.floor.f64(double %i.ah)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call double @llvm.ceil.f64(double %i.ah)
  %i.an = fadd double %i.am, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.h, %bb.j, %bb.k
  %.0.i27 = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ], [ %i.ah, %bb.h ], [ %i.al, %bb.j ], [ %i.an, %bb.k ] ; 7 uses
  %i.ao = fcmp oge double %.0.i27, f0xC1E0000000000000
  %i.ap = fcmp ole double %.0.i27, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.m

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.aq = fptosi double %.0.i27 to i32            ; 2 uses
  %i.ar = sitofp i32 %i.aq to double
  %i.as = fcmp oeq double %.0.i27, %i.ar
  br i1 %i.as, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.m

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.at = sext i32 %i.aq to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.l:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.ba = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.ba, %bb.l ], [ %i.aw, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.av, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.m:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store double %.0.i27, ptr %i.bi, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.m
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.be, %bb.m ] ; 2 uses
  %i.bj = fcmp olt double %.0.i27, 0.000000e+00
  %i.bk = fcmp ogt double %.0.i27, f0x433FFFFFFFFFFFFF
  %or.cond = or i1 %i.bj, %i.bk
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %.sroa.0.0.i, ptr %3, align 8
  %i.bl = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %2, ptr nonnull %3, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bm, ptr noundef null) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, %bb.e, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.038.1 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.sroa.07.0.i5963, %bb.e ], [ null, %bb.n ], [ %.sroa.0.0.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit ]
  ret ptr %.sroa.038.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1)
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b
  %.sroa.07.0 = phi ptr [ %i.k, %bb.b ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal6Object14ConvertToIndexINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_NS0_15MessageTemplateE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 0, ptr %.0.i, align 8
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.n = and i64 %i.a, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.p = add nsw i64 %i.a, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.w = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %1) ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.w, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60_crit_edge, %bb.d, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.y = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60_crit_edge ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.d ] ; 4 uses
  %.sroa.07.0.i5763 = phi ptr [ %i.w, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60_crit_edge ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %bb.d ]
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60
  %i.ab = icmp sgt i64 %i.y, -1
  br i1 %i.ab, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = lshr i64 %i.y, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = sitofp i32 %i.ad to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread60
  %i.af = add nsw i64 %i.y, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ah, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi double [ %i.ae, %bb.f ], [ %.0.copyload.i.i.i.i.i, %bb.g ] ; 6 uses
  %or.cond.i = fcmp ueq double %i.ai, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp ueq double %i.aj, +inf
  br i1 %i.ak, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = fcmp ogt double %i.ai, 0.000000e+00
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = tail call double @llvm.floor.f64(double %i.ai)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.k:                                             ; preds = %bb.i
  %i.an = tail call double @llvm.ceil.f64(double %i.ai)
  %i.ao = fadd double %i.an, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.h, %bb.j, %bb.k
  %.0.i28 = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ], [ %i.ai, %bb.h ], [ %i.am, %bb.j ], [ %i.ao, %bb.k ] ; 7 uses
  %i.ap = fcmp oge double %.0.i28, f0xC1E0000000000000
  %i.aq = fcmp ole double %.0.i28, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.ap, %i.aq
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.m

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.ar = fptosi double %.0.i28 to i32            ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = fcmp oeq double %.0.i28, %i.as
  br i1 %i.at, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.m

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.au = sext i32 %i.ar to i64
  %i.av = shl nsw i64 %i.au, 32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.l:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.bb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.bb, %bb.l ], [ %i.ax, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i.i.i to i64
  %i.bd = add i64 %i.bc, 8
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %i.be, ptr %i.aw, align 8
  store i64 %i.av, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.m:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.bf = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store double %.0.i28, ptr %i.bj, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.m
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bk = fcmp olt double %.0.i28, 0.000000e+00
  %i.bl = fcmp ogt double %.0.i28, f0x433FFFFFFFFFFFFF
  %or.cond = or i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %.sroa.0.0.i, ptr %3, align 8
  %i.bm = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %2, ptr nonnull %3, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bn, ptr noundef null) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, %bb.e, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.n, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.038.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ null, %bb.n ], [ %.sroa.07.0.i5763, %bb.e ], [ %.sroa.0.0.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit ]
  ret ptr %.sroa.038.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %0, 4294967295
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i64 %0, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 10 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 131
  br i1 %i.j, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1090921693184
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %0, %i.p
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %0, %i.s
  br i1 %i.t, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.v = load i64, ptr %i.u, align 8
  %.not = icmp eq i64 %0, %i.v
  br i1 %.not, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.w = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 294
  br i1 %i.aa, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ab = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ac = add i64 %i.ab, 13
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i8, ptr %i.ad monotonic, align 1
  %i.af = and i8 %i.ae, 16
  %.not112 = icmp eq i8 %i.af, 0
  br i1 %.not112, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp ult i16 %i.aj, 128
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp ne i32 %i.am, 0
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 130
  br i1 %i.as, label %bb.f, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.at, align 8
  %i.au = tail call noundef zeroext i1 @_ZN2v88internal15DoubleToBooleanEd(double noundef %.0.copyload.i.i.i.i) #27
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp eq i16 %i.ay, 129
  br i1 %i.az, label %bb.g, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 8
  %i.bc = and i32 %i.bb, 2147483646
  %i.bd = icmp ne i32 %i.bc, 0
  br label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ %i.q, %bb.d ], [ false, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit ], [ false, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.an, %bb.e ], [ %i.au, %bb.f ], [ %i.bd, %bb.g ], [ true, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret i1 %.0
end_hunk_1
begin_hunk_2_@_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us = load i64, ptr %i.ds, align 262144
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us, 25
  %.not38.i.i.i.i.i.i39.i.us = icmp eq i64 %i.dt, 0
  br i1 %.not38.i.i.i.i.i.i39.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.dn, i64 %i.db) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i.i36.i.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, label %bb.x, !prof !58

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.dn, i64 %i.db) #27
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.y:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.du = add nuw nsw i64 %.sroa.074.095.us, 1
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !100

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.dv = add nuw i64 %.sroa.074.095.us, 1
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !100

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.y, %bb.x, %bb.w, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us
  %.sroa.074.2.us = phi i64 [ %i.dv, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.du, %bb.y ], [ %i.cz, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ], [ %.sroa.074.095.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.sroa.074.095.us, %bb.w ], [ %.sroa.074.095.us, %bb.x ] ; 2 uses
  %.4.us = phi i1 [ %.197.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.197.us, %bb.y ], [ false, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ], [ %.197.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.197.us, %bb.w ], [ %.197.us, %bb.x ] ; 2 uses
  %i.dw = icmp ult i64 %.sroa.074.2.us, %i.x
  br i1 %i.dw, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %i.dx = add nuw nsw i32 %.03598.us, 1
  br i1 %.4.us, label %.split102.us, label %.preheader.us, !llvm.loop !101

.split102.us:                                     ; preds = %._crit_edge.us
  %i.dy = load i64, ptr %i.z, align 8             ; 3 uses
  %i.dz = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.ea = icmp eq i64 %i.x, 1
  br i1 %i.ea, label %.lr.ph.epil.preheader, label %.split102.us.new

.split102.us.new:                                 ; preds = %.split102.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

.split.us:                                        ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

.split100.us:                                     ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  %i.eb = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split102.us
  %.sroa.062.0104.epil.init = phi i64 [ 0, %.split102.us ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ec = shl nuw i64 %.sroa.062.0104.epil.init, 32
  %sext.i54.epil = add i64 %i.ec, 21474836480
  %i.ed = ashr exact i64 %sext.i54.epil, 29
  %i.ee = getelementptr inbounds i8, ptr %i.y, i64 %i.ed ; 2 uses
  %i.ef = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.eg = icmp eq i64 %i.ef, %i.dy
  br i1 %i.eg, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.dz, ptr %i.ee monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.z, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.eh monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.lr.ph:                                           ; preds = %bb.ac, %.split102.us.new
  %.sroa.062.0104 = phi i64 [ 0, %.split102.us.new ], [ %i.es, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.split102.us.new ], [ %niter.next.1, %bb.ac ]
  %i.ei = shl nuw i64 %.sroa.062.0104, 32
  %sext.i54 = add i64 %i.ei, 21474836480
  %i.ej = ashr exact i64 %sext.i54, 29
  %i.ek = getelementptr inbounds i8, ptr %i.y, i64 %i.ej ; 2 uses
  %i.el = load atomic volatile i64, ptr %i.ek monotonic, align 8
  %i.em = icmp eq i64 %i.el, %i.dy
  br i1 %i.em, label %bb.aa, label %.lr.ph.1

bb.aa:                                            ; preds = %.lr.ph
  store atomic volatile i64 %i.dz, ptr %i.ek monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.aa, %.lr.ph
  %i.en = shl i64 %.sroa.062.0104, 32
  %sext.i54.1 = add i64 %i.en, 25769803776
  %i.eo = ashr exact i64 %sext.i54.1, 29
  %i.ep = getelementptr inbounds i8, ptr %i.y, i64 %i.eo ; 2 uses
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = icmp eq i64 %i.eq, %i.dy
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.1
  store atomic volatile i64 %i.dz, ptr %i.ep monotonic, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.1
  %i.es = add nuw nsw i64 %.sroa.062.0104, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !109 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %1, i64 %i.b, i32 noundef %.1.i.i.i) #27
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !54, !noundef !55
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1432 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03589.us = phi i32 [ %i.cp, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03589.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.188.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.067.086.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.067.2.us, %bb.p ] ; 9 uses
  %i.ab = mul i64 %.sroa.067.086.us, 12884901888
  %sext.i.us = add i64 %i.ab, 17179869184
  %i.ac = ashr exact i64 %sext.i.us, 29
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 5 uses
  %i.af = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ah = load i64, ptr %i.z, align 8
  %.not.us = icmp eq i64 %i.ae, %i.ah
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ai = and i64 %i.ae, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ae, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.0.copyload.i.i.i.i.i.i.i.us = load double, ptr %i.am, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

bb.h:                                             ; preds = %bb.f
  %i.an = lshr i64 %i.ae, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.g
  %i.aq = phi double [ %i.ap, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i.us, %bb.g ]
  %i.ar = fptoui double %i.aq to i32
  %i.as = load i64, ptr %i.aa, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.ar, i64 noundef %i.aw) #27
  %i.ay = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.bb, %i.ax     ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.01523.i.us = phi i32 [ %i.be, %bb.i ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.bc = icmp eq i64 %.sroa.067.086.us, %.sroa.0.025.i.us
  br i1 %i.bc, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.bd = add i32 %.01523.i.us, %.sroa.0.0.in24.i.us
  %i.be = add nuw nsw i32 %.01523.i.us, 1         ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %i.bd, %i.bb       ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.be, %.03589.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !5

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.067.086.us, %.lr.ph.i.us ] ; 5 uses
  %i.bf = icmp eq i64 %.sroa.067.086.us, %spec.select.i.us
  br i1 %i.bf, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bg = mul i64 %spec.select.i.us, 12884901888
  %sext.i36.us = add i64 %i.bg, 17179869184
  %i.bh = ashr exact i64 %sext.i36.us, 29
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 %i.bh
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 5 uses
  %i.bk = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bm = load i64, ptr %i.z, align 8
  %.not83.us = icmp eq i64 %i.bj, %i.bm
  br i1 %.not83.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bn = and i64 %i.bj, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add nsw i64 %i.bj, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.copyload.i.i.i.i.i.i.i38.us = load double, ptr %i.br, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us

bb.m:                                             ; preds = %bb.k
  %i.bs = lshr i64 %i.bj, 32
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = sitofp i32 %i.bt to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us: ; preds = %bb.m, %bb.l
  %i.bv = phi double [ %i.bu, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i38.us, %bb.l ]
  %i.bw = fptoui double %i.bv to i32
  %i.bx = load i64, ptr %i.aa, align 8
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.bw, i64 noundef %i.cb) #27
  %i.cd = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  %.sroa.0.0.in20.i40.us = and i32 %i.cg, %i.cc   ; 2 uses
  %.sroa.0.021.i41.us = zext i32 %.sroa.0.0.in20.i40.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i44.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us

.lr.ph.i44.us:                                    ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us, %bb.n
  %.sroa.0.025.i45.us = phi i64 [ %.sroa.0.0.i49.us, %bb.n ], [ %.sroa.0.021.i41.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ]
  %.sroa.0.0.in24.i46.us = phi i32 [ %.sroa.0.0.in.i48.us, %bb.n ], [ %.sroa.0.0.in20.i40.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ]
  %.01523.i47.us = phi i32 [ %i.cj, %bb.n ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ] ; 2 uses
  %i.ch = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i45.us
  br i1 %i.ch, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i44.us
  %i.ci = add i32 %.01523.i47.us, %.sroa.0.0.in24.i46.us
  %i.cj = add nuw nsw i32 %.01523.i47.us, 1       ; 2 uses
  %.sroa.0.0.in.i48.us = and i32 %i.ci, %i.cg     ; 2 uses
  %.sroa.0.0.i49.us = zext i32 %.sroa.0.0.in.i48.us to i64 ; 2 uses
  %exitcond.not.i50.us = icmp eq i32 %i.cj, %.03589.us
  br i1 %exitcond.not.i50.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us, label %.lr.ph.i44.us, !llvm.loop !5

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us: ; preds = %bb.n, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us
  %spec.select.i43.us = phi i64 [ %.sroa.0.021.i41.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ], [ %.sroa.0.0.i49.us, %bb.n ]
  %.not84.us = icmp eq i64 %spec.select.i43.us, %spec.select.i.us
  br i1 %.not84.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us: ; preds = %.lr.ph.i44.us, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us
  %i.ck = add i64 %.sroa.067.086.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.j
  %i.cl = load i32, ptr %1, align 4
  call void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.067.086.us, i64 %spec.select.i.us, i32 noundef %i.cl)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cm = add nuw nsw i64 %.sroa.067.086.us, 1
  br label %bb.p, !llvm.loop !107

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.cn = add nuw i64 %.sroa.067.086.us, 1
  br label %bb.p, !llvm.loop !107

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us
  %.sroa.067.2.us = phi i64 [ %i.cn, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cm, %bb.o ], [ %.sroa.067.086.us, %.critedge.us ], [ %i.ck, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.188.us, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.188.us, %bb.o ], [ %.188.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ] ; 2 uses
  %i.co = icmp ult i64 %.sroa.067.2.us, %i.x
  br i1 %i.co, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.cp = add nuw nsw i32 %.03589.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !108

.split.us:                                        ; preds = %._crit_edge.us
  %i.cq = load i64, ptr %i.z, align 8             ; 3 uses
  %i.cr = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.cs = icmp eq i64 %i.x, 1
  br i1 %i.cs, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.ct = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.055.091.epil.init = phi i64 [ 0, %.split.us ], [ %i.dk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod98)
  %i.cu = mul i64 %.sroa.055.091.epil.init, 12884901888
  %sext.i52.epil = add i64 %i.cu, 17179869184
  %i.cv = ashr exact i64 %sext.i52.epil, 29
  %i.cw = getelementptr inbounds i8, ptr %i.y, i64 %i.cv ; 2 uses
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.cy = icmp eq i64 %i.cx, %i.cq
  br i1 %i.cy, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.cr, ptr %i.cw monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.cz monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split.us.new
  %.sroa.055.091 = phi i64 [ 0, %.split.us.new ], [ %i.dk, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.t ]
  %i.da = mul i64 %.sroa.055.091, 12884901888
  %sext.i52 = add i64 %i.da, 17179869184
  %i.db = ashr exact i64 %sext.i52, 29
  %i.dc = getelementptr inbounds i8, ptr %i.y, i64 %i.db ; 2 uses
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = icmp eq i64 %i.dd, %i.cq
  br i1 %i.de, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.cr, ptr %i.dc monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.df = mul i64 %.sroa.055.091, 12884901888
  %sext.i52.1 = add i64 %i.df, 30064771072
  %i.dg = ashr exact i64 %sext.i52.1, 29
  %i.dh = getelementptr inbounds i8, ptr %i.y, i64 %i.dg ; 2 uses
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.dj = icmp eq i64 %i.di, %i.cq
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.cr, ptr %i.dh monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.dk = add nuw nsw i64 %.sroa.055.091, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !116 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %1, i64 %i.b, i32 noundef %.1.i.i.i) #27
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !54, !noundef !55
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.pre = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.pre-phi = phi ptr [ %.pre, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
end_hunk_2
begin_hunk_3_@_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a
  %spec.select.i43.us = phi i64 [ %.sroa.0.021.i41.us, %_ZN2v88internal23BaseNameDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i37.us ], [ %.sroa.0.0.i49.us, %bb.n ]
  %.not88.us = icmp eq i64 %spec.select.i43.us, %spec.select.i.us
  br i1 %.not88.us, label %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us: ; preds = %.lr.ph.i44.us, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us
  %i.cw = add i64 %.sroa.071.092.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us, %bb.j
  %i.cx = load i32, ptr %1, align 4
  call void @_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.071.092.us, i64 %spec.select.i.us, i32 noundef %i.cx)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cy = add nuw nsw i64 %.sroa.071.092.us, 1
  br label %bb.p, !llvm.loop !114

_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.cz = add nuw i64 %.sroa.071.092.us, 1
  br label %bb.p, !llvm.loop !114

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us
  %.sroa.071.2.us = phi i64 [ %i.cz, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cy, %bb.o ], [ %.sroa.071.092.us, %.critedge.us ], [ %i.cw, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.194.us, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.194.us, %bb.o ], [ %.194.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ] ; 2 uses
  %i.da = icmp ult i64 %.sroa.071.2.us, %i.x
  br i1 %i.da, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.db = add nuw nsw i32 %.03595.us, 1
  br i1 %.4.us, label %.split99.us, label %.preheader.us, !llvm.loop !115

.split99.us:                                      ; preds = %._crit_edge.us
  %i.dc = load i64, ptr %i.y, align 8             ; 3 uses
  %i.dd = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.de = icmp eq i64 %i.x, 1
  br i1 %i.de, label %.lr.ph.epil.preheader, label %.split99.us.new

.split99.us.new:                                  ; preds = %.split99.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

.split.us:                                        ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

.split97.us:                                      ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.df = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split99.us
  %.sroa.059.0101.epil.init = phi i64 [ 0, %.split99.us ], [ %i.ec, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.dg = trunc i64 %.sroa.059.0101.epil.init to i32
  %i.dh = shl nsw i32 %i.dg, 1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %0, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 40     ; 2 uses
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = icmp eq i64 %i.dl, %i.dc
  br i1 %i.dm, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.dd, ptr %i.dk monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.dn monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split99.us.new
  %.sroa.059.0101 = phi i64 [ 0, %.split99.us.new ], [ %i.ec, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split99.us.new ], [ %niter.next.1, %bb.t ]
  %i.do = trunc i64 %.sroa.059.0101 to i32
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %0, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 40     ; 2 uses
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.du = icmp eq i64 %i.dt, %i.dc
  br i1 %i.du, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.dd, ptr %i.ds monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.dv = trunc i64 %.sroa.059.0101 to i32
  %i.dw = shl i32 %i.dv, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [8 x i8], ptr %0, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 56     ; 2 uses
  %i.ea = load atomic volatile i64, ptr %i.dz monotonic, align 8
  %i.eb = icmp eq i64 %i.ea, %i.dc
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.dd, ptr %i.dz monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.ec = add nuw nsw i64 %.sroa.059.0101, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !123 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %1, i64 %i.b, i32 noundef %.1.i.i.i) #27
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !54, !noundef !55
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1432 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03587.us = phi i32 [ %i.cs, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03587.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.186.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.065.084.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.065.2.us, %bb.p ] ; 9 uses
  %i.aa = trunc i64 %.sroa.065.084.us to i32
  %i.ab = shl nsw i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 5 uses
  %i.ag = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ai = load i64, ptr %i.y, align 8
  %.not.us = icmp eq i64 %i.af, %i.ai
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.aj = and i64 %i.af, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i64 %i.af, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i.i.i.us = load double, ptr %i.an, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

bb.h:                                             ; preds = %bb.f
  %i.ao = lshr i64 %i.af, 32
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = sitofp i32 %i.ap to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.g
  %i.ar = phi double [ %i.aq, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i.us, %bb.g ]
  %i.as = fptoui double %i.ar to i32
  %i.at = load i64, ptr %i.z, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.as, i64 noundef %i.ax) #27
  %i.az = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.bc, %i.ay     ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.01523.i.us = phi i32 [ %i.bf, %bb.i ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.bd = icmp eq i64 %.sroa.065.084.us, %.sroa.0.025.i.us
  br i1 %i.bd, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.be = add i32 %.01523.i.us, %.sroa.0.0.in24.i.us
  %i.bf = add nuw nsw i32 %.01523.i.us, 1         ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %i.be, %i.bc       ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.bf, %.03587.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !7

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.065.084.us, %.lr.ph.i.us ] ; 5 uses
  %i.bg = icmp eq i64 %.sroa.065.084.us, %spec.select.i.us
  br i1 %i.bg, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bh = trunc nuw i64 %spec.select.i.us to i32
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8 ; 5 uses
  %i.bn = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us: ; preds = %bb.j
  %i.bp = load i64, ptr %i.y, align 8
  %.not81.us = icmp eq i64 %i.bm, %i.bp
  br i1 %.not81.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us
  %i.bq = and i64 %i.bm, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i64 %i.bm, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.0.copyload.i.i.i.i.i.i.i37.us = load double, ptr %i.bu, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

bb.m:                                             ; preds = %bb.k
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = sitofp i32 %i.bw to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us: ; preds = %bb.m, %bb.l
  %i.by = phi double [ %i.bx, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i37.us, %bb.l ]
  %i.bz = fptoui double %i.by to i32
  %i.ca = load i64, ptr %i.z, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.bz, i64 noundef %i.ce) #27
  %i.cg = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  %.sroa.0.0.in20.i39.us = and i32 %i.cj, %i.cf   ; 2 uses
  %.sroa.0.021.i40.us = zext i32 %.sroa.0.0.in20.i39.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i43.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us

.lr.ph.i43.us:                                    ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, %bb.n
  %.sroa.0.025.i44.us = phi i64 [ %.sroa.0.0.i48.us, %bb.n ], [ %.sroa.0.021.i40.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.sroa.0.0.in24.i45.us = phi i32 [ %.sroa.0.0.in.i47.us, %bb.n ], [ %.sroa.0.0.in20.i39.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.01523.i46.us = phi i32 [ %i.cm, %bb.n ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ] ; 2 uses
  %i.ck = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i44.us
  br i1 %i.ck, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i43.us
  %i.cl = add i32 %.01523.i46.us, %.sroa.0.0.in24.i45.us
  %i.cm = add nuw nsw i32 %.01523.i46.us, 1       ; 2 uses
  %.sroa.0.0.in.i47.us = and i32 %i.cl, %i.cj     ; 2 uses
  %.sroa.0.0.i48.us = zext i32 %.sroa.0.0.in.i47.us to i64 ; 2 uses
  %exitcond.not.i49.us = icmp eq i32 %i.cm, %.03587.us
  br i1 %exitcond.not.i49.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us, label %.lr.ph.i43.us, !llvm.loop !7

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us: ; preds = %bb.n, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us
  %spec.select.i42.us = phi i64 [ %.sroa.0.021.i40.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ], [ %.sroa.0.0.i48.us, %bb.n ]
  %.not82.us = icmp eq i64 %spec.select.i42.us, %spec.select.i.us
  br i1 %.not82.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us: ; preds = %.lr.ph.i43.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us
  %i.cn = add i64 %.sroa.065.084.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us, %bb.j
  %i.co = load i32, ptr %1, align 4
  call void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.065.084.us, i64 %spec.select.i.us, i32 noundef %i.co)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cp = add nuw nsw i64 %.sroa.065.084.us, 1
  br label %bb.p, !llvm.loop !121

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.cq = add nuw i64 %.sroa.065.084.us, 1
  br label %bb.p, !llvm.loop !121

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us
  %.sroa.065.2.us = phi i64 [ %i.cq, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cp, %bb.o ], [ %.sroa.065.084.us, %.critedge.us ], [ %i.cn, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.186.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.186.us, %bb.o ], [ %.186.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us ] ; 2 uses
  %i.cr = icmp ult i64 %.sroa.065.2.us, %i.x
  br i1 %i.cr, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.cs = add nuw nsw i32 %.03587.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !122

.split.us:                                        ; preds = %._crit_edge.us
  %i.ct = load i64, ptr %i.y, align 8             ; 3 uses
  %i.cu = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.cv = icmp eq i64 %i.x, 1
  br i1 %i.cv, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.cw = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.cw, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.053.089.epil.init = phi i64 [ 0, %.split.us ], [ %i.dt, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.cx = trunc i64 %.sroa.053.089.epil.init to i32
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 40     ; 2 uses
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dd = icmp eq i64 %i.dc, %i.ct
  br i1 %i.dd, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.cu, ptr %i.db monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.de monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split.us.new
  %.sroa.053.089 = phi i64 [ 0, %.split.us.new ], [ %i.dt, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.t ]
  %i.df = trunc i64 %.sroa.053.089 to i32
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %0, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 40     ; 2 uses
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  %i.dl = icmp eq i64 %i.dk, %i.ct
  br i1 %i.dl, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.cu, ptr %i.dj monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.dm = trunc i64 %.sroa.053.089 to i32
  %i.dn = shl i32 %i.dm, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %0, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 56     ; 2 uses
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8
  %i.ds = icmp eq i64 %i.dr, %i.ct
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.cu, ptr %i.dq monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.dt = add nuw nsw i64 %.sroa.053.089, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray4SortEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = icmp sgt i16 %i.d, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge179

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = lshr i16 %i.d, 1                         ; 2 uses
  %.zext = zext nneg i16 %i.g to i32              ; 2 uses
  %.not191 = icmp eq i16 %i.d, 1
  br i1 %.not191, label %._crit_edge179, label %.lr.ph171

.lr.ph171:                                        ; preds = %._crit_edge
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
  %i.i = zext nneg i16 %i.g to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8
  %i.j = mul nuw nsw i64 %indvars.iv, 103079215104
  %sext.i.i = add nuw nsw i64 %i.j, 137438953472
  %i.k = lshr exact i64 %sext.i.i, 32
  %i.l = or disjoint i64 %i.k, 7
  %i.m = add i64 %i.l, %.sroa.01.0.copyload.i.i
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %sh.diff.i = lshr i64 %i.o, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.p = and i32 %tr.sh.diff.i, -1047554
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw nsw i32 %indvars.iv.tr, 10
  %i.r = or i32 %i.p, %i.q
  %i.s = ashr exact i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 32
  store atomic volatile i64 %i.u, ptr %i.n monotonic, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

.lr.ph178:                                        ; preds = %.thread
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal6Object9ShareSlowINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES4_INS0_10HeapObjectEENS0_11ShouldThrowE:bb.a
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE5EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.0.copyload.i.i.i.i, ptr %i.ab, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %2, 1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8
  %i.ad = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 40, ptr nonnull %3, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ae, ptr noundef null) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN2v88internal6String5ShareIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_.exit
  %.sroa.025.0 = phi ptr [ %.sroa.05.0.i, %_ZN2v88internal6String5ShareIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_.exit ], [ %i.x, %bb.h ], [ null, %bb.j ], [ null, %bb.i ]
  fence release
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal15DescriptorArray8AllocateINS0_7IsolateEEENS0_6HandleIS1_EEPT_iiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub i32 0, %2
  %i.b = icmp eq i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewDescriptorArrayEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewDescriptorArrayEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal15DescriptorArray8AllocateINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_iiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub i32 0, %2
  %i.b = icmp eq i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 872
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE18NewDescriptorArrayEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE18NewDescriptorArrayEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16NumberDictionary3SetINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_jNS3_INS0_6ObjectEEENS3_INS0_8JSObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.804", align 8 ; 4 uses
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5AtPutINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_jNS6_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %5) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = and i64 %i.f, 4294967297
  %.0.i.i = icmp eq i64 %i.g, 4294967296
  br i1 %.0.i.i, label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %2, 536870911
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = load i64, ptr %4, align 8
  store i64 %i.j, ptr %6, align 8
  %i.k = or disjoint i64 %i.c, 1
  call void @_ZN2v88internal8JSObject19RequireSlowElementsENS0_6TaggedINS0_16NumberDictionaryEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.l = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  %sum.shift.i.i = lshr i64 %i.o, 33
  %i.r = trunc nuw nsw i64 %sum.shift.i.i to i32
  %.0.i5.i = select i1 %i.q, i32 %i.r, i32 0
  %i.s = icmp samesign ult i32 %.0.i5.i, %2
  br i1 %i.s, label %bb.g, label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = shl nuw nsw i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.d, %bb.c
  %.sink.i = phi i64 [ %i.v, %bb.g ], [ 4294967296, %bb.d ], [ 4294967296, %bb.c ]
  store atomic volatile i64 %.sink.i, ptr %i.e monotonic, align 8
  br label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit

_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.f, %.sink.split.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5AtPutINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_jNS6_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.s, %i.k       ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.u = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.u, 17179869184
  %i.v = ashr exact i64 %sext.i35.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.ar, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.06.038.i.i = phi i64 [ %.sroa.06.0.i.i, %bb.e ], [ %.sroa.06.034.i.i, %bb.a ]
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in33.i.i, %bb.a ]
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.ao = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.ao, 17179869184
  %i.ap = ashr exact i64 %sext.i.i.i, 29
  %i.aq = getelementptr inbounds i8, ptr %i.t, i64 %i.ap
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.p
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.at = tail call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_jNS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef null)
  br label %bb.k

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.au = load i64, ptr %1, align 8
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %3, align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = mul i64 %.sroa.06.038.i.i, 12884901888  ; 2 uses
  %sext.i = add i64 %i.az, 21474836480
  %i.ba = ashr exact i64 %sext.i, 29
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba ; 2 uses
  store atomic volatile i64 %i.ax, ptr %i.bb monotonic, align 8
  %i.bc = trunc i64 %i.ax to i1
  br i1 %i.bc, label %bb.f, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.bd = or disjoint i64 %i.av, 1                ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bf = and i64 %i.av, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 262144       ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %i.bh, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bk = and i64 %i.ax, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 262144
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bd, i64 noundef %i.be, i64 %i.ax) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bd, i64 %i.be, i64 %i.ax) #27
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %bb.i, %bb.j
  %i.bn = load i64, ptr %1, align 8
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = shl i32 %4, 1
  %i.br = ashr exact i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %sext.i.i = add i64 %i.az, 25769803776
  %i.bv = ashr exact i64 %sext.i.i, 29
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  store atomic volatile i64 %i.bt, ptr %i.bw monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, %.loopexit
  %.sroa.011.0 = phi ptr [ %i.at, %.loopexit ], [ %1, %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr nofree readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.804", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = and i64 %i.b, 4294967297
  %.0.i = icmp eq i64 %i.c, 4294967296
  br i1 %.0.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %1, 536870911
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.f = load i64, ptr %2, align 8
  store i64 %i.f, ptr %3, align 8
  %i.g = ptrtoint ptr %0 to i64
  %i.h = or disjoint i64 %i.g, 1
  call void @_ZN2v88internal8JSObject19RequireSlowElementsENS0_6TaggedINS0_16NumberDictionaryEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.i = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load atomic volatile i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  %sum.shift.i = lshr i64 %i.l, 33
  %i.o = trunc nuw nsw i64 %sum.shift.i to i32
  %.0.i5 = select i1 %i.n, i32 %i.o, i32 0
  %i.p = icmp samesign ult i32 %.0.i5, %1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = shl nuw nsw i32 %1, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.g
  %.sink = phi i64 [ %i.s, %bb.g ], [ 4294967296, %bb.d ], [ 4294967296, %bb.c ]
  store atomic volatile i64 %.sink, ptr %i.a monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16NumberDictionary3SetINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_jNS6_INS0_6ObjectEEENS6_INS0_8JSObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.804", align 8 ; 4 uses
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_jNSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %5) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = and i64 %i.f, 4294967297
  %.0.i.i = icmp eq i64 %i.g, 4294967296
  br i1 %.0.i.i, label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %2, 536870911
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = load i64, ptr %4, align 8
  store i64 %i.j, ptr %6, align 8
  %i.k = or disjoint i64 %i.c, 1
  call void @_ZN2v88internal8JSObject19RequireSlowElementsENS0_6TaggedINS0_16NumberDictionaryEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.l = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  %sum.shift.i.i = lshr i64 %i.o, 33
  %i.r = trunc nuw nsw i64 %sum.shift.i.i to i32
  %.0.i5.i = select i1 %i.q, i32 %i.r, i32 0
  %i.s = icmp samesign ult i32 %.0.i5.i, %2
  br i1 %i.s, label %bb.g, label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = shl nuw nsw i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.d, %bb.c
  %.sink.i = phi i64 [ %i.v, %bb.g ], [ 4294967296, %bb.d ], [ 4294967296, %bb.c ]
  store atomic volatile i64 %.sink.i, ptr %i.e monotonic, align 8
  br label %_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit

_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.f, %.sink.split.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_jNSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.s, %i.k       ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.u = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.u, 17179869184
  %i.v = ashr exact i64 %sext.i35.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.ar, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.06.038.i.i = phi i64 [ %.sroa.06.0.i.i, %bb.e ], [ %.sroa.06.034.i.i, %bb.a ]
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in33.i.i, %bb.a ]
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.ao = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.ao, 17179869184
  %i.ap = ashr exact i64 %sext.i.i.i, 29
  %i.aq = getelementptr inbounds i8, ptr %i.t, i64 %i.ap
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.p
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.at = tail call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_jNSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef null)
  br label %bb.k

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.au = load i64, ptr %1, align 8
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %3, align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = mul i64 %.sroa.06.038.i.i, 12884901888  ; 2 uses
  %sext.i = add i64 %i.az, 21474836480
  %i.ba = ashr exact i64 %sext.i, 29
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba ; 2 uses
  store atomic volatile i64 %i.ax, ptr %i.bb monotonic, align 8
  %i.bc = trunc i64 %i.ax to i1
  br i1 %i.bc, label %bb.f, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.bd = or disjoint i64 %i.av, 1                ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bf = and i64 %i.av, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 262144       ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %i.bh, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bk = and i64 %i.ax, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 262144
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bd, i64 noundef %i.be, i64 %i.ax) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bd, i64 %i.be, i64 %i.ax) #27
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %bb.i, %bb.j
  %i.bn = load i64, ptr %1, align 8
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = shl i32 %4, 1
  %i.br = ashr exact i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %sext.i.i = add i64 %i.az, 25769803776
  %i.bv = ashr exact i64 %sext.i.i, 29
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  store atomic volatile i64 %i.bt, ptr %i.bw monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, %.loopexit
  %.sroa.011.0 = phi ptr [ %i.at, %.loopexit ], [ %1, %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6GetMapERNS0_10RootsTableE(ptr noundef nonnull align 8 dereferenceable(9200) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13IteratePrefixEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b) #27, !inline_history !9
  %i.f = add i64 %i.a, 8
  %i.g = add i64 %i.a, 40
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.f, i64 %i.g) #27, !inline_history !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 40
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #27, !inline_history !9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_6TaggedINS0_6StringEEEi(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %i.i = add i64 %2, -1                           ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = or disjoint i64 %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.07.0.in42 = and i32 %3, %i.h             ; 2 uses
  %.sroa.07.043 = zext i32 %.sroa.07.0.in42 to i64 ; 2 uses
  %i.m = shl nuw i64 %.sroa.07.043, 32
  %sext.i44 = add i64 %i.m, 12884901888
  %i.n = ashr exact i64 %sext.i44, 29
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34
  %i.r = phi i64 [ %i.ao, %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34 ], [ %i.p, %bb.a ] ; 4 uses
  %.sroa.07.047 = phi i64 [ %.sroa.07.0, %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34 ], [ %.sroa.07.043, %bb.a ] ; 2 uses
  %.sroa.07.0.in46 = phi i32 [ %.sroa.07.0.in, %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34 ], [ %.sroa.07.0.in42, %bb.a ]
  %.045 = phi i32 [ %i.aj, %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34 ], [ 1, %bb.a ] ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.g
  br i1 %i.s, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.r, %i.k
  br i1 %i.t, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = and i16 %i.x, -96
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.d, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.r, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = and i16 %i.af, -96
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit.thread34, label %_ZN2v88internal14StringSetShape7IsMatchENS0_6TaggedINS0_6StringEEENS2_INS0_6ObjectEEE.exit
end_hunk_4
begin_hunk_5_@_ZN2v88internal24ObjectMultiHashTableBaseINS0_18ObjectTwoHashTableELi2EE3PutEPNS0_7IsolateENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEERKSt5arrayISA_Lm2EE:bb.a
  %i.df = load i64, ptr %.sink71, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  call void @_ZN2v88internal24ObjectMultiHashTableBaseINS0_18ObjectTwoHashTableELi2EE14SetEntryValuesENS0_13InternalIndexERKSt5arrayINS0_12DirectHandleINS0_6ObjectEEELm2EE(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i64 %.sroa.09.0.lcssa.i.i.sink, ptr noundef nonnull align 1 %3)
  ret ptr %.sink71
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal24ObjectMultiHashTableBaseINS0_18ObjectTwoHashTableELi2EE14SetEntryValuesENS0_13InternalIndexERKSt5arrayINS0_12DirectHandleINS0_6ObjectEEELm2EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = or disjoint i64 %i.b, 1                  ; 4 uses
  %i.d = and i64 %i.b, -262144
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = mul i64 %1, 12884901888
  %sext = add i64 %i.f, 17179869184
  %i.g = ashr exact i64 %sext, 32                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.g ; 2 uses
  store atomic volatile i64 %i.i, ptr %i.j monotonic, align 8
  %i.k = trunc i64 %i.i to i1
  br i1 %i.k, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = load i64, ptr %i.e, align 262144         ; 2 uses
  %i.n = and i64 %i.m, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %i.m, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %i.i, -262144
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.q, align 262144
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.c, i64 noundef %i.l, i64 %i.i) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.c, i64 %i.l, i64 %i.i) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %i.g
  %i.w = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  store atomic volatile i64 %i.u, ptr %i.w monotonic, align 8
  %i.x = trunc i64 %i.u to i1
  br i1 %i.x, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = load i64, ptr %i.e, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not37.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not37.i.i.i.i.i.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = and i64 %i.u, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, 25
  %.not38.i.i.i.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not38.i.i.i.i.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.c, i64 noundef %i.y, i64 %i.u) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.1, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.c, i64 %i.y, i64 %i.u) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1: ; preds = %bb.k, %bb.j, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal24ObjectMultiHashTableBaseINS0_18ObjectTwoHashTableELi2EE22EntryToValueIndexStartENS0_13InternalIndexE(i64 %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = mul nsw i32 %i.a, 3
  %i.c = add nsw i32 %i.b, 4
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6GetMapERNS0_10RootsTableE(ptr noundef nonnull align 8 dereferenceable(9200) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13IteratePrefixEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b) #27, !inline_history !9
  %i.f = add i64 %i.a, 8
  %i.g = add i64 %i.a, 40
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.f, i64 %i.g) #27, !inline_history !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 40
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #27, !inline_history !9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEji(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.sroa.06.0.in35 = and i32 %3, %i.h             ; 2 uses
  %i.i = shl nsw i32 %.sroa.06.0.in35, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.o = phi i64 [ %i.ah, %bb.e ], [ %i.m, %bb.a ] ; 4 uses
  %.sroa.06.0.in37 = phi i32 [ %.sroa.06.0.in, %bb.e ], [ %.sroa.06.0.in35, %bb.a ] ; 2 uses
  %.036 = phi i32 [ %i.ab, %bb.e ], [ 1, %bb.a ]  ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = and i64 %i.o, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = sitofp i32 %i.t to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = add nsw i64 %i.o, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.x, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.d
  %i.y = phi double [ %i.u, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.z = fptoui double %i.y to i32
  %i.aa = icmp eq i32 %2, %i.z
  br i1 %i.aa, label %select.unfold.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit
  %i.ab = add i32 %.036, 1
  %i.ac = add i32 %.036, %.sroa.06.0.in37
  %.sroa.06.0.in = and i32 %i.ac, %i.h            ; 2 uses
  %i.ad = shl nsw i32 %.sroa.06.0.in, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %select.unfold, label %.lr.ph, !llvm.loop !30

select.unfold.split.loop.exit:                    ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.06.0.le = zext i32 %.sroa.06.0.in37 to i64
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.a, %select.unfold.split.loop.exit
  %.sroa.017.1.ph = phi i64 [ %.sroa.06.0.le, %select.unfold.split.loop.exit ], [ -1, %bb.a ], [ -1, %bb.e ]
  ret i64 %.sroa.017.1.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5KeyAtENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %2, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %2, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %2, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.h, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %bb.c ]
  %i.j = fptoui double %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.j, i64 noundef %i.p) #27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.q, %i.v            ; 2 uses
  %.sroa.0.021 = zext i32 %.sroa.0.0.in20 to i64  ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.021, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.d ], [ %.sroa.0.0.in20, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.01523 = phi i32 [ %i.y, %bb.d ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.w = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add i32 %.01523, %.sroa.0.0.in24
  %i.y = add nuw nsw i32 %.01523, 1               ; 2 uses
  %.sroa.0.0.in = and i32 %i.x, %i.v              ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = add nsw i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 6 uses
  %i.h = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %.sroa.0.0.copyload.fr71 = freeze i64 %i.j      ; 6 uses
  %i.k = trunc i64 %2 to i32
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 4 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.p, ptr %i.f monotonic, align 8
  %i.q = icmp sgt i32 %3, 1                       ; 3 uses
  %i.r = trunc i64 %i.p to i1
  %or.cond.i.i.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  %i.s = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.t = or disjoint i64 %i.s, 1                  ; 8 uses
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.v = and i64 %i.s, -262144
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 262144         ; 2 uses
  %i.y = and i64 %i.x, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = and i64 %i.x, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = and i64 %i.p, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.u, i64 %i.p) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread, label %bb.e, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.u, i64 %i.p) #27
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread: ; preds = %bb.d, %bb.e
  %i.ad = getelementptr i8, ptr %i.n, i64 32
  %i.ae = sext i32 %i.b to i64
  %i.af = getelementptr [8 x i8], ptr %i.d, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader
  %.pre54 = and i64 %i.s, -262144
  %.pre56 = inttoptr i64 %.pre54 to ptr
  %i.ah = getelementptr i8, ptr %i.n, i64 32      ; 3 uses
  %i.ai = sext i32 %i.b to i64
  %i.aj = getelementptr [8 x i8], ptr %i.d, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 32     ; 2 uses
  br i1 %i.q, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.al = load atomic volatile i64, ptr %i.ah monotonic, align 8
  store atomic volatile i64 %i.al, ptr %i.ak monotonic, align 8
  store atomic volatile i64 %i.g, ptr %i.o monotonic, align 8
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.s, %bb.r, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split
  store atomic volatile i64 %i.g, ptr %i.o monotonic, align 8
  %i.am = trunc i64 %i.g to i1
  br i1 %i.am, label %bb.f, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41

bb.f:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.an = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.ao = load i64, ptr %.pre-phi5761, align 8    ; 2 uses
  %i.ap = and i64 %i.ao, 32
  %.not.i.i.i.i.i.i37 = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 25
  %.not37.i.i.i.i.i.i38 = icmp eq i64 %i.aq, 0
  br i1 %.not37.i.i.i.i.i.i38, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = and i64 %i.g, -262144
  %i.as = inttoptr i64 %i.ar to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39 = load i64, ptr %i.as, align 262144
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39, 25
  %.not38.i.i.i.i.i.i40 = icmp eq i64 %i.at, 0
  br i1 %.not38.i.i.i.i.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.an, i64 %i.g) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i37, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.an, i64 %i.g) #27
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.i, %bb.j
  %i.au = trunc i64 %.sroa.0.0.copyload.fr71 to i1
  %or.cond.i.i.i.i42 = and i1 %i.q, %i.au
  %i.av = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.aw = and i64 %.sroa.0.0.copyload.fr71, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  br i1 %or.cond.i.i.i.i42, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41
  store atomic volatile i64 %.sroa.0.0.copyload.fr71, ptr %i.bd monotonic, align 8
  %i.ay = load i64, ptr %.pre-phi5761, align 8    ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i.i.i43.us = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not37.i.i.i.i.i44.us = icmp eq i64 %i.ba, 0
  br i1 %.not37.i.i.i.i.i44.us, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us
  %.sroa.0.0.copyload.i.i.i.i.i.i.i45.us = load i64, ptr %i.ax, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i45.us, 25
  %.not38.i.i.i.i.i46.us = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i.i.i46.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.av, i64 %.sroa.0.0.copyload.fr71) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us
  br i1 %.not.i.i.i.i.i43.us, label %.split50.us, label %bb.n, !prof !58

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.av, i64 %.sroa.0.0.copyload.fr71) #27
  br label %.split50.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bc = phi ptr [ %i.ag, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %i.ak, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.ad, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %i.ah, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 4 uses
  %.pre-phi5761 = phi ptr [ %i.w, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %.pre56, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.bf, ptr %i.bc monotonic, align 8
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split
end_hunk_5
begin_hunk_6_@_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE26HasSufficientCapacityToAddEi:bb.a

bb.c:                                             ; preds = %bb.b
  %i.q = sdiv i32 %i.k, 2
  %i.r = add nsw i32 %i.q, %i.k
  %.not15.i = icmp sgt i32 %i.r, %i.d
  br i1 %.not15.i, label %bb.d, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE26HasSufficientCapacityToAddEiiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE26HasSufficientCapacityToAddEiiii.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE26HasSufficientCapacityToAddEiiii.exit: ; preds = %bb.c, %bb.d
  %.1.i = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE26HasSufficientCapacityToAddEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %3, %1                       ; 4 uses
  %i.b = icmp slt i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %0, %i.a
  %i.d = lshr i32 %i.c, 1
  %.not = icmp sgt i32 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sdiv i32 %i.a, 2
  %i.f = add nsw i32 %i.e, %i.a
  %.not15 = icmp sgt i32 %i.f, %0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %.sroa.09.0.in12 = and i32 %2, %i.e             ; 3 uses
  %i.f = shl nsw i32 %.sroa.09.0.in12, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %bb.b
  %i.o = phi i64 [ %i.j, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %i.v, %bb.b ]
  %.sroa.09.0.in14 = phi i32 [ %.sroa.09.0.in12, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %.sroa.09.0.in, %bb.b ] ; 2 uses
  %.013 = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %i.o, %i.n
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.b

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b, %bb.a
  %.sroa.09.0.in.lcssa = phi i32 [ %.sroa.09.0.in12, %bb.a ], [ %.sroa.09.0.in, %bb.b ], [ %.sroa.09.0.in14, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.09.0 = zext i32 %.sroa.09.0.in.lcssa to i64
  ret i64 %.sroa.09.0

bb.b:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.p = add i32 %.013, 1
  %i.q = add i32 %.sroa.09.0.in14, %.013
  %.sroa.09.0.in = and i32 %i.q, %i.e             ; 3 uses
  %i.r = shl nsw i32 %.sroa.09.0.in, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.k
  br i1 %i.w, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !31
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE25ComputeCapacityWithShrinkEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %0, 2
  %i.b = icmp ugt i32 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 1
  %i.d = add nuw nsw i32 %i.c, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  %i.h = icmp samesign ult i32 %spec.select.i.i, 2
  %.sroa.speculated.i = select i1 %i.h, i32 4, i32 %i.g ; 2 uses
  %i.i = icmp ult i32 %.sroa.speculated.i, 16
  %. = select i1 %i.i, i32 %0, i32 %.sroa.speculated.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ %0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = add i64 %1, -1                           ; 4 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 5 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !212 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.b, i32 noundef %.1.i.i.i) #27
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not44 = icmp eq i64 %i.o, 0
  br i1 %.not44, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre48 = inttoptr i64 %i.a to ptr
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1528
  %i.s = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, %.._crit_edge_crit_edge
  %.pre-phi49 = phi ptr [ %.pre48, %.._crit_edge_crit_edge ], [ %i.s, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = and i64 %i.w, -4294967296
  %i.y = getelementptr inbounds nuw i8, ptr %.pre-phi49, i64 16
  store atomic volatile i64 %i.x, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.pre-phi49, i64 24
  store atomic volatile i64 0, ptr %i.z monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.032.045 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.aa = trunc i64 %.sroa.032.045 to i32
  %i.ab = shl nsw i32 %i.aa, 1                    ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 24     ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 5 uses
  %i.ag = load i64, ptr %i.l, align 8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.ai = load i64, ptr %i.q, align 8
  %.not43 = icmp eq i64 %i.af, %i.ai
  br i1 %.not43, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aj = and i64 %i.af, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = lshr i64 %i.af, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = sitofp i32 %i.am to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = add nsw i64 %i.af, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.aq, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d, %bb.e
  %i.ar = phi double [ %i.an, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ]
  %i.as = fptoui double %i.ar to i32
  %i.at = load i64, ptr %i.r, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.as, i64 noundef %i.ax) #27
  %i.az = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.bc, %i.ay       ; 2 uses
  %i.bd = shl nsw i32 %.sroa.09.0.in12.i, 1       ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.s, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 40
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8 ; 2 uses
  %i.bi = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bk = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.f, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.bl = phi i64 [ %i.bh, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bs, %bb.f ]
  %.sroa.09.0.in14.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.f ] ; 2 uses
  %.013.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bm, %bb.f ] ; 2 uses
  %.not.i = icmp eq i64 %i.bl, %i.bk
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i._ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge, label %bb.f

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i._ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre50 = shl nsw i32 %.sroa.09.0.in14.i, 1     ; 2 uses
  %.pre = sext i32 %.pre50 to i64
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bm = add i32 %.013.i, 1
  %i.bn = add i32 %.013.i, %.sroa.09.0.in14.i
  %.sroa.09.0.in.i = and i32 %i.bn, %i.bc         ; 2 uses
  %i.bo = shl nsw i32 %.sroa.09.0.in.i, 1         ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.s, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bi
  br i1 %i.bt, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !31

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %bb.f, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i._ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.pre-phi47 = phi i64 [ %i.be, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.pre, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i._ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge ], [ %i.bp, %bb.f ]
  %.pre-phi = phi i32 [ %i.bd, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.pre50, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i._ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge ], [ %i.bo, %bb.f ]
  %i.bu = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 5 uses
  %i.bv = load i32, ptr %2, align 4
  %i.bw = getelementptr [8 x i8], ptr %i.u, i64 %.pre-phi47
  %i.bx = getelementptr i8, ptr %i.bw, i64 24     ; 2 uses
  store atomic volatile i64 %i.bu, ptr %i.bx monotonic, align 8
  %i.by = icmp sgt i32 %i.bv, 1
  %i.bz = trunc i64 %i.bu to i1
  %or.cond.i.i.i.i.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  %i.ca = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.cb = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cc = and i64 %i.cb, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cc, 0
  %i.cd = and i64 %i.cb, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ce = and i64 %i.bu, -262144
  %i.cf = inttoptr i64 %i.ce to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 262144
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.ca, i64 %i.bu) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.ca, i64 %i.bu) #27
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, %bb.j, %bb.k
  %i.ch = add i32 %.pre-phi, 4
  %i.ci = add i32 %i.ab, 4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cj
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cl ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = load atomic volatile i64, ptr %i.ck monotonic, align 8 ; 5 uses
  %i.cp = load i32, ptr %2, align 4
  store atomic volatile i64 %i.co, ptr %i.cm monotonic, align 8
  %i.cq = icmp sgt i32 %i.cp, 1
  %i.cr = trunc i64 %i.co to i1
  %or.cond.i.i.i.i = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.l, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.l:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.cs = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.ct = and i64 %i.cs, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, 0
  %i.cu = and i64 %i.cs, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not37.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cv = and i64 %i.co, -262144
  %i.cw = inttoptr i64 %i.cv to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 262144
  %i.cx = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not38.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.cn, i64 %i.co) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.p, !prof !58

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.cn, i64 %i.co) #27
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.o, %bb.p, %bb.b, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cy = add nuw nsw i64 %.sroa.032.045, 1       ; 2 uses
  %.not = icmp eq i64 %i.cy, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = and i64 %i.e, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %i.j, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %2, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 262144
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.f, i64 noundef %i.g, i64 %2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.f, i64 %i.g, i64 %2) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE11SetCapacityEj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_6
begin_hunk_7_@_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE:bb.a
_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit
  %i.u = add nuw nsw i64 %.sroa.016.032, 1        ; 2 uses
  %.not = icmp eq i64 %i.u, %i.g
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, %..critedge_crit_edge
  %.sroa.024.0 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.n, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.o, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret i64 %.sroa.024.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ClearEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %i.e, i64 %i.e, i32 0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = or disjoint i64 %i.c, 1                  ; 5 uses
  %i.e = and i64 %i.c, -262144
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 262144, !noalias !217 ; 2 uses
  %i.h = and i64 %i.g, 32
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.g, 24
  %.not7.i.i.i = icmp ne i64 %i.i, 0
  %i.j = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.j, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %5, i64 %i.d, i32 noundef %.1.i.i.i) #27
  %i.k = load i32, ptr %5, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  store atomic volatile i64 %2, ptr %i.o monotonic, align 8
  %i.p = icmp sgt i32 %i.k, 1
  %i.q = trunc i64 %2 to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = load i64, ptr %i.f, align 262144         ; 2 uses
  %i.t = and i64 %i.s, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  %i.u = and i64 %i.s, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = and i64 %2, -262144
  %i.w = inttoptr i64 %i.v to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.w, align 262144
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.d, i64 noundef %i.r, i64 %2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.d, i64 %i.r, i64 %2) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.y = load i32, ptr %5, align 4
  %i.z = sext i32 %i.b to i64
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  store atomic volatile i64 %3, ptr %i.ab monotonic, align 8
  %i.ac = icmp sgt i32 %i.y, 1
  %i.ad = trunc i64 %3 to i1
  %or.cond.i.i.i.i8 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i8, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit13

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = load i64, ptr %i.f, align 262144        ; 2 uses
  %i.ag = and i64 %i.af, 32
  %.not.i.i.i.i.i9 = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.af, 25
  %.not37.i.i.i.i.i10 = icmp eq i64 %i.ah, 0
  br i1 %.not37.i.i.i.i.i10, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = and i64 %3, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i11 = load i64, ptr %i.aj, align 262144
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i11, 25
  %.not38.i.i.i.i.i12 = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.d, i64 noundef %i.ae, i64 %3) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i9, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit13, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.d, i64 %i.ae, i64 %3) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit13

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit13: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE17RawFieldOfValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %i.f = ptrtoint ptr %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE11ShallowCopyEPNS0_7IsolateENS0_12DirectHandleIS2_EENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = tail call ptr @_ZN2v88internal7Factory21CopyFixedArrayWithMapENS0_12DirectHandleINS0_10FixedArrayEEENS2_INS0_3MapEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr nonnull %i.a, i8 noundef zeroext %2) #27
  ret ptr %i.b
}

declare ptr @_ZN2v88internal7Factory21CopyFixedArrayWithMapENS0_12DirectHandleINS0_10FixedArrayEEENS2_INS0_3MapEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EEjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %.sroa.06.0.in35.i.i = and i32 %i.s, %i.k       ; 2 uses
  %i.t = shl nsw i32 %.sroa.06.0.in35.i.i, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.c, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.as, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in35.i.i, %bb.a ] ; 2 uses
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %i.ao = shl nsw i32 %.sroa.06.0.in.i.i, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.p
  br i1 %i.at, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread, label %.lr.ph.i.i, !llvm.loop !30

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.au = load i64, ptr %1, align 8
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %3, align 8               ; 5 uses
  %i.ay = shl nsw i32 %.sroa.06.0.in37.i.i, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 48     ; 2 uses
  store atomic volatile i64 %i.ax, ptr %i.bb monotonic, align 8
  %i.bc = trunc i64 %i.ax to i1
  br i1 %i.bc, label %bb.f, label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread: ; preds = %bb.e, %bb.a
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE12UncheckedAddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEEvPSA_T0_IS2_EjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr %3, i32 %4)
  br label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.bd = or disjoint i64 %i.av, 1                ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bf = and i64 %i.av, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 262144       ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %i.bh, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bk = and i64 %i.ax, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 262144
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bd, i64 noundef %i.be, i64 %i.ax) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bd, i64 %i.be, i64 %i.ax) #27
  br label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.j, %bb.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE12UncheckedAddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEEvPSA_T0_IS2_EjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.g) #27
  %i.i = icmp sgt i32 %2, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i.i.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.k, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit

bb.d:                                             ; preds = %bb.a
  %i.u = uitofp i32 %2 to double
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store double %i.u, ptr %i.z, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit

_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %i.v, %bb.d ]
  %i.aa = load i64, ptr %1, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.ah, %i.h        ; 3 uses
  %i.ai = shl nsw i32 %.sroa.09.0.in12.i, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ac, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8 ; 2 uses
  %i.an = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.aq = load i64, ptr %i.ap, align 8
  br label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.e, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.ar = phi i64 [ %i.am, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.ay, %bb.e ]
  %.sroa.09.0.in14.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.e ] ; 2 uses
  %.013.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.as, %bb.e ] ; 2 uses
  %.not.i = icmp eq i64 %i.ar, %i.aq
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.as = add i32 %.013.i, 1
  %i.at = add i32 %.013.i, %.sroa.09.0.in14.i
  %.sroa.09.0.in.i = and i32 %i.at, %i.ah         ; 3 uses
  %i.au = shl nsw i32 %.sroa.09.0.in.i, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.ac, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 40
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.an
  br i1 %i.az, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !31

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit
  %.sroa.09.0.in.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit ], [ %.sroa.09.0.in14.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.e ]
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.lcssa.i to i64
  %i.ba = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bb = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %.sroa.09.0.i, i64 %i.ba, i64 %i.bb, i32 %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_jNS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.g) #27
  %i.i = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE14EnsureCapacityINS0_7IsolateENS0_12DirectHandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS7_IS9_EEEEET0_IS2_EPS9_SD_iNS0_14AllocationTypeE(ptr noundef %0, ptr %1, i32 noundef 1, i8 noundef zeroext 0) ; 3 uses
  %i.j = icmp sgt i32 %2, -1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE3AddINS0_12LocalIsolateENS0_6HandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_jNSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.as
  br i1 %i.be, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !31

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE1EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_12LocalIsolateEj.exit
  %.sroa.09.0.in.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE1EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_12LocalIsolateEj.exit ], [ %.sroa.09.0.in14.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.h ]
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.lcssa.i to i64 ; 2 uses
  %i.bf = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bg = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 %.sroa.09.0.i, i64 %i.bf, i64 %i.bg, i32 %4)
  %i.bh = load i64, ptr %i.h, align 8
  %i.bi = add i64 %i.bh, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = and i64 %i.bl, -4294967296
  %i.bn = add i64 %i.bm, 4294967296
  store atomic volatile i64 %i.bn, ptr %i.bk monotonic, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  store i64 %.sroa.09.0.i, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE11DeleteEntryINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS0_13InternalIndexE(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 %2, i64 %i.h, i64 %i.h, i32 0)
  %i.i = load i64, ptr %1, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = and i64 %i.m, -4294967296
  %i.o = add i64 %i.n, -4294967296
  store atomic volatile i64 %i.o, ptr %i.l monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = and i64 %i.q, -4294967296
  %i.s = add i64 %i.r, 4294967296
  store atomic volatile i64 %i.s, ptr %i.p monotonic, align 8
  %i.t = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_i(ptr noundef %0, ptr nonnull %1, i32 noundef 0)
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_12DirectHandleEEET_IS2_EPNS0_7IsolateES8_Qsr3stdE16is_convertible_vITL0__IT_ENS6_ISC_EEE(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_i(ptr noundef %0, ptr %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE11DeleteEntryINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NS0_13InternalIndexE(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  tail call void @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 %2, i64 %i.h, i64 %i.h, i32 0)
  %i.i = load i64, ptr %1, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = and i64 %i.m, -4294967296
  %i.o = add i64 %i.n, -4294967296
  store atomic volatile i64 %i.o, ptr %i.l monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = and i64 %i.q, -4294967296
  %i.s = add i64 %i.r, 4294967296
  store atomic volatile i64 %i.s, ptr %i.p monotonic, align 8
  %i.t = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_i(ptr noundef %0, ptr nonnull %1, i32 noundef 0)
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_6HandleEEET_IS2_EPNS0_7IsolateES8_Qsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleISC_EEE(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_i(ptr noundef %0, ptr %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6GetMapERNS0_10RootsTableE(ptr noundef nonnull align 8 dereferenceable(9200) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13IteratePrefixEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b) #27, !inline_history !9
  %i.f = add i64 %i.a, 8
  %i.g = add i64 %i.a, 48
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.f, i64 %i.g) #27, !inline_history !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 48
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #27, !inline_history !9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEji(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.06.0.in33 = and i32 %3, %i.h             ; 2 uses
  %.sroa.06.034 = zext i32 %.sroa.06.0.in33 to i64 ; 2 uses
  %i.j = mul i64 %.sroa.06.034, 12884901888
  %sext.i35 = add i64 %i.j, 17179869184
  %i.k = ashr exact i64 %sext.i35, 29
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.o = phi i64 [ %i.ag, %bb.e ], [ %i.m, %bb.a ] ; 4 uses
  %.sroa.06.038 = phi i64 [ %.sroa.06.0, %bb.e ], [ %.sroa.06.034, %bb.a ]
  %.sroa.06.0.in37 = phi i32 [ %.sroa.06.0.in, %bb.e ], [ %.sroa.06.0.in33, %bb.a ]
  %.036 = phi i32 [ %i.ab, %bb.e ], [ 1, %bb.a ]  ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = and i64 %i.o, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = sitofp i32 %i.t to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = add nsw i64 %i.o, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.x, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.d
  %i.y = phi double [ %i.u, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.z = fptoui double %i.y to i32
  %i.aa = icmp eq i32 %2, %i.z
  br i1 %i.aa, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit
  %i.ab = add i32 %.036, 1
  %i.ac = add i32 %.036, %.sroa.06.0.in37
  %.sroa.06.0.in = and i32 %i.ac, %i.h            ; 2 uses
  %.sroa.06.0 = zext i32 %.sroa.06.0.in to i64    ; 2 uses
  %i.ad = mul i64 %.sroa.06.0, 12884901888
  %sext.i = add i64 %i.ad, 17179869184
  %i.ae = ashr exact i64 %sext.i, 29
  %i.af = getelementptr inbounds i8, ptr %i.i, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.e
  br i1 %i.ah, label %select.unfold, label %.lr.ph, !llvm.loop !8

select.unfold:                                    ; preds = %bb.e, %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit, %bb.a
  %.sroa.017.1.ph = phi i64 [ -1, %bb.a ], [ %.sroa.06.038, %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit ], [ -1, %bb.e ]
  ret i64 %.sroa.017.1.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5KeyAtENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = mul i64 %1, 12884901888
  %sext = add i64 %i.b, 17179869184
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %2, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %2, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %2, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.h, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %bb.c ]
  %i.j = fptoui double %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.j, i64 noundef %i.p) #27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.q, %i.v            ; 2 uses
  %.sroa.0.021 = zext i32 %.sroa.0.0.in20 to i64  ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.021, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.d ], [ %.sroa.0.0.in20, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.01523 = phi i32 [ %i.y, %bb.d ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.w = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add i32 %.01523, %.sroa.0.0.in24
  %i.y = add nuw nsw i32 %.01523, 1               ; 2 uses
  %.sroa.0.0.in = and i32 %i.x, %i.v              ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.b = mul i64 %1, 12884901888
  %sext = add i64 %i.b, 17179869184
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 4 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 6 uses
  %i.i = getelementptr [8 x i8], ptr %i.a, i64 %i.c
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 4 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 6 uses
  %i.l = mul i64 %2, 12884901888
  %sext68 = add i64 %i.l, 17179869184
  %i.m = ashr exact i64 %sext68, 32               ; 9 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.m ; 4 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.o, ptr %i.d monotonic, align 8
  %i.p = icmp sgt i32 %3, 1                       ; 2 uses
  %i.q = trunc i64 %i.o to i1
  %or.cond.i.i.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  %i.r = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 12 uses
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.t = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.u = and i64 %i.r, -262144
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 262144         ; 2 uses
  %i.x = and i64 %i.w, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = and i64 %i.o, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 262144
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.t, i64 %i.o) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader, label %bb.e, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.t, i64 %i.o) #27
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader
  %.pre64 = and i64 %i.r, -262144
  %.pre66 = inttoptr i64 %.pre64 to ptr
  br i1 %i.p, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47.us.preheader

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader: ; preds = %bb.e, %bb.d, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.pre-phi6772 = phi ptr [ %.pre66, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %i.v, %bb.d ], [ %i.v, %bb.e ] ; 5 uses
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.ae, ptr %i.g monotonic, align 8
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.split.us:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.s, %bb.t
  store atomic volatile i64 %i.e, ptr %i.n monotonic, align 8
  %i.ag = trunc i64 %i.e to i1
  br i1 %i.ag, label %bb.f, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader

bb.f:                                             ; preds = %.split.us
  %i.ah = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ai = load i64, ptr %.pre-phi6772, align 8    ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i.i.i.i37 = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not37.i.i.i.i.i.i38 = icmp eq i64 %i.ak, 0
  br i1 %.not37.i.i.i.i.i.i38, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = and i64 %i.e, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39 = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39, 25
  %.not38.i.i.i.i.i.i40 = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.ah, i64 %i.e) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i37, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.ah, i64 %i.e) #27
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47.us.preheader: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ao = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  store atomic volatile i64 %i.aq, ptr %i.g monotonic, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  store atomic volatile i64 %i.at, ptr %i.j monotonic, align 8
  store atomic volatile i64 %i.e, ptr %i.n monotonic, align 8
  %i.au = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store atomic volatile i64 %i.h, ptr %i.av monotonic, align 8
  %i.aw = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store atomic volatile i64 %i.k, ptr %i.ax monotonic, align 8
  br label %.split52.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader: ; preds = %.split.us, %bb.i, %bb.j
  %i.ay = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  store atomic volatile i64 %i.h, ptr %i.az monotonic, align 8
  %i.ba = trunc i64 %i.h to i1
  br i1 %i.ba, label %bb.u, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader
  %i.bb = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bc = load i64, ptr %.pre-phi6772, align 8    ; 2 uses
  %i.bd = and i64 %i.bc, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 0
  %i.be = and i64 %i.bc, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bf = and i64 %i.ae, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 262144
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.bb, i64 %i.ae) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.bb, i64 %i.ae) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

end_hunk_8
begin_hunk_9_@_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE26HasSufficientCapacityToAddEiiii:bb.a
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.09.0.in12 = and i32 %2, %i.e             ; 2 uses
  %.sroa.09.013 = zext i32 %.sroa.09.0.in12 to i64 ; 3 uses
  %i.g = mul i64 %.sroa.09.013, 12884901888
  %sext.i14 = add i64 %i.g, 17179869184
  %i.h = ashr exact i64 %sext.i14, 29
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not21 = icmp eq i64 %i.j, %i.n
  br i1 %.not21, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph
  %i.o = add i32 %.01523, 1
  %.not = icmp eq i64 %i.t, %i.n
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph, !llvm.loop !32

._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, !llvm.loop !32

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, %bb.a
  %.sroa.09.0.lcssa = phi i64 [ %.sroa.09.013, %bb.a ], [ %.sroa.09.013, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %.sroa.09.0, %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge ], [ %.sroa.09.0, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.09.0.lcssa

.lr.ph:                                           ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.01523 = phi i32 [ %i.o, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ 1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ] ; 2 uses
  %.sroa.09.0.in1622 = phi i32 [ %.sroa.09.0.in, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in12, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ]
  %i.p = add i32 %.sroa.09.0.in1622, %.01523
  %.sroa.09.0.in = and i32 %i.p, %i.e             ; 2 uses
  %.sroa.09.0 = zext i32 %.sroa.09.0.in to i64    ; 3 uses
  %i.q = mul i64 %.sroa.09.0, 12884901888
  %sext.i = add i64 %i.q, 17179869184
  %i.r = ashr exact i64 %sext.i, 29
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !32
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE25ComputeCapacityWithShrinkEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %0, 2
  %i.b = icmp ugt i32 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 1
  %i.d = add nuw nsw i32 %i.c, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  %i.h = icmp samesign ult i32 %spec.select.i.i, 2
  %.sroa.speculated.i = select i1 %i.h, i32 4, i32 %i.g ; 2 uses
  %i.i = icmp ult i32 %.sroa.speculated.i, 16
  %. = select i1 %i.i, i32 %0, i32 %.sroa.speculated.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ %0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = add i64 %1, -1                           ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 9 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !222 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.b, i32 noundef %.1.i.i.i) #27
  %i.i = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 5 uses
  %i.n = load i32, ptr %2, align 4
  store atomic volatile i64 %i.m, ptr %i.k monotonic, align 8
  %i.o = icmp sgt i32 %i.n, 1
  %i.p = trunc i64 %i.m to i1
  %or.cond.i.i.i.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.ad, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.ad, i64 1528
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.d, align 262144         ; 2 uses
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.w, 0
  %i.x = and i64 %i.v, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = and i64 %i.m, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.z, align 262144
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.l, i64 %i.m) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.l, i64 %i.m) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.ab = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10624
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = lshr i64 %i.ag, 32                      ; 2 uses
  %.not52 = icmp eq i64 %i.ah, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = and i64 %i.aj, -4294967296
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store atomic volatile i64 %i.ak, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store atomic volatile i64 0, ptr %i.am monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.038.053 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.an = trunc i64 %.sroa.038.053 to i32
  %i.ao = mul nsw i32 %i.an, 3                    ; 3 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 5 uses
  %i.at = load i64, ptr %i.ae, align 8
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g
  %i.av = load i64, ptr %i.r, align 8
  %.not50 = icmp eq i64 %i.as, %i.av
  br i1 %.not50, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aw = and i64 %i.as, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = lshr i64 %i.as, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = sitofp i32 %i.az to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = add nsw i64 %i.as, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.bd, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.i, %bb.j
  %i.be = phi double [ %i.ba, %bb.i ], [ %.0.copyload.i.i.i.i.i.i, %bb.j ]
  %i.bf = fptoui double %i.be to i32
  %i.bg = load i64, ptr %i.s, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.bf, i64 noundef %i.bk) #27
  %i.bm = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.bp, %i.bl       ; 3 uses
  %.sroa.09.013.i = zext i32 %.sroa.09.0.in12.i to i64
  %i.bq = mul i64 %.sroa.09.013.i, 12884901888
  %sext.i14.i = add i64 %i.bq, 17179869184
  %i.br = ashr exact i64 %sext.i14.i, 29
  %i.bs = getelementptr inbounds i8, ptr %i.u, i64 %i.br
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8 ; 2 uses
  %i.bu = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bw = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.k, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.bx = phi i64 [ %i.bt, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.cd, %bb.k ]
  %.sroa.09.0.in16.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.k ] ; 2 uses
  %.015.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.by, %bb.k ] ; 2 uses
  %.not.i = icmp eq i64 %i.bx, %i.bw
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.by = add i32 %.015.i, 1
  %i.bz = add i32 %.015.i, %.sroa.09.0.in16.i
  %.sroa.09.0.in.i = and i32 %i.bz, %i.bp         ; 3 uses
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.i to i64
  %i.ca = mul i64 %.sroa.09.0.i, 12884901888
  %sext.i.i = add i64 %i.ca, 17179869184
  %i.cb = ashr exact i64 %sext.i.i, 29
  %i.cc = getelementptr inbounds i8, ptr %i.u, i64 %i.cb
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bu
  br i1 %i.ce, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !32

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.k, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.09.0.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in16.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.k ]
  %i.cf = mul nsw i32 %.sroa.09.0.lcssa.i, 3      ; 3 uses
  %i.cg = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 5 uses
  %i.ch = load i32, ptr %2, align 4
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr [8 x i8], ptr %i.u, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 32     ; 2 uses
  store atomic volatile i64 %i.cg, ptr %i.ck monotonic, align 8
  %i.cl = icmp sgt i32 %i.ch, 1
  %i.cm = trunc i64 %i.cg to i1
  %or.cond.i.i.i.i.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  %i.cn = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.co = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cp = and i64 %i.co, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = and i64 %i.co, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cr = and i64 %i.cg, -262144
  %i.cs = inttoptr i64 %i.cr to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 262144
  %i.ct = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.cn, i64 %i.cg) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !58

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.cn, i64 %i.cg) #27
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, %bb.o, %bb.p
  %i.cu = add i32 %i.cf, 5
  %i.cv = add i32 %i.ao, 5
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cw
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8 ; 5 uses
  %i.cz = load i32, ptr %2, align 4
  %i.da = sext i32 %i.cu to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.da ; 2 uses
  store atomic volatile i64 %i.cy, ptr %i.db monotonic, align 8
  %i.dc = icmp sgt i32 %i.cz, 1
  %i.dd = trunc i64 %i.cy to i1
  %or.cond.i.i.i.i32 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i.i.i.i32, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37

bb.q:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.de = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.df = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dg = and i64 %i.df, 32
  %.not.i.i.i.i.i33 = icmp eq i64 %i.dg, 0
  %i.dh = and i64 %i.df, 25
  %.not37.i.i.i.i.i34 = icmp eq i64 %i.dh, 0
  br i1 %.not37.i.i.i.i.i34, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.di = and i64 %i.cy, -262144
  %i.dj = inttoptr i64 %i.di to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i35 = load i64, ptr %i.dj, align 262144
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i35, 25
  %.not38.i.i.i.i.i36 = icmp eq i64 %i.dk, 0
  br i1 %.not38.i.i.i.i.i36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.de, i64 %i.cy) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i33, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37, label %bb.u, !prof !58

bb.u:                                             ; preds = %bb.t
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.de, i64 %i.cy) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.t, %bb.u
  %i.dl = add i32 %i.cf, 6
  %i.dm = add i32 %i.ao, 6
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.dn
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8 ; 5 uses
  %i.dq = load i32, ptr %2, align 4
  %i.dr = sext i32 %i.dl to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dp, ptr %i.ds monotonic, align 8
  %i.dt = icmp sgt i32 %i.dq, 1
  %i.du = trunc i64 %i.dp to i1
  %or.cond.i.i.i.i32.1 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i.i32.1, label %bb.v, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.v:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dx = and i64 %i.dw, 32
  %.not.i.i.i.i.i33.1 = icmp eq i64 %i.dx, 0
  %i.dy = and i64 %i.dw, 25
  %.not37.i.i.i.i.i34.1 = icmp eq i64 %i.dy, 0
  br i1 %.not37.i.i.i.i.i34.1, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dz = and i64 %i.dp, -262144
  %i.ea = inttoptr i64 %i.dz to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i35.1 = load i64, ptr %i.ea, align 262144
  %i.eb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i35.1, 25
  %.not38.i.i.i.i.i36.1 = icmp eq i64 %i.eb, 0
  br i1 %.not38.i.i.i.i.i36.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.dv, i64 %i.dp) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i33.1, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.z, !prof !58

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.dv, i64 %i.dp) #27
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit37, %bb.y, %bb.z, %bb.g, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ec = add nuw nsw i64 %.sroa.038.053, 1       ; 2 uses
  %.not = icmp eq i64 %i.ec, %i.ah
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = and i64 %i.e, -262144
  %i.i = inttoptr i64 %i.h to ptr
end_hunk_9
begin_hunk_10_@_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ClearEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  tail call void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %i.e, i64 %i.e, i32 0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  %i.a = trunc i64 %1 to i32
  %i.b = mul nsw i32 %i.a, 3                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = or disjoint i64 %i.c, 1                  ; 5 uses
  %i.e = and i64 %i.c, -262144
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 262144, !noalias !227 ; 2 uses
  %i.h = and i64 %i.g, 32
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.g, 24
  %.not7.i.i.i = icmp ne i64 %i.i, 0
  %i.j = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.j, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %5, i64 %i.d, i32 noundef %.1.i.i.i) #27
  %i.k = load i32, ptr %5, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 32       ; 2 uses
  store atomic volatile i64 %2, ptr %i.o monotonic, align 8
  %i.p = icmp sgt i32 %i.k, 1
  %i.q = trunc i64 %2 to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = load i64, ptr %i.f, align 262144         ; 2 uses
  %i.t = and i64 %i.s, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  %i.u = and i64 %i.s, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = and i64 %2, -262144
  %i.w = inttoptr i64 %i.v to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.w, align 262144
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.d, i64 noundef %i.r, i64 %2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.d, i64 %i.r, i64 %2) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.y = load i32, ptr %5, align 4
  %i.z = sext i32 %i.b to i64
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 40     ; 2 uses
  store atomic volatile i64 %3, ptr %i.ab monotonic, align 8
  %i.ac = icmp sgt i32 %i.y, 1
  %i.ad = trunc i64 %3 to i1
  %or.cond.i.i.i.i11 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i11, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit16

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = load i64, ptr %i.f, align 262144        ; 2 uses
  %i.ag = and i64 %i.af, 32
  %.not.i.i.i.i.i12 = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.af, 25
  %.not37.i.i.i.i.i13 = icmp eq i64 %i.ah, 0
  br i1 %.not37.i.i.i.i.i13, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = and i64 %3, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i14 = load i64, ptr %i.aj, align 262144
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i14, 25
  %.not38.i.i.i.i.i15 = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.d, i64 noundef %i.ae, i64 %3) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i12, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit16, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.d, i64 %i.ae, i64 %3) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit16

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit16: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.al = shl i32 %4, 1
  %i.am = ashr exact i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = mul i64 %1, 12884901888
  %sext.i.i = add i64 %i.ap, 25769803776
  %i.aq = ashr exact i64 %sext.i.i, 29
  %i.ar = getelementptr inbounds i8, ptr %i.l, i64 %i.aq
  store atomic volatile i64 %i.ao, ptr %i.ar monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE17RawFieldOfValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = mul i64 %1, 12884901888
  %sext = add i64 %i.b, 21474836480
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE11ShallowCopyEPNS0_7IsolateENS0_12DirectHandleIS2_EENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.b = tail call ptr @_ZN2v88internal7Factory21CopyFixedArrayWithMapENS0_12DirectHandleINS0_10FixedArrayEEENS2_INS0_3MapEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr nonnull %i.a, i8 noundef zeroext %2) #27
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EEjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.s, %i.k       ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.u = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.u, 17179869184
  %i.v = ashr exact i64 %sext.i35.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.ar, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.06.038.i.i = phi i64 [ %.sroa.06.0.i.i, %bb.e ], [ %.sroa.06.034.i.i, %bb.a ]
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in33.i.i, %bb.a ]
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.ao = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.ao, 17179869184
  %i.ap = ashr exact i64 %sext.i.i.i, 29
  %i.aq = getelementptr inbounds i8, ptr %i.t, i64 %i.ap
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.p
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %bb.e, %bb.a
  tail call void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE12UncheckedAddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEEvPSA_T0_IS2_EjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr %3, i32 %4)
  br label %bb.k

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.at = load i64, ptr %1, align 8
  %i.au = add i64 %i.at, -1                       ; 3 uses
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %3, align 8               ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = mul i64 %.sroa.06.038.i.i, 12884901888  ; 2 uses
  %sext.i = add i64 %i.ay, 21474836480
  %i.az = ashr exact i64 %sext.i, 29
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az ; 2 uses
  store atomic volatile i64 %i.aw, ptr %i.ba monotonic, align 8
  %i.bb = trunc i64 %i.aw to i1
  br i1 %i.bb, label %bb.f, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.bc = or disjoint i64 %i.au, 1                ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.be = and i64 %i.au, -262144
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 262144       ; 2 uses
  %i.bh = and i64 %i.bg, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %i.bg, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bj = and i64 %i.aw, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 262144
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bc, i64 noundef %i.bd, i64 %i.aw) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bc, i64 %i.bd, i64 %i.aw) #27
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %bb.i, %bb.j
  %i.bm = load i64, ptr %1, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = shl i32 %4, 1
  %i.bq = ashr exact i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %sext.i.i = add i64 %i.ay, 25769803776
  %i.bu = ashr exact i64 %sext.i.i, 29
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  store atomic volatile i64 %i.bs, ptr %i.bv monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE12UncheckedAddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEEvPSA_T0_IS2_EjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.g) #27
  %i.i = icmp sgt i32 %2, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i.i.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.k, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit

bb.d:                                             ; preds = %bb.a
  %i.u = uitofp i32 %2 to double
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store double %i.u, ptr %i.z, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit

_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %i.v, %bb.d ]
  %i.aa = load i64, ptr %1, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.ah, %i.h        ; 2 uses
  %.sroa.09.013.i = zext i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.aj = mul i64 %.sroa.09.013.i, 12884901888
  %sext.i14.i = add i64 %i.aj, 17179869184
  %i.ak = ashr exact i64 %sext.i14.i, 29
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8 ; 2 uses
  %i.an = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %.not.i25 = icmp eq i64 %i.am, %i.aq
  br i1 %.not.i25, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %.lr.ph

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.lr.ph
  %i.ar = add i32 %.015.i27, 1
  %.not.i = icmp eq i64 %i.aw, %i.aq
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.015.i27 = phi i32 [ %i.ar, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ] ; 2 uses
  %.sroa.09.0.in16.i26 = phi i32 [ %.sroa.09.0.in.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ]
  %i.as = add i32 %.015.i27, %.sroa.09.0.in16.i26
  %.sroa.09.0.in.i = and i32 %i.as, %i.ah         ; 2 uses
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.i to i64 ; 3 uses
  %i.at = mul i64 %.sroa.09.0.i, 12884901888
  %sext.i.i = add i64 %i.at, 17179869184
  %i.au = ashr exact i64 %sext.i.i, 29
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 %i.au
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.an
  br i1 %i.ax, label %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !32

._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, !llvm.loop !32

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i, %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit
  %.sroa.09.0.lcssa.i = phi i64 [ %.sroa.09.013.i, %_ZN2v88internal25NumberDictionaryBaseShape8AsHandleILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEj.exit ], [ %.sroa.09.013.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.i, %._ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit.loopexit_crit_edge ], [ %.sroa.09.0.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ay = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.az = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %.sroa.09.0.lcssa.i, i64 %i.ay, i64 %i.az, i32 %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_jNS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.c = load i64, ptr %i.b, align 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE:bb.a
  %i.py = zext i32 %i.pp to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.py
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.pz, ptr noundef nonnull align 16 dereferenceable(22) @__const._ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE.error_suffix, i64 21, i1 false)
  %i.qa = load i32, ptr %i.po, align 4
  %i.qb = add nsw i32 %i.qa, 21                   ; 2 uses
  store i32 %i.qb, ptr %i.po, align 4
  %i.qc = load i32, ptr %i.pm, align 8
  %i.qd = icmp eq i32 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ap, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #27
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit

.preheader137:                                    ; preds = %bb.an, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48
  %i.qe = phi i8 [ %i.qr, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48 ], [ 60, %bb.an ]
  %.0.i34145.idx = phi i64 [ %.0.i34145.add, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48 ], [ 0, %bb.an ]
  %.0.i34145.add = add nuw nsw i64 %.0.i34145.idx, 1 ; 3 uses
  %.ptr188 = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE.error_suffix, i64 %.0.i34145.add
  %i.qf = load ptr, ptr %i.ps, align 8
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = add i64 %i.qg, -1
  %i.qi = inttoptr i64 %i.qh to ptr
  %i.qj = load i32, ptr %i.po, align 4            ; 2 uses
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.po, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qm = zext i32 %i.qj to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qm
  store i8 %i.qe, ptr %i.qn, align 1
  %i.qo = load i32, ptr %i.po, align 4
  %i.qp = load i32, ptr %i.pm, align 8
  %i.qq = icmp eq i32 %i.qo, %i.qp
  br i1 %i.qq, label %bb.aq, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48

bb.aq:                                            ; preds = %.preheader137
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #27
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48: ; preds = %.preheader137, %bb.aq
  %i.qr = load i8, ptr %.ptr188, align 1
  %exitcond155 = icmp eq i64 %.0.i34145.add, 21
  br i1 %exitcond155, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit, label %.preheader137, !llvm.loop !271

bb.ar:                                            ; preds = %.critedge133.preheader, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51
  %i.qs = phi i8 [ 60, %.critedge133.preheader ], [ %i.rg, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51 ]
  %.1.i32144.idx = phi i64 [ 0, %.critedge133.preheader ], [ %.1.i32144.add, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51 ]
  %.1.i32144.add = add nuw nsw i64 %.1.i32144.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE.error_suffix, i64 %.1.i32144.add
  %i.qt = load ptr, ptr %i.pj, align 8
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = add i64 %i.qu, -1
  %i.qw = inttoptr i64 %i.qv to ptr
  %i.qx = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.qy = add nsw i32 %i.qx, 1
  store i32 %i.qy, ptr %i.pk, align 4
  %i.qz = sext i8 %i.qs to i16
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rb = zext i32 %i.qx to i64
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rb
  store i16 %i.qz, ptr %i.rc, align 2
  %i.rd = load i32, ptr %i.pk, align 4
  %i.re = load i32, ptr %i.pl, align 8
  %i.rf = icmp eq i32 %i.rd, %i.re
  br i1 %i.rf, label %bb.as, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #27
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51: ; preds = %bb.ar, %bb.as
  %i.rg = load i8, ptr %.ptr, align 1
  %exitcond = icmp eq i64 %.1.i32144.add, 21
  br i1 %exitcond, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit, label %bb.ar, !llvm.loop !272

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit52, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit49, %bb.ac, %bb.ab, %bb.ap, %bb.ao, %bb.al
  %i.rh = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #27 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %bb.at, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !52

bb.at:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #28
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.au

bb.au:                                            ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %.sroa.024.0 = phi ptr [ %i.rh, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit ], [ %.sroa.04.0.i70, %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72 ], [ %.sroa.04.0.i, %bb.l ]
  ret ptr %.sroa.024.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate16object_to_stringEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 2199
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

declare ptr @_ZN2v88internal15JSBoundFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #6

declare i64 @_ZN2v88internal10JSReceiver10class_nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.k = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.k, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43_crit_edge, %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.l = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43_crit_edge ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %i.q = zext nneg i32 %.sroa.speculated to i64
  %i.r = shl nuw nsw i64 %i.q, 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %bb.b ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread43
  %i.ab = add nsw i64 %i.l, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.ad, align 1 ; 6 uses
  %or.cond.i = fcmp ueq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.af = fcmp ueq double %i.ae, +inf
  br i1 %i.af, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = fcmp ogt double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i)
  %i.aj = fadd double %i.ai, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi double [ %i.aj, %bb.h ], [ %.0.copyload.i.i.i.i, %bb.e ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ak = fcmp ugt double %.0.i, 0.000000e+00
  br i1 %i.ak, label %bb.j, label %_ZN2v88internal15DoubleToIntegerEd.exit.thread

_ZN2v88internal15DoubleToIntegerEd.exit.thread:   ; preds = %bb.d, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17, !prof !52

bb.i:                                             ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit.thread
  %i.aq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17: ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit.thread, %bb.i
  %.0.i.i16 = phi ptr [ %i.aq, %bb.i ], [ %i.am, %_ZN2v88internal15DoubleToIntegerEd.exit.thread ] ; 3 uses
  %i.ar = ptrtoint ptr %.0.i.i16 to i64
  %i.as = add i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.al, align 8
  store i64 0, ptr %.0.i.i16, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.j:                                             ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.au = fcmp oge double %.0.i, f0x433FFFFFFFFFFFFF
  %spec.store.select = select i1 %i.au, double f0x433FFFFFFFFFFFFF, double %.0.i ; 5 uses
  %i.av = fcmp oge double %spec.store.select, f0xC1E0000000000000
  %i.aw = fcmp ole double %spec.store.select, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.l

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.j
  %i.ax = fptosi double %spec.store.select to i32 ; 2 uses
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fcmp oeq double %spec.store.select, %i.ay
  br i1 %i.az, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.l

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.k:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.bh = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.k, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %i.bd, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bi = ptrtoint ptr %.0.i.i.i to i64
  %i.bj = add i64 %i.bi, 8
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %i.bc, align 8
  store i64 %i.bb, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.l:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.j
  %i.bl = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store double %spec.store.select, ptr %i.bp, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %bb.l, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.026.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.0.i.i16, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17 ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bl, %bb.l ]
  ret ptr %.sroa.026.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6Object9ToBooleanENS0_6TaggedIS1_EEPNS0_7IsolateE(i64 %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 131
  br i1 %i.h, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1090921693184
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %bb.a, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %0, ptr noundef nonnull %1)
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %i.o, -55464
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.03.0.in.v.i = select i1 %i.n, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.0.0 = phi i64 [ %.sroa.03.0.i, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %0, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6Object7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp ult i16 %i.i, 132
  br i1 %i.j, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.k = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %1, i32 noundef 1) #27 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232: ; preds = %bb.a, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit
  %.sroa.05.0.i230234 = phi ptr [ %i.k, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ %1, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %bb.a ] ; 8 uses
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i71

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i71: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ult i16 %i.t, 132
  br i1 %i.u, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i71
  %i.v = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %2, i32 noundef 1) #27 ; 2 uses
  %.not255 = icmp eq ptr %i.v, null
  br i1 %.not255, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i71, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73
  %.sroa.05.0.i72236240 = phi ptr [ %i.v, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73 ], [ %2, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i71 ], [ %2, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread232 ] ; 11 uses
  %i.w = load i64, ptr %.sroa.05.0.i230234, align 8 ; 4 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit66, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit66: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = icmp ult i16 %i.ad, 128
  br i1 %i.ae, label %bb.b, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67

bb.b:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit66
  %i.af = load i64, ptr %.sroa.05.0.i72236240, align 8 ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit65, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit65: ; preds = %bb.b
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp ult i16 %i.am, 128
  br i1 %i.an, label %bb.c, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67

bb.c:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit65
  %i.ao = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i230234, ptr nonnull %.sroa.05.0.i72236240) #27
  %.sroa.21.0.insert.ext.i = zext i32 %i.ao to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %.critedge

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67: ; preds = %bb.b, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit66, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit65
  %i.ap = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp eq i16 %i.as, 129
  br i1 %i.at, label %bb.d, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67
  %i.au = load i64, ptr %.sroa.05.0.i72236240, align 8 ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit64, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit64: ; preds = %bb.d
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp ult i16 %i.bb, 128
  br i1 %i.bc, label %bb.e, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit64
  %i.bd = tail call i64 @_ZN2v88internal6BigInt15CompareToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef %0, ptr nonnull %.sroa.05.0.i230234, ptr nonnull %.sroa.05.0.i72236240) #27
  br label %.critedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit67, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit64
  %i.be = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp ult i16 %i.bh, 128
  br i1 %i.bi, label %bb.f, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bj = load i64, ptr %.sroa.05.0.i72236240, align 8 ; 2 uses
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.bl = add nsw i64 %i.bj, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = icmp eq i16 %i.bq, 129
  br i1 %i.br, label %_ZNK2v85MaybeINS_8internal16ComparisonResultEE2ToEPS2_.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v85MaybeINS_8internal16ComparisonResultEE2ToEPS2_.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bs = tail call i64 @_ZN2v88internal6BigInt15CompareToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef %0, ptr nonnull %.sroa.05.0.i72236240, ptr nonnull %.sroa.05.0.i230234) #27 ; 3 uses
  %i.bt = trunc i64 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK2v85MaybeINS_8internal16ComparisonResultEE2ToEPS2_.exit
  %.sroa.5117.0.extract.shift = lshr i64 %i.bs, 32
  %.sroa.5117.0.extract.trunc = trunc nuw i64 %.sroa.5117.0.extract.shift to i32
  switch i32 %.sroa.5117.0.extract.trunc, label %bb.h [
    i32 -1, label %.critedge
    i32 1, label %bb.v
  ]

bb.h:                                             ; preds = %bb.g
  %i.bu = and i64 %i.bs, -4294967295
  br label %.critedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit68.thread238, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bv = and i64 %i.w, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.bx = add nsw i64 %i.w, -1
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = add i64 %i.bz, 11
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i16, ptr %i.cb monotonic, align 2
  %i.cd = icmp eq i16 %i.cc, 130
  br i1 %i.cd, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ce = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.cf = add i64 %i.ce, 11
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = icmp eq i16 %i.ch, 129
  br i1 %i.ci, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246, label %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.cj = tail call ptr @_ZN2v88internal6Object16ConvertToNumericINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i230234) ; 2 uses
  %.not256 = icmp eq ptr %i.cj, null
  br i1 %.not256, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.09.0.i244248 = phi ptr [ %i.cj, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.sroa.05.0.i230234, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.05.0.i230234, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.05.0.i230234, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %i.ck = load i64, ptr %.sroa.05.0.i72236240, align 8 ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i83

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i83: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246
  %i.cn = add nsw i64 %i.ck, -1
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load atomic volatile i64, ptr %i.co monotonic, align 8
  %i.cq = add i64 %i.cp, 11
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i16, ptr %i.cr monotonic, align 2
  %i.ct = icmp eq i16 %i.cs, 130
  br i1 %i.ct, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i84

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i84: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i83
  %i.cu = load atomic volatile i64, ptr %i.co monotonic, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  %i.cy = icmp eq i16 %i.cx, 129
  br i1 %i.cy, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252, label %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87

_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i84
  %i.cz = tail call ptr @_ZN2v88internal6Object16ConvertToNumericINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i72236240) ; 2 uses
  %.not257 = icmp eq ptr %i.cz, null
  br i1 %.not257, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i84, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i83, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87
  %.sroa.09.0.i86250254 = phi ptr [ %i.cz, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87 ], [ %.sroa.05.0.i72236240, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i83 ], [ %.sroa.05.0.i72236240, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i84 ], [ %.sroa.05.0.i72236240, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit69.thread246 ] ; 4 uses
  %i.da = load i64, ptr %.sroa.09.0.i244248, align 8 ; 4 uses
  %i.db = and i64 %i.da, 1
  %i.dc = icmp eq i64 %i.db, 0                    ; 2 uses
  br i1 %i.dc, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252
  %i.dd = add nsw i64 %i.da, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp eq i16 %i.di, 130
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252, %bb.i
  %.0.i62 = phi i1 [ %i.dj, %bb.i ], [ true, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit70.thread252 ] ; 3 uses
  %i.dk = load i64, ptr %.sroa.09.0.i86250254, align 8 ; 4 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0                    ; 2 uses
  br i1 %i.dm, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63
  %i.dn = add nsw i64 %i.dk, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8
  %i.dq = add i64 %i.dp, 11
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i16, ptr %i.dr monotonic, align 2
  %i.dt = icmp eq i16 %i.ds, 130
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63, %bb.j
  %.0.i = phi i1 [ %i.dt, %bb.j ], [ true, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit63 ] ; 2 uses
  %or.cond = and i1 %.0.i62, %.0.i
  br i1 %or.cond, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.du = lshr i64 %i.da, 32
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = sitofp i32 %i.dv to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.dx = add nsw i64 %i.da, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.dz, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.l, %bb.m
  %i.ea = phi double [ %i.dw, %bb.l ], [ %.0.copyload.i.i.i.i.i.i, %bb.m ] ; 3 uses
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.eb = lshr i64 %i.dk, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = sitofp i32 %i.ec to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.ee = add nsw i64 %i.dk, -1
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.0.copyload.i.i.i.i.i.i90 = load double, ptr %i.eg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91: ; preds = %bb.n, %bb.o
  %i.eh = phi double [ %i.ed, %bb.n ], [ %.0.copyload.i.i.i.i.i.i90, %bb.o ] ; 3 uses
  %or.cond.i = fcmp uno double %i.ea, %i.eh
  br i1 %or.cond.i, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91
  %i.ei = fcmp olt double %i.ea, %i.eh
  br i1 %i.ei, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = fcmp ogt double %i.ea, %i.eh
  %i.ek = select i1 %i.ej, i64 4294967297, i64 1
  br label %.critedge

bb.r:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %or.cond5 = or i1 %.0.i62, %.0.i
  br i1 %or.cond5, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = tail call noundef i32 @_ZN2v88internal6BigInt15CompareToBigIntENS0_12DirectHandleIS1_EES3_(ptr nonnull %.sroa.09.0.i244248, ptr nonnull %.sroa.09.0.i86250254) #27
  %.sroa.21.0.insert.ext.i96 = zext i32 %i.el to i64
  %.sroa.21.0.insert.shift.i97 = shl nuw i64 %.sroa.21.0.insert.ext.i96, 32
  %.sroa.0.0.insert.insert.i98 = or disjoint i64 %.sroa.21.0.insert.shift.i97, 1
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  br i1 %.0.i62, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.em = tail call noundef i32 @_ZN2v88internal6BigInt15CompareToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nonnull %.sroa.09.0.i86250254, ptr nonnull %.sroa.09.0.i244248) #27 ; 2 uses
  switch i32 %i.em, label %bb.w [
    i32 -1, label %.critedge
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.g, %bb.u
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.en = zext i32 %i.em to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = or disjoint i64 %i.eo, 1
  br label %.critedge

bb.x:                                             ; preds = %bb.t
  %i.eq = tail call noundef i32 @_ZN2v88internal6BigInt15CompareToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nonnull %.sroa.09.0.i244248, ptr nonnull %.sroa.09.0.i86250254) #27
  %.sroa.21.0.insert.ext.i104 = zext i32 %i.eq to i64
  %.sroa.21.0.insert.shift.i105 = shl nuw i64 %.sroa.21.0.insert.ext.i104, 32
  %.sroa.0.0.insert.insert.i106 = or disjoint i64 %.sroa.21.0.insert.shift.i105, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.q, %bb.p, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91, %bb.h, %bb.g, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZNK2v85MaybeINS_8internal16ComparisonResultEE2ToEPS2_.exit, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit, %bb.s, %bb.x, %bb.e, %bb.c
  %.sroa.061.2 = phi i64 [ %.sroa.0.0.insert.insert.i98, %bb.s ], [ %.sroa.0.0.insert.insert.i, %bb.c ], [ %i.bd, %bb.e ], [ 0, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit73 ], [ 0, %_ZNK2v85MaybeINS_8internal16ComparisonResultEE2ToEPS2_.exit ], [ 4294967297, %bb.g ], [ %i.ek, %bb.q ], [ %.sroa.0.0.insert.insert.i106, %bb.x ], [ 0, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ 0, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit87 ], [ 0, %_ZN2v88internal6Object9ToNumericIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.bu, %bb.h ], [ 4294967297, %bb.u ], [ -4294967295, %bb.p ], [ 8589934593, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit91 ], [ %i.ep, %bb.w ], [ -4294967295, %bb.v ]
  ret i64 %.sroa.061.2
}

declare noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare i64 @_ZN2v88internal6BigInt15CompareToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal6BigInt15CompareToBigIntENS0_12DirectHandleIS1_EES3_(ptr, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal6BigInt15CompareToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal6Object6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.sroa.0390.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0390.0.be, %tailrecurse.backedge ] ; 20 uses
  %.sroa.0363.0 = phi ptr [ %2, %bb.a ], [ %.sroa.0363.0.be, %tailrecurse.backedge ] ; 26 uses
  %i.c = load i64, ptr %.sroa.0390.0, align 8     ; 11 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0                      ; 3 uses
  br i1 %i.e, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165: ; preds = %tailrecurse
  %i.f = add nsw i64 %i.c, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 12 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 130
  br i1 %i.l, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit167

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165.thread: ; preds = %tailrecurse, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165
  %i.m = load i64, ptr %.sroa.0363.0, align 8     ; 4 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165.thread
  %i.p = add nsw i64 %i.m, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 7 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163.thread, label %bb.f

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163.thread: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163.thread
  %i.w = lshr i64 %i.c, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = sitofp i32 %i.x to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163.thread
  %i.z = add nsw i64 %i.c, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ab, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i: ; preds = %bb.c, %bb.b
  %i.ac = phi double [ %i.y, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %bb.c ]
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.ad = lshr i64 %i.m, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.ag = add nsw i64 %i.m, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i4.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi double [ %i.af, %bb.d ], [ %.0.copyload.i.i.i.i.i4.i, %bb.e ]
  %i.ak = fcmp oeq double %i.ac, %i.aj
  %.sroa.0.0.insert.insert.i = select i1 %i.ak, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.f:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit163
  %i.al = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 131
  br i1 %i.ap, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit179, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit168

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit179: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 1090921693184
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit168

bb.g:                                             ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit179
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr i64 %i.c, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = sitofp i32 %i.ax to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i208

bb.i:                                             ; preds = %bb.g
  %i.az = add nsw i64 %i.c, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.copyload.i.i.i.i.i.i207 = load double, ptr %i.bb, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i208

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i208: ; preds = %bb.i, %bb.h
  %i.bc = phi double [ %i.ay, %bb.h ], [ %.0.copyload.i.i.i.i.i.i207, %bb.i ]
  %i.bd = and i64 %i.av, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i208
  %i.bf = lshr i64 %i.av, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = sitofp i32 %i.bg to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit210

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i208
  %i.bi = add nsw i64 %i.av, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.0.copyload.i.i.i.i.i4.i209 = load double, ptr %i.bk, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit210

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit210: ; preds = %bb.j, %bb.k
  %i.bl = phi double [ %i.bh, %bb.j ], [ %.0.copyload.i.i.i.i.i4.i209, %bb.k ]
  %i.bm = fcmp oeq double %i.bc, %i.bl
  %.sroa.0.0.insert.insert.i213 = select i1 %i.bm, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit168: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit179, %bb.f
  %i.bn = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = icmp ult i16 %i.bq, 128
  br i1 %i.br, label %bb.l, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit173

bb.l:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit168
  %i.bs = tail call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.0363.0) #27
  %i.bt = load i64, ptr %.sroa.0390.0, align 8    ; 3 uses
  %i.bu = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.bv = and i64 %i.bt, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = lshr i64 %i.bt, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = sitofp i32 %i.by to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ca = add nsw i64 %i.bt, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.cc, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cd = phi double [ %i.bz, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.n ]
  %i.ce = and i64 %i.bu, 1
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.cg = lshr i64 %i.bu, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = sitofp i32 %i.ch to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

bb.p:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.cj = add nsw i64 %i.bu, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.0.copyload.i.i.i.i.i4.i.i = load double, ptr %i.cl, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit: ; preds = %bb.o, %bb.p
  %i.cm = phi double [ %i.ci, %bb.o ], [ %.0.copyload.i.i.i.i.i4.i.i, %bb.p ]
  %i.cn = fcmp oeq double %i.cd, %i.cm
  %.sroa.0.0.insert.insert.i217 = select i1 %i.cn, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit173: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit168
  %i.co = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.cp = add i64 %i.co, 11
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load atomic volatile i16, ptr %i.cq monotonic, align 2
  %i.cs = icmp eq i16 %i.cr, 129
  br i1 %i.cs, label %bb.q, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit187

bb.q:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit173
  %i.ct = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nonnull %.sroa.0363.0, ptr nonnull %.sroa.0390.0) #27
  %.sroa.0.0.insert.insert.i221 = select i1 %i.ct, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit187: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit173
  %i.cu = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  %i.cy = icmp ugt i16 %i.cx, 299
  br i1 %i.cy, label %bb.r, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.r:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit187
  %i.cz = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.0363.0, i32 noundef 0) #27 ; 2 uses
  %.not809 = icmp eq ptr %i.cz, null
  br i1 %.not809, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %tailrecurse.backedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit167: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit165
  %i.da = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.db = add i64 %i.da, 11
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i16, ptr %i.dc monotonic, align 2
  %i.de = icmp ult i16 %i.dd, 128
  br i1 %i.de, label %bb.s, label %bb.aj

bb.s:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit167
  %i.df = load i64, ptr %.sroa.0363.0, align 8    ; 5 uses
  %i.dg = trunc i64 %i.df to i1                   ; 2 uses
  br i1 %i.dg, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166: ; preds = %bb.s
  %i.dh = add nsw i64 %i.df, -1
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %i.dj = load atomic volatile i64, ptr %i.di monotonic, align 8
  %i.dk = add i64 %i.dj, 11
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i16, ptr %i.dl monotonic, align 2
  %i.dn = icmp ult i16 %i.dm, 128
  br i1 %i.dn, label %bb.t, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166.thread

bb.t:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166
  %i.do = icmp eq ptr %.sroa.0390.0, %.sroa.0363.0
  %i.dp = icmp eq i64 %i.c, %i.df
  %or.cond = or i1 %i.do, %i.dp
  br i1 %or.cond, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread35.i

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread35.i: ; preds = %bb.t
  %i.dq = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.dr = add i64 %i.dq, 11
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i16, ptr %i.ds monotonic, align 2
  %i.du = and i16 %i.dt, -96
  %i.dv = icmp eq i16 %i.du, 0
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread35.i
  %i.dw = load atomic volatile i64, ptr %i.di monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, -96
  %i.eb = icmp eq i16 %i.ea, 0
  br i1 %i.eb, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread35.i
  %i.ec = tail call noundef zeroext i1 @_ZN2v88internal6String10SlowEqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %0, ptr nonnull %.sroa.0390.0, ptr nonnull %.sroa.0363.0) #27
  %i.ed = select i1 %i.ec, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166.thread: ; preds = %bb.s, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166
  %i.ee = and i64 %i.df, 1
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166.thread
  %i.eg = add nsw i64 %i.df, -1
  %i.eh = inttoptr i64 %i.eg to ptr               ; 5 uses
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 130
  br i1 %i.em, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161.thread, label %bb.aa

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit166.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161
  %i.en = tail call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.0390.0) #27
  %i.eo = load i64, ptr %i.en, align 8            ; 3 uses
  %i.ep = load i64, ptr %.sroa.0363.0, align 8    ; 3 uses
  %i.eq = and i64 %i.eo, 1
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161.thread
  %i.es = lshr i64 %i.eo, 32
  %i.et = trunc nuw i64 %i.es to i32
  %i.eu = sitofp i32 %i.et to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i234

bb.x:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161.thread
  %i.ev = add nsw i64 %i.eo, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.0.copyload.i.i.i.i.i.i233 = load double, ptr %i.ex, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i234

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i234: ; preds = %bb.x, %bb.w
  %i.ey = phi double [ %i.eu, %bb.w ], [ %.0.copyload.i.i.i.i.i.i233, %bb.x ]
  %i.ez = and i64 %i.ep, 1
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i234
  %i.fb = lshr i64 %i.ep, 32
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = sitofp i32 %i.fc to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit236

bb.z:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i234
  %i.fe = add nsw i64 %i.ep, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.copyload.i.i.i.i.i4.i235 = load double, ptr %i.fg, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit236

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit236: ; preds = %bb.y, %bb.z
  %i.fh = phi double [ %i.fd, %bb.y ], [ %.0.copyload.i.i.i.i.i4.i235, %bb.z ]
  %i.fi = fcmp oeq double %i.ey, %i.fh
  %.sroa.0.0.insert.insert.i239 = select i1 %i.fi, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.aa:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit161
  br i1 %i.dg, label %bb.ab, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fj = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.fk = add i64 %i.fj, 11
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load atomic volatile i16, ptr %i.fl monotonic, align 2
  %i.fn = icmp eq i16 %i.fm, 131
  br i1 %i.fn, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit178, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit172

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit178: ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, 1090921693184
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.ac, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit172

bb.ac:                                            ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit178
  %i.fs = tail call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.0390.0) #27
  %i.ft = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.fu = load i64, ptr %.sroa.0363.0, align 8
  %i.fv = add i64 %i.fu, -1
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load i64, ptr %i.fx, align 8            ; 3 uses
  %i.fz = and i64 %i.ft, 1
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gb = lshr i64 %i.ft, 32
  %i.gc = trunc nuw i64 %i.gb to i32
  %i.gd = sitofp i32 %i.gc to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i242

bb.ae:                                            ; preds = %bb.ac
  %i.ge = add nsw i64 %i.ft, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.0.copyload.i.i.i.i.i.i241 = load double, ptr %i.gg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i242

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i242: ; preds = %bb.ae, %bb.ad
  %i.gh = phi double [ %i.gd, %bb.ad ], [ %.0.copyload.i.i.i.i.i.i241, %bb.ae ]
  %i.gi = and i64 %i.fy, 1
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i242
  %i.gk = lshr i64 %i.fy, 32
  %i.gl = trunc nuw i64 %i.gk to i32
  %i.gm = sitofp i32 %i.gl to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit244

bb.ag:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i242
  %i.gn = add nsw i64 %i.fy, -1
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.0.copyload.i.i.i.i.i4.i243 = load double, ptr %i.gp, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit244

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit244: ; preds = %bb.af, %bb.ag
  %i.gq = phi double [ %i.gm, %bb.af ], [ %.0.copyload.i.i.i.i.i4.i243, %bb.ag ]
  %i.gr = fcmp oeq double %i.gh, %i.gq
  %.sroa.0.0.insert.insert.i247 = select i1 %i.gr, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit172: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit178, %bb.ab
  %i.gs = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.gt = add i64 %i.gs, 11
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load atomic volatile i16, ptr %i.gu monotonic, align 2
  %i.gw = icmp eq i16 %i.gv, 129
  br i1 %i.gw, label %bb.ah, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit186

bb.ah:                                            ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit172
  %i.gx = tail call i16 @_ZN2v88internal6BigInt13EqualToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef %0, ptr nonnull %.sroa.0363.0, ptr nonnull %.sroa.0390.0) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit186: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit172
  %i.gy = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.gz = add i64 %i.gy, 11
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load atomic volatile i16, ptr %i.ha monotonic, align 2
  %i.hc = icmp ugt i16 %i.hb, 299
  br i1 %i.hc, label %bb.ai, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ai:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit186
  %i.hd = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.0363.0, i32 noundef 0) #27 ; 2 uses
  %.not806 = icmp eq ptr %i.hd, null
  br i1 %.not806, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %tailrecurse.backedge

bb.aj:                                            ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit167
  %i.he = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.hf = add i64 %i.he, 11
  %i.hg = inttoptr i64 %i.hf to ptr
  %i.hh = load atomic volatile i16, ptr %i.hg monotonic, align 2
  %i.hi = icmp eq i16 %i.hh, 131
  br i1 %i.hi, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit177, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit169

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit177: ; preds = %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = and i64 %i.hk, 1090921693184
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ak, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit169

bb.ak:                                            ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit177
  %i.hn = load i64, ptr %.sroa.0363.0, align 8    ; 7 uses
  %i.ho = trunc i64 %i.hn to i1                   ; 2 uses
  br i1 %i.ho, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ak
  %i.hp = add nsw i64 %i.hn, -1
  %i.hq = inttoptr i64 %i.hp to ptr
  %i.hr = load atomic volatile i64, ptr %i.hq monotonic, align 8
  %i.hs = add i64 %i.hr, 11
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load atomic volatile i16, ptr %i.ht monotonic, align 2
  %i.hv = icmp eq i16 %i.hu, 131
  br i1 %i.hv, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hw = icmp eq ptr %.sroa.0390.0, %.sroa.0363.0
  %i.hx = icmp eq i64 %i.c, %i.hn
  %i.hy = or i1 %i.hw, %i.hx
  %.0.i192 = select i1 %i.hy, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ak, %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hz = and i64 %i.hn, 1
  %i.ia = icmp eq i64 %i.hz, 0                    ; 2 uses
  br i1 %i.ia, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ib = add nsw i64 %i.hn, -1
  %i.ic = inttoptr i64 %i.ib to ptr               ; 4 uses
  %i.id = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.ie = add i64 %i.id, 11
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load atomic volatile i16, ptr %i.if monotonic, align 2
  %i.ih = icmp eq i16 %i.ig, 130
  br i1 %i.ih, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.ap

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ij = load i64, ptr %i.ii, align 8            ; 3 uses
  %i.ik = and i64 %i.ij, 1
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.im = lshr i64 %i.ij, 32
  %i.in = trunc nuw i64 %i.im to i32
  %i.io = sitofp i32 %i.in to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i260

bb.am:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ip = add nsw i64 %i.ij, -1
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %.0.copyload.i.i.i.i.i.i259 = load double, ptr %i.ir, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i260

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i260: ; preds = %bb.am, %bb.al
  %i.is = phi double [ %i.io, %bb.al ], [ %.0.copyload.i.i.i.i.i.i259, %bb.am ]
  br i1 %i.ia, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i260
  %i.it = lshr i64 %i.hn, 32
  %i.iu = trunc nuw i64 %i.it to i32
  %i.iv = sitofp i32 %i.iu to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit262

bb.ao:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i260
  %i.iw = add nsw i64 %i.hn, -1
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.0.copyload.i.i.i.i.i4.i261 = load double, ptr %i.iy, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit262

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit262: ; preds = %bb.an, %bb.ao
  %i.iz = phi double [ %i.iv, %bb.an ], [ %.0.copyload.i.i.i.i.i4.i261, %bb.ao ]
  %i.ja = fcmp oeq double %i.is, %i.iz
  %.sroa.0.0.insert.insert.i265 = select i1 %i.ja, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ap:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.ho, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ap
  %i.jb = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.jc = add i64 %i.jb, 11
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = load atomic volatile i16, ptr %i.jd monotonic, align 2
  %i.jf = icmp ult i16 %i.je, 128
  br i1 %i.jf, label %bb.aq, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit171

bb.aq:                                            ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.jg = tail call ptr @_ZN2v88internal6String8ToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.0363.0) #27
  %i.jh = load i64, ptr %.sroa.0390.0, align 8
  %i.ji = add i64 %i.jh, -1
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load i64, ptr %i.jk, align 8            ; 3 uses
  %i.jm = load i64, ptr %i.jg, align 8            ; 3 uses
  %i.jn = and i64 %i.jl, 1
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jp = lshr i64 %i.jl, 32
  %i.jq = trunc nuw i64 %i.jp to i32
  %i.jr = sitofp i32 %i.jq to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i268

bb.as:                                            ; preds = %bb.aq
  %i.js = add nsw i64 %i.jl, -1
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.0.copyload.i.i.i.i.i.i267 = load double, ptr %i.ju, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i268

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i268: ; preds = %bb.as, %bb.ar
  %i.jv = phi double [ %i.jr, %bb.ar ], [ %.0.copyload.i.i.i.i.i.i267, %bb.as ]
  %i.jw = and i64 %i.jm, 1
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i268
  %i.jy = lshr i64 %i.jm, 32
  %i.jz = trunc nuw i64 %i.jy to i32
  %i.ka = sitofp i32 %i.jz to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit270

bb.au:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i268
  %i.kb = add nsw i64 %i.jm, -1
  %i.kc = inttoptr i64 %i.kb to ptr
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.0.copyload.i.i.i.i.i4.i269 = load double, ptr %i.kd, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit270

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit270: ; preds = %bb.at, %bb.au
  %i.ke = phi double [ %i.ka, %bb.at ], [ %.0.copyload.i.i.i.i.i4.i269, %bb.au ]
  %i.kf = fcmp oeq double %i.jv, %i.ke
  %.sroa.0.0.insert.insert.i273 = select i1 %i.kf, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit171: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.kg = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.kh = add i64 %i.kg, 11
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load atomic volatile i16, ptr %i.ki monotonic, align 2
  %i.kk = icmp eq i16 %i.kj, 129
  br i1 %i.kk, label %bb.av, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit185

bb.av:                                            ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit171
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ko = load ptr, ptr %i.b, align 8
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %bb.aw, label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !52

bb.aw:                                            ; preds = %bb.av
  %i.kq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.av, %bb.aw
  %.0.i.i = phi ptr [ %i.kq, %bb.aw ], [ %i.kn, %bb.av ] ; 3 uses
  %i.kr = ptrtoint ptr %.0.i.i to i64
  %i.ks = add i64 %i.kr, 8
  %i.kt = inttoptr i64 %i.ks to ptr
  store ptr %i.kt, ptr %i.a, align 8
  store i64 %i.km, ptr %.0.i.i, align 8
  %i.ku = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nonnull %.sroa.0363.0, ptr nonnull %.0.i.i) #27
  %.sroa.0.0.insert.insert.i277 = select i1 %i.ku, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit185: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit171
  %i.kv = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.kw = add i64 %i.kv, 11
  %i.kx = inttoptr i64 %i.kw to ptr
  %i.ky = load atomic volatile i16, ptr %i.kx monotonic, align 2
  %i.kz = icmp ugt i16 %i.ky, 299
  br i1 %i.kz, label %bb.ax, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ax:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit185
  %i.la = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.0363.0, i32 noundef 0) #27 ; 2 uses
  %.not802 = icmp eq ptr %i.la, null
  br i1 %.not802, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lb = load i64, ptr %.sroa.0390.0, align 8
  %i.lc = add i64 %i.lb, -1
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.lh = load ptr, ptr %i.b, align 8
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %bb.az, label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280, !prof !52

bb.az:                                            ; preds = %bb.ay
  %i.lj = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280

_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280: ; preds = %bb.ay, %bb.az
  %.0.i.i279 = phi ptr [ %i.lj, %bb.az ], [ %i.lg, %bb.ay ] ; 3 uses
  %i.lk = ptrtoint ptr %.0.i.i279 to i64
  %i.ll = add i64 %i.lk, 8
  %i.lm = inttoptr i64 %i.ll to ptr
  store ptr %i.lm, ptr %i.a, align 8
  store i64 %i.lf, ptr %.0.i.i279, align 8
  br label %tailrecurse.backedge

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit169: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit177, %bb.aj
  %i.ln = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.lo = add i64 %i.ln, 11
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load atomic volatile i16, ptr %i.lp monotonic, align 2
  %i.lr = icmp eq i16 %i.lq, 128
  br i1 %i.lr, label %bb.ba, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit170

bb.ba:                                            ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit169
  %i.ls = load i64, ptr %.sroa.0363.0, align 8    ; 3 uses
  %i.lt = trunc i64 %i.ls to i1
  br i1 %i.lt, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ba
  %i.lu = add nsw i64 %i.ls, -1
  %i.lv = inttoptr i64 %i.lu to ptr               ; 2 uses
  %i.lw = load atomic volatile i64, ptr %i.lv monotonic, align 8
  %i.lx = add i64 %i.lw, 11
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = load atomic volatile i16, ptr %i.ly monotonic, align 2
  %i.ma = icmp eq i16 %i.lz, 128
  br i1 %i.ma, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit196, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit184

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit196: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.mb = icmp eq ptr %.sroa.0390.0, %.sroa.0363.0
  %i.mc = icmp eq i64 %i.c, %i.ls
  %spec.select793 = or i1 %i.mb, %i.mc
  %.sroa.0.0.insert.insert.i288 = select i1 %spec.select793, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit184: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.md = load atomic volatile i64, ptr %i.lv monotonic, align 8
  %i.me = add i64 %i.md, 11
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = load atomic volatile i16, ptr %i.mf monotonic, align 2
  %i.mh = icmp ugt i16 %i.mg, 299
  br i1 %i.mh, label %bb.bb, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.bb:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit184
  %i.mi = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.0363.0, i32 noundef 0) #27 ; 2 uses
  %.not800 = icmp eq ptr %i.mi, null
  br i1 %.not800, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %tailrecurse.backedge

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit170: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit169
  %i.mj = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.mk = add i64 %i.mj, 11
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = load atomic volatile i16, ptr %i.ml monotonic, align 2
  %i.mn = icmp eq i16 %i.mm, 129
  br i1 %i.mn, label %bb.bc, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit183

bb.bc:                                            ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit170
  %i.mo = load i64, ptr %.sroa.0363.0, align 8    ; 3 uses
  %i.mp = trunc i64 %i.mo to i1
  br i1 %i.mp, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bc, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.bb, %bb.ai, %bb.r, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280
  %.sroa.0390.0.be = phi ptr [ %.sroa.0363.0, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.0363.0, %bb.bc ], [ %.sroa.0390.0, %bb.bb ], [ %.sroa.0390.0, %bb.r ], [ %.0.i.i279, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280 ], [ %.sroa.0390.0, %bb.ai ], [ %.sroa.0390.0, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310 ], [ %i.oq, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %.sroa.0363.0.be = phi ptr [ %.sroa.0390.0, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.0390.0, %bb.bc ], [ %i.mi, %bb.bb ], [ %i.cz, %bb.r ], [ %i.la, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit280 ], [ %i.hd, %bb.ai ], [ %.0.i.i309, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310 ], [ %.sroa.0363.0, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  br label %tailrecurse, !llvm.loop !273

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bc
  %i.mq = add nsw i64 %i.mo, -1
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load atomic volatile i64, ptr %i.mr monotonic, align 8
  %i.mt = add i64 %i.ms, 11
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = load atomic volatile i16, ptr %i.mu monotonic, align 2
  %i.mw = icmp eq i16 %i.mv, 129
  br i1 %i.mw, label %bb.bd, label %tailrecurse.backedge

bb.bd:                                            ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.mx = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64 %i.c, i64 %i.mo) #27
  %.sroa.0.0.insert.insert.i297 = select i1 %i.mx, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit183: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit170
  %i.my = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.mz = add i64 %i.my, 11
  %i.na = inttoptr i64 %i.mz to ptr
  %i.nb = load atomic volatile i16, ptr %i.na monotonic, align 2
  %i.nc = icmp ugt i16 %i.nb, 299
  br i1 %i.nc, label %bb.be, label %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit180

bb.be:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit183
  %i.nd = load i64, ptr %.sroa.0363.0, align 8    ; 3 uses
  %i.ne = trunc i64 %i.nd to i1
  br i1 %i.ne, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.be
  %i.nf = add nsw i64 %i.nd, -1
  %i.ng = inttoptr i64 %i.nf to ptr               ; 5 uses
  %i.nh = load atomic volatile i64, ptr %i.ng monotonic, align 8
  %i.ni = add i64 %i.nh, 11
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = load atomic volatile i16, ptr %i.nj monotonic, align 2
  %i.nl = icmp ugt i16 %i.nk, 299
  br i1 %i.nl, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit200, label %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit182

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit200: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.nm = icmp eq ptr %.sroa.0390.0, %.sroa.0363.0
  %i.nn = icmp eq i64 %i.c, %i.nd
  %spec.select794 = or i1 %i.nm, %i.nn
  %.sroa.0.0.insert.insert.i302 = select i1 %spec.select794, i16 257, i16 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit182: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.no = load atomic volatile i64, ptr %i.ng monotonic, align 8
  %i.np = add i64 %i.no, 13
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = load atomic volatile i8, ptr %i.nq monotonic, align 1
  %i.ns = and i8 %i.nr, 16
  %.not795 = icmp eq i8 %i.ns, 0
  br i1 %.not795, label %bb.bf, label %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit181

_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit181: ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit182
  %i.nt = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.nu = add i64 %i.nt, 13
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = load atomic volatile i8, ptr %i.nv monotonic, align 1
  %i.nx = lshr i8 %i.nw, 4
  %.lobit797 = and i8 %i.nx, 1
  %.sroa.2.0.insert.ext.i305 = zext nneg i8 %.lobit797 to i16
  %.sroa.2.0.insert.shift.i306 = shl nuw nsw i16 %.sroa.2.0.insert.ext.i305, 8
  %.sroa.0.0.insert.insert.i307 = or disjoint i16 %.sroa.2.0.insert.shift.i306, 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.bf:                                            ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit182
  %i.ny = load atomic volatile i64, ptr %i.ng monotonic, align 8
  %i.nz = add i64 %i.ny, 11
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = load atomic volatile i16, ptr %i.oa monotonic, align 2
  %i.oc = icmp eq i16 %i.ob, 131
  br i1 %i.oc, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bf
  %i.od = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = and i64 %i.oe, 1090921693184
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %bb.bg, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.bg:                                            ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ok = load ptr, ptr %i.b, align 8
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %bb.bh, label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310, !prof !52

bb.bh:                                            ; preds = %bb.bg
  %i.om = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310

_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit310: ; preds = %bb.bg, %bb.bh
  %.0.i.i309 = phi ptr [ %i.om, %bb.bh ], [ %i.oj, %bb.bg ] ; 3 uses
  %i.on = ptrtoint ptr %.0.i.i309 to i64
  %i.oo = add i64 %i.on, 8
  %i.op = inttoptr i64 %i.oo to ptr
  store ptr %i.op, ptr %i.a, align 8
  store i64 %i.oi, ptr %.0.i.i309, align 8
  br label %tailrecurse.backedge

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.bf, %bb.be, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.oq = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %.sroa.0390.0, i32 noundef 0) #27 ; 2 uses
  %.not796 = icmp eq ptr %i.oq, null
  br i1 %.not796, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %tailrecurse.backedge

_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit180: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit183
  %i.or = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.os = add i64 %i.or, 13
  %i.ot = inttoptr i64 %i.os to ptr
  %i.ou = load atomic volatile i8, ptr %i.ot monotonic, align 1
  %i.ov = and i8 %i.ou, 16
  %.not = icmp eq i8 %i.ov, 0
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit180
  %i.ow = load i64, ptr %.sroa.0363.0, align 8    ; 2 uses
  %i.ox = trunc i64 %i.ow to i1
  br i1 %i.ox, label %bb.bj, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.bj:                                            ; preds = %bb.bi
  %i.oy = add nsw i64 %i.ow, -1
  %i.oz = inttoptr i64 %i.oy to ptr
  %i.pa = load atomic volatile i64, ptr %i.oz monotonic, align 8
  %i.pb = add i64 %i.pa, 13
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = load atomic volatile i8, ptr %i.pc monotonic, align 1
  %i.pe = lshr i8 %i.pd, 4
  %.lobit = and i8 %i.pe, 1
  %i.pf = zext nneg i8 %.lobit to i16
  %i.pg = shl nuw nsw i16 %i.pf, 8
  %i.ph = or disjoint i16 %i.pg, 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.ba, %bb.ap, %bb.aa, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit184, %bb.bb, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit185, %bb.ax, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit186, %bb.ai, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit187, %bb.r, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit180, %bb.bi, %bb.bj, %bb.v, %bb.u, %bb.t, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit181, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit200, %bb.bd, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit196, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit270, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit262, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %bb.ah, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit244, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit236, %bb.q, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit210, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit
  %.sroa.0159.0 = phi i16 [ %.sroa.0.0.insert.insert.i, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit ], [ %.sroa.0.0.insert.insert.i213, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit210 ], [ %.sroa.0.0.insert.insert.i217, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit ], [ %.sroa.0.0.insert.insert.i221, %bb.q ], [ 1, %bb.u ], [ %.sroa.0.0.insert.insert.i297, %bb.bd ], [ 257, %bb.t ], [ %.sroa.0.0.insert.insert.i239, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit236 ], [ %.sroa.0.0.insert.insert.i247, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit244 ], [ %i.gx, %bb.ah ], [ %.sroa.0.0.insert.insert.i302, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit200 ], [ %.sroa.0.0.insert.insert.i307, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit181 ], [ %.0.i192, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit ], [ %.sroa.0.0.insert.insert.i265, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit262 ], [ %.sroa.0.0.insert.insert.i273, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit270 ], [ %.sroa.0.0.insert.insert.i277, %_ZN2v88internal7Oddball8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ], [ 1, %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit180 ], [ 1, %bb.bi ], [ %.sroa.0.0.insert.insert.i288, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit196 ], [ %i.ph, %bb.bj ], [ %i.ed, %bb.v ], [ 1, %bb.ap ], [ 0, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit184 ], [ 1, %bb.ba ], [ 0, %bb.bb ], [ 1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit185 ], [ 0, %bb.ax ], [ 1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit186 ], [ 0, %bb.ai ], [ 1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit187 ], [ 1, %bb.aa ], [ 0, %bb.r ]
  ret i16 %.sroa.0159.0
}

declare noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr, ptr) local_unnamed_addr #2

declare i16 @_ZN2v88internal6BigInt13EqualToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Object12StrictEqualsENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32: ; preds = %bb.a
  %i.c = add nsw i64 %0, -1                       ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 130
  br i1 %i.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32
  %i.j = and i64 %1, 1
  %i.k = icmp eq i64 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread
  %i.l = add nsw i64 %1, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 130
  br i1 %i.r, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.s = lshr i64 %0, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = sitofp i32 %i.t to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.v = add nsw i64 %0, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.x, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i: ; preds = %bb.c, %bb.b
  %i.y = phi double [ %i.u, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %bb.c ]
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.z = lshr i64 %1, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = sitofp i32 %i.aa to double
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i
  %i.ac = add nsw i64 %1, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i.i.i.i.i4.i = load double, ptr %i.ae, align 1
  br label %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit

_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi double [ %i.ab, %bb.d ], [ %.0.copyload.i.i.i.i.i4.i, %bb.e ]
  %i.ag = fcmp oeq double %i.y, %i.af
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32
  %i.ah = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = icmp ult i16 %i.ak, 128
  br i1 %i.al, label %bb.f, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34

bb.f:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33
  %i.am = trunc i64 %1 to i1
  br i1 %i.am, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.an = add nsw i64 %1, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp ult i16 %i.as, 128
  br i1 %i.at, label %bb.g, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.au = or disjoint i64 %i.c, 1
  %i.av = icmp eq i64 %1, %i.au
  br i1 %i.av, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.ax = add i64 %i.aw, 11
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2
  %i.ba = and i16 %i.az, -96
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = and i16 %i.bf, -96
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33
  %i.bj = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp eq i16 %i.bm, 129
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34.thread

bb.k:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34
  %i.bo = trunc i64 %1 to i1
  br i1 %i.bo, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k
  %i.bp = add nsw i64 %1, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i64, ptr %i.bq monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp eq i16 %i.bu, 129
  br i1 %i.bv, label %bb.l, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.l:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bw = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34.thread: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34
  %i.bx = icmp eq i64 %0, %1
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.k, %bb.f, %bb.j, %bb.i, %bb.g, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34.thread, %bb.l, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit
  %.0 = phi i1 [ %i.ag, %_ZN2v88internal12_GLOBAL__N_118StrictNumberEqualsENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_.exit ], [ %i.bx, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34.thread ], [ false, %bb.f ], [ false, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bw, %bb.l ], [ false, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bi, %bb.j ], [ true, %bb.g ], [ false, %bb.i ], [ false, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object6TypeOfEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 8 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6888
  br label %bb.i

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.l = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 131
  br i1 %i.p, label %bb.b, label %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i18 = phi ptr [ %i.x, %bb.c ], [ %i.t, %bb.b ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i18 to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %i.r, ptr %.0.i18, align 8
  br label %bb.i

_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ab = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ac = add i64 %i.ab, 13
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i8, ptr %i.ad monotonic, align 1
  %i.af = and i8 %i.ae, 16
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7696
  br label %bb.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal14IsUndetectableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ah = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = icmp ult i16 %i.ak, 128
  br i1 %i.al, label %bb.e, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7440
  br label %bb.i

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.an = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp eq i16 %i.aq, 128
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7536
  br label %bb.i

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.at = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = icmp eq i16 %i.aw, 129
  br i1 %i.ax, label %bb.g, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5480
  br label %bb.i

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.az = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ba = add i64 %i.az, 13
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i8, ptr %i.bb monotonic, align 1
  %i.bd = and i8 %i.bc, 2
  %.not114 = icmp eq i8 %i.bd, 0
  br i1 %.not114, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6160
  br label %bb.i

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6912
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.017.0 = phi ptr [ %i.k, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.0.i18, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ], [ %i.as, %bb.f ], [ %i.ay, %bb.g ], [ %i.be, %bb.h ], [ %i.bf, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret ptr %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object3AddEPNS0_7IsolateENS0_6HandleIS1_EES5_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 7 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 3 uses
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46: ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46.thread, label %bb.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46
  %i.k = load i64, ptr %2, align 8                ; 4 uses
  %i.l = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46.thread
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp eq i16 %i.s, 130
  br i1 %i.t, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.u = lshr i64 %i.a, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = sitofp i32 %i.v to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.x = add nsw i64 %i.a, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.z, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi double [ %i.w, %bb.b ], [ %.0.copyload.i.i.i.i.i, %bb.c ]
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ab = lshr i64 %i.k, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = sitofp i32 %i.ac to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit59

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ae = add nsw i64 %i.k, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i58 = load double, ptr %i.ag, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit59

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit59: ; preds = %bb.d, %bb.e
  %i.ah = phi double [ %i.ad, %bb.d ], [ %.0.copyload.i.i.i.i.i58, %bb.e ]
  %i.ai = fadd double %i.aa, %i.ah                ; 6 uses
  %i.aj = fcmp oge double %i.ai, f0xC1E0000000000000
  %i.ak = fcmp ole double %i.ai, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aj, %i.ak
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit59
  %i.al = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ai, /* (nzero) */ i32 32)
  br i1 %i.al, label %bb.h, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.f
  %i.am = fptosi double %i.ai to i32              ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = fcmp oeq double %i.ai, %i.an
  br i1 %i.ao, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.h

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.ap = sext i32 %i.am to i64
  %i.aq = shl nsw i64 %i.ap, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.g, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.g:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.g, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.as, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8
  store i64 %i.aq, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.h:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.f, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit59
  %i.ba = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.ai, ptr %i.be, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.i:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit46
  %i.bf = trunc i64 %i.a to i1
  br i1 %i.bf, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49: ; preds = %bb.i
  %i.bg = add nsw i64 %i.a, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = icmp ult i16 %i.bl, 128
  br i1 %i.bm, label %bb.j, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread

bb.j:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49
  %i.bn = load i64, ptr %2, align 8               ; 2 uses
  %i.bo = trunc i64 %i.bn to i1
  br i1 %i.bo, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48: ; preds = %bb.j
  %i.bp = add nsw i64 %i.bn, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i64, ptr %i.bq monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp ult i16 %i.bu, 128
  br i1 %i.bv, label %bb.k, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread

bb.k:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48
  %i.bw = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, ptr nonnull %2, i8 noundef zeroext 0) #27
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread: ; preds = %bb.j, %bb.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49
  br i1 %i.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread
  %i.bx = add nsw i64 %i.a, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = add i64 %i.bz, 11
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i16, ptr %i.cb monotonic, align 2
  %i.cd = icmp ult i16 %i.cc, 132
  br i1 %i.cd, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ce = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %1, i32 noundef 0) #27 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit
  %.sroa.05.0.i184190 = phi ptr [ %i.ce, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ %1, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit49.thread ] ; 6 uses
  %i.cg = load i64, ptr %2, align 8               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i62

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i62: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187
  %i.cj = add nsw i64 %i.cg, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp ult i16 %i.co, 132
  br i1 %i.cp, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195, label %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64

_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i62
  %i.cq = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %2, i32 noundef 0) #27 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i62, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64
  %.sroa.05.0.i63192198 = phi ptr [ %i.cq, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64 ], [ %2, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i62 ], [ %2, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread187 ] ; 7 uses
  %i.cs = load i64, ptr %.sroa.05.0.i184190, align 8 ; 5 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195._ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread_crit_edge

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195._ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread_crit_edge: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195
  %.pre231 = load i64, ptr %.sroa.05.0.i63192198, align 8
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195
  %i.cu = add nsw i64 %i.cs, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = add i64 %i.cw, 11
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load atomic volatile i16, ptr %i.cy monotonic, align 2
  %i.da = icmp ult i16 %i.cz, 128
  %.pre232 = load i64, ptr %.sroa.05.0.i63192198, align 8 ; 2 uses
  br i1 %i.da, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47._crit_edge, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195._ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47
  %i.db = phi i64 [ %.pre231, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit52.thread195._ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread_crit_edge ], [ %.pre232, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47 ] ; 5 uses
  %i.dc = trunc i64 %i.db to i1
  br i1 %i.dc, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread
  %i.dd = add nsw i64 %i.db, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp ult i16 %i.di, 128
  br i1 %i.dj, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47._crit_edge, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47._crit_edge: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dk = phi i64 [ %i.db, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.pre232, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47 ] ; 2 uses
  %i.dl = trunc i64 %i.dk to i1
  br i1 %i.dl, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47._crit_edge
  %i.dm = add nsw i64 %i.dk, -1
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load atomic volatile i64, ptr %i.dn monotonic, align 8
  %i.dp = add i64 %i.do, 11
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i16, ptr %i.dq monotonic, align 2
  %i.ds = icmp ult i16 %i.dr, 128
  br i1 %i.ds, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47._crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dt = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i63192198) ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre230 = load i64, ptr %.sroa.05.0.i184190, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dv = phi i64 [ %.pre230, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203_crit_edge ], [ %i.cs, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.sroa.07.0.i200206 = phi ptr [ %i.dt, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203_crit_edge ], [ %.sroa.05.0.i63192198, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.dw = trunc i64 %i.dv to i1
  br i1 %i.dw, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i69, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i69: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203
  %i.dx = add nsw i64 %i.dv, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8
  %i.ea = add i64 %i.dz, 11
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i16, ptr %i.eb monotonic, align 2
  %i.ed = icmp ult i16 %i.ec, 128
  br i1 %i.ed, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit.thread203, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i69
  %i.ee = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i184190) ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i69, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70
  %.sroa.07.0.i68208214 = phi ptr [ %i.ee, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70 ], [ %.sroa.05.0.i184190, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i69 ]
  %i.eg = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.07.0.i68208214, ptr nonnull %.sroa.07.0.i200206, i8 noundef zeroext 0) #27
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.eh = and i64 %i.db, 1
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ej = add nsw i64 %i.db, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i64, ptr %i.ek monotonic, align 8
  %i.em = add i64 %i.el, 11
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load atomic volatile i16, ptr %i.en monotonic, align 2
  %i.ep = icmp eq i16 %i.eo, 130
  br i1 %i.ep, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.eq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i63192198) ; 2 uses
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %.sroa.05.0.i184190, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.er = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge ], [ %i.cs, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.cs, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.07.0.i71216220 = phi ptr [ %i.eq, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge ], [ %.sroa.05.0.i63192198, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.05.0.i63192198, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %i.es = and i64 %i.er, 1
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218
  %i.eu = add nsw i64 %i.er, -1
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8
  %i.ex = add i64 %i.ew, 11
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i16, ptr %i.ey monotonic, align 2
  %i.fa = icmp eq i16 %i.ez, 130
  br i1 %i.fa, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72
  %i.fb = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i184190) ; 2 uses
  %.not227 = icmp eq ptr %i.fb, null
  br i1 %.not227, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74
  %.pre228 = load i64, ptr %i.fb, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72
  %i.fc = phi i64 [ %.pre228, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge ], [ %i.er, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72 ], [ %i.er, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218 ] ; 3 uses
  %i.fd = and i64 %i.fc, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224
  %i.ff = lshr i64 %i.fc, 32
  %i.fg = trunc nuw i64 %i.ff to i32
  %i.fh = sitofp i32 %i.fg to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76

bb.m:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224
  %i.fi = add nsw i64 %i.fc, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.0.copyload.i.i.i.i.i75 = load double, ptr %i.fk, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76: ; preds = %bb.l, %bb.m
  %i.fl = phi double [ %i.fh, %bb.l ], [ %.0.copyload.i.i.i.i.i75, %bb.m ]
  %i.fm = load i64, ptr %.sroa.07.0.i71216220, align 8 ; 3 uses
  %i.fn = and i64 %i.fm, 1
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76
  %i.fp = lshr i64 %i.fm, 32
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = sitofp i32 %i.fq to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76
  %i.fs = add nsw i64 %i.fm, -1
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.0.copyload.i.i.i.i.i77 = load double, ptr %i.fu, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78: ; preds = %bb.n, %bb.o
  %i.fv = phi double [ %i.fr, %bb.n ], [ %.0.copyload.i.i.i.i.i77, %bb.o ]
  %i.fw = fadd double %i.fl, %i.fv
  %i.fx = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.fw)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit, %bb.h, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211, %bb.k
  %.sroa.0100.1 = phi ptr [ %i.ba, %bb.h ], [ %i.bw, %bb.k ], [ %i.eg, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211 ], [ null, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ null, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64 ], [ null, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70 ], [ null, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.fx, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78 ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74 ]
  ret ptr %.sroa.0100.1
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object19OrdinaryHasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 13
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i8, ptr %i.g monotonic, align 1
  %i.i = and i8 %i.h, 2
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 2063
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8
  %i.p = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.e, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br i1 %i.t, label %bb.d, label %bb.e, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.u = load i64, ptr %1, align 8
  %i.v = add i64 %i.u, 23
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.x, ptr %.0.i.i, align 8
  %i.ah = call ptr @_ZN2v88internal6Object10InstanceOfEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef nonnull %0, ptr %2, ptr nonnull %.0.i.i)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ai = load i64, ptr %2, align 8               ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36: ; preds = %bb.g
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ugt i16 %i.ap, 299
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.pre.pre.i = load i64, ptr %i.as, align 8
  %i.at = add i64 %.pre.pre.i, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp eq i16 %i.ay, 128
  br i1 %i.az, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bd = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bd, ptr %4, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bo = ptrtoint ptr %1 to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 -1, i64 16, i1 false)
  %i.bq = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = and i16 %i.bt, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bu, 32
  br i1 %.not.i21.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !54, !noundef !55
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.by = load i8, ptr %i.bx, align 8, !range !54
  %i.bz = trunc nuw i8 %i.by to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bw, true
  %i.ca = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bz
  br i1 %i.ca, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cc = load i8, ptr %i.cb, align 8, !range !54, !noundef !55
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.i
  %.pn.i.i26.i.i.i = phi ptr [ %i.cf, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.i ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cg = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ch = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.as) #27
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ch, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.as, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
end_hunk_11
begin_hunk_12_@_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_:bb.a
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7JSProxy21CheckGetSetTrapResultEPNS0_7IsolateENS0_12DirectHandleINS0_4NameEEENS4_INS0_10JSReceiverEEENS4_INS0_6ObjectEEENS1_10AccessKindE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %6 = alloca [2 x %"class.v8::internal::DirectHandle"], align 8 ; 5 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %8 = alloca [3 x %"class.v8::internal::DirectHandle"], align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i8 0, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = call i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorE(ptr noundef %0, ptr %2, ptr %1, ptr noundef nonnull %9) #27 ; 2 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %.critedge53

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.d = and i16 %i.b, 256
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp ne ptr %i.e, null
  %.pre = load i8, ptr %9, align 8                ; 2 uses
  %i.f = and i8 %.pre, 32
  %.not113 = icmp ne i8 %i.f, 0
  %or.cond.not119 = select i1 %.not.i, i1 true, i1 %.not113
  %i.g = and i8 %.pre, 20
  %or.cond.not = icmp eq i8 %i.g, 0
  %or.cond118 = select i1 %or.cond.not119, i1 %or.cond.not, i1 false
  br i1 %or.cond118, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %3, align 8
  %i.i = load i64, ptr %i.e, align 8
  %i.j = call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.h, i64 %i.i)
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %4, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i54 = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %1, ptr %8, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.0.0.copyload.i54, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.m, align 8
  %i.n = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 159, ptr nonnull %8, i64 3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.o, ptr noundef null) #27 ; 0 uses
  br label %.critedge53

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %1, ptr %7, align 8
  %i.q = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 179, ptr nonnull %7, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.r = load i64, ptr %i.q, align 8
  %i.s = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.r, ptr noundef null) #27 ; 0 uses
  br label %.critedge53

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.t = icmp eq i32 %4, 0
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i55 = icmp ne ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ne ptr %i.x, null
  %or.cond109 = select i1 %.not.i55, i1 true, i1 %i.y ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.critedge
  br i1 %or.cond109, label %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread, label %.thread

_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread: ; preds = %bb.g
  %i.z = load i8, ptr %9, align 8
  %i.aa = and i8 %i.z, 4
  %.not115 = icmp eq i8 %i.aa, 0
  br i1 %.not115, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread
  %i.ab = load i64, ptr %i.v, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %.split, label %.thread

.split:                                           ; preds = %bb.h
  %i.af = load i64, ptr %3, align 8
  %.not116 = icmp eq i64 %i.af, %i.ab
  br i1 %.not116, label %.thread, label %bb.k

bb.i:                                             ; preds = %.critedge
  br i1 %or.cond109, label %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit58.thread, label %.thread

_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit58.thread: ; preds = %bb.i
  %i.ag = load i8, ptr %9, align 8
  %i.ah = and i8 %i.ag, 4
  %.not114 = icmp eq i8 %i.ah, 0
  br i1 %.not114, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit58.thread
  %i.ai = load i64, ptr %i.x, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.l, label %.thread

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %1, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.am, align 8
  %i.an = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 160, ptr nonnull %6, i64 2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #27 ; 0 uses
  br label %.critedge53

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %1, ptr %5, align 8
  %i.aq = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 180, ptr nonnull %5, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ar, ptr noundef null) #27 ; 0 uses
  br label %.critedge53

.thread:                                          ; preds = %bb.i, %bb.g, %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit58.thread, %_ZN2v88internal18PropertyDescriptor20IsAccessorDescriptorEPS1_.exit.thread, %bb.h, %.split, %bb.j, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %.critedge53

.critedge53:                                      ; preds = %bb.a, %bb.e, %bb.f, %bb.k, %bb.l, %.thread
  %.sroa.075.0 = phi ptr [ null, %bb.f ], [ null, %bb.k ], [ null, %bb.l ], [ %i.at, %.thread ], [ null, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret ptr %.sroa.075.0
}

declare i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorE(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, %0
  br i1 %i.a, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32: ; preds = %bb.b
  %i.d = add nsw i64 %0, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, label %bb.g

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread: ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32
  %i.k = and i64 %1, 1
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread
  %i.m = add nsw i64 %1, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 130
  br i1 %i.s, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.t = lshr i64 %0, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = sitofp i32 %i.u to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.w = add nsw i64 %0, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.y, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.c, %bb.d
  %i.z = phi double [ %i.v, %bb.c ], [ %.0.copyload.i.i.i.i.i, %bb.d ] ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.aa = lshr i64 %1, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = sitofp i32 %i.ab to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit37

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ad = add nsw i64 %1, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.i.i.i.i36 = load double, ptr %i.af, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit37

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit37: ; preds = %bb.e, %bb.f
  %i.ag = phi double [ %i.ac, %bb.e ], [ %.0.copyload.i.i.i.i.i36, %bb.f ] ; 2 uses
  %i.ah = bitcast double %i.z to i64
  %i.ai = bitcast double %i.ag to i64
  %i.aj = icmp eq i64 %i.ah, %i.ai
  %i.ak = fcmp uno double %i.z, 0.000000e+00
  %i.al = fcmp uno double %i.ag, 0.000000e+00
  %spec.select.i = and i1 %i.ak, %i.al
  %.0.i38 = or i1 %i.aj, %spec.select.i
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit32
  %i.am = trunc i64 %0 to i1
  br i1 %i.am, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33: ; preds = %bb.g
  %i.an = add nsw i64 %0, -1                      ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp ult i16 %i.as, 128
  %i.au = trunc i64 %1 to i1                      ; 2 uses
  %or.cond = and i1 %i.at, %i.au
  br i1 %or.cond, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33
  %i.av = add nsw i64 %1, -1
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp ult i16 %i.ba, 128
  br i1 %i.bb, label %bb.h, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34

bb.h:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bc = or disjoint i64 %i.an, 1
  %i.bd = icmp eq i64 %1, %i.bc
  br i1 %i.bd, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = and i16 %i.bh, -96
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = and i16 %i.bn, -96
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bq = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit33, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.br = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp eq i16 %i.bu, 129
  %or.cond109 = and i1 %i.bv, %i.au
  br i1 %or.cond109, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34
  %i.bw = add nsw i64 %1, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = icmp eq i16 %i.cb, 129
  br i1 %i.cc, label %bb.l, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.l:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cd = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.h, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a, %bb.l, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit37
  %.0 = phi i1 [ true, %bb.a ], [ %.0.i38, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit37 ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit34 ], [ %i.cd, %bb.l ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bq, %bb.k ], [ true, %bb.h ], [ false, %bb.j ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Object7ToInt32ENS0_6TaggedIS1_EEPi(i64 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 32
  %i.d = trunc nuw i64 %i.c to i32
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.sink.split

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.e = add nsw i64 %0, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 130
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.l, align 8 ; 4 uses
  %i.m = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %i.n = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.d, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = fptosi double %.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.p = sitofp i32 %i.o to double
  %i.q = fcmp oeq double %.0.copyload.i.i.i.i, %i.p
  br i1 %i.q, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.sink.split, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.sink.split: ; preds = %bb.d, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.o, %bb.d ]
  store i32 %.sink, ptr %1, align 4
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.sink.split, %bb.c, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %.1 = phi i1 [ false, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %bb.d ], [ false, %bb.c ], [ true, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7JSProxy12GetPrototypeENS0_12DirectHandleIS1_EE(ptr nofree readonly captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::PrototypeIterator", align 8 ; 9 uses
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.b, ptr %3, align 8
  %i.d = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br i1 %i.h, label %.critedge, label %bb.c, !prof !52

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit54

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp ult i16 %i.r, 300
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.c, ptr %2, align 8
  %i.t = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef 178, ptr nonnull %2, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.u = load i64, ptr %i.t, align 8
  %i.v = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b, i64 %i.u, ptr noundef null) #27 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit54

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %i.i, 15
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !52
end_hunk_12
begin_hunk_13_@_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE:bb.a
    i16 129, label %bb.t
    i16 286, label %bb.v
    i16 284, label %bb.w
    i16 165, label %bb.x
  ]

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load atomic i32, ptr %i.bw acquire, align 4 ; 4 uses
  %i.by = and i32 %i.bx, 1
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN2v88internal4Name10EnsureHashEv.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = and i32 %i.bx, 3
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.r, label %bb.s, !prof !52

bb.r:                                             ; preds = %bb.q
  %i.cc = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i32 noundef %i.bx)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit77

bb.s:                                             ; preds = %bb.q
  %i.cd = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bv) #27
  br label %_ZN2v88internal4Name10EnsureHashEv.exit77

_ZN2v88internal4Name10EnsureHashEv.exit77:        ; preds = %bb.p, %bb.r, %bb.s
  %.0.i.i76 = phi i32 [ %i.cd, %bb.s ], [ %i.cc, %bb.r ], [ %i.bx, %bb.p ]
  %i.ce = lshr i32 %.0.i.i76, 2
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  br label %bb.aa

bb.t:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 8
  %i.cj = load atomic i32, ptr %i.ch monotonic, align 8
  %i.ck = load atomic i32, ptr %i.ch monotonic, align 8
  %i.cl = and i32 %i.ck, 2147483646
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN2v88internal6BigInt4HashEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internal6BigInt4HashEv.exit

_ZN2v88internal6BigInt4HashEv.exit:               ; preds = %bb.t, %bb.u
  %i.co = phi i64 [ %.0.copyload.i.i.i.i.i, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.cp = lshr i32 %i.ci, 1                       ; 2 uses
  %i.cq = shl i32 %i.cp, 15
  %i.cr = and i32 %i.cp, 1073741823
  %i.cs = shl i32 %i.cj, 30
  %i.ct = and i32 %i.cs, 1073741824
  %i.cu = or disjoint i32 %i.ct, %i.cr
  %i.cv = xor i32 %i.cu, -1
  %i.cw = add i32 %i.cq, %i.cv                    ; 2 uses
  %i.cx = lshr i32 %i.cw, 12
  %i.cy = xor i32 %i.cx, %i.cw
  %i.cz = mul i32 %i.cy, 5                        ; 2 uses
  %i.da = lshr i32 %i.cz, 4
  %i.db = xor i32 %i.da, %i.cz
  %i.dc = mul i32 %i.db, 2057                     ; 2 uses
  %.masked.i.i = and i32 %i.dc, 1073741823
  %i.dd = lshr i32 %i.dc, 16
  %i.de = xor i32 %.masked.i.i, %i.dd
  %i.df = xor i64 %i.co, -1
  %i.dg = shl i64 %i.co, 18
  %i.dh = add i64 %i.dg, %i.df                    ; 2 uses
  %i.di = lshr i64 %i.dh, 31
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, 21                       ; 2 uses
  %i.dl = lshr i64 %i.dk, 11
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = mul i64 %i.dm, 65                       ; 2 uses
  %i.do = lshr i64 %i.dn, 22
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 1073741823
  %i.ds = xor i32 %i.de, %i.dr
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 32
  br label %bb.aa

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i64 %0, ptr %1, align 8
  %i.dv = call noundef i32 @_ZN2v88internal18SharedFunctionInfo4HashEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.dw = and i32 %i.dv, 2147483647
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 32
  br label %bb.aa

bb.w:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 %0, ptr %2, align 8
  %i.dz = call noundef i32 @_ZN2v88internal9ScopeInfo4HashEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ea = and i32 %i.dz, 2147483647
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 32
  br label %bb.aa

bb.x:                                             ; preds = %bb.o
  %i.ed = add i64 %0, 63
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = lshr i64 %i.ef, 32
  %i.eh = trunc nuw i64 %i.eg to i32              ; 2 uses
  %i.ei = xor i32 %i.eh, -1
  %i.ej = shl i32 %i.eh, 15
  %i.ek = add i32 %i.ej, %i.ei                    ; 2 uses
  %i.el = lshr i32 %i.ek, 12
  %i.em = xor i32 %i.el, %i.ek
  %i.en = mul i32 %i.em, 5                        ; 2 uses
  %i.eo = lshr i32 %i.en, 4
  %i.ep = xor i32 %i.eo, %i.en
  %i.eq = mul i32 %i.ep, 2057                     ; 2 uses
  %i.er = lshr i32 %i.eq, 16
  %.masked.i78 = and i32 %i.eq, 1073741823
  %i.es = xor i32 %.masked.i78, %i.er
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 32
  br label %bb.aa

bb.y:                                             ; preds = %bb.o
  %i.ev = add i16 %i.w, -248
  %i.ew = icmp ult i16 %i.ev, 3
  br i1 %i.ew, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 %0, ptr %3, align 8
  %i.ex = call noundef i32 @_ZNK2v88internal12TemplateInfo7GetHashEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ey = sext i32 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.d, %_ZN2v88internal4Name10EnsureHashEv.exit, %_ZN2v88internal4Name10EnsureHashEv.exit77, %_ZN2v88internal6BigInt4HashEv.exit, %bb.v, %bb.w, %bb.x, %bb.z, %bb.i, %bb.b
  %.sroa.093.0 = phi i64 [ %i.q, %bb.b ], [ 9223372032559808512, %bb.d ], [ %i.bf, %bb.i ], [ %i.br, %_ZN2v88internal4Name10EnsureHashEv.exit ], [ %i.cg, %_ZN2v88internal4Name10EnsureHashEv.exit77 ], [ %i.du, %_ZN2v88internal6BigInt4HashEv.exit ], [ %i.dy, %bb.v ], [ %i.ec, %bb.w ], [ %i.eu, %bb.x ], [ %i.ez, %bb.z ], [ %0, %bb.y ]
  ret i64 %.sroa.093.0
}

declare i64 @_ZN2v88internal10JSReceiver23GetOrCreateIdentityHashEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, %0
  br i1 %i.a, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38: ; preds = %bb.b
  %i.d = add nsw i64 %0, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 130
  br i1 %i.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38.thread, label %bb.h

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38.thread: ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38
  %i.k = and i64 %1, 1
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38.thread
  %i.m = add nsw i64 %1, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 130
  br i1 %i.s, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.h

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.t = lshr i64 %0, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = sitofp i32 %i.u to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.w = add nsw i64 %0, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.y, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.c, %bb.d
  %i.z = phi double [ %i.v, %bb.c ], [ %.0.copyload.i.i.i.i.i, %bb.d ] ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.aa = lshr i64 %1, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = sitofp i32 %i.ab to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ad = add nsw i64 %1, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.i.i.i.i42 = load double, ptr %i.af, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43: ; preds = %bb.e, %bb.f
  %i.ag = phi double [ %i.ac, %bb.e ], [ %.0.copyload.i.i.i.i.i42, %bb.f ] ; 2 uses
  %i.ah = fcmp oeq double %i.z, %i.ag
  br i1 %i.ah, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43
  %i.ai = fcmp uno double %i.z, 0.000000e+00
  %i.aj = fcmp uno double %i.ag, 0.000000e+00
  %spec.select = and i1 %i.ai, %i.aj
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.h:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit38
  %i.ak = trunc i64 %0 to i1
  br i1 %i.ak, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39: ; preds = %bb.h
  %i.al = add nsw i64 %0, -1                      ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp ult i16 %i.aq, 128
  %i.as = trunc i64 %1 to i1                      ; 2 uses
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39
  %i.at = add nsw i64 %1, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp ult i16 %i.ay, 128
  br i1 %i.az, label %bb.i, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40

bb.i:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ba = or disjoint i64 %i.al, 1
  %i.bb = icmp eq i64 %1, %i.ba
  br i1 %i.bb, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = and i16 %i.bf, -96
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = and i16 %i.bl, -96
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bp = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp eq i16 %i.bs, 129
  %or.cond114 = and i1 %i.bt, %i.as
  br i1 %or.cond114, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40
  %i.bu = add nsw i64 %1, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = add i64 %i.bw, 11
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i16, ptr %i.by monotonic, align 2
  %i.ca = icmp eq i16 %i.bz, 129
  br i1 %i.ca, label %bb.m, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.m:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cb = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) #27
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %bb.h, %bb.l, %bb.k, %bb.i, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43, %bb.a, %bb.m
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.a ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40 ], [ %i.cb, %bb.m ], [ true, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43 ], [ %spec.select, %bb.g ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bo, %bb.l ], [ true, %bb.i ], [ false, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 375
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate14array_functionEv.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #27
  br label %_ZN2v88internal7Isolate14array_functionEv.exit

_ZN2v88internal7Isolate14array_functionEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 5 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 27), align 1, !range !54, !noundef !55
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14array_functionEv.exit
  %i.v = load i64, ptr %1, align 8                ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 2119
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.af = add i64 %i.ae, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.0.0.copyload.i.i.i3.i = load i64, ptr %i.a, align 8
  %i.ai = add i64 %.sroa.0.0.copyload.i.i.i3.i, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = add i64 %i.ak, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, 639
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.m, align 8
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit, !prof !52

bb.e:                                             ; preds = %bb.d
  %i.au = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #27
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.au, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.av = ptrtoint ptr %.0.i.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.k, align 8
  store i64 %i.aq, ptr %.0.i.i.i.i, align 8
  %i.ay = icmp eq i64 %i.ah, %i.aq
  br i1 %i.ay, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9120
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, 23
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, -4294967295
  %i.bf = icmp eq i64 %i.be, 4294967296
  br i1 %i.bf, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.bh = load i64, ptr %1, align 8               ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bk = add nsw i64 %i.bh, -1
end_hunk_13
begin_hunk_14_@_ZN2v88internal7JSArray21AnythingToArrayLengthEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPj:bb.a
_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 130
  br i1 %i.m, label %bb.c, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.n, align 8 ; 2 uses
  %i.o = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.p = bitcast double %i.o to i64               ; 2 uses
  %.mask.i.i.i = and i64 %i.p, -4294967296
  %i.q = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  br i1 %i.q, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit: ; preds = %bb.c
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  store i32 %i.r, ptr %2, align 4
  %i.s = uitofp i32 %i.r to double
  %i.t = fcmp oeq double %.0.copyload.i.i.i.i.i.i, %i.s
  br i1 %i.t, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit._ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread_crit_edge

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit._ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread_crit_edge: ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %.pre = load i64, ptr %1, align 8
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread: ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit._ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread_crit_edge, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b, %bb.c
  %i.u = phi i64 [ %.pre, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit._ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread_crit_edge ], [ %i.a, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.a, %bb.b ], [ %i.a, %bb.c ] ; 5 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp ult i16 %i.ab, 128
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 8 ; 4 uses
  %i.af = and i32 %i.ae, -536870909
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 10624
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.aj, align 8, !range !54, !noundef !55
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  br label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 55464
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, -55464
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 648
  br label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread

_ZN2v88internal6String12AsArrayIndexEPj.exit.thread: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i = phi ptr [ %i.at, %bb.h ], [ %i.am, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1432
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = lshr exact i32 %i.ae, 2
  %i.az = and i32 %i.ay, 16777215                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = lshr i32 %i.az, 12
  %i.bh = xor i32 %i.bg, %i.az
  %i.bi = mul i32 %i.bf, %i.bh                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = and i32 %i.bj, 4095
  %i.bl = xor i32 %i.bk, %i.bi
  %i.bm = mul i32 %i.bl, %i.bd                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 12
  %i.bo = and i32 %i.bn, 4095
  %i.bp = xor i32 %i.bo, %i.bm
  %i.bq = mul i32 %i.bp, %i.bb
  %i.br = and i32 %i.bq, 16777215                 ; 2 uses
  %i.bs = lshr i32 %i.br, 12
  %i.bt = xor i32 %i.bs, %i.br
  store i32 %i.bt, ptr %2, align 4
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.bu = trunc i32 %i.ae to i1
  %i.bv = and i32 %i.ae, 3
  %i.bw = icmp eq i32 %i.bv, 0
  %or.cond.i = or i1 %i.bw, %i.bu
  br i1 %or.cond.i, label %_ZN2v88internal6String12AsArrayIndexEPj.exit, label %.critedge

_ZN2v88internal6String12AsArrayIndexEPj.exit:     ; preds = %bb.i
  %i.bx = tail call noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef %2) #27
  br i1 %i.bx, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZN2v88internal6String12AsArrayIndexEPj.exit..critedge_crit_edge

_ZN2v88internal6String12AsArrayIndexEPj.exit..critedge_crit_edge: ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit
  %.pre84 = load i64, ptr %1, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit..critedge_crit_edge, %bb.i, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.by = phi i64 [ %.pre84, %_ZN2v88internal6String12AsArrayIndexEPj.exit..critedge_crit_edge ], [ %i.u, %bb.i ], [ %i.u, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread ], [ %i.u, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ] ; 3 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

bb.j:                                             ; preds = %.critedge
  %i.cb = lshr i64 %i.by, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = icmp slt i32 %i.cc, 1
  %i.ce = and i64 %i.by, -4294967296
  %.sroa.0.0.i.i = select i1 %i.cd, i64 0, i64 %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, !prof !52

bb.k:                                             ; preds = %bb.j
  %i.ck = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %.critedge
  %i.cl = tail call ptr @_ZN2v88internal6Object15ConvertToUint32INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %.not = icmp eq ptr %i.cl, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.ck, %bb.k ], [ %i.cg, %bb.j ] ; 3 uses
  %i.cm = ptrtoint ptr %.0.i.i to i64
  %i.cn = add i64 %i.cm, 8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %i.cf, align 8
  store i64 %.sroa.0.0.i.i, ptr %.0.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71: ; preds = %_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.011.0.i6973 = phi ptr [ %.0.i.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.cl, %_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  %i.cp = load i64, ptr %1, align 8               ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71
  %i.cs = add nsw i64 %i.cp, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  %i.cy = icmp eq i16 %i.cx, 130
  br i1 %i.cy, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.cz = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %.not83 = icmp eq ptr %i.cz, null
  br i1 %.not83, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i7579 = phi ptr [ %i.cz, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %1, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread71 ]
  %i.da = load i64, ptr %.sroa.011.0.i6973, align 8 ; 6 uses
  %i.db = and i64 %i.da, 1
  %i.dc = icmp eq i64 %i.db, 0                    ; 2 uses
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77
  %i.dd = lshr i64 %i.da, 32
  %i.de = trunc nuw i64 %i.dd to i32
  %i.df = sitofp i32 %i.de to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.m:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit20.thread77
  %i.dg = add nsw i64 %i.da, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.di, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.l, %bb.m
  %i.dj = phi double [ %i.df, %bb.l ], [ %.0.copyload.i.i.i.i.i, %bb.m ]
  %i.dk = load i64, ptr %.sroa.07.0.i7579, align 8 ; 3 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.dn = lshr i64 %i.dk, 32
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = sitofp i32 %i.do to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit22

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.dq = add nsw i64 %i.dk, -1
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i.i.i.i.i21 = load double, ptr %i.ds, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit22

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit22: ; preds = %bb.n, %bb.o
  %i.dt = phi double [ %i.dp, %bb.n ], [ %.0.copyload.i.i.i.i.i21, %bb.o ]
  %i.du = fcmp une double %i.dj, %i.dt
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit22
  %i.dv = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #27
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.dw, ptr noundef null) #27 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.q:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit22
  br i1 %i.dc, label %bb.r, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i23

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp sgt i64 %i.da, -1
  br i1 %i.dy, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread81, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread, !prof !56

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread81: ; preds = %bb.r
  %i.dz = lshr i64 %i.da, 32
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  store i32 %i.ea, ptr %2, align 4
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i23: ; preds = %bb.q
  %i.eb = add nsw i64 %i.da, -1
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = add i64 %i.ed, 11
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i16, ptr %i.ef monotonic, align 2
  %i.eh = icmp eq i16 %i.eg, 130
  br i1 %i.eh, label %bb.s, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread, !prof !56

bb.s:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.0.copyload.i.i.i.i.i.i25 = load double, ptr %i.ei, align 8 ; 2 uses
  %i.ej = fadd double %.0.copyload.i.i.i.i.i.i25, f0x4330000000000000
  %i.ek = bitcast double %i.ej to i64             ; 2 uses
  %.mask.i.i.i26 = and i64 %i.ek, -4294967296
  %i.el = icmp eq i64 %.mask.i.i.i26, 4841369599423283200
  br i1 %i.el, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread, !prof !56

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27: ; preds = %bb.s
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  store i32 %i.em, ptr %2, align 4
  %i.en = uitofp i32 %i.em to double
  %i.eo = fcmp oeq double %.0.copyload.i.i.i.i.i.i25, %i.en
  br i1 %i.eo, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread, !prof !57

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i23, %bb.r, %bb.s, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.335) #28
  unreachable

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread81, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27, %bb.p, %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread63, %_ZN2v88internal6String12AsArrayIndexEPj.exit, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %.2 = phi i1 [ true, %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread ], [ true, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit ], [ true, %_ZN2v88internal6String12AsArrayIndexEPj.exit ], [ true, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread63 ], [ true, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27.thread81 ], [ false, %_ZN2v88internal6Object8ToUint32IS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ false, %bb.p ], [ true, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit27 ], [ false, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal7JSArray9SetLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.804", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 14
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ult i8 %i.g, 24
  br i1 %i.h, label %bb.b, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.a, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  %i.r = icmp ugt i32 %2, 33554432
  br i1 %i.r, label %bb.c, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %2, -1                           ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.q
  br i1 %i.t, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sub nuw i32 %i.s, %i.q
  %i.v = icmp ugt i32 %i.u, 1023
  br i1 %i.v, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i32 %2, 1
  %i.x = add i32 %2, 16                           ; 2 uses
  %i.y = add i32 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult i32 %i.x, 134217729
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.y, i32 134217728)
  %.0.i.i.i = select i1 %i.z, i32 %i.aa, i32 %i.y ; 3 uses
  %i.ab = icmp ult i32 %.0.i.i.i, 501
  br i1 %i.ab, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i32 %.0.i.i.i, 5001
  br i1 %i.ac, label %bb.g, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = and i64 %i.a, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %.sroa.0.0.copyload.i.i4.i = load i64, ptr %i.ae, align 262144
  %i.af = and i64 %.sroa.0.0.copyload.i.i4.i, 24
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread

_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 %i.a, ptr %3, align 8
  %i.ag = call noundef i32 @_ZN2v88internal8JSObject20GetFastElementsUsageEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27 ; 2 uses
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = add i32 %i.ah, %i.ag
  %spec.select.i.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1) ; 2 uses
  %i.aj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i.i, i1 false)
  %i.ak = sub nuw nsw i32 32, %i.aj
  %i.al = icmp ult i32 %spec.select.i.i.i.i.i, 2
  %i.am = shl i32 9, %i.ak
  %i.an = select i1 %i.al, i32 36, i32 %i.am
  %.not = icmp ugt i32 %i.an, %.0.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.not, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread, label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread21

_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread21: ; preds = %bb.d, %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit
  %i.ao = call ptr @_ZN2v88internal8JSObject17NormalizeElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %1) #27 ; 0 uses
  br label %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread

_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread: ; preds = %bb.c, %bb.g, %bb.e, %bb.b, %bb.a, %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit.thread21, %_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj.exit
  %i.ap = load i64, ptr %1, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, 14
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = lshr i8 %i.av, 2
  %i.ax = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i16 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %0, ptr nonnull %1, i32 noundef %2) #27
  ret i16 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal7JSProxy17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %10 = alloca [2 x %"class.v8::internal::DirectHandle"], align 8 ; 5 uses
  %11 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  %13 = alloca [3 x %"class.v8::internal::DirectHandle"], align 16 ; 6 uses
  %14 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %0, ptr %12, align 8
  %i.a = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #27
  br i1 %i.e, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit123

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.f = load i64, ptr %2, align 8                ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
end_hunk_14
begin_hunk_15_@_ZN2v88internal7JSArray33ArrayJoinConcatToSequentialStringEPNS0_7IsolateEmlmm:bb.a
bb.aa:                                            ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = lshr i64 %i.dr, 32
  %i.dt = trunc nuw i64 %i.ds to i32
  %.not126.i = icmp sgt i32 %i.do, %i.dt
  br i1 %.not126.i, label %bb.ab, label %.preheader127.i, !prof !52

.preheader127.i:                                  ; preds = %bb.aa
  %.not141.i = icmp eq i32 %i.do, 1
  br i1 %.not141.i, label %._crit_edge137.i, label %.lr.ph136.preheader.i

.lr.ph136.preheader.i:                            ; preds = %.preheader127.i
  %wide.trip.count.i23 = and i64 %.in, 2147483647
  br label %.lr.ph136.i

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.415) #28
  unreachable

._crit_edge137.i:                                 ; preds = %bb.ai, %.preheader127.i
  %.sroa.0110.1.lcssa.i = phi i64 [ %.sroa.0110.0.i, %.preheader127.i ], [ %i.dv, %bb.ai ]
  %.189.lcssa.i39 = phi i32 [ %.088.i21, %.preheader127.i ], [ %.694.i36, %bb.ai ]
  %.1.lcssa.i40 = phi ptr [ %.0.i22, %.preheader127.i ], [ %.8.i37, %bb.ai ]
  br i1 %i.dk, label %_ZN2v88internal12_GLOBAL__N_120WriteChunkListToFlatIhEEvNS0_6TaggedINS0_10FixedArrayEEEiNS3_INS0_6StringEEEPT_i.exit, label %bb.w

.lr.ph136.i:                                      ; preds = %bb.ai, %.lr.ph136.preheader.i
  %indvars.iv.i24 = phi i64 [ 1, %.lr.ph136.preheader.i ], [ %indvars.iv.next.i38, %bb.ai ] ; 2 uses
  %.1135.i = phi ptr [ %.0.i22, %.lr.ph136.preheader.i ], [ %.8.i37, %bb.ai ] ; 2 uses
  %.189134.i = phi i32 [ %.088.i21, %.lr.ph136.preheader.i ], [ %.694.i36, %bb.ai ] ; 2 uses
  %.sroa.0110.1132.i = phi i64 [ %.sroa.0110.0.i, %.lr.ph136.preheader.i ], [ %i.dv, %bb.ai ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i24
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8 ; 6 uses
  %i.dw = and i64 %i.dv, 1
  %i.dx = icmp eq i64 %i.dw, 0                    ; 2 uses
  br i1 %i.dx, label %bb.ac, label %bb.ad, !prof !52

bb.ac:                                            ; preds = %.lr.ph136.i
  %i.dy = lshr i64 %i.dv, 32
  %i.dz = trunc nuw i64 %i.dy to i32              ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  %i.eb = call i32 @llvm.smin.i32(i32 %i.dz, i32 0)
  %.297.i45 = sub nsw i32 0, %i.eb
  %.290.i46 = select i1 %i.ea, i32 %i.dz, i32 %.189134.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph136.i
  %.398.i25 = phi i32 [ %.297.i45, %bb.ac ], [ 0, %.lr.ph136.i ] ; 2 uses
  %.391.i26 = phi i32 [ %.290.i46, %bb.ac ], [ %.189134.i, %.lr.ph136.i ] ; 3 uses
  %i.ec = icmp ne i32 %.391.i26, 0
  %or.cond.i27 = and i1 %i.cx, %i.ec
  br i1 %or.cond.i27, label %.preheader.i43, label %.loopexit.i28

.preheader.i43:                                   ; preds = %bb.ad, %.preheader.i43
  %.2129.i = phi ptr [ %i.ed, %.preheader.i43 ], [ %.1135.i, %bb.ad ] ; 2 uses
  %.0101128.i = phi i32 [ %i.ee, %.preheader.i43 ], [ 0, %bb.ad ]
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %3, ptr noundef %.2129.i, i32 noundef 0, i32 noundef %i.l) #27
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.2129.i, i64 %i.cy ; 2 uses
  %i.ee = add nuw i32 %.0101128.i, 1              ; 2 uses
  %exitcond.not.i44 = icmp eq i32 %i.ee, %.391.i26
  br i1 %exitcond.not.i44, label %.loopexit.i28, label %.preheader.i43, !llvm.loop !365

.loopexit.i28:                                    ; preds = %.preheader.i43, %bb.ad
  %.492.i29 = phi i32 [ %.391.i26, %bb.ad ], [ 0, %.preheader.i43 ]
  %.4.i30 = phi ptr [ %.1135.i, %bb.ad ], [ %i.ed, %.preheader.i43 ] ; 4 uses
  %.not.i31 = icmp eq i32 %.398.i25, 0
  br i1 %.not.i31, label %bb.ag, label %bb.ae, !prof !58

bb.ae:                                            ; preds = %.loopexit.i28
  %i.ef = add i64 %.sroa.0110.1132.i, -1
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add nsw i32 %i.ei, %i.l                 ; 3 uses
  %i.ek = mul i32 %i.ej, %.398.i25
  %i.el = zext i32 %i.ek to i64
  %.idx144.i = sub nsw i64 %i.el, %i.cz           ; 2 uses
  %i.em = shl nsw i64 %.idx144.i, 1
  %i.en = getelementptr inbounds i8, ptr %.4.i30, i64 %i.em ; 2 uses
  %i.eo = sext i32 %i.ej to i64                   ; 3 uses
  %i.ep = icmp sgt i64 %.idx144.i, %i.eo
  br i1 %i.ep, label %.lr.ph.preheader.i41, label %._crit_edge.i32

.lr.ph.preheader.i41:                             ; preds = %bb.ae
  %i.eq = sub nsw i64 0, %i.eo
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %i.er = phi i64 [ %i.ey, %.lr.ph.i42 ], [ %i.eq, %.lr.ph.preheader.i41 ]
  %i.es = phi i64 [ %i.ex, %.lr.ph.i42 ], [ %i.eo, %.lr.ph.preheader.i41 ] ; 2 uses
  %.5131.i = phi ptr [ %i.ev, %.lr.ph.i42 ], [ %.4.i30, %.lr.ph.preheader.i41 ] ; 3 uses
  %.0100130.i = phi i32 [ %i.ew, %.lr.ph.i42 ], [ %i.ej, %.lr.ph.preheader.i41 ]
  %i.et = getelementptr inbounds [2 x i8], ptr %.5131.i, i64 %i.er
  %i.eu = shl nsw i64 %i.es, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.5131.i, ptr align 2 %i.et, i64 %i.eu, i1 false)
  %i.ev = getelementptr inbounds [2 x i8], ptr %.5131.i, i64 %i.es ; 3 uses
  %i.ew = shl nsw i32 %.0100130.i, 1              ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = sub nsw i64 0, %i.ex                    ; 2 uses
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.ey
  %i.fa = icmp ult ptr %i.ev, %i.ez
  br i1 %i.fa, label %.lr.ph.i42, label %._crit_edge.i32, !llvm.loop !366

._crit_edge.i32:                                  ; preds = %.lr.ph.i42, %bb.ae
  %.5.lcssa.i33 = phi ptr [ %.4.i30, %bb.ae ], [ %i.ev, %.lr.ph.i42 ] ; 5 uses
  %i.fb = ptrtoint ptr %i.en to i64
  %i.fc = ptrtoint ptr %.5.lcssa.i33 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = lshr exact i64 %i.fd, 1                 ; 2 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i32
  %i.fh = and i64 %i.fe, 2147483647               ; 3 uses
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds [2 x i8], ptr %.5.lcssa.i33, i64 %i.fi
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.da
  %i.fl = shl nuw nsw i64 %i.fh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.5.lcssa.i33, ptr align 2 %i.fk, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i33, i64 %i.fh
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i32, %.loopexit.i28
  %.593.i34 = phi i32 [ %.492.i29, %.loopexit.i28 ], [ 1, %bb.af ], [ 1, %._crit_edge.i32 ]
  %.7.i35 = phi ptr [ %.4.i30, %.loopexit.i28 ], [ %i.fm, %bb.af ], [ %.5.lcssa.i33, %._crit_edge.i32 ] ; 3 uses
  br i1 %i.dx, label %bb.ai, label %bb.ah, !prof !52

bb.ah:                                            ; preds = %bb.ag
  %i.fn = add nsw i64 %i.dv, -1
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.dv, ptr noundef %.7.i35, i32 noundef 0, i32 noundef %i.fq) #27
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %.7.i35, i64 %i.fr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.694.i36 = phi i32 [ 1, %bb.ah ], [ %.593.i34, %bb.ag ] ; 2 uses
  %.8.i37 = phi ptr [ %i.fs, %bb.ah ], [ %.7.i35, %bb.ag ] ; 2 uses
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i23
  br i1 %exitcond148.not.i, label %._crit_edge137.i, label %.lr.ph136.i, !llvm.loop !367

_ZN2v88internal12_GLOBAL__N_120WriteChunkListToFlatIhEEvNS0_6TaggedINS0_10FixedArrayEEEiNS3_INS0_6StringEEEPT_i.exit: ; preds = %._crit_edge137.i, %._crit_edge162.i
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Oddball10InitializeEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_h(ptr noundef nonnull %0, ptr nofree readonly captures(none) %1, ptr noundef %2, ptr nofree readonly captures(none) %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #27
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #32
  %i.d = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.c) #27
  %i.e = load i64, ptr %3, align 8                ; 5 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 130
  br i1 %i.m, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.0.copyload.i.i.i.i, ptr %i.r, align 1
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = load i64, ptr %1, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = and i64 %i.e, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.x = lshr i64 %i.e, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = sitofp i32 %i.y to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.aa = add nsw i64 %i.e, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ac, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi double [ %i.z, %bb.c ], [ %.0.copyload.i.i.i.i.i, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.ad, ptr %i.ae, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.b
  %i.af = load i64, ptr %1, align 8
  %i.ag = add i64 %i.af, -1                       ; 3 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %3, align 8               ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store atomic volatile i64 %i.ai, ptr %i.aj monotonic, align 8
  %i.ak = trunc i64 %i.ai to i1
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %bb.e
  %i.al = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = and i64 %i.ag, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 262144       ; 2 uses
  %i.aq = and i64 %i.ap, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %i.ap, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not37.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.as = and i64 %i.ai, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.at, align 262144
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not38.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.al, i64 noundef %i.am, i64 %i.ai) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.al, i64 %i.am, i64 %i.ai) #27
  br label %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.e, %bb.i, %bb.j
  %i.av = load i64, ptr %1, align 8
  %i.aw = add i64 %i.av, -1                       ; 3 uses
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.b, align 8             ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  store atomic volatile i64 %i.ay, ptr %i.az monotonic, align 8
  %i.ba = trunc i64 %i.ay to i1
  br i1 %i.ba, label %bb.k, label %_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit
  %i.bb = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bd = and i64 %i.aw, -262144
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 262144       ; 2 uses
  %i.bg = and i64 %i.bf, 32
  %.not.i.i.i.i.i19 = icmp eq i64 %i.bg, 0
  %i.bh = and i64 %i.bf, 25
  %.not37.i.i.i.i.i20 = icmp eq i64 %i.bh, 0
  br i1 %.not37.i.i.i.i.i20, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = and i64 %i.ay, -262144
  %i.bj = inttoptr i64 %i.bi to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i21 = load i64, ptr %i.bj, align 262144
  %i.bk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i21, 25
  %.not38.i.i.i.i.i22 = icmp eq i64 %i.bk, 0
  br i1 %.not38.i.i.i.i.i22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bb, i64 noundef %i.bc, i64 %i.ay) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i19, label %_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bb, i64 %i.bc, i64 %i.ay) #27
  br label %_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit, %bb.n, %bb.o
  %i.bl = load i64, ptr %1, align 8
  %i.bm = add i64 %i.bl, -1                       ; 3 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %i.d, align 8             ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  store atomic volatile i64 %i.bo, ptr %i.bp monotonic, align 8
  %i.bq = trunc i64 %i.bo to i1
  br i1 %i.bq, label %bb.p, label %_ZN2v88internal7Oddball11set_type_ofENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.p:                                             ; preds = %_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.br = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bs = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bt = and i64 %i.bm, -262144
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 262144       ; 2 uses
  %i.bw = and i64 %i.bv, 32
  %.not.i.i.i.i.i23 = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %i.bv, 25
  %.not37.i.i.i.i.i24 = icmp eq i64 %i.bx, 0
  br i1 %.not37.i.i.i.i.i24, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = and i64 %i.bo, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i25 = load i64, ptr %i.bz, align 262144
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i25, 25
  %.not38.i.i.i.i.i26 = icmp eq i64 %i.ca, 0
  br i1 %.not38.i.i.i.i.i26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.br, i64 noundef %i.bs, i64 %i.bo) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i.i.i23, label %_ZN2v88internal7Oddball11set_type_ofENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.t, !prof !58

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.br, i64 %i.bs, i64 %i.bo) #27
  br label %_ZN2v88internal7Oddball11set_type_ofENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal7Oddball11set_type_ofENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal7Oddball13set_to_stringENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.s, %bb.t
  %i.cb = load i64, ptr %1, align 8
  %i.cc = add i64 %i.cb, -1
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = zext i8 %5 to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  store atomic volatile i64 %i.cg, ptr %i.ce monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7JSArray10InitializeEPNS0_7IsolateENS0_12DirectHandleIS1_EEii(ptr noundef nonnull %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal7Factory17NewJSArrayStorageENS0_12DirectHandleINS0_7JSArrayEEEiiNS0_26ArrayStorageAllocationModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 noundef %3, i32 noundef %2, i32 noundef 1) #27
  ret void
}

declare void @_ZN2v88internal7Factory17NewJSArrayStorageENS0_12DirectHandleINS0_7JSArrayEEEiiNS0_26ArrayStorageAllocationModeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7JSArray23SetLengthWouldNormalizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.804", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 14
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ult i8 %i.f, 24
  br i1 %i.g, label %bb.b, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 15
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = icmp ugt i32 %1, 33554432
  br i1 %i.q, label %bb.c, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %1, -1                           ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.p
  br i1 %i.s, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw i32 %i.r, %i.p
  %i.u = icmp ugt i32 %i.t, 1023
  br i1 %i.u, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i32 %1, 1
  %i.w = add i32 %1, 16                           ; 2 uses
  %i.x = add i32 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ult i32 %i.w, 134217729
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.x, i32 134217728)
  %.0.i.i = select i1 %i.y, i32 %i.z, i32 %i.x    ; 3 uses
  %i.aa = icmp ult i32 %.0.i.i, 501
  br i1 %i.aa, label %_ZN2v88internalL27ShouldConvertToSlowElementsENS0_6TaggedINS0_8JSObjectEEEjjPj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i32 %.0.i.i, 5001
end_hunk_15
begin_hunk_16_@_ZN2v88internal21RegisteredSymbolTable3AddEPNS0_7IsolateENS0_6HandleIS1_EENS0_12DirectHandleINS0_6StringEEENS6_INS0_6SymbolEEE:bb.a
  %i.p = add i64 %i.o, -1                         ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %.sroa.09.0.in12.i.i = and i32 %i.v, %i.n       ; 2 uses
  %i.w = shl nuw nsw i32 %.sroa.09.0.in12.i.i, 1  ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 40
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8 ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i

_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i: ; preds = %_ZN2v88internal26RegisteredSymbolTableShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6StringEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ae = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.e, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i
  %i.af = phi i64 [ %i.aa, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i ], [ %i.am, %bb.e ]
  %.sroa.09.0.in14.i.i = phi i32 [ %.sroa.09.0.in12.i.i, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i ], [ %.sroa.09.0.in.i.i, %bb.e ] ; 2 uses
  %.013.i.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not.i.i, label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i._ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.loopexit_crit_edge, label %bb.e

_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i._ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.loopexit_crit_edge: ; preds = %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.pre40 = shl nsw i32 %.sroa.09.0.in14.i.i, 1
  br label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit

bb.e:                                             ; preds = %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ag = add i32 %.013.i.i, 1
  %i.ah = add i32 %.013.i.i, %.sroa.09.0.in14.i.i
  %.sroa.09.0.in.i.i = and i32 %i.ah, %i.v        ; 2 uses
  %i.ai = shl nsw i32 %.sroa.09.0.in.i.i, 1       ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ab
  br i1 %i.an, label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i, !llvm.loop !20

_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %bb.e, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i._ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.loopexit_crit_edge, %_ZN2v88internal26RegisteredSymbolTableShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6StringEEE.exit
  %.pre-phi = phi i32 [ %i.w, %_ZN2v88internal26RegisteredSymbolTableShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6StringEEE.exit ], [ %.pre40, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i._ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.loopexit_crit_edge ], [ %i.ai, %bb.e ]
  %i.ao = load i64, ptr %2, align 8               ; 5 uses
  %i.ap = sext i32 %.pre-phi to i64               ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 40     ; 2 uses
  store atomic volatile i64 %i.ao, ptr %i.ar monotonic, align 8
  %i.as = trunc i64 %i.ao to i1
  br i1 %i.as, label %bb.f, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.at = or disjoint i64 %i.p, 1                 ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.av = and i64 %i.p, -262144
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 262144       ; 2 uses
  %i.ay = and i64 %i.ax, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  %i.az = and i64 %i.ax, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not37.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ba = and i64 %i.ao, -262144
  %i.bb = inttoptr i64 %i.ba to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 262144
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not38.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.at, i64 noundef %i.au, i64 %i.ao) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.au, i64 %i.ao) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %bb.i, %bb.j
  %i.bd = load i64, ptr %i.a, align 8
  %i.be = add i64 %i.bd, -1                       ; 3 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %3, align 8               ; 5 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %i.ap
  %i.bi = getelementptr i8, ptr %i.bh, i64 48     ; 2 uses
  store atomic volatile i64 %i.bg, ptr %i.bi monotonic, align 8
  %i.bj = trunc i64 %i.bg to i1
  br i1 %i.bj, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18

bb.k:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bk = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bl = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bm = and i64 %i.be, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %i.bn, align 262144       ; 2 uses
  %i.bp = and i64 %i.bo, 32
  %.not.i.i.i.i.i14 = icmp eq i64 %i.bp, 0
  %i.bq = and i64 %i.bo, 25
  %.not37.i.i.i.i.i15 = icmp eq i64 %i.bq, 0
  br i1 %.not37.i.i.i.i.i15, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.br = and i64 %i.bg, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i16 = load i64, ptr %i.bs, align 262144
  %i.bt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i16, 25
  %.not38.i.i.i.i.i17 = icmp eq i64 %i.bt, 0
  br i1 %.not38.i.i.i.i.i17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bk, i64 noundef %i.bl, i64 %i.bg) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i14, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bk, i64 %i.bl, i64 %i.bg) #27
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.n, %bb.o
  %i.bu = load i64, ptr %i.a, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = and i64 %i.by, -4294967296
  %i.ca = add i64 %i.bz, 4294967296
  store atomic volatile i64 %i.ca, ptr %i.bx monotonic, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal22SimpleNumberDictionary3SetEPNS0_7IsolateENS0_6HandleIS1_EEjNS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_jNSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_jNSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %.sroa.06.0.in35.i.i = and i32 %i.s, %i.k       ; 2 uses
  %i.t = shl nsw i32 %.sroa.06.0.in35.i.i, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.c, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.as, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in35.i.i, %bb.a ] ; 2 uses
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %i.ao = shl nsw i32 %.sroa.06.0.in.i.i, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.p
  br i1 %i.at, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread, label %.lr.ph.i.i, !llvm.loop !30

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit: ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.au = load i64, ptr %1, align 8
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %3, align 8               ; 5 uses
  %i.ay = shl nsw i32 %.sroa.06.0.in37.i.i, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 48     ; 2 uses
  store atomic volatile i64 %i.ax, ptr %i.bb monotonic, align 8
  %i.bc = trunc i64 %i.ax to i1
  br i1 %i.bc, label %bb.f, label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread: ; preds = %bb.e, %bb.a
  %i.bd = tail call ptr @_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_jNSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr nonnull %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef null)
  br label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit
  %i.be = or disjoint i64 %i.av, 1                ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = and i64 %i.av, -262144
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 262144       ; 2 uses
  %i.bj = and i64 %i.bi, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  %i.bk = and i64 %i.bi, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bl = and i64 %i.ax, -262144
  %i.bm = inttoptr i64 %i.bl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 262144
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bf, i64 %i.ax) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bf, i64 %i.ax) #27
  br label %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.j, %bb.i, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread
  %.sroa.08.0 = phi ptr [ %i.bd, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit.thread ], [ %1, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit ], [ %1, %bb.i ], [ %1, %bb.j ]
  ret ptr %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal20SimpleNameDictionary3SetEPNS0_7IsolateENS0_6HandleIS1_EENS0_12DirectHandleINS0_4NameEEENS6_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NSA_INS0_4NameEEENSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE5AtPutINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NSA_INS0_4NameEEENSA_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load i64, ptr %2, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h acquire, align 4 ; 3 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i32 noundef %i.i)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.b, %bb.a
  %.0.in.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.i, %bb.a ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = load i64, ptr %i.d, align 8              ; 2 uses
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.r, %.0.i.i.i  ; 2 uses
  %i.s = shl nuw nsw i32 %.sroa.06.0.in32.i.i, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.c, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.y = load i64, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.z = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ag, %bb.d ]
  %.sroa.06.0.in35.i.i = phi i32 [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.in.i.i, %bb.d ] ; 2 uses
  %.033.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %i.z
  br i1 %.not.i.i, label %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %.033.i.i, 1
  %i.ab = add i32 %.033.i.i, %.sroa.06.0.in35.i.i
  %.sroa.06.0.in.i.i = and i32 %i.ab, %i.r        ; 2 uses
  %i.ac = shl nsw i32 %.sroa.06.0.in.i.i, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.c, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 40
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.q
  br i1 %i.ah, label %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread, label %bb.c, !llvm.loop !33

_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %bb.c
  %i.ai = load i64, ptr %1, align 8
  %i.aj = add i64 %i.ai, -1                       ; 3 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %3, align 8               ; 5 uses
  %i.am = shl nsw i32 %.sroa.06.0.in35.i.i, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 48     ; 2 uses
  store atomic volatile i64 %i.al, ptr %i.ap monotonic, align 8
  %i.aq = trunc i64 %i.al to i1
  br i1 %i.aq, label %bb.e, label %_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.ar = tail call ptr @_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr nonnull %1, ptr nonnull %2, ptr %3, i32 %4, ptr noundef null)
  br label %_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit
  %i.as = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.at = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.au = and i64 %i.aj, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 262144       ; 2 uses
  %i.ax = and i64 %i.aw, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = and i64 %i.aw, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.az = and i64 %i.al, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.as, i64 noundef %i.at, i64 %i.al) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.as, i64 %i.at, i64 %i.al) #27
  br label %_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.i, %bb.h, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread
  %.sroa.010.0 = phi ptr [ %i.ar, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread ], [ %1, %_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit ], [ %1, %bb.h ], [ %1, %bb.i ]
  ret ptr %.sroa.010.0
}

declare void @_ZN2v88internal8JSObject19RequireSlowElementsENS0_6TaggedINS0_16NumberDictionaryEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16NumberDictionary12UncheckedSetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EEjNS7_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr %1, i32 noundef %2, ptr %3, i32 0)
end_hunk_16
