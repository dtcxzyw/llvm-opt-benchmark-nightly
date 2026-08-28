Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-sharedarraybuffer?download=true
inline.NumInlined: 486
inline.NumDeleted: 252
begin_hunk_0_@_ZN2v88internal21Builtin_AtomicsNotifyEiPmPNS0_7IsolateE:bb.a
  %.not.i.i = icmp eq ptr %i.bv, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL26Builtin_Impl_AtomicsNotifyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internalL26Builtin_Impl_AtomicsNotifyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL26Builtin_Impl_AtomicsNotifyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.o, %bb.p
  ret i64 %.sroa.099.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6DoWaitEPNS0_7IsolateENS0_14FutexEmulation8WaitModeENS0_6HandleINS0_6ObjectEEES7_S7_S7_(ptr noundef %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.447"], align 8 ; 4 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.447"], align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = tail call ptr @_ZN2v88internal25ValidateIntegerTypedArrayEPNS0_7IsolateENS0_6HandleINS0_6ObjectEEEPKcb(ptr noundef %0, ptr %2, ptr noundef nonnull @.str, i1 noundef zeroext true) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_12JSTypedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge

_ZNK2v88internal11MaybeHandleINS0_12JSTypedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = load i64, ptr %i.b, align 8
  br label %bb.af

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.d = load i64, ptr %i.a, align 8
  store i64 %i.d, ptr %8, align 8
  %i.e = call ptr @_ZN2v88internal12JSTypedArray9GetBufferEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %0) #7
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 71
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 16
  %.not228 = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br i1 %.not228, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store ptr %2, ptr %7, align 8
  %i.k = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 137, ptr nonnull %7, i64 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.l, ptr noundef null) #7
  br label %bb.af

bb.c:                                             ; preds = %.critedge
  %i.n = call { i8, i64 } @_ZN2v88internal20ValidateAtomicAccessEPNS0_7IsolateENS0_12DirectHandleINS0_12JSTypedArrayEEENS0_6HandleINS0_6ObjectEEE(ptr noundef %0, ptr nonnull %i.a, ptr %3) ; 2 uses
  %i.o = extractvalue { i8, i64 } %i.n, 0
  %i.p = extractvalue { i8, i64 } %i.n, 1         ; 2 uses
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %_ZNKR2v85MaybeImE8FromJustEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.s = load i64, ptr %i.r, align 8
  br label %bb.af

_ZNKR2v85MaybeImE8FromJustEv.exit:                ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.t = load i64, ptr %i.a, align 8
  store i64 %i.t, ptr %9, align 8
  %i.u = call noundef i32 @_ZNK2v88internal12JSTypedArray4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %i.v = icmp eq i32 %i.u, 11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKR2v85MaybeImE8FromJustEv.exit
  %i.w = call ptr @_ZN2v88internal6BigInt10FromObjectINS0_6HandleEQsr3stdE16is_convertible_vIT_INS0_6ObjectEENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_(ptr noundef %0, ptr %4) #7 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, label %.critedge80

_ZNK2v88internal11MaybeHandleINS0_6BigIntEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.z = load i64, ptr %i.y, align 8
  br label %bb.af

bb.f:                                             ; preds = %_ZNKR2v85MaybeImE8FromJustEv.exit
  %i.aa = load i64, ptr %4, align 8
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.critedge80, label %_ZN2v88internal6Object7ToInt32IS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object7ToInt32IS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.f
  %i.ad = call ptr @_ZN2v88internal6Object14ConvertToInt32INS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %4) #7 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %.critedge80

bb.g:                                             ; preds = %_ZN2v88internal6Object7ToInt32IS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ag = load i64, ptr %i.af, align 8
  br label %bb.af

.critedge80:                                      ; preds = %bb.f, %bb.e, %_ZN2v88internal6Object7ToInt32IS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.0142.0 = phi ptr [ %i.ad, %_ZN2v88internal6Object7ToInt32IS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.w, %bb.e ], [ %4, %bb.f ]
  %i.ah = load i64, ptr %5, align 8               ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.critedge80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = lshr i64 %i.am, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = sitofp i32 %i.aq to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.as = add nsw i64 %i.am, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.au, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit

bb.k:                                             ; preds = %.critedge80
  %i.av = and i64 %i.ah, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.critedge84, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.k
  %i.ax = add nsw i64 %i.ah, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 130
  br i1 %i.bd, label %.critedge84, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.be = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %5) #7 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.be, align 8
  br label %.critedge84

bb.l:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bh = load i64, ptr %i.bg, align 8
  br label %bb.af

