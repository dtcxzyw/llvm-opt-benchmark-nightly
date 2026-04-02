begin_hunk_0
@.str.86 = private unnamed_addr constant [13 x i8] c"%s FROM %s (\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"FORMAT '\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"force_not_null\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c" \00", align 1
end_hunk_0
begin_hunk_1

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.noexc77
  %i.ge = load ptr, ptr %i.dh, align 8, !tbaa !15
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ge, ptr noundef nonnull dereferenceable(4) @.str.1, i64 4)
  %.not16.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not16.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread14.i, label %.thread.i

.thread.i:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.noexc77
end_hunk_1
begin_hunk_2
  br i1 %i.ja, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127.i
  %i.jb = load ptr, ptr %i.it, align 8, !tbaa !15
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.jb, ptr noundef nonnull dereferenceable(3) @.str.89, i64 3)
  %i.jc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_2
