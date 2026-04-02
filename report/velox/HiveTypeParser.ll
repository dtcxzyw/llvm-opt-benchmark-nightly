begin_hunk_0
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !20
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.ac, ptr noundef nonnull dereferenceable(7) @.str.10, i64 7)
  %i.ad = icmp eq i32 %bcmp.i, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread262

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81: ; preds = %bb.h
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !20
  %bcmp.i80 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ck, ptr noundef nonnull dereferenceable(4) @.str.6, i64 4)
  %i.cl = icmp eq i32 %bcmp.i80, 0
  br i1 %i.cl, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread262

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
end_hunk_1
