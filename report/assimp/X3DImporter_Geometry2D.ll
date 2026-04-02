begin_hunk_0
@.str.6 = private unnamed_addr constant [4 x i8] c"PIE\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"closureType\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\22CHORD\22\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ArcClose2D\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"innerRadius\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  %i.bp = load ptr, ptr %12, align 8              ; 2 uses
  %18 = load i16, ptr %i.bp, align 1
  %19 = xor i16 %18, 18768
  %20 = getelementptr i8, ptr %i.bp, i64 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  %23 = xor i16 %22, 69
  %24 = or i16 %19, %23
  %25 = icmp ne i16 %24, 0
  %26 = zext i1 %25 to i32
  %i.bq = icmp eq i32 %26, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72: ; preds = %bb.w
  %i.br = load ptr, ptr %12, align 8              ; 4 uses
  %27 = load i32, ptr %i.br, align 1
  %28 = xor i32 %27, 1162432546
  %29 = getelementptr i8, ptr %i.br, i64 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %31, 34
  %33 = or i32 %28, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %i.bs = icmp eq i32 %35, 0
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72
  %36 = load i32, ptr %i.br, align 1
  %37 = xor i32 %36, 1380927555
  %38 = getelementptr i8, ptr %i.br, i64 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, 68
  %42 = or i32 %37, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %.not = icmp eq i32 %44, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
