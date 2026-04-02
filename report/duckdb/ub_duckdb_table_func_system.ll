begin_hunk_0
@.str.178 = private unnamed_addr constant [15 x i8] c"use_large_enum\00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"use_large_bignum\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"test_vector_types\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"all_flat\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN6duckdb13TableFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb13TableFunctionE, ptr @_ZN6duckdb13TableFunctionD2Ev, ptr @_ZN6duckdb13TableFunctionD0Ev, ptr @_ZNK6duckdb28SimpleNamedParameterFunction8ToStringB5cxx11Ev] }, comdat, align 8
end_hunk_0
begin_hunk_1
@.str.314 = private unnamed_addr constant [10 x i8] c"view_name\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"view_oid\00", align 1
@.str.316 = private unnamed_addr constant [9 x i8] c"is_bound\00", align 1
@.str.317 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.318 = private unnamed_addr constant [86 x i8] c"EnableProfiling: the save_location must be a .txt file or match the specified format.\00", align 1
@_ZTVN6duckdb23EnableProfilingBindDataE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6duckdb23EnableProfilingBindDataE, ptr @_ZN6duckdb23EnableProfilingBindDataD2Ev, ptr @_ZN6duckdb23EnableProfilingBindDataD0Ev, ptr @_ZNK6duckdb17TableFunctionData4CopyEv, ptr @_ZNK6duckdb17TableFunctionData6EqualsERKNS_12FunctionDataE, ptr @_ZNK6duckdb12FunctionData21SupportStatementCacheEv] }, comdat, align 8
@_ZTIN6duckdb23EnableProfilingBindDataE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23EnableProfilingBindDataE, ptr @_ZTIN6duckdb17TableFunctionDataE }, comdat, align 8
end_hunk_1
begin_hunk_2
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !30
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.s, ptr noundef nonnull dereferenceable(3) @.str.317, i64 3)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %.critedge.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.aw = load ptr, ptr %9, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.aw, ptr noundef nonnull dereferenceable(5) @.str.81, i64 5)
  %i.ax = icmp eq i32 %bcmp.i, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153.thread238

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
begin_hunk_4
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.074.0106, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.dr, ptr noundef nonnull dereferenceable(8) @.str.181, i64 8)
  %i.ds = icmp eq i32 %bcmp.i, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread78

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
