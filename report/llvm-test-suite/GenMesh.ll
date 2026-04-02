begin_hunk_0
@_ZN8Parallel4mypeE = external local_unnamed_addr global i32, align 4
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Error:  must specify meshtype\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pie\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error:  invalid meshtype \00", align 1
end_hunk_0
begin_hunk_1
  unreachable

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.bc, ptr noundef nonnull dereferenceable(3) @.str.3, i64 3)
  %.not90 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not90, label %._crit_edge.i.i48, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
end_hunk_1
begin_hunk_2
  br i1 %i.dr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71: ; preds = %bb.aa
  %i.ds = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i.i70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.ds, ptr noundef nonnull dereferenceable(3) @.str.3, i64 3)
  %.not93 = icmp eq i32 %bcmp.i.i70, 0
  br i1 %.not93, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread: ; preds = %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
end_hunk_2
begin_hunk_3
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ak
  %i.eq = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.eq, ptr noundef nonnull dereferenceable(3) @.str.3, i64 3)
  %i.er = icmp ne i32 %bcmp.i, 0
  %i.es = fcmp ult double %.sink, 0x401921FB54442D18
  %or.cond20 = or i1 %i.es, %i.er
  br i1 %or.cond20, label %_ZNSt6vectorIdSaIdEED2Ev.exit81, label %bb.al
end_hunk_3
begin_hunk_4
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.bv, ptr noundef nonnull dereferenceable(3) @.str.3, i64 3)
  %i.bw = icmp eq i32 %bcmp.i, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
