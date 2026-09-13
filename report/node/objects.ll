Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/objects?download=true
inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE:bb.a
  %i.rf = icmp eq i32 %i.rd, %i.re
  br i1 %i.rf, label %bb.as, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51: ; preds = %bb.ar, %bb.as
  %i.rg = load i8, ptr %.ptr, align 1
  %exitcond = icmp eq i64 %.1.i32144.add, 21
  br i1 %exitcond, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit, label %bb.ar, !llvm.loop !272

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit51, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit48, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit52, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit49, %bb.ac, %bb.ab, %bb.ap, %bb.ao, %bb.al
  %i.rh = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %bb.at, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !52

bb.at:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi22EEEvRAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
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
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
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
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
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
  %i.aq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
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
  %2 = zext nneg i32 %i.ax to i64
  %i.ba = shl nuw nsw i64 %2, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

bb.k:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.bg = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.k, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.bc, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bh = ptrtoint ptr %.0.i.i.i to i64
  %i.bi = add i64 %i.bh, 8
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %i.bb, align 8
  store i64 %i.ba, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.l:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.j
  %i.bk = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #28 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %spec.store.select, ptr %i.bo, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %bb.l, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.026.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.0.i.i16, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit17 ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bk, %bb.l ]
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
  %i.k = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %1, i32 noundef 1) #28 ; 2 uses
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
  %i.v = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef %0, ptr nonnull %2, i32 noundef 1) #28 ; 2 uses
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
  %i.ao = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i230234, ptr nonnull %.sroa.05.0.i72236240) #28
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
  %i.bd = tail call i64 @_ZN2v88internal6BigInt15CompareToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef %0, ptr nonnull %.sroa.05.0.i230234, ptr nonnull %.sroa.05.0.i72236240) #28
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
end_hunk_0
