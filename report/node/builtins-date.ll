Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-date?download=true
inline.NumInlined: 1694
inline.NumDeleted: 289
begin_hunk_0_@_ZN2v88internal23Builtin_DateConstructorEiPmPNS0_7IsolateE:bb.a
_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i: ; preds = %bb.aa, %bb.z
  %i.ho = phi double [ %i.hk, %bb.z ], [ %.0.copyload.i.i.i.i.i.i269.i, %bb.aa ] ; 3 uses
  %i.hp = icmp samesign ugt i32 %0, 11
  br i1 %i.hp, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit272.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit272.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i
  %i.hq = add i64 %reass.sub.i.i, 96
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = tail call ptr @_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_(ptr noundef nonnull %2, ptr %i.hr) ; 2 uses
  %.not537.i = icmp eq ptr %i.hs, null
  br i1 %.not537.i, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit232.i, label %.critedge217.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit232.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit272.i
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.hu = load i64, ptr %i.ht, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

.critedge217.i:                                   ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit272.i
  %i.hv = load i64, ptr %i.hs, align 8            ; 3 uses
  %i.hw = and i64 %i.hv, 1
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge217.i
  %i.hy = lshr i64 %i.hv, 32
  %i.hz = trunc nuw i64 %i.hy to i32
  %i.ia = sitofp i32 %i.hz to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i

bb.ac:                                            ; preds = %.critedge217.i
  %i.ib = add nsw i64 %i.hv, -1
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.0.copyload.i.i.i.i.i.i273.i = load double, ptr %i.id, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i: ; preds = %bb.ac, %bb.ab, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i
  %.9198.i = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i ], [ %.0.copyload.i.i.i.i.i.i273.i, %bb.ac ], [ %i.ia, %bb.ab ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i ]
  %.7188.i = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i ], [ %i.ho, %bb.ac ], [ %i.ho, %bb.ab ], [ %i.ho, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i ]
  %.5180.i = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i ], [ %i.gz, %bb.ac ], [ %i.gz, %bb.ab ], [ %i.gz, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i ], [ %i.gz, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i ]
  %.3174.i = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i ], [ %i.gj, %bb.ac ], [ %i.gj, %bb.ab ], [ %i.gj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i ], [ %i.gj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i ], [ %i.gj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i ]
  %.1170.i = phi double [ 1.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit251.i ], [ %i.fk, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit258.i ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fk, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit270.i ], [ %i.fk, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit266.i ], [ %i.fk, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit262.i ]
  %i.ie = fcmp uno double %i.ea, 0.000000e+00
  br i1 %i.ie, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i
  %or.cond.i.i = fcmp ueq double %i.ea, 0.000000e+00
  br i1 %or.cond.i.i, label %_ZN2v88internal15DoubleToIntegerEd.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.if = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ig = fcmp ueq double %i.if, +inf
  br i1 %i.ig, label %_ZN2v88internal15DoubleToIntegerEd.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ih = fcmp ogt double %i.ea, 0.000000e+00
  br i1 %i.ih, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ii = tail call double @llvm.floor.f64(double %i.ea)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ij = tail call double @llvm.ceil.f64(double %i.ea)
  %i.ik = fadd double %i.ij, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

