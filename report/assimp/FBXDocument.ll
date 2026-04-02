begin_hunk_0
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Connections\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"no Connections dictionary found\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"PP\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"OP\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"source object for connection does not exist\00", align 1
@.str.70 = private unnamed_addr constant [49 x i8] c"destination object for connection does not exist\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"failed to read AnimationStack object\00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.ch = load ptr, ptr %5, align 8               ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.ch, ptr noundef nonnull dereferenceable(2) @.str.67, i64 2)
  %i.ci = icmp eq i32 %bcmp.i, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread171

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread171: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77: ; preds = %bb.m
  %i.cp = load ptr, ptr %5, align 8
  %bcmp.i76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.cp, ptr noundef nonnull dereferenceable(2) @.str.68, i64 2)
  %i.cq = icmp eq i32 %bcmp.i76, 0
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread172

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77
end_hunk_2
