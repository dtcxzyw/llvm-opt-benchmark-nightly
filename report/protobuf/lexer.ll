begin_hunk_0
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.cb
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.fu, ptr noundef nonnull dereferenceable(4) @.str.6, i64 4)
  %i.fz = icmp eq i32 %bcmp.i, 0
  br i1 %i.fz, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp.i23 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.fu, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %i.ga = icmp eq i32 %bcmp.i23, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.ck

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26: ; preds = %bb.cb
end_hunk_0
