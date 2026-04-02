begin_hunk_0
@.str.22 = private unnamed_addr constant [7 x i8] c"popcnt\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"avx\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"avx512f\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

@_ZN5arrow8internal7CpuInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal7CpuInfoD2Ev
end_hunk_0
begin_hunk_1
  br i1 %i.kv, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit, label %.lr.ph.i32, !llvm.loop !78

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit: ; preds = %.lr.ph.i32
  %.val.pre = load ptr, ptr %10, align 8          ; 10 uses
  %.val19.pre = load i64, ptr %i.kn, align 8, !tbaa !24
  switch i64 %.val19.pre, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %12 = load i32, ptr %.val.pre, align 1
  %13 = xor i32 %12, 894981697
  %14 = getelementptr i8, ptr %.val.pre, i64 4
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, 12849
  %18 = or i32 %13, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %i.kw = icmp eq i32 %20, 0
  br i1 %i.kw, label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %21 = load i32, ptr %.val.pre, align 1
  %22 = icmp ne i32 %21, 844650049
  %23 = zext i1 %22 to i32
  %i.kx = icmp eq i32 %23, 0
  br i1 %i.kx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %24 = load i16, ptr %.val.pre, align 1
  %25 = xor i16 %24, 22081
  %26 = getelementptr i8, ptr %.val.pre, i64 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = xor i16 %28, 88
  %30 = or i16 %25, %29
  %31 = icmp ne i16 %30, 0
  %32 = zext i1 %31 to i32
  %i.ky = icmp eq i32 %32, 0
  br i1 %i.ky, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %33 = load i32, ptr %.val.pre, align 1
  %34 = xor i32 %33, 876958547
  %35 = getelementptr i8, ptr %.val.pre, i64 4
  %36 = load i16, ptr %35, align 1
  %37 = zext i16 %36 to i32
  %38 = xor i32 %37, 12895
  %39 = or i32 %34, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %i.kz = icmp eq i32 %41, 0
  br i1 %i.kz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %42 = load i32, ptr %.val.pre, align 1
  %43 = icmp ne i32 %42, 1162760014
  %44 = zext i1 %43 to i32
  %i.la = icmp eq i32 %44, 0
  br i1 %i.la, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
end_hunk_2