_ZN2v88internal15DoubleToIntegerEd.exit.i:        ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %.0.i275.i = phi double [ 0.000000e+00, %bb.ad ], [ %i.ea, %bb.ae ], [ %i.ii, %bb.ag ], [ %i.ik, %bb.ah ] ; 3 uses
  %i.il = fcmp oge double %.0.i275.i, 0.000000e+00
  %i.im = fcmp ole double %.0.i275.i, 9.900000e+01
  %or.cond.i = and i1 %i.il, %i.im
  %i.in = fadd double %.0.i275.i, 1.900000e+03
  %.0167.i = select i1 %or.cond.i, double %i.in, double %i.ea
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i
  %.1168.i = phi double [ %i.ea, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit274.thread.i ], [ %.0167.i, %_ZN2v88internal15DoubleToIntegerEd.exit.i ]
  %i.io = tail call noundef double @_ZN2v88internal7MakeDayEddd(double noundef %.1168.i, double noundef %i.ek, double noundef %.1170.i) #11
  %i.ip = tail call noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef %.3174.i, double noundef %.5180.i, double noundef %.7188.i, double noundef %.9198.i) #11
  %i.iq = tail call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %i.io, double noundef %i.ip) #11 ; 2 uses
  %i.ir = tail call double @llvm.fabs.f64(double %i.iq)
  %or.cond19.i = fcmp ugt double %i.ir, f0x433EB2095D5AC800
  br i1 %or.cond19.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 59120
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = fptosi double %i.iq to i64              ; 2 uses
  %i.iv = tail call noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848) %i.it, i64 noundef %i.iu, i1 noundef zeroext false) #11
  %i.iw = sext i32 %i.iv to i64
  %i.ix = sub nsw i64 %i.iu, %i.iw
  %i.iy = sitofp i64 %i.ix to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %bb.aj, %bb.ai, %bb.k, %bb.j, %bb.h, %bb.f, %bb.e
  %.6166.i = phi double [ %i.ah, %bb.e ], [ +qnan, %bb.ai ], [ %i.iy, %bb.aj ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.k ], [ %i.cj, %bb.j ], [ %i.br, %bb.h ], [ %i.av, %bb.f ]
  %i.iz = tail call ptr @_ZN2v88internal6JSDate3NewEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_10JSReceiverEEEd(ptr noundef nonnull %2, ptr %i.af, ptr nonnull %i.l, double noundef %.6166.i) #11 ; 2 uses
  %.not538.i = icmp eq ptr %i.iz, null
  br i1 %.not538.i, label %_ZNK2v88internal11MaybeHandleINS0_6JSDateEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %bb.ak

_ZNK2v88internal11MaybeHandleINS0_6JSDateEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.jb = load i64, ptr %i.ja, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.ak:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.jc = load i64, ptr %i.iz, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.ak, %_ZNK2v88internal11MaybeHandleINS0_6JSDateEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit232.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit231.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit230.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit229.i, %bb.s, %bb.n, %.critedge221.i, %bb.i, %bb.g, %bb.b
  %.sroa.0353.10.i = phi i64 [ %.sroa.0353.0.i, %bb.b ], [ %i.cd, %bb.i ], [ %i.jb, %_ZNK2v88internal11MaybeHandleINS0_6JSDateEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.db, %.critedge221.i ], [ %i.bh, %bb.g ], [ %i.jc, %bb.ak ], [ %i.dq, %bb.n ], [ %i.fa, %bb.s ], [ %i.fz, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit229.i ], [ %i.he, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit231.i ], [ %i.hu, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit232.i ], [ %i.gp, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit230.i ]
  store ptr %i.c, ptr %i.b, align 8
  %i.jd = load i32, ptr %i.f, align 8
  %i.je = add nsw i32 %i.jd, -1
  store i32 %i.je, ptr %i.f, align 8
  %i.jf = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.jf, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL28Builtin_Impl_DateConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.al, !prof !35

