inline.NumInlined: 1236
inline.NumDeleted: 616
begin_hunk_0_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.w = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal15RegExpMatchInfo14set_last_inputENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i3943.i = phi ptr [ %i.w, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
  %i.af = add i64 %i.ae, 1503
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %3 = load ptr, ptr %i.b, align 8                ; 2 uses
  %4 = load ptr, ptr %i.d, align 8
  %i.ai = icmp eq ptr %3, %4
  br i1 %i.ai, label %bb.c, label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i, !prof !5

bb.c:                                             ; preds = %.critedge.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal25Builtin_RegExpInputSetterEiPmPNS0_7IsolateE:bb.a
  br label %_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i

_ZN2v88internal7Isolate22regexp_last_match_infoEv.exit.i: ; preds = %bb.c, %.critedge.i
  %.0.i.i.i.i = phi ptr [ %i.aj, %bb.c ], [ %3, %.critedge.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.0.i.i.i.i to i64
  %i.al = add i64 %i.ak, 8
  %i.am = inttoptr i64 %i.al to ptr
end_hunk_3
