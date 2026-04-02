begin_hunk_0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %6 = load i64, ptr %i.at, align 1
  %7 = xor i64 %6, 8243114958015259757
  %8 = getelementptr i8, ptr %i.at, i64 8
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = xor i64 %10, 97
  %12 = or i64 %7, %11
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %i.au = icmp eq i32 %14, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
begin_hunk_1
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread37

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.k
  %i.bj = load ptr, ptr %5, align 8               ; 3 uses
  %15 = load i32, ptr %i.bj, align 1
  %16 = xor i32 %15, 1630889069
  %17 = getelementptr i8, ptr %i.bj, i64 3
  %18 = load i32, ptr %17, align 1
  %19 = xor i32 %18, 1835626081
  %20 = or i32 %16, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %i.bk = icmp eq i32 %22, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread37

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36
end_hunk_1
begin_hunk_2
          to label %bb.ad unwind label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.bs = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26_crit_edge ], [ %i.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24 ] ; 3 uses
  %bcmp.i25 = call i32 @bcmp(ptr %i.bs, ptr nonnull @.str.3, i64 %i.ar)
  %i.bt = icmp eq i32 %bcmp.i25, 0
  br i1 %i.bt, label %.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %23 = load i32, ptr %i.bs, align 1
  %24 = xor i32 %23, 1832215661
  %25 = getelementptr i8, ptr %i.bs, i64 3
  %26 = load i32, ptr %25, align 1
  %27 = xor i32 %26, 1752393069
  %28 = or i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %i.bu = icmp eq i32 %30, 0
  br i1 %i.bu, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
end_hunk_2
