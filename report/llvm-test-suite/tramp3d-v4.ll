begin_hunk_0
@.str.73 = private unnamed_addr constant [44 x i8] c"All options exist as \22yes\22 and \22no\22 pairs.\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"For example --pooma-info and --pooma-noinfo.\0A\00", align 1
@.str.75 = private unnamed_addr constant [64 x i8] c"The \22no\22 versions listed above imply that \22yes\22 is the default.\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"--pooma-info\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"--pooma-noinfo\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"--pooma-nocompress\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"--pooma-compress\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"--pooma-nodeferred-guardfills\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"--pooma-deferred-guardfills\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"--pooma-nowarn\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"--pooma-err\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"--pooma-noerr\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %i.am = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %4 = load i64, ptr %i.am, align 1
  %5 = xor i64 %4, 3270015129826110765
  %6 = getelementptr i8, ptr %i.am, i64 7
  %7 = load i64, ptr %6, align 1
  %8 = xor i64 %7, 8314877900371817517
  %9 = or i64 %5, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %i.an = icmp eq i32 %11, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br i1 %or.cond25.i, label %_ZN5Pooma11intArgumentEiPPciRi.exit.thread, label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %i.az = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %12 = load i128, ptr %i.az, align 1
  %13 = xor i128 %12, 133428509961477163646782114408497687853
  %14 = getelementptr i8, ptr %i.az, i64 16
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i128
  %17 = xor i128 %16, 115
  %18 = or i128 %13, %17
  %19 = icmp ne i128 %18, 0
  %20 = zext i1 %19 to i32
  %i.ba = icmp eq i32 %20, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
end_hunk_2
begin_hunk_3
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %.pre125 = load ptr, ptr %3, align 8, !tbaa !14 ; 3 uses
  %bcmp.i58 = call i32 @bcmp(ptr %.pre125, ptr nonnull @.str.83, i64 %i.al)
  %i.bi = icmp eq i32 %bcmp.i58, 0
  br i1 %i.bi, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  %21 = load i128, ptr %.pre125, align 1
  %22 = xor i128 %21, 133449542819290723029940838259913403693
  %23 = getelementptr i8, ptr %.pre125, i64 11
  %24 = load i128, ptr %23, align 1
  %25 = xor i128 %24, 153424186426870248877292001712088969829
  %26 = or i128 %22, %25
  %27 = icmp ne i128 %26, 0
  %28 = zext i1 %27 to i32
  %i.bj = icmp eq i32 %28, 0
  %i.bk = zext i1 %i.bj to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61

end_hunk_3
begin_hunk_4
  br label %.thread92

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  %i.bm = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %29 = load i64, ptr %i.bm, align 1
  %30 = xor i64 %29, 3270015129826110765
  %31 = getelementptr i8, ptr %i.bm, i64 8
  %32 = load i32, ptr %31, align 1
  %33 = zext i32 %32 to i64
  %34 = xor i64 %33, 1852989815
  %35 = or i64 %30, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %i.bn = icmp eq i32 %37, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
end_hunk_4
