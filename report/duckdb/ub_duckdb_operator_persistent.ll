begin_hunk_0
@.str.86 = private unnamed_addr constant [13 x i8] c"%s FROM %s (\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"FORMAT '\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"force_not_null\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c" \00", align 1
end_hunk_0
begin_hunk_1

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.noexc77
  %i.ge = load ptr, ptr %i.dh, align 8, !tbaa !15
  %34 = load i32, ptr %i.ge, align 1
  %35 = icmp ne i32 %34, 1852399981
  %36 = zext i1 %35 to i32
  %.not16.i = icmp eq i32 %36, 0
  br i1 %.not16.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread14.i, label %.thread.i

.thread.i:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.noexc77
end_hunk_1
begin_hunk_2
  br i1 %i.ja, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127.i
  %i.jb = load ptr, ptr %i.it, align 8, !tbaa !15 ; 2 uses
  %37 = load i16, ptr %i.jb, align 1
  %38 = xor i16 %37, 29539
  %39 = getelementptr i8, ptr %i.jb, i64 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  %42 = xor i16 %41, 118
  %43 = or i16 %38, %42
  %44 = icmp ne i16 %43, 0
  %45 = zext i1 %44 to i32
  %i.jc = icmp eq i32 %45, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_2