.critedge84:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84_crit_edge, %bb.k, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bi = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84_crit_edge ], [ %i.ah, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.ah, %bb.k ] ; 3 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread: ; preds = %.critedge84
  %i.bl = lshr i64 %i.bi, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = sitofp i32 %i.bm to double
  br label %bb.p

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %.critedge84
  %i.bo = add nsw i64 %i.bi, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i.i.i.i94.a = load double, ptr %i.bq, align 1 ; 2 uses
  %i.br = fcmp uno double %.0.copyload.i.i.i.i.i.i94.a, 0.000000e+00
  br i1 %i.br, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.bt = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.bu = and i64 %i.bt, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = lshr i64 %i.bt, 32
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = sitofp i32 %i.bx to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit

bb.o:                                             ; preds = %bb.m
  %i.bz = add nsw i64 %i.bt, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.0.copyload.i.i.i.i.i.i95 = load double, ptr %i.cb, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit

bb.p:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.cc = phi double [ %i.bn, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread ], [ %.0.copyload.i.i.i.i.i.i94.a, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ] ; 2 uses
  %i.cd = fcmp olt double %i.cc, 0.000000e+00
  %spec.store.select = select i1 %i.cd, double 0.000000e+00, double %i.cc
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit: ; preds = %bb.o, %bb.n, %bb.j, %bb.i, %bb.p
  %.077 = phi double [ %spec.store.select, %bb.p ], [ %.0.copyload.i.i.i.i.i.i, %bb.j ], [ %i.ar, %bb.i ], [ %i.by, %bb.n ], [ %.0.copyload.i.i.i.i.i.i95, %bb.o ] ; 2 uses
  %i.ce = icmp eq i32 %1, 0
  br i1 %i.ce, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 63952
  %i.cg = load i8, ptr %i.cf, align 8, !range !14, !noundef !15
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str, i64 12, i8 noundef zeroext 0) #7 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.s, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %i.ci, ptr %6, align 8
  %i.ck = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 23, ptr nonnull %6, i64 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cl, ptr noundef null) #7
  br label %bb.af

bb.t:                                             ; preds = %bb.q, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_10HeapNumberEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.cn = load i64, ptr %i.a, align 8
  store i64 %i.cn, ptr %10, align 8
  %i.co = call ptr @_ZN2v88internal12JSTypedArray9GetBufferEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %0) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.cp = load i64, ptr %i.a, align 8
  store i64 %i.cp, ptr %11, align 8
  %i.cq = call noundef i32 @_ZNK2v88internal12JSTypedArray4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  %i.cr = icmp eq i32 %i.cq, 11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  %i.cs = load i64, ptr %i.a, align 8
  %i.ct = add i64 %i.cs, 47
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = load i64, ptr %.sroa.0142.0, align 8    ; 4 uses
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = shl i64 %i.p, 3
  %i.cy = add i64 %i.cv, %i.cx
  %i.cz = add i64 %i.cw, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef null) #7
  %i.dc = call i64 @_ZN2v88internal14FutexEmulation8WaitJs64EPNS0_7IsolateENS1_8WaitModeENS0_12DirectHandleINS0_13JSArrayBufferEEEmld(ptr noundef nonnull %0, i32 noundef %1, ptr %i.co, i64 noundef %i.cy, i64 noundef %i.db, double noundef %.077) #7
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.dd = shl i64 %i.p, 2
  %i.de = add i64 %i.cv, %i.dd
  %i.df = and i64 %i.cw, 1
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = lshr i64 %i.cw, 32
  %i.di = trunc nuw i64 %i.dh to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.x:                                             ; preds = %bb.v
  %i.dj = add nsw i64 %i.cw, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.dl, align 1 ; 5 uses
  %i.dm = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.dn = fcmp one double %i.dm, +inf
  %i.do = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.do, %i.dn
  %i.dp = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i = and i1 %i.dp, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dq = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.z:                                             ; preds = %bb.x
  %i.dr = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ds = and i64 %i.dr, 9218868437227405312
  %i.dt = icmp eq i64 %i.ds, 0                    ; 2 uses
  %i.du = lshr i64 %i.dr, 52
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 2047
  %i.dx = add nsw i32 %i.dw, -1075
  %.0.i.i.i = select i1 %i.dt, i32 -1074, i32 %i.dx ; 5 uses
  %i.dy = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.dy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp samesign ult i32 %.0.i.i.i, -52
  br i1 %i.dz, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = and i64 %i.dr, 4503599627370495         ; 2 uses
  %i.eb = or disjoint i64 %i.ea, 4503599627370496
  %.0.i17.i.i = select i1 %i.dt, i64 %i.ea, i64 %i.eb
  %i.ec = sub nsw i32 0, %.0.i.i.i
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %.0.i17.i.i, %i.ed
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.ef = icmp samesign ugt i32 %.0.i.i.i, 31
  br i1 %i.ef, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = zext nneg i32 %.0.i.i.i to i64
  %i.eh = shl i64 %i.dr, %i.eg
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.0.i.i = phi i64 [ %i.ee, %bb.ab ], [ %i.eh, %bb.ad ]
  %i.ei = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.ej = sub i32 0, %i.ei
  %i.ek = icmp slt i64 %i.dr, 0
  %i.el = select i1 %i.ek, i32 %i.ej, i32 %i.ei
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae
  %.0.i97 = phi i32 [ %i.di, %bb.w ], [ %i.dq, %bb.y ], [ 0, %bb.aa ], [ %i.el, %bb.ae ], [ 0, %bb.ac ]
  %i.em = call i64 @_ZN2v88internal14FutexEmulation8WaitJs32EPNS0_7IsolateENS1_8WaitModeENS0_12DirectHandleINS0_13JSArrayBufferEEEmid(ptr noundef nonnull %0, i32 noundef %1, ptr %i.co, i64 noundef %i.de, i32 noundef %.0.i97, double noundef %.077) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit, %bb.g, %bb.l, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit, %bb.u, %_ZNK2v88internal11MaybeHandleINS0_12JSTypedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.b
  %.sroa.0143.2 = phi i64 [ %i.c, %_ZNK2v88internal11MaybeHandleINS0_12JSTypedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.m, %bb.b ], [ %i.s, %bb.d ], [ %i.ag, %bb.g ], [ %i.cm, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %i.bh, %bb.l ], [ %i.z, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit ], [ %i.dc, %bb.u ], [ %i.em, %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.0143.2
}

