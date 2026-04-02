begin_hunk_0
@.str.21 = private unnamed_addr constant [10 x i8] c"real_time\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"time_unit\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"1 == 0\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"unknown time unit: \00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.av, ptr noundef nonnull dereferenceable(2) @.str.24, i64 2)
  %i.aw = icmp eq i32 %bcmp.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.av, ptr noundef nonnull dereferenceable(2) @.str.25, i64 2)
  %i.ay = icmp eq i32 %bcmp.i49, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
end_hunk_2
begin_hunk_3
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
  %bcmp.i51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.av, ptr noundef nonnull dereferenceable(2) @.str.26, i64 2)
  %i.ba = icmp eq i32 %bcmp.i51, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52
end_hunk_3
begin_hunk_4

._crit_edge.i.i117:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.cj, ptr %17, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cj, ptr noundef nonnull align 1 dereferenceable(11) @.str.37, i64 11, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
end_hunk_4
begin_hunk_5
  br label %bb.bc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._crit_edge.i.i117
  %i.ju = load ptr, ptr %i.ao, align 16, !tbaa !14
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.ju, ptr noundef nonnull dereferenceable(11) %i.cj, i64 11)
  %i.jv = icmp eq i32 %bcmp.i, 0
  br i1 %i.jv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
end_hunk_5
