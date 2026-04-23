inline.NumInlined: 8192
inline.NumDeleted: 1259
begin_hunk_0_@_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.sroa.6.020 = phi i64 [ %1, %bb.a ], [ %2, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ]
  %i.b = add i64 %.sroa.6.020, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE:bb.a
  br i1 %i.m, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit: ; preds = %bb.c
  %i.n = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %2 = load i64, ptr %i.p, align 8                ; 2 uses
  %i.q = load i64, ptr %i.a, align 8
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.thread, label %bb.b, !llvm.loop !30

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.thread: ; preds = %bb.c, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit, %bb.b
end_hunk_1
begin_hunk_2_@_ZN2v88internal15JsonStringifier10Serialize_ILb0EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.e
  %.sroa.6.020.i = phi i64 [ %i.p, %bb.e ], [ %6, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ]
  %i.ab = add i64 %.sroa.6.020.i, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal15JsonStringifier10Serialize_ILb0EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE:bb.a
  br i1 %i.am, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %bb.g
  %i.an = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ao = add i64 %i.an, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %6 = load i64, ptr %i.ap, align 8               ; 2 uses
  %i.aq = load i64, ptr %i.aa, align 8
  %i.ar = icmp eq i64 %6, %i.aq
  br i1 %i.ar, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread, label %bb.f, !llvm.loop !30

_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread: ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.g, %bb.d
end_hunk_3
begin_hunk_4_@_ZN2v88internal15JsonStringifier10Serialize_ILb1EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.e
  %.sroa.6.020.i = phi i64 [ %i.p, %bb.e ], [ %15, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ]
  %i.ab = add i64 %.sroa.6.020.i, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal15JsonStringifier10Serialize_ILb1EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE:bb.a
  br i1 %i.am, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %bb.g
  %i.an = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ao = add i64 %i.an, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %15 = load i64, ptr %i.ap, align 8              ; 2 uses
  %i.aq = load i64, ptr %i.aa, align 8
  %i.ar = icmp eq i64 %15, %i.aq
  br i1 %i.ar, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread, label %bb.f, !llvm.loop !30

_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit.thread: ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.g, %bb.d
end_hunk_5
begin_hunk_6_@_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.a
  %.sroa.6.020.i = phi i64 [ %1, %bb.a ], [ %3, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ]
  %i.d = add i64 %.sroa.6.020.i, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  br i1 %i.o, label %bb.d, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %bb.c
  %i.p = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.q = add i64 %i.p, 23
  %i.r = inttoptr i64 %i.q to ptr
  %3 = load i64, ptr %i.r, align 8                ; 2 uses
  %i.s = load i64, ptr %i.c, align 8
  %i.t = icmp eq i64 %3, %i.s
  br i1 %i.t, label %bb.d, label %bb.b, !llvm.loop !30

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.a
  %.sroa.6.020.i = phi i64 [ %1, %bb.a ], [ %3, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ]
  %i.f = add i64 %.sroa.6.020.i, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  br i1 %i.q, label %bb.d, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %bb.c
  %i.r = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.s = add i64 %i.r, 23
  %i.t = inttoptr i64 %i.s to ptr
  %3 = load i64, ptr %i.t, align 8                ; 2 uses
  %i.u = load i64, ptr %i.e, align 8
  %i.v = icmp eq i64 %3, %i.u
  br i1 %i.v, label %bb.d, label %bb.b, !llvm.loop !30

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i
end_hunk_9
