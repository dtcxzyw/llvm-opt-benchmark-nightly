Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.12?download=true
inline.NumInlined: 202
inline.NumDeleted: 116
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB1e_11get_or_initNvMs0_B1M_B1K_3newE0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB19_11get_or_initNvMs0_B1H_B1F_3newE0zE0E0B1L_ }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockReE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsdc6yCHiM2ZJ_4pyo3, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockReE5force0E0Csdc6yCHiM2ZJ_4pyo3 }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1h_11GILOnceCellINtNtB1j_8instance2PyNtNtNtB1j_5types10typeobject6PyTypeEE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1j_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1c_11GILOnceCellINtNtB1e_8instance2PyNtNtNtB1e_5types10typeobject6PyTypeEE3set0E0B1e_ }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1h_11GILOnceCellNtNtNtB1j_7pyclass18create_type_object17PyClassTypeObjectE3set0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1j_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB1c_11GILOnceCellNtNtNtB1e_7pyclass18create_type_object17PyClassTypeObjectE3set0E0B1e_ }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB1c_10PyErrState15make_normalized00E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1g_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB17_10PyErrState15make_normalized00E0B1b_ }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB1a_10PyErrState10normalized0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1e_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB15_10PyErrState10normalized0E0B19_ }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBK_10PyErrState14lazy_argumentsINtNtBO_8instance2PyNtNtNtBO_5types3any5PyAnyEE0EBO_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBd_10PyErrState14lazy_argumentsINtNtBh_8instance2PyNtNtNtBh_5types3any5PyAnyEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBh_6marker6PythonEE9call_once6vtableBh_ }>, align 8
@9 = private unnamed_addr constant [12 x i8] c"src/sync.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0B\00\00\00\00\00\00\00\9A\00\00\00\19\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\001\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\A7\00\00\002\00\00\00" }>, align 8
@13 = private unnamed_addr constant [21 x i8] c"src/err/err_state.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00n\00\00\00\16\00\00\00" }>, align 8
@15 = private unnamed_addr constant [54 x i8] c"Cannot normalize a PyErr while already normalizing it.", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00u\00\00\00\1A\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global i64
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00k\00\00\00\1D\00\00\00" }>, align 8
@18 = private unnamed_addr constant [38 x i8] c"src/impl_/pyclass/lazy_type_object.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"%\00\00\00\00\00\00\00\DC\00\00\002\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0B\00\00\00\00\00\00\00\AB\00\00\007\00\00\00" }>, align 8
@21 = private unnamed_addr constant [31 x i8] c"Python version string not UTF-8", align 1
@22 = private unnamed_addr constant [14 x i8] c"src/marker.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\0D\00\00\00\00\00\00\00\BF\02\00\00\12\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBI_6thread2id8ThreadIdEEEECsdc6yCHiM2ZJ_4pyo3, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB8_6thread2id8ThreadIdEEENtNtB1p_3fmt5Debug3fmtCsdc6yCHiM2ZJ_4pyo3 }>, align 8
@25 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBI_6thread2id8ThreadIdEEEECsdc6yCHiM2ZJ_4pyo3, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB8_6thread2id8ThreadIdEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsdc6yCHiM2ZJ_4pyo3 }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3 }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\0D\00\00\00\00\00\00\00\D8\02\00\009\00\00\00" }>, align 8
@30 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\008\00\00\00\1A\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00b\00\00\00>\00\00\00" }>, align 8
@33 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00\87\00\00\00\12\00\00\00" }>, align 8
@35 = private unnamed_addr constant [47 x i8] c"Re-entrant normalization of PyErrState detected", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00c\00\00\00\0D\00\00\00" }>, align 8
@37 = private unnamed_addr constant [60 x i8] c"PyErr state should never be invalid outside of normalization", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00?\00\00\00\0E\00\00\00" }>, align 8
@_Py_NoneStruct = external global { { [1 x i64] }, ptr }
@39 = private unnamed_addr constant [50 x i8] c"exception missing after writing to the interpreter", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\14\00\00\00\00\00\00\00M\01\00\00\16\00\00\00" }>, align 8
@_RNvNCNvXs3_NtNtCsdc6yCHiM2ZJ_4pyo35types8iteratorNtB9_10PyIteratorNtNtBd_11type_object10PyTypeInfo15type_object_raw04TYPE = local_unnamed_addr global [16 x i8] zeroinitializer, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr
@41 = private unnamed_addr constant [42 x i8] c"exceptions must derive from BaseException\00", align 1
@_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION = internal global <{ ptr, [8 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtBc_6Python11version_str7VERSION0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBe_, [8 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvXNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6ipaddrNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrNtNtBa_10conversion12FromPyObject7extract8INTERNED = external hidden global { { ptr, i64 }, { { { { { { ptr } } }, ptr } } } }
@42 = private unnamed_addr constant [21 x i8] c"invalid packed length", align 1
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorReE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_ }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorNtNtNtCskKLDkoKarTP_4core3net6parser14AddrParseErrorE0INtNtNtB1t_3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_ }>, align 8
@_RNvNvXs1_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6ipaddrNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv6AddrNtNtBd_10conversion12IntoPyObject13into_pyobject12IPV6_ADDRESS = external hidden global { { { { { { ptr } } }, ptr } } }
@45 = private unnamed_addr constant [9 x i8] c"ipaddress", align 1
@46 = private unnamed_addr constant [11 x i8] c"IPv6Address", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3 }>, align 8
@48 = private unnamed_addr constant [8 x i8] c"ThreadId", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3 }>, align 8
@51 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@52 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@53 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@54 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@55 = private unnamed_addr constant [19 x i8] c"src/impl_/panic.rs\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"\12\00\00\00\00\00\00\00\19\00\00\00\09\00\00\00" }>, align 8
@_RNvNvXs_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6ipaddrNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv4AddrNtNtBc_10conversion12IntoPyObject13into_pyobject12IPV4_ADDRESS = external hidden global { { { { { { ptr } } }, ptr } } }
@57 = private unnamed_addr constant [11 x i8] c"IPv4Address", align 1

