begin_hunk_0
  %.033.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i ], [ %i.cx, %bb.p ]
  %.02132.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %i.cv, %bb.p ]
  %.reass.reass.i.reass.reass.i.reass.reass.i = add i64 %.033.i.i.i, -27
  %i.cp = call ptr @memchr(ptr noundef %.02132.i.i.i, i32 noundef 71, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i) #25 ; 5 uses
  %.not26.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not26.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %24 = load i128, ptr %i.cp, align 1
  %25 = xor i128 %24, 145480030311911992583495461547968450631
  %26 = getelementptr i8, ptr %i.cp, i64 12
  %27 = load i128, ptr %26, align 1
  %28 = xor i128 %27, 145464558398897131903182952497476169542
  %29 = or i128 %25, %28
  %30 = icmp ne i128 %29, 0
  %31 = zext i1 %30 to i32
  %i.cq = icmp eq i32 %31, 0
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
end_hunk_0
begin_hunk_1
  %.033.i.i.i150 = phi i64 [ %i.gf, %.lr.ph.i.i.i149 ], [ %i.gm, %bb.ai ]
  %.02132.i.i.i151 = phi ptr [ %i.gd, %.lr.ph.i.i.i149 ], [ %i.gk, %bb.ai ]
  %.reass.reass.i.reass.reass.i.reass.reass.i153 = add i64 %.033.i.i.i150, -22
  %i.gi = call ptr @memchr(ptr noundef %.02132.i.i.i151, i32 noundef 71, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i153) #25 ; 5 uses
  %.not26.i.i.i155 = icmp eq ptr %i.gi, null
  br i1 %.not26.i.i.i155, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit160.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i154
  %32 = load i128, ptr %i.gi, align 1
  %33 = xor i128 %32, 156025405131121488362852052659456856135
  %34 = getelementptr i8, ptr %i.gi, i64 7
  %35 = load i128, ptr %34, align 1
  %36 = xor i128 %35, 134861724518850494680447701890004764772
  %37 = or i128 %33, %36
  %38 = icmp ne i128 %37, 0
  %39 = zext i1 %38 to i32
  %i.gj = icmp eq i32 %39, 0
  br i1 %i.gj, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit160, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156
end_hunk_1
