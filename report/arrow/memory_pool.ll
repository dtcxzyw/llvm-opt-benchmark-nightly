begin_hunk_0
@_ZZN5arrow12_GLOBAL__N_114IsDebugEnabledEvE10is_enabled = internal global i8 0, align 1
@_ZGVZN5arrow12_GLOBAL__N_114IsDebugEnabledEvE10is_enabled = internal global i64 0, align 8
@_ZN5arrow12_GLOBAL__N_118kDebugMemoryEnvVarE = internal constant [24 x i8] c"ARROW_DEBUG_MEMORY_POOL\00", align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Invalid value for \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c": '\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"'. Valid values are 'abort', 'trap', 'warn', 'none'.\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.m, ptr noundef nonnull dereferenceable(4) @.str.25, i64 4)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZN5arrow12_GLOBAL__N_110DebugState8InstanceEv.exit
  %i.w = load ptr, ptr %3, align 8, !tbaa !43
  %bcmp.i19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.w, ptr noundef nonnull dereferenceable(5) @.str.26, i64 5)
  %i.x = icmp eq i32 %bcmp.i19, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
end_hunk_2
begin_hunk_3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %_ZN5arrow12_GLOBAL__N_110DebugState8InstanceEv.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %bcmp.i25 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.as, ptr noundef nonnull dereferenceable(4) @.str.27, i64 4)
  %i.at = icmp eq i32 %bcmp.i25, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
end_hunk_3
begin_hunk_4
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %bcmp.i39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.as, ptr noundef nonnull dereferenceable(4) @.str.28, i64 4)
  %i.bo = icmp eq i32 %bcmp.i39, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread3

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
end_hunk_4
