begin_hunk_0

@.str = private unnamed_addr constant [22 x i8] c"Environment variable \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"The value of flag --\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
end_hunk_0
begin_hunk_1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9benchmark17IsTruthyFlagValueERKS8_E3$_0ET0_T_SF_SE_T1_.exit"
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8     ; 3 uses
  %2 = load i32, ptr %i.aa, align 1
  %3 = xor i32 %2, 1936482662
  %4 = getelementptr i8, ptr %i.aa, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 101
  %8 = or i32 %3, %7
  %i.ab = icmp ne i32 %8, 0                       ; 2 uses
  %9 = zext i1 %i.ab to i32                       ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9benchmark17IsTruthyFlagValueERKS8_E3$_0ET0_T_SF_SE_T1_.exit"
end_hunk_1
