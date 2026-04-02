begin_hunk_0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !48
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.cf, ptr noundef nonnull dereferenceable(7) @.str.94, i64 7)
  %i.cg = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cg, label %"_ZZNK5arrow7MapType8ToStringB5cxx11EbENK3$_1clERSoRKNS_5FieldEPKc.exit", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
end_hunk_0
