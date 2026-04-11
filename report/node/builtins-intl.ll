inline.NumInlined: 3195
inline.NumDeleted: 567
begin_hunk_0_@_ZN2v88internal40Builtin_V8BreakIteratorInternalAdoptTextEiPmPNS0_7IsolateE:bb.a
  %reass.sub = sub i64 %i.y, %i.z
  %i.aa = add i64 %reass.sub, 48
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i23.i, ptr %i.ab, ptr %i.ac ; 3 uses
  %i.ad = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ae = trunc i64 %i.ad to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal40Builtin_V8BreakIteratorInternalAdoptTextEiPmPNS0_7IsolateE:bb.a
_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.am = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %3, label %.critedge.i

3:                                                ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.d

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i5256.i = phi ptr [ %i.am, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  tail call void @_ZN2v88internal17JSV8BreakIterator9AdoptTextEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i21.i, ptr nonnull %.sroa.07.0.i5256.i) #11
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %3
  %.sroa.035.0.in.i = phi ptr [ %i.ac, %.critedge.i ], [ %4, %3 ]
  %.sroa.035.0.i = load i64, ptr %.sroa.035.0.in.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.an = load i32, ptr %i.f, align 8
end_hunk_1
