begin_hunk_0
@.str.178 = private unnamed_addr constant [15 x i8] c"use_large_enum\00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"use_large_bignum\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"test_vector_types\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN6duckdb13TableFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb13TableFunctionE, ptr @_ZN6duckdb13TableFunctionD2Ev, ptr @_ZN6duckdb13TableFunctionD0Ev, ptr @_ZNK6duckdb28SimpleNamedParameterFunction8ToStringB5cxx11Ev] }, comdat, align 8
end_hunk_0
begin_hunk_1
@.str.314 = private unnamed_addr constant [10 x i8] c"view_name\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"view_oid\00", align 1
@.str.316 = private unnamed_addr constant [9 x i8] c"is_bound\00", align 1
@.str.318 = private unnamed_addr constant [86 x i8] c"EnableProfiling: the save_location must be a .txt file or match the specified format.\00", align 1
@_ZTVN6duckdb23EnableProfilingBindDataE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6duckdb23EnableProfilingBindDataE, ptr @_ZN6duckdb23EnableProfilingBindDataD2Ev, ptr @_ZN6duckdb23EnableProfilingBindDataD0Ev, ptr @_ZNK6duckdb17TableFunctionData4CopyEv, ptr @_ZNK6duckdb17TableFunctionData6EqualsERKNS_12FunctionDataE, ptr @_ZNK6duckdb12FunctionData21SupportStatementCacheEv] }, comdat, align 8
@_ZTIN6duckdb23EnableProfilingBindDataE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23EnableProfilingBindDataE, ptr @_ZTIN6duckdb17TableFunctionDataE }, comdat, align 8
end_hunk_1
begin_hunk_2
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %9 = load i16, ptr %i.s, align 1
  %10 = xor i16 %9, 30836
  %11 = getelementptr i8, ptr %i.s, i64 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  %14 = xor i16 %13, 116
  %15 = or i16 %10, %14
  %16 = icmp ne i16 %15, 0
  %17 = zext i1 %16 to i32
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %.critedge.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.aw = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %26 = load i32, ptr %i.aw, align 1
  %27 = xor i32 %26, 1702258028
  %28 = getelementptr i8, ptr %i.aw, i64 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, 108
  %32 = or i32 %27, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %i.ax = icmp eq i32 %34, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153.thread238

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
begin_hunk_4
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.074.0106, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30
  %12 = load i64, ptr %i.dr, align 1
  %13 = icmp ne i64 %12, 8386103168083979361
  %14 = zext i1 %13 to i32
  %i.ds = icmp eq i32 %14, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread78

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