; Function Attrs: cold minsize nonlazybind optsize uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB2_11get_or_initNvMs0_BU_BS_3newE0zEBY_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB17_11get_or_initNvMs0_B1F_B1D_3newE0zE0EB1J_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4
  store ptr %0, ptr %i.c, align 8, !noalias !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.g, align 8, !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4
  store ptr %i.c, ptr %i.b, align 8, !noalias !4
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB17_11get_or_initNvMs0_B1F_B1D_3newE0zE0EB1J_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB17_11get_or_initNvMs0_B1F_B1D_3newE0zE0EB1J_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsINtNtBa_8instance2PyNtNtNtBa_5types3any5PyAnyEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 17) 16, i64 noundef range(i64 1, 9) 8) #21 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBN_10PyErrState14lazy_argumentsINtNtBR_8instance2PyNtNtNtBR_5types3any5PyAnyEE0E3newBR_.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBK_10PyErrState14lazy_argumentsINtNtBO_8instance2PyNtNtNtBO_5types3any5PyAnyEE0EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtBN_10PyErrState14lazy_argumentsINtNtBR_8instance2PyNtNtNtBR_5types3any5PyAnyEE0E3newBR_.exit: ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @8, ptr %.sroa.510.0..sroa_idx, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB6_11GILOnceCellINtNtB8_8instance2PyNtNtNtB8_5types10typeobject6PyTypeEE4initNCNvMs0_NtNtNtB8_5impl_7pyclass16lazy_type_objectNtB1W_19LazyTypeObjectInner11ensure_init0NtNtB8_3err5PyErrEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !9, !noalias !14, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !12, !nonnull !15, !noundef !15
  invoke void @_RNvNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_object18initialize_tp_dict(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2)
          to label %bb.b unwind label %bb.p, !noalias !14

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.g, align 8, !range !17, !noalias !12, !noundef !15
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !18, !alias.scope !9, !noalias !14, !noundef !15
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtBJ_19LazyTypeObjectInner11ensure_init19InitializationGuardEBP_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtBJ_19LazyTypeObjectInner11ensure_init19InitializationGuardEBP_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !9, !noalias !14, !nonnull !15, !align !16, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load i64, ptr %i.r, align 8, !range !19, !alias.scope !9, !noalias !14, !noundef !15
  store ptr %i.q, ptr %i.f, align 8, !noalias !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !12
  call void @_RNvXNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB8_19LazyTypeObjectInner11ensure_initNtB2_19InitializationGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9, !noalias !14, !nonnull !15, !align !16, !noundef !15 ; 4 uses
  %i.w = cmpxchg ptr %i.v, i32 0, i32 1 acquire monotonic, align 4, !noalias !20
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %.noexc.i, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8, !noalias !12, !nonnull !15, !noundef !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !12, !noundef !15
  %i.ab = or i64 %i.aa, 256
  store i64 %i.ab, ptr %i.z, align 8, !noalias !12
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !9, !noalias !14, !nonnull !15, !align !16, !noundef !15
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !12, !nonnull !15, !noundef !15
  tail call void @PyType_Modified(ptr noundef nonnull %i.ad) #21, !noalias !12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtBJ_19LazyTypeObjectInner11ensure_init19InitializationGuardEBP_.exit.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtBJ_19LazyTypeObjectInner11ensure_init19InitializationGuardEBP_.exit.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.v), !noalias !12
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtBJ_19LazyTypeObjectInner11ensure_init19InitializationGuardEBP_.exit.i
  %i.ae = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !20
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, label %.noexc5.i, !prof !7

