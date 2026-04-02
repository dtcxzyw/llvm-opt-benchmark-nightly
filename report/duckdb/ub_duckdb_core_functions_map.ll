begin_hunk_0
@_ZTIN6duckdb15BinderExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb15BinderExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb15BinderExceptionE = linkonce_odr constant [27 x i8] c"N6duckdb15BinderExceptionE\00", comdat, align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"SWITCH expected a constant map for the cases\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"Failed to cast expression to type - expression type mismatch\00", align 1
@_ZTVN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataE, ptr @_ZN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataD2Ev, ptr @_ZN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataD0Ev, ptr @_ZNK6duckdb12_GLOBAL__N_122SwitchFunctionBindData4CopyEv, ptr @_ZNK6duckdb12_GLOBAL__N_122SwitchFunctionBindData6EqualsERKNS_12FunctionDataE, ptr @_ZNK6duckdb12FunctionData21SupportStatementCacheEv] }, align 8
@_ZTIN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12_GLOBAL__N_122SwitchFunctionBindDataE, ptr @_ZTIN6duckdb12FunctionDataE }, align 8
end_hunk_0
begin_hunk_1
@.str.24 = private unnamed_addr constant [86 x i8] c"Cannot mix values of type %s and %s in CASE expression - an explicit cast is required\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Expected a function for the cases\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Expected a list function\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"No values provided for SWITCH expression\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"Only constant expressions are supported for keys inside SWITCH\00", align 1
end_hunk_1
begin_hunk_2

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %12 = load i16, ptr %i.am, align 1
  %13 = xor i16 %12, 24941
  %14 = getelementptr i8, ptr %i.am, i64 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  %17 = xor i16 %16, 112
  %18 = or i16 %13, %17
  %19 = icmp ne i16 %18, 0
  %20 = zext i1 %19 to i32
  %.not53 = icmp eq i32 %20, 0
  br i1 %.not53, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %10 = load i64, ptr %i.p, align 1
  %11 = xor i64 %10, 7809653381184842092
  %12 = getelementptr i8, ptr %i.p, i64 8
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i64
  %15 = xor i64 %14, 25973
  %16 = or i64 %11, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %.not65 = icmp eq i32 %18, 0
  br i1 %.not65, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
