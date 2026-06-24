inline.NumInlined: 1694
inline.NumDeleted: 289
begin_hunk_0_@_ZN2v88internal28Builtin_DatePrototypeSetYearEiPmPNS0_7IsolateE:bb.a
  %i.bj = tail call double @llvm.ceil.f64(double %i.be)
  %i.bk = fadd double %i.bj, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

_ZN2v88internal15DoubleToIntegerEd.exit.i:        ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i56.i = phi double [ 0.000000e+00, %bb.e ], [ %i.be, %bb.f ], [ %i.bi, %bb.h ], [ %i.bk, %bb.i ] ; 3 uses
  %i.bl = fcmp oge double %.0.i56.i, 0.000000e+00
  %i.bm = fcmp ole double %.0.i56.i, 9.900000e+01
  %or.cond.i = and i1 %i.bl, %i.bm
  %i.bn = fadd double %.0.i56.i, 1.900000e+03
  %.045.i = select i1 %or.cond.i, double %i.bn, double %i.be
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %.1.i = phi double [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.045.i, %_ZN2v88internal15DoubleToIntegerEd.exit.i ]
  %i.bo = load i64, ptr %i.o, align 8
  %i.bp = add i64 %i.bo, 23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bs = fcmp uno double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = fptosi double %i.br to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 59120 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848) %i.bv, i64 noundef %i.bt, i1 noundef zeroext true) #11
  %i.bx = sext i32 %i.bw to i64
  %i.by = add nsw i64 %i.bx, %i.bt                ; 4 uses
  %i.bz = icmp slt i64 %i.by, 0
  %i.ca = add nsw i64 %i.by, -86399999
  %spec.select.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by
  %i.cb = sdiv i64 %spec.select.i.i, 86400000     ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %.neg.i.i = mul i64 %i.cb, 4208567296
  %i.cd = add i64 %.neg.i.i, %i.by
  %i.ce = trunc i64 %i.cd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.cf = load ptr, ptr %i.bu, align 8
  call void @_ZN2v88internal9DateCache20YearMonthDayFromDaysEiPiS2_S2_(ptr noundef nonnull align 8 dereferenceable(848) %i.cf, i32 noundef %i.cc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.cg = load i32, ptr %i.b, align 4
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = load i32, ptr %i.c, align 4
  %i.cj = sitofp i32 %i.ci to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ck = sitofp i32 %i.ce to double
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.046.i = phi double [ %i.ck, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.044.i = phi double [ %i.cj, %bb.k ], [ 1.000000e+00, %bb.j ]
  %.043.i = phi double [ %i.ch, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.cl = call noundef double @_ZN2v88internal7MakeDayEddd(double noundef %.1.i, double noundef %.043.i, double noundef %.044.i) #11
  %i.cm = call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %i.cl, double noundef %.046.i) #11
  %i.cn = call fastcc i64 @_ZN2v88internal12_GLOBAL__N_117SetLocalDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef nonnull %2, ptr nonnull %i.o, double noundef %i.cm)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit51.i
  %.sroa.078.1.i = phi i64 [ %i.ad, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit51.i ], [ %i.cn, %bb.l ], [ %i.at, %bb.d ]
  store ptr %i.e, ptr %i.d, align 8
  %i.co = load i32, ptr %i.h, align 8
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.h, align 8
  %i.cq = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.cq, %i.g
  br i1 %.not.i.i, label %_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  store ptr %i.g, ptr %i.f, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.078.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Builtin_DatePrototypeToJsonEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.450"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %.not.i54.i = icmp sgt i32 %0, 4
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i54.i, ptr %i.l, ptr %i.m ; 3 uses
  %i.n = load i64, ptr %.sroa.0.0.i.i, align 8    ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !7

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp ugt i16 %i.u, 299
  br i1 %i.v, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !8

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.w = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %.pre.i = load i64, ptr %i.w, align 8
  br label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.y = load i64, ptr %i.x, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.z = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i ], [ %i.n, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 4 uses
  %.sroa.07.0.i141145.i = phi ptr [ %i.w, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 4 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.critedge49.i, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %.critedge.i
  %i.ac = add nsw i64 %i.z, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp ult i16 %i.ah, 132
  br i1 %i.ai, label %.critedge49.i, label %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i

_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.aj = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i141145.i, i32 noundef 1) #11 ; 2 uses
  %.not160.i = icmp eq ptr %i.aj, null
  br i1 %.not160.i, label %bb.c, label %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i

_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i: ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i
  %.pre164.i = load i64, ptr %i.aj, align 8
  br label %.critedge49.i

bb.c:                                             ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.al = load i64, ptr %i.ak, align 8
  br label %bb.n

.critedge49.i:                                    ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.critedge.i
  %i.am = phi i64 [ %.pre164.i, %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i ], [ %i.z, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.z, %.critedge.i ] ; 3 uses
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge49.i
  %i.ap = add nsw i64 %i.am, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = icmp eq i16 %i.au, 130
  br i1 %i.av, label %bb.e, label %bb.g

bb.d:                                             ; preds = %.critedge49.i
  %i.aw = lshr i64 %i.am, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = sitofp i32 %i.ax to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.az, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.e, %bb.d
  %i.ba = phi double [ %i.ay, %bb.d ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.e ]
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ueq double %i.bb, +inf
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.be = load i64, ptr %i.bd, align 8
  br label %bb.n

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bf = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.28, i64 11, i8 noundef zeroext 0) #11 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %.pre.pre.i.i = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %.pre.pre.i.i, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 3 uses
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp eq i16 %i.bm, 128
  br i1 %i.bn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.br = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.br, ptr %4, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.sroa.07.0.i141145.i, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cc = ptrtoint ptr %.sroa.07.0.i141145.i to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 -1, i64 16, i1 false)
  %i.ce = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.cf = add i64 %i.ce, 11
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = and i16 %i.ch, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.ci, 32
  br i1 %.not.i21.i.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !9, !noundef !10
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.cm = load i8, ptr %i.cl, align 8, !range !9
  %i.cn = trunc nuw i8 %i.cm to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.ck, true
  %i.co = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.cn
  br i1 %i.co, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.cq = load i8, ptr %i.cp, align 8, !range !9, !noundef !10
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #13
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.i
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.ct, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %2, %bb.i ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.cu = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.cv = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.bf) #11
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.cv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.bf, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.bx, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #11
  %i.cw = load i32, ptr %i.bs, align 4
  %.not.i56.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i56.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.cx = load ptr, ptr %i.bw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge51.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.cz = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not161.i = icmp eq ptr %i.cz, null
  br i1 %.not161.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge51.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.db = load i64, ptr %i.da, align 8
  br label %bb.n

