begin_hunk_0
@.str.36 = private unnamed_addr constant [6 x i8] c"bool:\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"propNameID\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.ak = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %4 = load i64, ptr %i.ak, align 1
  %5 = xor i64 %4, 7308895133777555061
  %6 = getelementptr i8, ptr %i.ak, i64 8
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = xor i64 %8, 100
  %10 = or i64 %5, %9
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %i.al = icmp eq i32 %12, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

bb.h:                                             ; preds = %.noexc.i23
end_hunk_1
begin_hunk_2
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %13 = load i32, ptr %.pre, align 1
  %14 = icmp ne i32 %13, 1819242338
  %15 = zext i1 %14 to i32
  %i.at = icmp eq i32 %15, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
end_hunk_2
begin_hunk_3

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread
  %i.aw = load ptr, ptr %3, align 8, !tbaa !49
  %16 = load i32, ptr %i.aw, align 1
  %17 = icmp ne i32 %16, 1702195828
  %18 = zext i1 %17 to i32
  %i.ax = icmp eq i32 %18, 0
  %i.ay = zext i1 %i.ax to i64
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31

end_hunk_3
begin_hunk_4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %bb.g
  %.pre65 = load ptr, ptr %2, align 8, !tbaa !49  ; 5 uses
  %bcmp.i32 = call i32 @bcmp(ptr %.pre65, ptr nonnull @.str.42, i64 %i.aj)
  %i.az = icmp eq i32 %bcmp.i32, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
end_hunk_4
begin_hunk_5
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  %19 = load i32, ptr %.pre65, align 1
  %20 = xor i32 %19, 1701470831
  %21 = getelementptr i8, ptr %.pre65, i64 4
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, 29795
  %25 = or i32 %20, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %i.cl = icmp eq i32 %27, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
end_hunk_5
begin_hunk_6
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
  %28 = load i32, ptr %.pre65, align 1
  %29 = xor i32 %28, 1769108595
  %30 = getelementptr i8, ptr %.pre65, i64 4
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i32
  %33 = xor i32 %32, 26478
  %34 = or i32 %29, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %i.cn = icmp eq i32 %36, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
end_hunk_6
begin_hunk_7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %2 = load i32, ptr %i.o, align 1
  %3 = icmp ne i32 %2, 1701736302
  %4 = zext i1 %3 to i32
  %i.p = icmp eq i32 %4, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

bb.f:                                             ; preds = %bb.g
end_hunk_7
begin_hunk_8
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.e
  %.pre22 = load ptr, ptr %1, align 8, !tbaa !49  ; 5 uses
  %bcmp.i11 = call i32 @bcmp(ptr %.pre22, ptr nonnull @.str.81, i64 %i.n)
  %i.s = icmp eq i32 %bcmp.i11, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  %5 = load i64, ptr %.pre22, align 1
  %6 = xor i64 %5, 8605324900488802169
  %7 = getelementptr i8, ptr %.pre22, i64 3
  %8 = load i64, ptr %7, align 1
  %9 = xor i64 %8, 8320788952088930158
  %10 = or i64 %6, %9
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %i.t = icmp eq i32 %12, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
end_hunk_8
