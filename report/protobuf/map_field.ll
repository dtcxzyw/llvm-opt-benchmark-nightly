begin_hunk_0
  %.033.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i ], [ %i.cx, %bb.p ]
  %.02132.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %i.cv, %bb.p ]
  %.reass.reass.i.reass.reass.i.reass.reass.i = add i64 %.033.i.i.i, -27
  %i.cp = call ptr @memchr(ptr noundef %.02132.i.i.i, i32 noundef 71, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i) #25 ; 4 uses
  %.not26.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not26.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(28) %i.cp, ptr noundef nonnull dereferenceable(28) @.str.5, i64 28)
  %i.cq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
end_hunk_0
begin_hunk_1
  %.033.i.i.i150 = phi i64 [ %i.gf, %.lr.ph.i.i.i149 ], [ %i.gm, %bb.ai ]
  %.02132.i.i.i151 = phi ptr [ %i.gd, %.lr.ph.i.i.i149 ], [ %i.gk, %bb.ai ]
  %.reass.reass.i.reass.reass.i.reass.reass.i153 = add i64 %.033.i.i.i150, -22
  %i.gi = call ptr @memchr(ptr noundef %.02132.i.i.i151, i32 noundef 71, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i153) #25 ; 4 uses
  %.not26.i.i.i155 = icmp eq ptr %i.gi, null
  br i1 %.not26.i.i.i155, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit160.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i154
  %bcmp.i.i.i157 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %i.gi, ptr noundef nonnull dereferenceable(23) @.str.6, i64 23)
  %i.gj = icmp eq i32 %bcmp.i.i.i157, 0
  br i1 %i.gj, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit160, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i156
end_hunk_1