bb.al:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL28Builtin_Impl_DateConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL28Builtin_Impl_DateConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %bb.al
  ret i64 %.sroa.0353.10.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15Builtin_DateNowEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !guid !37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call noundef i64 @_ZN2v88internal6JSDate16CurrentTimeValueEPNS0_7IsolateE(ptr noundef nonnull %2) #11 ; 3 uses
  %i.i = add i64 %i.h, -2147483648
  %or.cond.i.i = icmp ult i64 %i.i, -4294967296
  br i1 %or.cond.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl nsw i64 %i.h, 32                     ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !34

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.b ]
  store i64 %i.j, ptr %.0.i.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = sitofp i64 %i.h to double
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #11 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.o, ptr %i.t, align 1
  %.pre.i = load i64, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i
  %i.u = phi i64 [ %.pre.i, %bb.d ], [ %i.j, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.v = load i32, ptr %i.e, align 8
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL20Builtin_Impl_DateNowENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL20Builtin_Impl_DateNowENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL20Builtin_Impl_DateNowENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal17Builtin_DateParseEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !38 {
bb.a:
  %3 = sext i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i11.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i11.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.v = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i2933.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.x = tail call noundef double @_ZN2v88internal19ParseDateTimeStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i2933.i) #11 ; 6 uses
  %i.y = fcmp oge double %i.x, f0xC1E0000000000000
  %i.z = fcmp ole double %i.x, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i = and i1 %i.y, %i.z
  br i1 %or.cond.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge.i
  %i.aa = tail call noundef i1 @llvm.is.fpclass.f64(double %i.x, /* (nzero) */ i32 32)
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i:        ; preds = %bb.c
  %i.ab = fptosi double %i.x to i32               ; 2 uses
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fcmp oeq double %i.x, %i.ac
  br i1 %i.ad, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i, label %bb.e

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i
  %i.ae = sext i32 %i.ab to i64
  %i.af = shl nsw i64 %i.ae, 32
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i.i, !prof !34

bb.d:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i
  %i.aj = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  br label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.d, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i
  %.0.i.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ag, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i ] ; 3 uses
  %i.ak = ptrtoint ptr %.0.i.i.i.i to i64
  %i.al = add i64 %i.ak, 8
  %i.am = inttoptr i64 %i.al to ptr
  store ptr %i.am, ptr %i.a, align 8
  store i64 %i.af, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i

bb.e:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i, %bb.c, %.critedge.i
  %i.an = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #11 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store double %i.x, ptr %i.ar, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i: ; preds = %bb.e, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i.i, %bb.b
  %.sroa.019.0.in.i = phi ptr [ %i.w, %bb.b ], [ %.0.i.i.i.i, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i.i ], [ %i.an, %bb.e ]
  %.sroa.019.0.i = load i64, ptr %.sroa.019.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.as = load i32, ptr %i.e, align 8
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.e, align 8
  %i.au = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.au, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL22Builtin_Impl_DateParseENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL22Builtin_Impl_DateParseENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL22Builtin_Impl_DateParseENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit.i, %bb.f
  ret i64 %.sroa.019.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15Builtin_DateUTCEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = add nsw i32 %0, -4                       ; 3 uses
  %i.i = icmp sgt i32 %0, 5
  br i1 %i.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, label %.thread.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = shl nuw nsw i64 %i.j, 3
  %reass.sub.i = sub i64 %i.k, %i.l               ; 7 uses
  %i.m = add i64 %reass.sub.i, 48
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.r = add nsw i64 %i.o, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 130
  br i1 %i.x, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.y = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.n) #11 ; 2 uses
  %.not385.i = icmp eq ptr %i.y, null
  br i1 %.not385.i, label %bb.b, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.pre.i = load i64, ptr %i.y, align 8
  br label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %.critedge177.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.aa = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i ], [ %i.o, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.o, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i ] ; 3 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.d:                                             ; preds = %.critedge.i
  %i.ag = add nsw i64 %i.aa, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ai, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.d ] ; 9 uses
  %.not.i = icmp eq i32 %i.h, 2
  br i1 %.not.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit218.thread.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit190.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit190.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.ak = add i64 %reass.sub.i, 56
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 4 uses
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge165.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i191.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i191.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit190.i
  %i.ap = add nsw i64 %i.am, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = icmp eq i16 %i.au, 130
  br i1 %i.av, label %.critedge165.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193.i

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i191.i
  %i.aw = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.al) #11 ; 2 uses
  %.not386.i = icmp eq ptr %i.aw, null
  br i1 %.not386.i, label %bb.e, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193..critedge165_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193..critedge165_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193.i
  %.pre411.i = load i64, ptr %i.aw, align 8
  br label %.critedge165.i

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit193.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %.critedge177.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal28Builtin_DatePrototypeSetYearEiPmPNS0_7IsolateE:bb.a
_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.k = sext i32 %0 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = shl nsw i64 %i.k, 3
  %reass.sub.i = sub i64 %i.l, %i.m               ; 2 uses
  %i.n = add i64 %reass.sub.i, 40
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2124
  br i1 %i.x, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit54.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.y = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.27, i64 22, i8 noundef zeroext 0) #11 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit51.i, !prof !34

