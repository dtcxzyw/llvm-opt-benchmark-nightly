begin_hunk_0
@.str.22 = private unnamed_addr constant [7 x i8] c"popcnt\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"avx\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"avx512f\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"AVX512\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"AVX2\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"AVX\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"SSE4_2\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

@_ZN5arrow8internal7CpuInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal7CpuInfoD2Ev
end_hunk_0
begin_hunk_1
  br i1 %i.kv, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit, label %.lr.ph.i32, !llvm.loop !78

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit: ; preds = %.lr.ph.i32
  %.val.pre = load ptr, ptr %10, align 8          ; 7 uses
  %.val19.pre = load i64, ptr %i.kn, align 8, !tbaa !24
  switch i64 %.val19.pre, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(6) %.val.pre, ptr noundef nonnull dereferenceable(6) @.str.32, i64 6)
  %i.kw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.kw, label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %bcmp.i14.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(4) %.val.pre, ptr noundef nonnull dereferenceable(4) @.str.33, i64 4)
  %i.kx = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.kx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %bcmp.i16.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(3) %.val.pre, ptr noundef nonnull dereferenceable(3) @.str.34, i64 3)
  %i.ky = icmp eq i32 %bcmp.i16.i, 0
  br i1 %i.ky, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %bcmp.i18.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(6) %.val.pre, ptr noundef nonnull dereferenceable(6) @.str.35, i64 6)
  %i.kz = icmp eq i32 %bcmp.i18.i, 0
  br i1 %i.kz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %bcmp.i20.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(4) %.val.pre, ptr noundef nonnull dereferenceable(4) @.str.36, i64 4)
  %i.la = icmp eq i32 %bcmp.i20.i, 0
  br i1 %i.la, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread5.sink.split.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
end_hunk_2