declare ptr @_ZN2v88internal12JSTypedArray9GetBufferEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6BigInt10FromObjectINS0_6HandleEQsr3stdE16is_convertible_vIT_INS0_6ObjectEENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_(ptr noundef, ptr) local_unnamed_addr #2

declare i64 @_ZN2v88internal14FutexEmulation8WaitJs64EPNS0_7IsolateENS1_8WaitModeENS0_12DirectHandleINS0_13JSArrayBufferEEEmld(ptr noundef, i32 noundef, ptr, i64 noundef, i64 noundef, double noundef) local_unnamed_addr #2

declare noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal14FutexEmulation8WaitJs32EPNS0_7IsolateENS1_8WaitModeENS0_12DirectHandleINS0_13JSArrayBufferEEEmid(ptr noundef, i32 noundef, ptr, i64 noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal19Builtin_AtomicsWaitEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
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
  %.not.i14.i = icmp sgt i32 %0, 5
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 4 uses
  %i.k = add i64 %reass.sub.i, 48
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 4 uses
  %.sroa.0.0.i.i = select i1 %.not.i14.i, ptr %i.l, ptr %i.m
  %.not.i15.i = icmp sgt i32 %0, 6
  %i.n = add i64 %reass.sub.i, 56
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.i16.i = select i1 %.not.i15.i, ptr %i.o, ptr %i.m
  %.not.i20.i = icmp sgt i32 %0, 7
  %i.p = add i64 %reass.sub.i, 64
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.i21.i = select i1 %.not.i20.i, ptr %i.q, ptr %i.m
  %.not.i25.i = icmp sgt i32 %0, 8
  %i.r = add i64 %reass.sub.i, 72
  %i.s = inttoptr i64 %i.r to ptr
  %.sroa.0.0.i26.i = select i1 %.not.i25.i, ptr %i.s, ptr %i.m
  %i.t = tail call i64 @_ZN2v88internal6DoWaitEPNS0_7IsolateENS0_14FutexEmulation8WaitModeENS0_6HandleINS0_6ObjectEEES7_S7_S7_(ptr noundef nonnull %2, i32 noundef 0, ptr %.sroa.0.0.i.i, ptr %.sroa.0.0.i16.i, ptr %.sroa.0.0.i21.i, ptr %.sroa.0.0.i26.i)
  store ptr %i.c, ptr %i.b, align 8
  %i.u = load i32, ptr %i.f, align 8
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL24Builtin_Impl_AtomicsWaitENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internalL24Builtin_Impl_AtomicsWaitENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL24Builtin_Impl_AtomicsWaitENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  ret i64 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal24Builtin_AtomicsWaitAsyncEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
end_hunk_0