bb.c:                                             ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit51.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.y, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %i.aa, align 8
  %i.ab = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ac, ptr noundef null) #11
  br label %bb.m

_ZNK2v88internal16BuiltinArguments8receiverEv.exit54.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i55.i = icmp sgt i32 %0, 5
  %i.ae = add i64 %reass.sub.i, 48
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i55.i, ptr %i.af, ptr %i.ag ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.0.i.i, align 8   ; 4 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit54.i
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.pre.i = load i64, ptr %i.ar, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.m

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit54.i
  %i.au = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i ], [ %i.ah, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.ah, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit54.i ] ; 3 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %.critedge.i
  %i.ax = lshr i64 %i.au, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = sitofp i32 %i.ay to double
  br label %bb.e

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %.critedge.i
  %i.ba = add nsw i64 %i.au, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bc, align 2 ; 3 uses
  %i.bd = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.bd, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.be = phi double [ %i.az, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ] ; 7 uses
  %or.cond.i.i = fcmp ueq double %i.be, 0.000000e+00
  br i1 %or.cond.i.i, label %_ZN2v88internal15DoubleToIntegerEd.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = tail call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ueq double %i.bf, +inf
  br i1 %i.bg, label %_ZN2v88internal15DoubleToIntegerEd.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = fcmp ogt double %i.be, 0.000000e+00
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = tail call double @llvm.floor.f64(double %i.be)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

bb.i:                                             ; preds = %bb.g
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
  br i1 %.not.i.i, label %_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  store ptr %i.g, ptr %i.f, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL33Builtin_Impl_DatePrototypeSetYearENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.078.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Builtin_DatePrototypeToJsonEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !65 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.450"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = sext i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i54.i = icmp sgt i32 %0, 4
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nsw i64 %5, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 40
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i54.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !66

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !67

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %.pre.i = load i64, ptr %i.v, align 8
  br label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.y = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i ], [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 4 uses
  %.sroa.07.0.i141145.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge_crit_edge.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 4 uses
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.critedge49.i, label %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %.critedge.i
  %i.ab = add nsw i64 %i.y, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp ult i16 %i.ag, 132
  br i1 %i.ah, label %.critedge49.i, label %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i

_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i: ; preds = %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ai = tail call ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i141145.i, i32 noundef 1) #11 ; 2 uses
  %.not160.i = icmp eq ptr %i.ai, null
  br i1 %.not160.i, label %bb.c, label %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i

_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i: ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i
  %.pre164.i = load i64, ptr %i.ai, align 8
  br label %.critedge49.i

bb.c:                                             ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.n

.critedge49.i:                                    ; preds = %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.critedge.i
  %i.al = phi i64 [ %.pre164.i, %_ZN2v88internal6Object11ToPrimitiveINS0_10JSReceiverENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEENS5_IS1_E9MaybeTypeEPNS0_7IsolateES7_NS0_15ToPrimitiveHintE.exit..critedge49_crit_edge.i ], [ %i.y, %_ZN2v88internal11IsPrimitiveENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.y, %.critedge.i ] ; 3 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge49.i
  %i.ao = add nsw i64 %i.al, -1
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp eq i16 %i.at, 130
  br i1 %i.au, label %bb.e, label %bb.g

