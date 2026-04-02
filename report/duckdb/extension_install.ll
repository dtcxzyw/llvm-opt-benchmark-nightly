begin_hunk_0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge81.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.n = load ptr, ptr %11, align 8, !tbaa !15    ; 2 uses
  %28 = load i32, ptr %i.n, align 1
  %29 = xor i32 %28, 1886680168
  %30 = getelementptr i8, ptr %i.n, i64 4
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i32
  %33 = xor i32 %32, 29542
  %34 = or i32 %29, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %i.o = icmp eq i32 %36, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge81.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
