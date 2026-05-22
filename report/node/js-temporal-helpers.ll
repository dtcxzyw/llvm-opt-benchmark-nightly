inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordE:bb.a
  store i32 0, ptr %i.ba, align 4
  store i8 0, ptr %i.bb, align 8
  store i32 0, ptr %i.bc, align 4
  store i32 0, ptr %i.bd, align 8
  store ptr %1, ptr %i.be, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.bf, align 8
  store ptr null, ptr %i.bg, align 8
  store ptr %2, ptr %i.bh, align 8
  store ptr null, ptr %i.bi, align 8
  store i64 %i.bk, ptr %i.bj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 -1, i64 16, i1 false)
  %i.cc = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.cd = add i64 %i.cc, 11
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i16, ptr %i.ce monotonic, align 2
  %i.cg = and i16 %i.cf, -96
  %.not.i21.i.i.i.i.i = icmp eq i16 %i.cg, 32
  br i1 %.not.i21.i.i.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = load i8, ptr %i.bm, align 8, !range !12
  %i.ck = trunc nuw i8 %i.cj to i1
  %not..i.i.i23.i.i.i.i.i = xor i1 %i.ci, true
  %i.cl = select i1 %not..i.i.i23.i.i.i.i.i, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = load i8, ptr %i.bn, align 8, !range !12, !noundef !13
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #11
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i: ; preds = %bb.f
  %i.co = load ptr, ptr %i.bo, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i, %bb.e
  %.pn.i.i26.i.i.i.i.i = phi ptr [ %i.co, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i.i ], [ %1, %bb.e ]
  %.in.i.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i.i, i64 58464
  %i.cp = load ptr, ptr %.in.i.i27.i.i.i.i.i, align 8
  %i.cq = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.0.0.copyload.i) #9
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i.i = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i.i, ptr %i.bf, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #9
  %i.cr = load i32, ptr %i.ba, align 4
  %.not.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i
  %i.cs = load ptr, ptr %i.be, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.h

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i.i
  %i.cu = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i
  %.sroa.07.0.i16.i.i = phi ptr [ %i.ct, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread.i.i ], [ %i.cu, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i ] ; 2 uses
  %i.cv = load i64, ptr %.sroa.07.0.i16.i.i, align 8 ; 5 uses
  %i.cw = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 10624
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.cv, %i.da
  br i1 %i.db, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = and i64 %i.cv, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i: ; preds = %bb.i
  %i.de = add nsw i64 %i.cv, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = icmp eq i16 %i.dj, 130
  br i1 %i.dk, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i
  %i.dl = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i16.i.i) #9 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i8.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.dl, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, %bb.i
  %i.dm = phi i64 [ %.pre.i.i.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i ], [ %i.cv, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i ], [ %i.cv, %bb.i ] ; 8 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.do = add nsw i64 %i.dm, -1
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %i.dr = add i64 %i.dq, 11
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i16, ptr %i.ds monotonic, align 2
  %i.du = icmp eq i16 %i.dt, 130
  br i1 %i.du, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.dv, align 1
  %i.dw = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.dw, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.dx = and i64 %i.dm, 1
  %i.dy = icmp eq i64 %i.dx, 0                    ; 2 uses
  br i1 %i.dy, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.dz = icmp ult i64 %i.dm, 4294967296
  br i1 %i.dz, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %bb.j

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.ea = add nsw i64 %i.dm, -1
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ec, align 1 ; 2 uses
  %i.ed = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.ed, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i
  %i.ee = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ef = add i64 %i.ee, 11
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i16, ptr %i.eg monotonic, align 2
  %i.ei = icmp eq i16 %i.eh, 130
  br i1 %i.ei, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.ej = lshr i64 %i.dm, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = sitofp i32 %i.ek to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i: ; preds = %bb.j, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.em = phi double [ %i.el, %bb.j ], [ %.0.copyload.i.i.i.i.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i ]
  %i.en = call double @llvm.fabs.f64(double %i.em) ; 3 uses
  %i.eo = fcmp one double %i.en, +inf
  %i.ep = call double @llvm.trunc.f64(double %i.en)
  %i.eq = fcmp oeq double %i.ep, %i.en
  %or.cond.i.i.i = and i1 %i.eo, %i.eq
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.er = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.3, i64 20, i8 noundef zeroext 0) #9 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.k, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i: ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.er, ptr %4, align 8
  %i.et = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %4, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.eu, ptr noundef null) #9 ; 0 uses
  br label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread

bb.l:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = lshr i64 %i.dm, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = sitofp i32 %i.ex to double
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

bb.n:                                             ; preds = %bb.l
  %i.ez = add nsw i64 %i.dm, -1
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.0.copyload.i.i.i.i.i17.i.i.i = load double, ptr %i.fb, align 1
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.sink.split

"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit": ; preds = %bb.h
  %.0.add.i = add nuw nsw i64 %.0.idx39.i, 16     ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 160
  br i1 %.not.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit, label %bb.d

"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread": ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i, %bb.m, %bb.n
  %.sroa.5.0.i.ph.i.i = phi double [ %.0.copyload.i.i.i.i.i17.i.i.i, %bb.n ], [ %i.ey, %bb.m ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 0.000000e+00, %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i ]
  store double %.sroa.5.0.i.ph.i.i, ptr %i.bq, align 8
  %.0.add.i56 = add nuw nsw i64 %.0.idx39.i, 16   ; 2 uses
  %.not.i57 = icmp eq i64 %.0.add.i56, 160
  br i1 %.not.i57, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59, label %.outer

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59: ; preds = %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.q

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit: ; preds = %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %.02538.i.ph, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit
  %i.fc = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.2, i64 60, i8 noundef zeroext 0) #9 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.p, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.fc, ptr %6, align 8
  %i.fe = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %6, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.ff, ptr noundef null) #9 ; 0 uses
  br label %.sink.split

bb.q:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59, %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit
  store i8 1, ptr %0, align 8, !alias.scope !14
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fh, ptr noundef nonnull align 8 dereferenceable(80) %9, i64 80, i1 false)
  br label %bb.r

.sink.split:                                      ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  store i8 0, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm37EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #6 comdat {
bb.a:
  tail call void @abort() #10
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN2v84JustINS_8internal8temporal18TimeDurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!8 = distinct !{!8, !"_ZN2v84JustINS_8internal8temporal18TimeDurationRecordEEENS_5MaybeIT_EERKS5_"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!11 = distinct !{!11, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!16 = distinct !{!16, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_"}
end_hunk_0