bb.d:                                             ; preds = %.critedge49.i
  %i.av = lshr i64 %i.al, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ay, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.e, %bb.d
  %i.az = phi double [ %i.ax, %bb.d ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.e ]
  %i.ba = tail call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ueq double %i.ba, +inf
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.bd = load i64, ptr %i.bc, align 8
  br label %bb.n

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.28, i64 11, i8 noundef zeroext 0) #11 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !34

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %.pre.pre.i.i = load i64, ptr %i.be, align 8
  %i.bg = add i64 %.pre.pre.i.i, -1
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = icmp eq i16 %i.bl, 128
  br i1 %i.bm, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.bq = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.bq, ptr %4, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.sroa.07.0.i141145.i, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cb = ptrtoint ptr %.sroa.07.0.i141145.i to i64
  store i64 %i.cb, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 -1, i64 16, i1 false)
  %i.cd = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = and i16 %i.cg, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.ch, 32
  br i1 %.not.i21.i.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !68, !noundef !69
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.cl = load i8, ptr %i.ck, align 8, !range !68
  %i.cm = trunc nuw i8 %i.cl to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.cj, true
  %i.cn = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.cm
  br i1 %i.cn, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.cp = load i8, ptr %i.co, align 8, !range !68, !noundef !69
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #13
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.i
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.cs, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %2, %bb.i ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.ct = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.cu = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.be) #11
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.cu, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.be, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.bw, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal27Builtin_DatePrototypeToJsonEiPmPNS0_7IsolateE:bb.a
  %i.cy = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not161.i = icmp eq ptr %i.cy, null
  br i1 %.not161.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge51.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.n

.critedge51.i:                                    ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i57154.i = phi ptr [ %i.cx, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.cy, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ] ; 2 uses
  %i.db = load i64, ptr %.sroa.0.0.i57154.i, align 8 ; 2 uses
  %i.dc = trunc i64 %i.db to i1
  br i1 %i.dc, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge51.i
  %i.dd = add nsw i64 %i.db, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 13
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i8, ptr %i.dh monotonic, align 1
  %i.dj = and i8 %i.di, 2
  %.not162.i = icmp eq i8 %i.dj, 0
  br i1 %.not162.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %bb.l

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i, %.critedge51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.be, ptr %3, align 8
  %i.dk = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 32, ptr nonnull %3, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.dl, ptr noundef null) #11
  br label %bb.n

bb.l:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dn = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i57154.i, ptr nonnull %.sroa.07.0.i141145.i, ptr null, i64 0) #11 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %bb.m

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.dq = load i64, ptr %i.dp, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dr = load i64, ptr %i.dn, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.f, %bb.c, %bb.b
  %.sroa.087.3.i = phi i64 [ %i.x, %bb.b ], [ %i.ak, %bb.c ], [ %i.bd, %bb.f ], [ %i.da, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.dm, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %i.dr, %bb.m ], [ %i.dq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ds = load i32, ptr %i.e, align 8
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.e, align 8
  %i.du = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.du, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL32Builtin_Impl_DatePrototypeToJsonENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.o, !prof !35

bb.o:                                             ; preds = %bb.n
  store ptr %i.d, ptr %i.c, align 8
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
define linkonce_odr hidden ptr @_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 !guid !70 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 !guid !71 {
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
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

declare noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9DateCache20YearMonthDayFromDaysEiPiS2_S2_(ptr noundef nonnull align 8 dereferenceable(848), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_117SetLocalDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef %0, ptr nofree readonly captures(none) %1, double noundef %2) unnamed_addr #0 !guid !72 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = tail call double @llvm.fabs.f64(double %2)
  %or.cond = fcmp ugt double %i.a, f0x433EB2095D5AC800
  br i1 %or.cond, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 59120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = fptosi double %2 to i64                  ; 2 uses
  %i.e = tail call noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848) %i.c, i64 noundef %i.d, i1 noundef zeroext false) #11
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 %i.d, %i.f                   ; 4 uses
  %i.h = sitofp i64 %i.g to double                ; 4 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %or.cond.i = fcmp ugt double %i.i, 8.640000e+15
  br i1 %or.cond.i, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.j = load i64, ptr %1, align 8
  store i64 %i.j, ptr %3, align 8
  call void @_ZN2v88internal6JSDate8SetValueEPNS0_7IsolateEd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0, double noundef %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.k = add i64 %i.g, 2147483648
  %or.cond.i.i.i = icmp ult i64 %i.k, 4294967296
  %i.l = trunc i64 %i.g to i32
  %i.m = sitofp i32 %i.l to double
  %i.n = fcmp oeq double %i.h, %i.m
  %or.cond32 = select i1 %or.cond.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond32, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.e

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %bb.c
  %sext = shl nsw i64 %i.g, 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !34

