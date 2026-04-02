begin_hunk_0
@_ZN8Parallel4mypeE = external local_unnamed_addr global i32, align 4
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Error:  must specify meshtype\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error:  invalid meshtype \00", align 1
end_hunk_0
begin_hunk_1
  unreachable

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %8 = load i16, ptr %i.bc, align 1
  %9 = xor i16 %8, 26992
  %10 = getelementptr i8, ptr %i.bc, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  %13 = xor i16 %12, 101
  %14 = or i16 %9, %13
  %15 = icmp ne i16 %14, 0
  %16 = zext i1 %15 to i32
  %.not90 = icmp eq i32 %16, 0
  br i1 %.not90, label %._crit_edge.i.i48, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
end_hunk_1
begin_hunk_2
  br i1 %i.dr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71: ; preds = %bb.aa
  %i.ds = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %17 = load i16, ptr %i.ds, align 1
  %18 = xor i16 %17, 26992
  %19 = getelementptr i8, ptr %i.ds, i64 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  %22 = xor i16 %21, 101
  %23 = or i16 %18, %22
  %24 = icmp ne i16 %23, 0
  %25 = zext i1 %24 to i32
  %.not93 = icmp eq i32 %25, 0
  br i1 %.not93, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread: ; preds = %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
end_hunk_2
begin_hunk_3
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ak
  %i.eq = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %26 = load i16, ptr %i.eq, align 1
  %27 = xor i16 %26, 26992
  %28 = getelementptr i8, ptr %i.eq, i64 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  %31 = xor i16 %30, 101
  %32 = or i16 %27, %31
  %i.er = icmp ne i16 %32, 0                      ; 2 uses
  %33 = zext i1 %i.er to i32                      ; 0 uses
  %i.es = fcmp ult double %.sink, 0x401921FB54442D18
  %or.cond20 = or i1 %i.es, %i.er
  br i1 %or.cond20, label %_ZNSt6vectorIdSaIdEED2Ev.exit81, label %bb.al
end_hunk_3
begin_hunk_4
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %11 = load i16, ptr %i.bv, align 1
  %12 = xor i16 %11, 26992
  %13 = getelementptr i8, ptr %i.bv, i64 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  %16 = xor i16 %15, 101
  %17 = or i16 %12, %16
  %18 = icmp ne i16 %17, 0
  %19 = zext i1 %18 to i32
  %i.bw = icmp eq i32 %19, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