.critedge51.i:                                    ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i57154.i = phi ptr [ %i.cy, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.cz, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ] ; 2 uses
  %i.dc = load i64, ptr %.sroa.0.0.i57154.i, align 8 ; 2 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge51.i
  %i.de = add nsw i64 %i.dc, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 13
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i8, ptr %i.di monotonic, align 1
  %i.dk = and i8 %i.dj, 2
  %.not162.i = icmp eq i8 %i.dk, 0
  br i1 %.not162.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.l

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i, %.critedge51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.bf, ptr %3, align 8
  %i.dl = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 32, ptr nonnull %3, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.dm, ptr noundef null) #11
  br label %bb.n

bb.l:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.do = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i57154.i, ptr nonnull %.sroa.07.0.i141145.i, ptr null, i64 0) #11 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %bb.m

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.dr = load i64, ptr %i.dq, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ds = load i64, ptr %i.do, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.f, %bb.c, %bb.b
  %.sroa.087.3.i = phi i64 [ %i.y, %bb.b ], [ %i.al, %bb.c ], [ %i.be, %bb.f ], [ %i.db, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.dn, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %i.ds, %bb.m ], [ %i.dr, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ]
  store ptr %i.c, ptr %i.b, align 8
  %i.dt = load i32, ptr %i.f, align 8
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.f, align 8
  %i.dv = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.dv, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL32Builtin_Impl_DatePrototypeToJsonENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL32Builtin_Impl_DatePrototypeToJsonENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL32Builtin_Impl_DatePrototypeToJsonENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.n, %bb.o
  ret i64 %.sroa.087.3.i
}

declare noundef i64 @_ZN2v88internal6JSDate16CurrentTimeValueEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12ToDateStringEdPNS0_9DateCacheENS0_16ToDateStringModeE(ptr dead_on_unwind writable sret(%"class.v8::base::SmallVector") align 8, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS_4base6VectorIKcEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare noundef double @_ZN2v88internal19ParseDateTimeStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
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
  %i.k = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1) #11
  br label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b
  %.sroa.07.0 = phi ptr [ %i.k, %bb.b ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.07.0
}

declare noundef double @_ZN2v88internal7MakeDayEddd(double noundef, double noundef, double noundef) local_unnamed_addr #2

declare noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare noundef double @_ZN2v88internal8MakeDateEdd(double noundef, double noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6JSDate3NewEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_10JSReceiverEEEd(ptr noundef, ptr, ptr, double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