bb.d:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.t = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  br label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.o, align 8
  store i64 %sext, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.e:                                             ; preds = %bb.c
  %i.x = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store double %i.h, ptr %i.ab, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal9DateCache11TryTimeClipEPd.exit:   ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ac = load i64, ptr %1, align 8
  store i64 %i.ac, ptr %4, align 8
  call void @_ZN2v88internal6JSDate11SetNanValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1936
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %bb.e, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal9DateCache11TryTimeClipEPd.exit
  %.sroa.017.0.in = phi ptr [ %i.ad, %_ZN2v88internal9DateCache11TryTimeClipEPd.exit ], [ %.0.i.i.i, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.x, %bb.e ]
  %.sroa.017.0 = load i64, ptr %.sroa.017.0.in, align 8
  ret i64 %.sroa.017.0
}

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal6JSDate8SetValueEPNS0_7IsolateEd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6JSDate11SetNanValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_112SetDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef %0, ptr nofree readonly captures(none) %1, double noundef %2) unnamed_addr #0 !guid !73 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = tail call double @llvm.fabs.f64(double %2)
  %or.cond.i = fcmp ugt double %i.a, 8.640000e+15
  br i1 %or.cond.i, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %2, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call double @llvm.floor.f64(double %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call double @llvm.ceil.f64(double %2)
  %i.e = fadd double %i.d, 0.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.ph = phi double [ %i.e, %bb.d ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = load i64, ptr %1, align 8
  store i64 %i.f, ptr %3, align 8
  call void @_ZN2v88internal6JSDate8SetValueEPNS0_7IsolateEd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, double noundef %.0.ph) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.g = fcmp oge double %.0.ph, f0xC1E0000000000000
  %i.h = fcmp ole double %.0.ph, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.g

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.e
  %i.i = fptosi double %.0.ph to i32              ; 2 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fcmp oeq double %.0.ph, %i.j
  br i1 %i.k, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.g

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.l = sext i32 %i.i to i64
  %i.m = shl nsw i64 %i.l, 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !34

bb.f:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.s = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  br label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.f, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ %i.o, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.g:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.e
  %i.w = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store double %.0.ph, ptr %i.aa, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal9DateCache11TryTimeClipEPd.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ab = load i64, ptr %1, align 8
  store i64 %i.ab, ptr %4, align 8
  call void @_ZN2v88internal6JSDate11SetNanValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1936
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %bb.g, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal9DateCache11TryTimeClipEPd.exit
  %.sroa.014.0.in = phi ptr [ %i.ac, %_ZN2v88internal9DateCache11TryTimeClipEPd.exit ], [ %.0.i.i.i, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.w, %bb.g ]
  %.sroa.014.0 = load i64, ptr %.sroa.014.0.in, align 8
  ret i64 %.sroa.014.0
}

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal16JSDateTimeFormat16ToLocaleDateTimeEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_S6_NS1_14RequiredOptionENS1_14DefaultsOptionEPKc(ptr noundef, ptr, ptr, ptr, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #9 comdat !guid !74 {
bb.a:
  tail call void @abort() #12
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i64 -3257509902425765853}
end_hunk_2
