begin_hunk_0
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %2 = load i16, ptr %i.c, align 1
  %3 = xor i16 %2, 21589
  %4 = getelementptr i8, ptr %i.c, i64 2
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = xor i16 %6, 67
  %8 = or i16 %3, %7
  %9 = icmp ne i16 %8, 0
  %10 = zext i1 %9 to i32
  %i.d = icmp eq i32 %10, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.a
end_hunk_0
begin_hunk_1
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.b:                                             ; preds = %bb.a
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !13  ; 8 uses
  %11 = load i64, ptr %.pre37, align 1
  %12 = xor i64 6076815380451977542, %11
  %13 = getelementptr i8, ptr %.pre37, i64 8
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = xor i64 67, %15
  %17 = or i64 %12, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %.not9.i.i.i.i = icmp eq i32 %19, 0
  br i1 %.not9.i.i.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.c:                                             ; preds = %bb.b
end_hunk_1