.noexc5.i:                                        ; preds = %.noexc.i
  %i.ah = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !noalias !12
  %i.ai = xor i1 %i.ah, true
  %i.aj = zext i1 %i.ai to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i: ; preds = %.noexc5.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.aj, %.noexc5.i ], [ 0, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.al = load atomic i8, ptr %i.ak monotonic, align 4, !noalias !20
  %.not.i.i.i = icmp ne i8 %i.al, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB6_6thread2id8ThreadIdEENCNvMs9_BZ_BW_3new0ECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i1 noundef zeroext %.not.i.i.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %i.v), !noalias !12
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.am = load i64, ptr %i.e, align 8, !range !17, !alias.scope !23, !noalias !12, !noundef !15
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !23, !noalias !12, !nonnull !15, !align !16, !noundef !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !18, !alias.scope !23, !noalias !12, !noundef !15
  store ptr %i.ap, ptr %i.d, align 8, !noalias !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ar, ptr %i.as, align 8, !noalias !26
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
          to label %bb.h unwind label %bb.g, !noalias !26

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBI_6thread2id8ThreadIdEEEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #23
          to label %common.resume unwind label %bb.i, !noalias !26

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !26
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !23, !noalias !12, !nonnull !15, !align !16, !noundef !15 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !18, !alias.scope !23, !noalias !12, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.ba, align 8, !noalias !12
  %i.bb = load ptr, ptr %i.h, align 8, !alias.scope !9, !noalias !14, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !12, !nonnull !15, !noundef !15 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !noalias !12, !noundef !15
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.be, ptr %i.bc, align 8, !noalias !12
  %.pre.i = load ptr, ptr %i.bb, align 8, !noalias !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = phi ptr [ %i.bc, %bb.j ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12
  %i.bj = and i64 %i.bi, 9223372036854775807
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %.noexc7.i, !prof !7

.noexc7.i:                                        ; preds = %bb.m
  %i.bl = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !noalias !12
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc7.i
  store atomic i8 1, ptr %i.bh monotonic, align 4, !noalias !12
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %.noexc7.i, %bb.m, %bb.l
  %i.bm = atomicrmw xchg ptr %i.aw, i32 0 release, align 4, !noalias !12
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.o, label %bb.s, !prof !8

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aw), !noalias !12
  br label %bb.s

common.resume:                                    ; preds = %bb.u, %bb.g, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.g ], [ %lpad.thr_comm.split-lp.i, %bb.p ], [ %i.bw, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_RNvXNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB8_19LazyTypeObjectInner11ensure_initNtB2_19InitializationGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %common.resume unwind label %bb.q, !noalias !14

bb.q:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14
  unreachable

bb.r:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %i.bq, align 8, !noalias !9
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_RNvXNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB8_19LazyTypeObjectInner11ensure_initNtB2_19InitializationGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.br), !noalias !14
  br label %bb.ac

