begin_hunk_0
@.str.21 = private unnamed_addr constant [10 x i8] c"real_time\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"time_unit\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"1 == 0\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"unknown time unit: \00", align 1
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %7 = load i16, ptr %i.av, align 1
  %8 = icmp ne i16 %7, 29550
  %9 = zext i1 %8 to i32
  %i.aw = icmp eq i32 %9, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %10 = load i16, ptr %i.av, align 1
  %11 = icmp ne i16 %10, 29557
  %12 = zext i1 %11 to i32
  %i.ay = icmp eq i32 %12, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
end_hunk_2
begin_hunk_3
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
  %13 = load i16, ptr %i.av, align 1
  %14 = icmp ne i16 %13, 29549
  %15 = zext i1 %14 to i32
  %i.ba = icmp eq i32 %15, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52
end_hunk_3
begin_hunk_4

._crit_edge.i.i117:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store ptr %i.cj, ptr %17, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cj, ptr noundef nonnull align 1 dereferenceable(11) @.str.37, i64 11, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
end_hunk_4
begin_hunk_5
  br label %bb.bc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._crit_edge.i.i117
  %i.ju = load ptr, ptr %i.ao, align 16, !tbaa !14 ; 2 uses
  %19 = load i64, ptr %i.ju, align 1
  %20 = load i64, ptr %i.cj, align 1
  %21 = xor i64 %19, %20
  %22 = getelementptr i8, ptr %i.ju, i64 3
  %23 = getelementptr i8, ptr %i.cj, i64 3
  %24 = load i64, ptr %22, align 1
  %25 = load i64, ptr %23, align 1
  %26 = xor i64 %24, %25
  %27 = or i64 %21, %26
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %i.jv = icmp eq i32 %29, 0
  br i1 %i.jv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
end_hunk_5
