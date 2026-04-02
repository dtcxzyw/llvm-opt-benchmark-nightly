begin_hunk_0
@.str.36 = private unnamed_addr constant [6 x i8] c"bool:\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"propNameID\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.ak = load ptr, ptr %2, align 8, !tbaa !49
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.ak, ptr noundef nonnull dereferenceable(9) @.str.39, i64 9)
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

bb.h:                                             ; preds = %.noexc.i23
end_hunk_1
begin_hunk_2
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %bcmp.i28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %.pre, ptr noundef nonnull dereferenceable(4) @.str.41, i64 4)
  %i.at = icmp eq i32 %bcmp.i28, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
end_hunk_2
begin_hunk_3

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread
  %i.aw = load ptr, ptr %3, align 8, !tbaa !49
  %bcmp.i30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.aw, ptr noundef nonnull dereferenceable(4) @.str.37, i64 4)
  %i.ax = icmp eq i32 %bcmp.i30, 0
  %i.ay = zext i1 %i.ax to i64
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31

end_hunk_3
begin_hunk_4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %bb.g
  %.pre65 = load ptr, ptr %2, align 8, !tbaa !49  ; 3 uses
  %bcmp.i32 = call i32 @bcmp(ptr %.pre65, ptr nonnull @.str.42, i64 %i.aj)
  %i.az = icmp eq i32 %bcmp.i32, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
end_hunk_4
begin_hunk_5
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  %bcmp.i36 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %.pre65, ptr noundef nonnull dereferenceable(6) @.str.43, i64 6)
  %i.cl = icmp eq i32 %bcmp.i36, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
end_hunk_5
begin_hunk_6
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
  %bcmp.i39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %.pre65, ptr noundef nonnull dereferenceable(6) @.str.44, i64 6)
  %i.cn = icmp eq i32 %bcmp.i39, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
end_hunk_6
begin_hunk_7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.o, ptr noundef nonnull dereferenceable(4) @.str.79, i64 4)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

bb.f:                                             ; preds = %bb.g
end_hunk_7
begin_hunk_8
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.e
  %.pre22 = load ptr, ptr %1, align 8, !tbaa !49  ; 4 uses
  %bcmp.i11 = call i32 @bcmp(ptr %.pre22, ptr nonnull @.str.81, i64 %i.n)
  %i.s = icmp eq i32 %bcmp.i11, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  %bcmp.i13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %.pre22, ptr noundef nonnull dereferenceable(11) @.str.82, i64 11)
  %i.t = icmp eq i32 %bcmp.i13, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
end_hunk_8