bb.s:                                             ; preds = %bb.o, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python3run:bb.a
  %i.d = load i64, ptr %i.b, align 8, !range !17, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.f, align 8 ; 8 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.g, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit16

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types4codeINtNtB8_8instance5BoundNtB4_6PyCodeENtB4_13PyCodeMethods3run(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !15 ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.k, ptr %.sroa.06.0.copyload, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.g:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !17, !noundef !15
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !15 ; 2 uses
  %i.s = and i64 %i.r, 2147483648
  %.not.i.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i14, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.j:                                             ; preds = %bb.i
  %i.t = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !15 ; 2 uses
  %i.w = and i64 %i.v, 2147483648
  %.not.i.i15 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i15, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit16

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit
  %i.x = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.x, ptr %.sroa.06.0.copyload, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit16

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit16: ; preds = %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python4eval(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types4codeNtB2_6PyCode7compile(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 9, i1 noundef zeroext false)
  %i.c = load i64, ptr %i.a, align 8, !range !17, !noundef !15
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %i.e, align 8 ; 8 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload, ptr %i.f, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit14

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.06.0.copyload, ptr %i.b, align 8
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35types4codeINtNtB8_8instance5BoundNtB4_6PyCodeENtB4_13PyCodeMethods3run(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !15 ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.j, ptr %.sroa.06.0.copyload, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit

bb.g:                                             ; preds = %bb.c
  %i.l = load i64, ptr %.sroa.06.0.copyload, align 8, !noundef !15 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i.i13 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i13, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit14

bb.h:                                             ; preds = %bb.g
  %i.n = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.n, ptr %.sroa.06.0.copyload, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit14

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %.sroa.06.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit14: ; preds = %bb.i, %bb.h, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types4code6PyCodeEEBG_.exit: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python7version() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION, i64 16) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python11version_str.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python11version_str.exit

_RNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB5_6Python11version_str.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION, align 8, !nonnull !15, !noundef !15
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB7_6Python11version_str7VERSION, i64 8), align 8, !noundef !15
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState10normalized(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i32 3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr null, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %1, ptr %.sroa.510.0..sroa_idx, align 8
  %i.f = load atomic i32, ptr %i.d acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB13_10PyErrState10normalized0EB17_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB13_10PyErrState10normalized0EB17_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %i.e, align 8, !range !17, !alias.scope !167, !noundef !15
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !167, !noundef !15
  %.val1.i.i.i = load ptr, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !167
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEBH_(ptr %.val.i.i.i, ptr %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit unwind label %bb.e

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB13_10PyErrState10normalized0EB17_.exit: ; preds = %.noexc, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !174
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0), !noalias !174
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !174
  %i.j = and i64 %i.i, 9223372036854775807
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !noalias !174
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load atomic i8, ptr %i.o monotonic, align 4, !noalias !174
  %.not.i.i = icmp ne i8 %i.p, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB6_6thread2id8ThreadIdEENCNvMs9_BZ_BW_3new0ECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.q = load i64, ptr %i.f, align 8, !range !17, !alias.scope !177, !noalias !180, !noundef !15
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, !prof !8

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !182
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !177, !noalias !180, !nonnull !15, !align !16, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !18, !alias.scope !177, !noalias !180, !noundef !15
  store ptr %i.t, ptr %i.d, align 8, !noalias !182
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.v, ptr %i.w, align 8, !noalias !182
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22
          to label %bb.g unwind label %bb.f, !noalias !177

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBI_6thread2id8ThreadIdEEEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #23
          to label %common.resume unwind label %bb.h, !noalias !177

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !177
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.p, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.x, %bb.f ], [ %i.ba, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCsdc6yCHiM2ZJ_4pyo3.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !177, !noalias !180, !nonnull !15, !align !16, !noundef !15 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !18, !alias.scope !177, !noalias !180, !noundef !15 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = load i64, ptr %i.ae, align 8, !noundef !15
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.s unwind label %bb.r       ; 3 uses

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.al = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.al, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.am = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit, !prof !8

bb.n:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ao = call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1
  store i64 %i.ap, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load atomic i32, ptr %i.as acquire, align 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RINvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB6_6Python6detachuNCNvMs0_NtNtB8_3err9err_stateNtB10_10PyErrState15make_normalized0EB8_.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.as, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB6_6Python6detachuNCNvMs0_NtNtB8_3err9err_stateNtB10_10PyErrState15make_normalized0EB8_.exit

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvMs0_NtCsdc6yCHiM2ZJ_4pyo36markerNtB6_6Python6detachuNCNvMs0_NtNtB8_3err9err_stateNtB10_10PyErrState15make_normalized0EB8_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3.exit, %.noexc.i
  call void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !17, !noundef !15
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.x, label %bb.y, !prof !7

bb.r:                                             ; preds = %bb.w, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit6, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECsdc6yCHiM2ZJ_4pyo3(ptr nonnull %i.aa, i8 %i.ac) #23
          to label %common.resume unwind label %bb.ab

bb.s:                                             ; preds = %bb.i
  store ptr %i.ag, ptr %i.e, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !19, !noundef !15
  %i.bd = load i64, ptr %i.ae, align 8, !range !19, !noundef !15
  %i.be = icmp eq i64 %i.bd, %i.bc
  %i.bf = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !15
  %i.bg = icmp eq i64 %i.bf, 1                    ; 2 uses
end_hunk_1
