inline.NumInlined: 1236
inline.NumDeleted: 616
begin_hunk_0_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 48
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 4 uses
  %.sroa.0.0.i.i = select i1 %.not.i14.i, ptr %i.l, ptr %i.m ; 3 uses
  %i.n = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.o = trunc i64 %i.n to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.w = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %3, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre45.i = load ptr, ptr %i.d, align 8
  br label %.critedge.i

3:                                                ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.x = phi ptr [ %.pre45.i, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i ], [ %i.e, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.y = phi ptr [ %.pre.i, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge_crit_edge.i ], [ %i.c, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.au, i64 %i.aq) #12
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.g, %bb.f, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, %3
  %.sroa.024.0.in.i = phi ptr [ %4, %3 ], [ %i.m, %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %.sroa.024.0.i = load i64, ptr %.sroa.024.0.in.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.bd = load i32, ptr %i.f, align 8
end_hunk_2
