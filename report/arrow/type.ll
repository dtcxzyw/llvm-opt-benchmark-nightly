begin_hunk_0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !48 ; 2 uses
  %6 = load i32, ptr %i.cf, align 1
  %7 = xor i32 %6, 1920233061
  %8 = getelementptr i8, ptr %i.cf, i64 3
  %9 = load i32, ptr %8, align 1
  %10 = xor i32 %9, 1936025970
  %11 = or i32 %7, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %i.cg = icmp eq i32 %13, 0
  br i1 %i.cg, label %"_ZZNK5arrow7MapType8ToStringB5cxx11EbENK3$_1clERSoRKNS_5FieldEPKc.exit", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
end_hunk_0
