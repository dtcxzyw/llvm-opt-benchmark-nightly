begin_hunk_0
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.c, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.a
end_hunk_0
begin_hunk_1
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.b:                                             ; preds = %bb.a
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !13  ; 7 uses
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_116kFixedZonePrefixE, ptr noundef nonnull dereferenceable(9) %.pre37, i64 9)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not9.i.i.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.c:                                             ; preds = %bb.b
end_hunk_1
