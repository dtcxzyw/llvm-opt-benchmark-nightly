begin_hunk_0
@_ZN5arrow8internal12_GLOBAL__N_119kSignalDetailTypeIdE = internal constant [20 x i8] c"arrow::SignalDetail\00", align 16
@.str = private unnamed_addr constant [24 x i8] c"Cannot list directory '\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot delete file '\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed getting information for path '\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to close file descriptor\00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29: ; preds = %bb.p
  %i.bh = load ptr, ptr %8, align 8, !tbaa !12
  %bcmp.i28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.bh, ptr noundef nonnull dereferenceable(2) @.str.3, i64 2)
  %i.bi = icmp eq i32 %bcmp.i28, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
end_hunk_1
