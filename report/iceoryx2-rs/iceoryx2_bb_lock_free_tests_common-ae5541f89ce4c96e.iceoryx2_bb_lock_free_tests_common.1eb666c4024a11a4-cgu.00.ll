Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.00?download=true
inline.NumInlined: 345
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0
@104 = private unnamed_addr constant [11 x i8] c"OutOfBounds", align 1
@105 = private unnamed_addr constant [25 x i8] c"InsertWouldExceedCapacity", align 1
@106 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs8Chj7Szqq0n_4core3fmtbNtB5_5Debug3fmt }>, align 8
@108 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9schedulerNtB5_9SchedulerNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCs8Chj7Szqq0n_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs8Chj7Szqq0n_4core6optionINtB5_6OptionyENtNtB7_3fmt5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs8Chj7Szqq0n_4core5arrayAbj400_NtNtB7_3fmt5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@112 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjf_ENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@113 = private unnamed_addr constant [10 x i8] c"guard_size", align 1
@114 = private unnamed_addr constant [29 x i8] c"inherit_scheduling_attributes", align 1
@115 = private unnamed_addr constant [9 x i8] c"scheduler", align 1
@116 = private unnamed_addr constant [8 x i8] c"priority", align 1
@117 = private unnamed_addr constant [10 x i8] c"stack_size", align 1
@118 = private unnamed_addr constant [8 x i8] c"affinity", align 1
@119 = private unnamed_addr constant [19 x i8] c"has_custom_affinity", align 1
@120 = private unnamed_addr constant [20 x i8] c"has_invalid_affinity", align 1
@121 = private unnamed_addr constant [4 x i8] c"name", align 1
@122 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @113, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @114, [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @116, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @118, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @119, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @120, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @121, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@123 = private unnamed_addr constant [13 x i8] c"ThreadBuilder", align 1
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@125 = private unnamed_addr constant [16 x i8] c"ThreadScopeGuard", align 1
@126 = private unnamed_addr constant [7 x i8] c"threads", align 1
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadScopeGuardNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread13ThreadBuilderNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@129 = private unnamed_addr constant [19 x i8] c"ScopedThreadBuilder", align 1
@130 = private unnamed_addr constant [5 x i8] c"guard", align 1
@131 = private unnamed_addr constant [14 x i8] c"thread_builder", align 1
@132 = private unnamed_addr constant [17 x i8] c"InvalidOwnerValue", align 1
@133 = private unnamed_addr constant [37 x i8] c"ExceededMaximumNumberOfRecursiveLocks", align 1
@134 = private unnamed_addr constant [16 x i8] c"DeadlockDetected", align 1
@135 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@136 = private unnamed_addr constant [24 x i8] c"LockAcquiredButOwnerDied", align 1
@137 = private unnamed_addr constant [18 x i8] c"UnrecoverableState", align 1
@138 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@139 = private unnamed_addr constant [12 x i8] c"UnknownError", align 1
@140 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecyEENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@141 = private unnamed_addr constant [4 x i8] c"None", align 1
@142 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRyNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@143 = private unnamed_addr constant [4 x i8] c"Some", align 1
@144 = private unnamed_addr constant [4 x i8] c"Fifo", align 1
@145 = private unnamed_addr constant [10 x i8] c"RoundRobin", align 1
@146 = private unnamed_addr constant [5 x i8] c"Other", align 1
@147 = private unnamed_addr constant [34 x i8] c"ContainerHandleNotOwnedByContainer", align 1
@148 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@149 = private unnamed_addr constant [19 x i8] c"InterruptedBySignal", align 1
@150 = private unnamed_addr constant [18 x i8] c"DurationOutOfRange", align 1
@151 = private unnamed_addr constant [23 x i8] c"ClockTypeIsNotSupported", align 1
@152 = private unnamed_addr constant [18 x i8] c"InsufficientMemory", align 1
@153 = private unnamed_addr constant [21 x i8] c"InsufficientResources", align 1
@154 = private unnamed_addr constant [15 x i8] c"InvalidSettings", align 1
@155 = private unnamed_addr constant [23 x i8] c"InsufficientPermissions", align 1
@156 = private unnamed_addr constant [16 x i8] c"InvalidGuardSize", align 1
@157 = private unnamed_addr constant [27 x i8] c"ContentionScopeNotSupported", align 1
@158 = private unnamed_addr constant [27 x i8] c"SchedulerPolicyNotSupported", align 1
@159 = private unnamed_addr constant [17 x i8] c"StackSizeTooSmall", align 1
@160 = private unnamed_addr constant [31 x i8] c"ProvidedStackSizeMemoryTooSmall", align 1
@161 = private unnamed_addr constant [39 x i8] c"ProvidedStackMemoryIsNotReadAndWritable", align 1
@162 = private unnamed_addr constant [40 x i8] c"SchedulerPriorityInheritanceNotSupported", align 1
@163 = private unnamed_addr constant [28 x i8] c"ThreadPrioritiesNotSupported", align 1
@164 = private unnamed_addr constant [44 x i8] c"CpuCoreOutsideOfSupportedCpuRangeForAffinity", align 1
@165 = private unnamed_addr constant [41 x i8] c"MaxNumberOfSupportedScopedThreadsExceeded", align 1
@166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread18ThreadSetNameErrorNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common }>, align 8
@167 = private unnamed_addr constant [18 x i8] c"ThreadSetNameError", align 1
@switch.table._RNvXsa_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9schedulerNtB5_9SchedulerNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\05\04\0A", align 8
@switch.table._RNvXsa_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9schedulerNtB5_9SchedulerNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.13 = private unnamed_addr constant [3 x ptr] [ptr @146, ptr @144, ptr @145], align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex14MutexLockErrorINtNtCsbqH9stoieM8_5alloc3vec3VecjEEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex14MutexLockErrorINtNtCsbqH9stoieM8_5alloc3vec3VecyEEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecyEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB11_8TestTypeE0EB15_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [1088 x i8], align 8             ; 14 uses
  %i.bv = alloca [4104 x i8], align 8             ; 4 uses
  %i.bw = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.bx = load ptr, ptr %0, align 8, !alias.scope !31, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noalias !33, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB4_8TestTypeE0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1076
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !31, !nonnull !5, !align !6, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x ptr>, ptr %i.cc, align 8, !alias.scope !31
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %.lr.ph.i
  %.sroa.08.0103.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cw, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i ]
  %i.cw = add nuw i64 %.sroa.08.0103.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !33
  store ptr %i.bw, ptr %i.bz, align 8, !noalias !33
  store i64 0, ptr %i.bu, align 8, !noalias !33
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !33
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !33
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !33
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !33
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !33
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !33
  %i.cx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !32, !noalias !34, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 128
  br i1 %i.cy, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.bu, i64 1080, i1 false), !noalias !36
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !35
  %i.cz = load i8, ptr %i.cd, align 2, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = load i8, ptr %i.ce, align 1, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !38
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !38
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !38
  store ptr @22, ptr %i.bn, align 8, !noalias !38
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bo, ptr noundef nonnull @23, ptr noundef nonnull %i.bn) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !38
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i: ; preds = %bb.ax, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false), !noalias !38
  store ptr %i.bq, ptr %i.cg, align 8, !noalias !38
  store ptr %i.bq, ptr %i.cf, align 8, !noalias !38
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB4z_8TestTypeE00E0NCB3J_s_0E6createB4D_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bg) #9, !noalias !39
  %i.dd = load i32, ptr %i.bh, align 8, !range !8, !noalias !38, !noundef !5
  %i.de = trunc nuw i32 %i.dd to i1
  br i1 %i.de, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.df = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !39 ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 1024
  br i1 %i.dg, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %.add.i.i.i = add nuw nsw i64 %i.df, 16         ; 2 uses
  %i.dh = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.dh, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !39
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i: ; preds = %bb.g, %bb.ax
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.ax ], [ %.add.i.i.i, %bb.g ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.gf, %bb.ax ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !38
  store i64 %.sroa.8.0242.i.i.i, ptr %i.bm, align 8, !noalias !38
  %i.di = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !10, !noalias !38, !noundef !5
  %i.dm = load i32, ptr %i.ch, align 8, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !38
  br label %bb.ba

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.ch, align 8, !noalias !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !38
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.bi, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !38
  store ptr @1, ptr %i.bf, align 8, !noalias !38, !captures !11
  store i64 24, ptr %i.ci, align 8, !noalias !38
  %i.dn = load i64, ptr %i.cj, align 8, !alias.scope !37, !noalias !35, !noundef !5
  %i.do = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.bi, i64 noundef %i.dn) #9, !noalias !39
  %i.dp = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.do) #9, !noalias !39 ; 3 uses
  switch i32 %i.dp, label %bb.k [
    i32 0, label %bb.l
    i32 22, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !38
  store i32 %i.dp, ptr %i.bc, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !38
  store ptr %i.bq, ptr %i.bb, align 8, !noalias !38
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !38
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !38
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.dq, align 8, !noalias !38
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bb, ptr noundef nonnull @13, ptr noundef nonnull %i.ba) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !38
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !38
  store ptr @2, ptr %i.az, align 8, !noalias !38, !captures !11
  store i64 53, ptr %i.ck, align 8, !noalias !38
  %i.dr = load i8, ptr %i.cl, align 4, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.ds = xor i8 %i.dr, 1
  %not..i.i.i = zext nneg i8 %i.ds to i32
  %i.dt = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.bi, i32 noundef %not..i.i.i) #9, !noalias !39
  %i.du = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dt) #9, !noalias !39 ; 3 uses
  switch i32 %i.du, label %bb.n [
    i32 0, label %bb.o
    i32 38, label %bb.p
    i32 95, label %bb.q
  ]

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !38
  store ptr %i.bq, ptr %i.be, align 8, !noalias !38
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !38
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !38
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.be, ptr noundef nonnull @19, ptr noundef nonnull %i.bd) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !38
  br label %bb.aw

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !38
  store i32 %i.du, ptr %i.au, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !38
  store ptr %i.bq, ptr %i.at, align 8, !noalias !38
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !38
  store ptr %i.az, ptr %i.as, align 8, !noalias !38
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.dv, align 8, !noalias !38
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.at, ptr noundef nonnull @13, ptr noundef nonnull %i.as) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !38
  br label %bb.av

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !38
  store ptr @3, ptr %i.ar, align 8, !noalias !38, !captures !11
  store i64 30, ptr %i.cm, align 8, !noalias !38
  %i.dw = load i32, ptr %i.cn, align 8, !range !12, !alias.scope !37, !noalias !35, !noundef !5
  %i.dx = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.bi, i32 noundef %i.dw) #9, !noalias !39
  %i.dy = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dx) #9, !noalias !39 ; 3 uses
  switch i32 %i.dy, label %bb.r [
    i32 0, label %bb.s
    i32 38, label %bb.t
    i32 95, label %bb.u
  ]

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !38
  store ptr %i.bq, ptr %i.ay, align 8, !noalias !38
  %.sroa.470.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !38
  store ptr %i.az, ptr %i.ax, align 8, !noalias !38
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.474.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ay, ptr noundef nonnull @18, ptr noundef nonnull %i.ax) #9, !noalias !39
end_hunk_0
begin_hunk_1_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB11_8TestTypeE0EB15_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !38
  store ptr %i.ar, ptr %i.an, align 8, !noalias !38
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !38
  br label %bb.au

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !38
  store i32 %i.ed, ptr %i.af, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !38
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !38
  %.sroa.4121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !38
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !38
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ee, align 8, !noalias !38
  %.sroa.4137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !38
  br label %bb.ap

bb.w:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !37, !noalias !35, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !38
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !38
  %.sroa.4125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !38
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !38
  %.sroa.4129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !38
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %i.cq, align 8, !alias.scope !37, !noalias !35, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !38
  store ptr @5, ptr %i.ac, align 8, !noalias !38, !captures !11
  store i64 36, ptr %i.cr, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !38
  %i.ei = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #9, !noalias !39 ; 2 uses
  store i64 %i.ei, ptr %i.ab, align 8, !noalias !38
  %i.ej = icmp ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !38
  %i.ek = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !39 ; 3 uses
  %i.el = call i64 @llvm.umin.i64(i64 %i.ek, i64 1024) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %xtraiter = and i64 %i.el, 1
  %i.em = icmp eq i64 %i.ek, 1
  br i1 %i.em, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.el, 2046
  br label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.en = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.eh) #9, !noalias !39
  %i.eo = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.en) #9, !noalias !39 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !38
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !38
  %.sroa.4141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !38
  store ptr %i.ac, ptr %i.z, align 8, !noalias !38
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.eq, align 8, !noalias !38
  %.sroa.4149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !38
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38
  br label %bb.z

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !38
  store i32 %i.eo, ptr %i.y, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !38
  store ptr %i.bq, ptr %i.x, align 8, !noalias !38
  %.sroa.4153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !38
  store ptr %i.ac, ptr %i.w, align 8, !noalias !38
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.er, align 8, !noalias !38
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !38
  br label %bb.at

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0162.0245.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fn, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i64 %i.el to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ae, label %._crit_edge.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ev = trunc i64 %.sroa.0162.0245.i.i.i.epil.init to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = shl nuw i8 1, %i.ew
  %i.ey = lshr i64 %.sroa.0162.0245.i.i.i.epil.init, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !38, !noundef !5
  %i.fb = or i8 %i.fa, %i.ex
  store i8 %i.fb, ptr %i.ez, align 1, !noalias !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i.epil.preheader, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !38
  store ptr @7, ptr %i.u, align 8, !noalias !38, !captures !11
  store i64 37, ptr %i.ct, align 8, !noalias !38
  %i.fc = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #9, !noalias !39
  %i.fd = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fc) #9, !noalias !39 ; 3 uses
  switch i32 %i.fd, label %bb.af [
    i32 0, label %bb.ag
    i32 12, label %bb.ah
    i32 22, label %bb.ai
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.i.i.preheader.new
  %.sroa.0162.0245.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %bb.ar ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.ar ]
  %i.fe = or disjoint i64 %.sroa.0162.0245.i.i.i, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i
  %i.fg = load i8, ptr %i.ff, align 2, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.as, label %.lr.ph.i.i.i.1

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !38
  store i32 %i.fd, ptr %i.p, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38
  store ptr %i.bq, ptr %i.o, align 8, !noalias !38
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38
  store ptr %i.u, ptr %i.n, align 8, !noalias !38
  %.sroa.4187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.fi, align 8, !noalias !38
  %.sroa.4191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !38
  br label %bb.ao

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !38
  %i.fj = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 56) #9, !noalias !39 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !40
  store ptr %i.cb, ptr %i.fj, align 8, !noalias !39
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> %1, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38
  store i64 0, ptr %i.m, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38
  store ptr @8, ptr %i.l, align 8, !noalias !38, !captures !11
  store i64 23, ptr %i.cv, align 8, !noalias !38
  %i.fk = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB1G_8TestTypeE00uEB1K_, ptr noundef nonnull %i.fj) #9, !noalias !39
  %i.fl = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fk) #9, !noalias !39 ; 3 uses
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %bb.be
    i32 1, label %bb.ak
    i32 11, label %bb.al
    i32 22, label %bb.am
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !38
  store ptr %i.bq, ptr %i.r, align 8, !noalias !38
  %.sroa.4171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38
  store ptr %i.u, ptr %i.q, align 8, !noalias !38
  %.sroa.4183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !38
  br label %bb.ao

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !38
  store ptr %i.bq, ptr %i.t, align 8, !noalias !38
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !38
  store ptr %i.u, ptr %i.s, align 8, !noalias !38
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !38
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38
  store i32 %i.fl, ptr %i.e, align 4, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38
  store ptr %i.bq, ptr %i.d, align 8, !noalias !38
  %.sroa.4196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38
  store ptr %i.l, ptr %i.c, align 8, !noalias !38
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !38
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fm, align 8, !noalias !38
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38
  store ptr %i.bq, ptr %i.g, align 8, !noalias !38
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38
  store ptr %i.l, ptr %i.f, align 8, !noalias !38
  %.sroa.4220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38
  br label %bb.an

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38
  store ptr %i.bq, ptr %i.k, align 8, !noalias !38
  %.sroa.4208.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38
  store ptr %i.l, ptr %i.j, align 8, !noalias !38
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38
  store ptr %i.bq, ptr %i.i, align 8, !noalias !38
  %.sroa.4204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38
  store ptr %i.l, ptr %i.h, align 8, !noalias !38
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !38
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.27.6.i.i = phi i32 [ 13, %bb.aj ], [ 3, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !38
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !39
  br label %bb.ba

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.sroa.27.5.i.i = phi i32 [ 13, %bb.af ], [ 0, %bb.ah ], [ 12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao, %bb.x, %bb.v
  %.sroa.50.sroa.0.4.i.i = phi i32 [ %i.ed, %bb.v ], [ %.sroa.50.sroa.0.7.i.i, %bb.at ], [ %i.fd, %bb.ao ], [ undef, %bb.x ]
  %.sroa.27.4.i.i = phi i32 [ 13, %bb.v ], [ %.sroa.27.7.i.i, %bb.at ], [ %.sroa.27.5.i.i, %bb.ao ], [ 11, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !38
  br label %bb.au

.lr.ph.i.i.i.1:                                   ; preds = %bb.as, %.lr.ph.i.i.i
  %i.fn = add nuw nsw i64 %.sroa.0162.0245.i.i.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fe
  %i.fp = load i8, ptr %i.fo, align 1, !range !7, !alias.scope !37, !noalias !35, !noundef !5
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i.1
  %i.fr = trunc i64 %i.fe to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !38, !noundef !5
  %i.fx = or i8 %i.fw, %i.ft
  store i8 %i.fx, ptr %i.fv, align 1, !noalias !38
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = trunc i64 %.sroa.0162.0245.i.i.i to i8
  %i.fz = and i8 %i.fy, 6
  %i.ga = shl nuw nsw i8 1, %i.fz
  %i.gb = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !38, !noundef !5
  %i.ge = or i8 %i.gd, %i.ga
  store i8 %i.ge, ptr %i.gc, align 1, !noalias !38
  br label %.lr.ph.i.i.i.1

bb.at:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.50.sroa.0.7.i.i = phi i32 [ undef, %bb.ab ], [ %i.eo, %bb.ad ]
  %.sroa.27.7.i.i = phi i32 [ 7, %bb.ab ], [ 13, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38
  br label %bb.ap

bb.au:                                            ; preds = %bb.ap, %bb.u, %bb.t, %bb.r
  %.sroa.50.sroa.0.3.i.i = phi i32 [ %i.dy, %bb.r ], [ %.sroa.50.sroa.0.4.i.i, %bb.ap ], [ undef, %bb.t ], [ undef, %bb.u ]
  %.sroa.27.3.i.i = phi i32 [ 13, %bb.r ], [ %.sroa.27.4.i.i, %bb.ap ], [ 6, %bb.t ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !38
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.q, %bb.p, %bb.n
  %.sroa.50.sroa.0.2.i.i = phi i32 [ %i.du, %bb.n ], [ %.sroa.50.sroa.0.3.i.i, %bb.au ], [ undef, %bb.p ], [ undef, %bb.q ]
  %.sroa.27.2.i.i = phi i32 [ 13, %bb.n ], [ %.sroa.27.3.i.i, %bb.au ], [ 10, %bb.p ], [ 10, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !38
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.m, %bb.k
  %.sroa.50.sroa.0.0.i.i = phi i32 [ %i.dp, %bb.k ], [ %.sroa.50.sroa.0.2.i.i, %bb.av ], [ undef, %bb.m ]
  %.sroa.27.0.i.i = phi i32 [ 13, %bb.k ], [ %.sroa.27.2.i.i, %bb.av ], [ 4, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !38
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !39
  br label %bb.ba

bb.ax:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
  %i.gf = add nuw nsw i64 %.sroa.8.0242.i.i.i, 1
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !38
  %i.gg = icmp eq i64 %.sroa.0.0.add.i.i.i, 1040
  br i1 %i.gg, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB11_8TestTypeE0EB15_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !35
  br label %bb.bg

.thread.i.i:                                      ; preds = %bb.ay, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !35
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw, %bb.an, %bb.i
  %.sroa.50.sroa.0.8.ph.i.i = phi i32 [ %i.fl, %bb.an ], [ %i.dm, %bb.i ], [ %.sroa.50.sroa.0.0.i.i, %bb.aw ] ; 2 uses
  %.sroa.27.8.ph.i.i = phi i32 [ %.sroa.27.6.i.i, %bb.an ], [ %i.dl, %bb.i ], [ %.sroa.27.0.i.i, %bb.aw ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !35
  switch i32 %.sroa.27.8.ph.i.i, label %default.unreachable [
    i32 0, label %bb.bg
    i32 1, label %bb.bg
    i32 2, label %bb.bg
    i32 3, label %bb.bg
    i32 4, label %bb.bg
    i32 5, label %bb.bg
    i32 6, label %bb.bg
    i32 7, label %bb.bg
    i32 8, label %bb.bg
    i32 9, label %bb.bg
    i32 10, label %bb.bg
    i32 11, label %bb.bg
    i32 12, label %bb.bb
    i32 13, label %bb.bc
    i32 14, label %bb.bd
  ]

default.unreachable:                              ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br label %bb.bg

bb.be:                                            ; preds = %bb.ag
  %i.gj = load i64, ptr %i.m, align 8, !noalias !38, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !38
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !35
  store i64 %i.gj, ptr %i.bp, align 8, !noalias !35
  %i.gk = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E4pushCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp) #9, !noalias !42 ; 2 uses
  %.not.i14.i.i = icmp eq i8 %i.gk, 2
  br i1 %.not.i14.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, label %bb.bf, !prof !14

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35
  store i8 %i.gk, ptr %i.b, align 1, !noalias !35
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 37, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #10, !noalias !42
  unreachable

bb.bg:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sroa.4.0.i.ph.i = phi i32 [ undef, %bb.ba ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bc ], [ undef, %bb.bb ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.az ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.0.0.i.ph.i = phi i32 [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 14, %bb.bc ], [ 12, %bb.bb ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 13, %bb.az ], [ 15, %bb.bd ], [ %.sroa.27.8.ph.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  store i32 %.sroa.0.0.i.ph.i, ptr %i.a, align 4, !noalias !43
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.i.ph.i, ptr %i.gl, align 4, !noalias !43
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #10, !noalias !31
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !33
  %exitcond.not.i = icmp eq i64 %i.cw, %i.by
  br i1 %exitcond.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB4_8TestTypeE0B8_.exit, label %bb.b

_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverNtB4_8TestTypeE0B8_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bv, ptr noundef nonnull align 8 dereferenceable(4104) %i.bw, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bv) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0EB15_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [1088 x i8], align 8             ; 14 uses
  %i.bv = alloca [4104 x i8], align 8             ; 4 uses
  %i.bw = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.bx = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noalias !58, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1076
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !56, !nonnull !5, !align !6, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x ptr>, ptr %i.cc, align 8, !alias.scope !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %.lr.ph.i
  %.sroa.08.0103.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cw, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i ]
  %i.cw = add nuw i64 %.sroa.08.0103.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !58
  store ptr %i.bw, ptr %i.bz, align 8, !noalias !58
  store i64 0, ptr %i.bu, align 8, !noalias !58
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !58
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !58
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !58
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !58
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !58
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !58
  %i.cx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !57, !noalias !59, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 128
  br i1 %i.cy, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.bu, i64 1080, i1 false), !noalias !61
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !60
  %i.cz = load i8, ptr %i.cd, align 2, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = load i8, ptr %i.ce, align 1, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !63
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !63
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !63
  store ptr @22, ptr %i.bn, align 8, !noalias !63
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bo, ptr noundef nonnull @23, ptr noundef nonnull %i.bn) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !63
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i: ; preds = %bb.ax, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false), !noalias !63
  store ptr %i.bq, ptr %i.cg, align 8, !noalias !63
  store ptr %i.bq, ptr %i.cf, align 8, !noalias !63
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE00E0NCB3J_s_0E6createB4D_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bg) #9, !noalias !64
  %i.dd = load i32, ptr %i.bh, align 8, !range !8, !noalias !63, !noundef !5
  %i.de = trunc nuw i32 %i.dd to i1
  br i1 %i.de, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.df = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !64 ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 1024
  br i1 %i.dg, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %.add.i.i.i = add nuw nsw i64 %i.df, 16         ; 2 uses
  %i.dh = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.dh, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !64
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i: ; preds = %bb.g, %bb.ax
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.ax ], [ %.add.i.i.i, %bb.g ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.gf, %bb.ax ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !63
  store i64 %.sroa.8.0242.i.i.i, ptr %i.bm, align 8, !noalias !63
  %i.di = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !10, !noalias !63, !noundef !5
  %i.dm = load i32, ptr %i.ch, align 8, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !63
  br label %bb.ba

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.ch, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !63
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.bi, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !63
  store ptr @1, ptr %i.bf, align 8, !noalias !63, !captures !11
  store i64 24, ptr %i.ci, align 8, !noalias !63
  %i.dn = load i64, ptr %i.cj, align 8, !alias.scope !62, !noalias !60, !noundef !5
  %i.do = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.bi, i64 noundef %i.dn) #9, !noalias !64
  %i.dp = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.do) #9, !noalias !64 ; 3 uses
  switch i32 %i.dp, label %bb.k [
    i32 0, label %bb.l
    i32 22, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !63
  store i32 %i.dp, ptr %i.bc, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !63
  store ptr %i.bq, ptr %i.bb, align 8, !noalias !63
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !63
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !63
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.dq, align 8, !noalias !63
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bb, ptr noundef nonnull @13, ptr noundef nonnull %i.ba) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !63
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !63
  store ptr @2, ptr %i.az, align 8, !noalias !63, !captures !11
  store i64 53, ptr %i.ck, align 8, !noalias !63
  %i.dr = load i8, ptr %i.cl, align 4, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.ds = xor i8 %i.dr, 1
  %not..i.i.i = zext nneg i8 %i.ds to i32
  %i.dt = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.bi, i32 noundef %not..i.i.i) #9, !noalias !64
  %i.du = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dt) #9, !noalias !64 ; 3 uses
  switch i32 %i.du, label %bb.n [
    i32 0, label %bb.o
    i32 38, label %bb.p
    i32 95, label %bb.q
  ]

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !63
  store ptr %i.bq, ptr %i.be, align 8, !noalias !63
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !63
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !63
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.be, ptr noundef nonnull @19, ptr noundef nonnull %i.bd) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !63
  br label %bb.aw

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !63
  store i32 %i.du, ptr %i.au, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !63
  store ptr %i.bq, ptr %i.at, align 8, !noalias !63
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !63
  store ptr %i.az, ptr %i.as, align 8, !noalias !63
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.dv, align 8, !noalias !63
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.at, ptr noundef nonnull @13, ptr noundef nonnull %i.as) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !63
  br label %bb.av

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !63
  store ptr @3, ptr %i.ar, align 8, !noalias !63, !captures !11
  store i64 30, ptr %i.cm, align 8, !noalias !63
  %i.dw = load i32, ptr %i.cn, align 8, !range !12, !alias.scope !62, !noalias !60, !noundef !5
  %i.dx = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.bi, i32 noundef %i.dw) #9, !noalias !64
  %i.dy = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dx) #9, !noalias !64 ; 3 uses
  switch i32 %i.dy, label %bb.r [
    i32 0, label %bb.s
    i32 38, label %bb.t
    i32 95, label %bb.u
  ]

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !63
  store ptr %i.bq, ptr %i.ay, align 8, !noalias !63
  %.sroa.470.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !63
  store ptr %i.az, ptr %i.ax, align 8, !noalias !63
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.474.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ay, ptr noundef nonnull @18, ptr noundef nonnull %i.ax) #9, !noalias !64
end_hunk_2
begin_hunk_3_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0EB15_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !63
  store ptr %i.ar, ptr %i.an, align 8, !noalias !63
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !63
  br label %bb.au

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !63
  store i32 %i.ed, ptr %i.af, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !63
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !63
  %.sroa.4121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !63
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !63
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ee, align 8, !noalias !63
  %.sroa.4137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !63
  br label %bb.ap

bb.w:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !62, !noalias !60, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !63
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !63
  %.sroa.4125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !63
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !63
  %.sroa.4129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !63
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %i.cq, align 8, !alias.scope !62, !noalias !60, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !63
  store ptr @5, ptr %i.ac, align 8, !noalias !63, !captures !11
  store i64 36, ptr %i.cr, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !63
  %i.ei = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #9, !noalias !64 ; 2 uses
  store i64 %i.ei, ptr %i.ab, align 8, !noalias !63
  %i.ej = icmp ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !63
  %i.ek = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !64 ; 3 uses
  %i.el = call i64 @llvm.umin.i64(i64 %i.ek, i64 1024) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %xtraiter = and i64 %i.el, 1
  %i.em = icmp eq i64 %i.ek, 1
  br i1 %i.em, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.el, 2046
  br label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.en = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.eh) #9, !noalias !64
  %i.eo = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.en) #9, !noalias !64 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !63
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !63
  %.sroa.4141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !63
  store ptr %i.ac, ptr %i.z, align 8, !noalias !63
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.eq, align 8, !noalias !63
  %.sroa.4149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !63
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !63
  br label %bb.z

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !63
  store i32 %i.eo, ptr %i.y, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !63
  store ptr %i.bq, ptr %i.x, align 8, !noalias !63
  %.sroa.4153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !63
  store ptr %i.ac, ptr %i.w, align 8, !noalias !63
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.er, align 8, !noalias !63
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !63
  br label %bb.at

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0162.0245.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fn, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i64 %i.el to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ae, label %._crit_edge.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ev = trunc i64 %.sroa.0162.0245.i.i.i.epil.init to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = shl nuw i8 1, %i.ew
  %i.ey = lshr i64 %.sroa.0162.0245.i.i.i.epil.init, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !63, !noundef !5
  %i.fb = or i8 %i.fa, %i.ex
  store i8 %i.fb, ptr %i.ez, align 1, !noalias !63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i.epil.preheader, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !63
  store ptr @7, ptr %i.u, align 8, !noalias !63, !captures !11
  store i64 37, ptr %i.ct, align 8, !noalias !63
  %i.fc = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #9, !noalias !64
  %i.fd = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fc) #9, !noalias !64 ; 3 uses
  switch i32 %i.fd, label %bb.af [
    i32 0, label %bb.ag
    i32 12, label %bb.ah
    i32 22, label %bb.ai
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.i.i.preheader.new
  %.sroa.0162.0245.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %bb.ar ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.ar ]
  %i.fe = or disjoint i64 %.sroa.0162.0245.i.i.i, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i
  %i.fg = load i8, ptr %i.ff, align 2, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.as, label %.lr.ph.i.i.i.1

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !63
  store i32 %i.fd, ptr %i.p, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !63
  store ptr %i.bq, ptr %i.o, align 8, !noalias !63
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !63
  store ptr %i.u, ptr %i.n, align 8, !noalias !63
  %.sroa.4187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.fi, align 8, !noalias !63
  %.sroa.4191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !63
  br label %bb.ao

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !63
  %i.fj = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 56) #9, !noalias !64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !65
  store ptr %i.cb, ptr %i.fj, align 8, !noalias !64
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !64
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> %1, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !64
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !63
  store i64 0, ptr %i.m, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !63
  store ptr @8, ptr %i.l, align 8, !noalias !63, !captures !11
  store i64 23, ptr %i.cv, align 8, !noalias !63
  %i.fk = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE00uEB1K_, ptr noundef nonnull %i.fj) #9, !noalias !64
  %i.fl = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fk) #9, !noalias !64 ; 3 uses
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %bb.be
    i32 1, label %bb.ak
    i32 11, label %bb.al
    i32 22, label %bb.am
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !63
  store ptr %i.bq, ptr %i.r, align 8, !noalias !63
  %.sroa.4171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !63
  store ptr %i.u, ptr %i.q, align 8, !noalias !63
  %.sroa.4183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !63
  br label %bb.ao

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !63
  store ptr %i.bq, ptr %i.t, align 8, !noalias !63
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !63
  store ptr %i.u, ptr %i.s, align 8, !noalias !63
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !63
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63
  store i32 %i.fl, ptr %i.e, align 4, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63
  store ptr %i.bq, ptr %i.d, align 8, !noalias !63
  %.sroa.4196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63
  store ptr %i.l, ptr %i.c, align 8, !noalias !63
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fm, align 8, !noalias !63
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !63
  store ptr %i.bq, ptr %i.g, align 8, !noalias !63
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63
  store ptr %i.l, ptr %i.f, align 8, !noalias !63
  %.sroa.4220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63
  br label %bb.an

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !63
  store ptr %i.bq, ptr %i.k, align 8, !noalias !63
  %.sroa.4208.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !63
  store ptr %i.l, ptr %i.j, align 8, !noalias !63
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !63
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !63
  store ptr %i.bq, ptr %i.i, align 8, !noalias !63
  %.sroa.4204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !63
  store ptr %i.l, ptr %i.h, align 8, !noalias !63
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !63
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !63
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.27.6.i.i = phi i32 [ 13, %bb.aj ], [ 3, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !63
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !64
  br label %bb.ba

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.sroa.27.5.i.i = phi i32 [ 13, %bb.af ], [ 0, %bb.ah ], [ 12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !63
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao, %bb.x, %bb.v
  %.sroa.50.sroa.0.4.i.i = phi i32 [ %i.ed, %bb.v ], [ %.sroa.50.sroa.0.7.i.i, %bb.at ], [ %i.fd, %bb.ao ], [ undef, %bb.x ]
  %.sroa.27.4.i.i = phi i32 [ 13, %bb.v ], [ %.sroa.27.7.i.i, %bb.at ], [ %.sroa.27.5.i.i, %bb.ao ], [ 11, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !63
  br label %bb.au

.lr.ph.i.i.i.1:                                   ; preds = %bb.as, %.lr.ph.i.i.i
  %i.fn = add nuw nsw i64 %.sroa.0162.0245.i.i.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fe
  %i.fp = load i8, ptr %i.fo, align 1, !range !7, !alias.scope !62, !noalias !60, !noundef !5
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i.1
  %i.fr = trunc i64 %i.fe to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !63, !noundef !5
  %i.fx = or i8 %i.fw, %i.ft
  store i8 %i.fx, ptr %i.fv, align 1, !noalias !63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = trunc i64 %.sroa.0162.0245.i.i.i to i8
  %i.fz = and i8 %i.fy, 6
  %i.ga = shl nuw nsw i8 1, %i.fz
  %i.gb = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !63, !noundef !5
  %i.ge = or i8 %i.gd, %i.ga
  store i8 %i.ge, ptr %i.gc, align 1, !noalias !63
  br label %.lr.ph.i.i.i.1

bb.at:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.50.sroa.0.7.i.i = phi i32 [ undef, %bb.ab ], [ %i.eo, %bb.ad ]
  %.sroa.27.7.i.i = phi i32 [ 7, %bb.ab ], [ 13, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !63
  br label %bb.ap

bb.au:                                            ; preds = %bb.ap, %bb.u, %bb.t, %bb.r
  %.sroa.50.sroa.0.3.i.i = phi i32 [ %i.dy, %bb.r ], [ %.sroa.50.sroa.0.4.i.i, %bb.ap ], [ undef, %bb.t ], [ undef, %bb.u ]
  %.sroa.27.3.i.i = phi i32 [ 13, %bb.r ], [ %.sroa.27.4.i.i, %bb.ap ], [ 6, %bb.t ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !63
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.q, %bb.p, %bb.n
  %.sroa.50.sroa.0.2.i.i = phi i32 [ %i.du, %bb.n ], [ %.sroa.50.sroa.0.3.i.i, %bb.au ], [ undef, %bb.p ], [ undef, %bb.q ]
  %.sroa.27.2.i.i = phi i32 [ 13, %bb.n ], [ %.sroa.27.3.i.i, %bb.au ], [ 10, %bb.p ], [ 10, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !63
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.m, %bb.k
  %.sroa.50.sroa.0.0.i.i = phi i32 [ %i.dp, %bb.k ], [ %.sroa.50.sroa.0.2.i.i, %bb.av ], [ undef, %bb.m ]
  %.sroa.27.0.i.i = phi i32 [ 13, %bb.k ], [ %.sroa.27.2.i.i, %bb.av ], [ 4, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !63
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !64
  br label %bb.ba

bb.ax:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
  %i.gf = add nuw nsw i64 %.sroa.8.0242.i.i.i, 1
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !63
  %i.gg = icmp eq i64 %.sroa.0.0.add.i.i.i, 1040
  br i1 %i.gg, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
end_hunk_3
begin_hunk_4_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0EB15_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !60
  br label %bb.bg

.thread.i.i:                                      ; preds = %bb.ay, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !60
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw, %bb.an, %bb.i
  %.sroa.50.sroa.0.8.ph.i.i = phi i32 [ %i.fl, %bb.an ], [ %i.dm, %bb.i ], [ %.sroa.50.sroa.0.0.i.i, %bb.aw ] ; 2 uses
  %.sroa.27.8.ph.i.i = phi i32 [ %.sroa.27.6.i.i, %bb.an ], [ %i.dl, %bb.i ], [ %.sroa.27.0.i.i, %bb.aw ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !60
  switch i32 %.sroa.27.8.ph.i.i, label %default.unreachable [
    i32 0, label %bb.bg
    i32 1, label %bb.bg
    i32 2, label %bb.bg
    i32 3, label %bb.bg
    i32 4, label %bb.bg
    i32 5, label %bb.bg
    i32 6, label %bb.bg
    i32 7, label %bb.bg
    i32 8, label %bb.bg
    i32 9, label %bb.bg
    i32 10, label %bb.bg
    i32 11, label %bb.bg
    i32 12, label %bb.bb
    i32 13, label %bb.bc
    i32 14, label %bb.bd
  ]

default.unreachable:                              ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br label %bb.bg

bb.be:                                            ; preds = %bb.ag
  %i.gj = load i64, ptr %i.m, align 8, !noalias !63, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !63
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !60
  store i64 %i.gj, ptr %i.bp, align 8, !noalias !60
  %i.gk = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E4pushCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp) #9, !noalias !67 ; 2 uses
  %.not.i14.i.i = icmp eq i8 %i.gk, 2
  br i1 %.not.i14.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, label %bb.bf, !prof !14

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  store i8 %i.gk, ptr %i.b, align 1, !noalias !60
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 37, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #10, !noalias !67
  unreachable

bb.bg:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sroa.4.0.i.ph.i = phi i32 [ undef, %bb.ba ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bc ], [ undef, %bb.bb ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.az ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.0.0.i.ph.i = phi i32 [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 14, %bb.bc ], [ 12, %bb.bb ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 13, %bb.az ], [ 15, %bb.bd ], [ %.sroa.27.8.ph.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  store i32 %.sroa.0.0.i.ph.i, ptr %i.a, align 4, !noalias !68
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.i.ph.i, ptr %i.gl, align 4, !noalias !68
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #10, !noalias !56
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !58
  %exitcond.not.i = icmp eq i64 %i.cw, %i.by
  br i1 %exitcond.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0B8_.exit, label %bb.b

_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic26concurrent_add_and_recoverjE0B8_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bv, ptr noundef nonnull align 8 dereferenceable(4104) %i.bw, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bv) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB11_8TestTypeE0EB15_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [1088 x i8], align 8             ; 14 uses
  %i.bv = alloca [4104 x i8], align 8             ; 4 uses
  %i.bw = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.bx = load ptr, ptr %0, align 8, !alias.scope !81, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noalias !83, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB4_8TestTypeE0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1076
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !81, !nonnull !5, !align !6, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x ptr>, ptr %i.cc, align 8, !alias.scope !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %.lr.ph.i
  %.sroa.08.0103.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cw, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i ]
  %i.cw = add nuw i64 %.sroa.08.0103.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !83
  store ptr %i.bw, ptr %i.bz, align 8, !noalias !83
  store i64 0, ptr %i.bu, align 8, !noalias !83
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !83
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !83
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !83
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !83
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !83
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !83
  %i.cx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !82, !noalias !84, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 128
  br i1 %i.cy, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.bu, i64 1080, i1 false), !noalias !86
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !85
  %i.cz = load i8, ptr %i.cd, align 2, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = load i8, ptr %i.ce, align 1, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !88
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !88
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !88
  store ptr @22, ptr %i.bn, align 8, !noalias !88
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bo, ptr noundef nonnull @23, ptr noundef nonnull %i.bn) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !88
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i: ; preds = %bb.ax, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false), !noalias !88
  store ptr %i.bq, ptr %i.cg, align 8, !noalias !88
  store ptr %i.bq, ptr %i.cf, align 8, !noalias !88
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB4z_8TestTypeE00E0NCB3J_s_0E6createB4D_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bg) #9, !noalias !89
  %i.dd = load i32, ptr %i.bh, align 8, !range !8, !noalias !88, !noundef !5
  %i.de = trunc nuw i32 %i.dd to i1
  br i1 %i.de, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.df = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !89 ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 1024
  br i1 %i.dg, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %.add.i.i.i = add nuw nsw i64 %i.df, 16         ; 2 uses
  %i.dh = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.dh, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !89
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i: ; preds = %bb.g, %bb.ax
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.ax ], [ %.add.i.i.i, %bb.g ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.gf, %bb.ax ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !88
  store i64 %.sroa.8.0242.i.i.i, ptr %i.bm, align 8, !noalias !88
  %i.di = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !10, !noalias !88, !noundef !5
  %i.dm = load i32, ptr %i.ch, align 8, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !88
  br label %bb.ba

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.ch, align 8, !noalias !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !88
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.bi, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !88
  store ptr @1, ptr %i.bf, align 8, !noalias !88, !captures !11
  store i64 24, ptr %i.ci, align 8, !noalias !88
  %i.dn = load i64, ptr %i.cj, align 8, !alias.scope !87, !noalias !85, !noundef !5
  %i.do = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.bi, i64 noundef %i.dn) #9, !noalias !89
  %i.dp = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.do) #9, !noalias !89 ; 3 uses
  switch i32 %i.dp, label %bb.k [
    i32 0, label %bb.l
    i32 22, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !88
  store i32 %i.dp, ptr %i.bc, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !88
  store ptr %i.bq, ptr %i.bb, align 8, !noalias !88
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !88
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !88
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.dq, align 8, !noalias !88
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bb, ptr noundef nonnull @13, ptr noundef nonnull %i.ba) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !88
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !88
  store ptr @2, ptr %i.az, align 8, !noalias !88, !captures !11
  store i64 53, ptr %i.ck, align 8, !noalias !88
  %i.dr = load i8, ptr %i.cl, align 4, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.ds = xor i8 %i.dr, 1
  %not..i.i.i = zext nneg i8 %i.ds to i32
  %i.dt = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.bi, i32 noundef %not..i.i.i) #9, !noalias !89
  %i.du = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dt) #9, !noalias !89 ; 3 uses
  switch i32 %i.du, label %bb.n [
    i32 0, label %bb.o
    i32 38, label %bb.p
    i32 95, label %bb.q
  ]

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !88
  store ptr %i.bq, ptr %i.be, align 8, !noalias !88
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !88
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !88
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.be, ptr noundef nonnull @19, ptr noundef nonnull %i.bd) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !88
  br label %bb.aw

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !88
  store i32 %i.du, ptr %i.au, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !88
  store ptr %i.bq, ptr %i.at, align 8, !noalias !88
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !88
  store ptr %i.az, ptr %i.as, align 8, !noalias !88
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.dv, align 8, !noalias !88
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.at, ptr noundef nonnull @13, ptr noundef nonnull %i.as) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !88
  br label %bb.av

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !88
  store ptr @3, ptr %i.ar, align 8, !noalias !88, !captures !11
  store i64 30, ptr %i.cm, align 8, !noalias !88
  %i.dw = load i32, ptr %i.cn, align 8, !range !12, !alias.scope !87, !noalias !85, !noundef !5
  %i.dx = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.bi, i32 noundef %i.dw) #9, !noalias !89
  %i.dy = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dx) #9, !noalias !89 ; 3 uses
  switch i32 %i.dy, label %bb.r [
    i32 0, label %bb.s
    i32 38, label %bb.t
    i32 95, label %bb.u
  ]

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !88
  store ptr %i.bq, ptr %i.ay, align 8, !noalias !88
  %.sroa.470.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !88
  store ptr %i.az, ptr %i.ax, align 8, !noalias !88
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.474.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ay, ptr noundef nonnull @18, ptr noundef nonnull %i.ax) #9, !noalias !89
end_hunk_4
begin_hunk_5_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB11_8TestTypeE0EB15_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !88
  store ptr %i.ar, ptr %i.an, align 8, !noalias !88
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !88
  br label %bb.au

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !88
  store i32 %i.ed, ptr %i.af, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !88
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !88
  %.sroa.4121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !88
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !88
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ee, align 8, !noalias !88
  %.sroa.4137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !88
  br label %bb.ap

bb.w:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !87, !noalias !85, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !88
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !88
  %.sroa.4125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !88
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !88
  %.sroa.4129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !88
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %i.cq, align 8, !alias.scope !87, !noalias !85, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !88
  store ptr @5, ptr %i.ac, align 8, !noalias !88, !captures !11
  store i64 36, ptr %i.cr, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !88
  %i.ei = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #9, !noalias !89 ; 2 uses
  store i64 %i.ei, ptr %i.ab, align 8, !noalias !88
  %i.ej = icmp ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !88
  %i.ek = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !89 ; 3 uses
  %i.el = call i64 @llvm.umin.i64(i64 %i.ek, i64 1024) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %xtraiter = and i64 %i.el, 1
  %i.em = icmp eq i64 %i.ek, 1
  br i1 %i.em, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.el, 2046
  br label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.en = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.eh) #9, !noalias !89
  %i.eo = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.en) #9, !noalias !89 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !88
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !88
  %.sroa.4141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !88
  store ptr %i.ac, ptr %i.z, align 8, !noalias !88
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.eq, align 8, !noalias !88
  %.sroa.4149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !88
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !88
  br label %bb.z

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !88
  store i32 %i.eo, ptr %i.y, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !88
  store ptr %i.bq, ptr %i.x, align 8, !noalias !88
  %.sroa.4153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !88
  store ptr %i.ac, ptr %i.w, align 8, !noalias !88
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.er, align 8, !noalias !88
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !88
  br label %bb.at

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0162.0245.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fn, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i64 %i.el to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ae, label %._crit_edge.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ev = trunc i64 %.sroa.0162.0245.i.i.i.epil.init to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = shl nuw i8 1, %i.ew
  %i.ey = lshr i64 %.sroa.0162.0245.i.i.i.epil.init, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !88, !noundef !5
  %i.fb = or i8 %i.fa, %i.ex
  store i8 %i.fb, ptr %i.ez, align 1, !noalias !88
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i.epil.preheader, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !88
  store ptr @7, ptr %i.u, align 8, !noalias !88, !captures !11
  store i64 37, ptr %i.ct, align 8, !noalias !88
  %i.fc = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #9, !noalias !89
  %i.fd = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fc) #9, !noalias !89 ; 3 uses
  switch i32 %i.fd, label %bb.af [
    i32 0, label %bb.ag
    i32 12, label %bb.ah
    i32 22, label %bb.ai
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.i.i.preheader.new
  %.sroa.0162.0245.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %bb.ar ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.ar ]
  %i.fe = or disjoint i64 %.sroa.0162.0245.i.i.i, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i
  %i.fg = load i8, ptr %i.ff, align 2, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.as, label %.lr.ph.i.i.i.1

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !88
  store i32 %i.fd, ptr %i.p, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !88
  store ptr %i.bq, ptr %i.o, align 8, !noalias !88
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !88
  store ptr %i.u, ptr %i.n, align 8, !noalias !88
  %.sroa.4187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.fi, align 8, !noalias !88
  %.sroa.4191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !88
  br label %bb.ao

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !88
  %i.fj = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 56) #9, !noalias !89 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !90
  store ptr %i.cb, ptr %i.fj, align 8, !noalias !89
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !89
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> %1, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !89
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !88
  store i64 0, ptr %i.m, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !88
  store ptr @8, ptr %i.l, align 8, !noalias !88, !captures !11
  store i64 23, ptr %i.cv, align 8, !noalias !88
  %i.fk = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB1G_8TestTypeE00uEB1K_, ptr noundef nonnull %i.fj) #9, !noalias !89
  %i.fl = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fk) #9, !noalias !89 ; 3 uses
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %bb.be
    i32 1, label %bb.ak
    i32 11, label %bb.al
    i32 22, label %bb.am
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !88
  store ptr %i.bq, ptr %i.r, align 8, !noalias !88
  %.sroa.4171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !88
  store ptr %i.u, ptr %i.q, align 8, !noalias !88
  %.sroa.4183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !88
  br label %bb.ao

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !88
  store ptr %i.bq, ptr %i.t, align 8, !noalias !88
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !88
  store ptr %i.u, ptr %i.s, align 8, !noalias !88
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !88
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88
  store i32 %i.fl, ptr %i.e, align 4, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  store ptr %i.bq, ptr %i.d, align 8, !noalias !88
  %.sroa.4196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  store ptr %i.l, ptr %i.c, align 8, !noalias !88
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !88
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fm, align 8, !noalias !88
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !88
  store ptr %i.bq, ptr %i.g, align 8, !noalias !88
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88
  store ptr %i.l, ptr %i.f, align 8, !noalias !88
  %.sroa.4220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !88
  br label %bb.an

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !88
  store ptr %i.bq, ptr %i.k, align 8, !noalias !88
  %.sroa.4208.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !88
  store ptr %i.l, ptr %i.j, align 8, !noalias !88
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !88
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !88
  store ptr %i.bq, ptr %i.i, align 8, !noalias !88
  %.sroa.4204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !88
  store ptr %i.l, ptr %i.h, align 8, !noalias !88
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !88
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.27.6.i.i = phi i32 [ 13, %bb.aj ], [ 3, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !88
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !89
  br label %bb.ba

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.sroa.27.5.i.i = phi i32 [ 13, %bb.af ], [ 0, %bb.ah ], [ 12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !88
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao, %bb.x, %bb.v
  %.sroa.50.sroa.0.4.i.i = phi i32 [ %i.ed, %bb.v ], [ %.sroa.50.sroa.0.7.i.i, %bb.at ], [ %i.fd, %bb.ao ], [ undef, %bb.x ]
  %.sroa.27.4.i.i = phi i32 [ 13, %bb.v ], [ %.sroa.27.7.i.i, %bb.at ], [ %.sroa.27.5.i.i, %bb.ao ], [ 11, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !88
  br label %bb.au

.lr.ph.i.i.i.1:                                   ; preds = %bb.as, %.lr.ph.i.i.i
  %i.fn = add nuw nsw i64 %.sroa.0162.0245.i.i.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fe
  %i.fp = load i8, ptr %i.fo, align 1, !range !7, !alias.scope !87, !noalias !85, !noundef !5
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i.1
  %i.fr = trunc i64 %i.fe to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !88, !noundef !5
  %i.fx = or i8 %i.fw, %i.ft
  store i8 %i.fx, ptr %i.fv, align 1, !noalias !88
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = trunc i64 %.sroa.0162.0245.i.i.i to i8
  %i.fz = and i8 %i.fy, 6
  %i.ga = shl nuw nsw i8 1, %i.fz
  %i.gb = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !88, !noundef !5
  %i.ge = or i8 %i.gd, %i.ga
  store i8 %i.ge, ptr %i.gc, align 1, !noalias !88
  br label %.lr.ph.i.i.i.1

bb.at:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.50.sroa.0.7.i.i = phi i32 [ undef, %bb.ab ], [ %i.eo, %bb.ad ]
  %.sroa.27.7.i.i = phi i32 [ 7, %bb.ab ], [ 13, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !88
  br label %bb.ap

bb.au:                                            ; preds = %bb.ap, %bb.u, %bb.t, %bb.r
  %.sroa.50.sroa.0.3.i.i = phi i32 [ %i.dy, %bb.r ], [ %.sroa.50.sroa.0.4.i.i, %bb.ap ], [ undef, %bb.t ], [ undef, %bb.u ]
  %.sroa.27.3.i.i = phi i32 [ 13, %bb.r ], [ %.sroa.27.4.i.i, %bb.ap ], [ 6, %bb.t ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !88
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.q, %bb.p, %bb.n
  %.sroa.50.sroa.0.2.i.i = phi i32 [ %i.du, %bb.n ], [ %.sroa.50.sroa.0.3.i.i, %bb.au ], [ undef, %bb.p ], [ undef, %bb.q ]
  %.sroa.27.2.i.i = phi i32 [ 13, %bb.n ], [ %.sroa.27.3.i.i, %bb.au ], [ 10, %bb.p ], [ 10, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !88
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.m, %bb.k
  %.sroa.50.sroa.0.0.i.i = phi i32 [ %i.dp, %bb.k ], [ %.sroa.50.sroa.0.2.i.i, %bb.av ], [ undef, %bb.m ]
  %.sroa.27.0.i.i = phi i32 [ 13, %bb.k ], [ %.sroa.27.2.i.i, %bb.av ], [ 4, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !88
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !89
  br label %bb.ba

bb.ax:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
  %i.gf = add nuw nsw i64 %.sroa.8.0242.i.i.i, 1
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !88
  %i.gg = icmp eq i64 %.sroa.0.0.add.i.i.i, 1040
  br i1 %i.gg, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
end_hunk_5
begin_hunk_6_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB11_8TestTypeE0EB15_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !85
  br label %bb.bg

.thread.i.i:                                      ; preds = %bb.ay, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !85
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw, %bb.an, %bb.i
  %.sroa.50.sroa.0.8.ph.i.i = phi i32 [ %i.fl, %bb.an ], [ %i.dm, %bb.i ], [ %.sroa.50.sroa.0.0.i.i, %bb.aw ] ; 2 uses
  %.sroa.27.8.ph.i.i = phi i32 [ %.sroa.27.6.i.i, %bb.an ], [ %i.dl, %bb.i ], [ %.sroa.27.0.i.i, %bb.aw ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !85
  switch i32 %.sroa.27.8.ph.i.i, label %default.unreachable [
    i32 0, label %bb.bg
    i32 1, label %bb.bg
    i32 2, label %bb.bg
    i32 3, label %bb.bg
    i32 4, label %bb.bg
    i32 5, label %bb.bg
    i32 6, label %bb.bg
    i32 7, label %bb.bg
    i32 8, label %bb.bg
    i32 9, label %bb.bg
    i32 10, label %bb.bg
    i32 11, label %bb.bg
    i32 12, label %bb.bb
    i32 13, label %bb.bc
    i32 14, label %bb.bd
  ]

default.unreachable:                              ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br label %bb.bg

bb.be:                                            ; preds = %bb.ag
  %i.gj = load i64, ptr %i.m, align 8, !noalias !88, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !88
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB47_8TestTypeE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !85
  store i64 %i.gj, ptr %i.bp, align 8, !noalias !85
  %i.gk = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E4pushCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp) #9, !noalias !92 ; 2 uses
  %.not.i14.i.i = icmp eq i8 %i.gk, 2
  br i1 %.not.i14.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, label %bb.bf, !prof !14

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  store i8 %i.gk, ptr %i.b, align 1, !noalias !85
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 37, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #10, !noalias !92
  unreachable

bb.bg:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sroa.4.0.i.ph.i = phi i32 [ undef, %bb.ba ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bc ], [ undef, %bb.bb ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.ba ], [ undef, %bb.az ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.0.0.i.ph.i = phi i32 [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 14, %bb.bc ], [ 12, %bb.bb ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ %.sroa.27.8.ph.i.i, %bb.ba ], [ 13, %bb.az ], [ 15, %bb.bd ], [ %.sroa.27.8.ph.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store i32 %.sroa.0.0.i.ph.i, ptr %i.a, align 4, !noalias !93
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.i.ph.i, ptr %i.gl, align 4, !noalias !93
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #10, !noalias !81
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !83
  %exitcond.not.i = icmp eq i64 %i.cw, %i.by
  br i1 %exitcond.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB4_8TestTypeE0B8_.exit, label %bb.b

_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongNtB4_8TestTypeE0B8_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bv, ptr noundef nonnull align 8 dereferenceable(4104) %i.bw, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bv) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE0EB15_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [1088 x i8], align 8             ; 14 uses
  %i.bv = alloca [4104 x i8], align 8             ; 4 uses
  %i.bw = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bx = load ptr, ptr %0, align 8, !alias.scope !106, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noalias !108, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_RNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 1076
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !106, !nonnull !5, !align !6, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x ptr>, ptr %i.cc, align 8, !alias.scope !106
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %.lr.ph.i
  %.sroa.08.0103.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cw, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i ]
  %i.cw = add nuw i64 %.sroa.08.0103.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !108
  store ptr %i.bw, ptr %i.bz, align 8, !noalias !108
  store i64 0, ptr %i.bu, align 8, !noalias !108
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !108
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !108
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !108
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !108
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !108
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !108
  %i.cx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !107, !noalias !109, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 128
  br i1 %i.cy, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.bu, i64 1080, i1 false), !noalias !111
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !110
  %i.cz = load i8, ptr %i.cd, align 2, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = load i8, ptr %i.ce, align 1, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !113
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !113
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !113
  store ptr @22, ptr %i.bn, align 8, !noalias !113
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bo, ptr noundef nonnull @23, ptr noundef nonnull %i.bn) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !113
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i: ; preds = %bb.ax, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false), !noalias !113
  store ptr %i.bq, ptr %i.cg, align 8, !noalias !113
  store ptr %i.bq, ptr %i.cf, align 8, !noalias !113
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE00E0NCB3J_s_0E6createB4D_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bg) #9, !noalias !114
  %i.dd = load i32, ptr %i.bh, align 8, !range !8, !noalias !113, !noundef !5
  %i.de = trunc nuw i32 %i.dd to i1
  br i1 %i.de, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.df = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !114 ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 1024
  br i1 %i.dg, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %.add.i.i.i = add nuw nsw i64 %i.df, 16         ; 2 uses
  %i.dh = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.dh, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !114
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i: ; preds = %bb.g, %bb.ax
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.ax ], [ %.add.i.i.i, %bb.g ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.gf, %bb.ax ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !113
  store i64 %.sroa.8.0242.i.i.i, ptr %i.bm, align 8, !noalias !113
  %i.di = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !10, !noalias !113, !noundef !5
  %i.dm = load i32, ptr %i.ch, align 8, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !113
  br label %bb.ba

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.ch, align 8, !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !113
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.bi, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !113
  store ptr @1, ptr %i.bf, align 8, !noalias !113, !captures !11
  store i64 24, ptr %i.ci, align 8, !noalias !113
  %i.dn = load i64, ptr %i.cj, align 8, !alias.scope !112, !noalias !110, !noundef !5
  %i.do = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.bi, i64 noundef %i.dn) #9, !noalias !114
  %i.dp = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.do) #9, !noalias !114 ; 3 uses
  switch i32 %i.dp, label %bb.k [
    i32 0, label %bb.l
    i32 22, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !113
  store i32 %i.dp, ptr %i.bc, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !113
  store ptr %i.bq, ptr %i.bb, align 8, !noalias !113
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !113
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !113
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.dq, align 8, !noalias !113
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bb, ptr noundef nonnull @13, ptr noundef nonnull %i.ba) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !113
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !113
  store ptr @2, ptr %i.az, align 8, !noalias !113, !captures !11
  store i64 53, ptr %i.ck, align 8, !noalias !113
  %i.dr = load i8, ptr %i.cl, align 4, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.ds = xor i8 %i.dr, 1
  %not..i.i.i = zext nneg i8 %i.ds to i32
  %i.dt = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.bi, i32 noundef %not..i.i.i) #9, !noalias !114
  %i.du = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dt) #9, !noalias !114 ; 3 uses
  switch i32 %i.du, label %bb.n [
    i32 0, label %bb.o
    i32 38, label %bb.p
    i32 95, label %bb.q
  ]

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !113
  store ptr %i.bq, ptr %i.be, align 8, !noalias !113
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !113
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !113
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.be, ptr noundef nonnull @19, ptr noundef nonnull %i.bd) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !113
  br label %bb.aw

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !113
  store i32 %i.du, ptr %i.au, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !113
  store ptr %i.bq, ptr %i.at, align 8, !noalias !113
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !113
  store ptr %i.az, ptr %i.as, align 8, !noalias !113
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.dv, align 8, !noalias !113
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.at, ptr noundef nonnull @13, ptr noundef nonnull %i.as) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !113
  br label %bb.av

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !113
  store ptr @3, ptr %i.ar, align 8, !noalias !113, !captures !11
  store i64 30, ptr %i.cm, align 8, !noalias !113
  %i.dw = load i32, ptr %i.cn, align 8, !range !12, !alias.scope !112, !noalias !110, !noundef !5
  %i.dx = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.bi, i32 noundef %i.dw) #9, !noalias !114
  %i.dy = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dx) #9, !noalias !114 ; 3 uses
  switch i32 %i.dy, label %bb.r [
    i32 0, label %bb.s
    i32 38, label %bb.t
    i32 95, label %bb.u
  ]

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !113
  store ptr %i.bq, ptr %i.ay, align 8, !noalias !113
  %.sroa.470.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !113
  store ptr %i.az, ptr %i.ax, align 8, !noalias !113
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.474.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ay, ptr noundef nonnull @18, ptr noundef nonnull %i.ax) #9, !noalias !114
end_hunk_6
begin_hunk_7_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE0EB15_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !113
  store ptr %i.ar, ptr %i.an, align 8, !noalias !113
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !113
  br label %bb.au

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !113
  store i32 %i.ed, ptr %i.af, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !113
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !113
  %.sroa.4121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !113
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !113
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ee, align 8, !noalias !113
  %.sroa.4137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !113
  br label %bb.ap

bb.w:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !112, !noalias !110, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !113
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !113
  %.sroa.4125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !113
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !113
  %.sroa.4129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !113
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %i.cq, align 8, !alias.scope !112, !noalias !110, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !113
  store ptr @5, ptr %i.ac, align 8, !noalias !113, !captures !11
  store i64 36, ptr %i.cr, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !113
  %i.ei = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #9, !noalias !114 ; 2 uses
  store i64 %i.ei, ptr %i.ab, align 8, !noalias !113
  %i.ej = icmp ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !113
  %i.ek = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !114 ; 3 uses
  %i.el = call i64 @llvm.umin.i64(i64 %i.ek, i64 1024) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z
  %xtraiter = and i64 %i.el, 1
  %i.em = icmp eq i64 %i.ek, 1
  br i1 %i.em, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.el, 2046
  br label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.en = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.eh) #9, !noalias !114
  %i.eo = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.en) #9, !noalias !114 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !113
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !113
  %.sroa.4141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !113
  store ptr %i.ac, ptr %i.z, align 8, !noalias !113
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.eq, align 8, !noalias !113
  %.sroa.4149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !113
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !113
  br label %bb.z

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !113
  store i32 %i.eo, ptr %i.y, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !113
  store ptr %i.bq, ptr %i.x, align 8, !noalias !113
  %.sroa.4153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !113
  store ptr %i.ac, ptr %i.w, align 8, !noalias !113
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.er, align 8, !noalias !113
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !113
  br label %bb.at

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0162.0245.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fn, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i64 %i.el to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ae, label %._crit_edge.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ev = trunc i64 %.sroa.0162.0245.i.i.i.epil.init to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = shl nuw i8 1, %i.ew
  %i.ey = lshr i64 %.sroa.0162.0245.i.i.i.epil.init, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !113, !noundef !5
  %i.fb = or i8 %i.fa, %i.ex
  store i8 %i.fb, ptr %i.ez, align 1, !noalias !113
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i.epil.preheader, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !113
  store ptr @7, ptr %i.u, align 8, !noalias !113, !captures !11
  store i64 37, ptr %i.ct, align 8, !noalias !113
  %i.fc = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #9, !noalias !114
  %i.fd = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fc) #9, !noalias !114 ; 3 uses
  switch i32 %i.fd, label %bb.af [
    i32 0, label %bb.ag
    i32 12, label %bb.ah
    i32 22, label %bb.ai
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.i.i.preheader.new
  %.sroa.0162.0245.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %bb.ar ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.ar ]
  %i.fe = or disjoint i64 %.sroa.0162.0245.i.i.i, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0162.0245.i.i.i
  %i.fg = load i8, ptr %i.ff, align 2, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.as, label %.lr.ph.i.i.i.1

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !113
  store i32 %i.fd, ptr %i.p, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !113
  store ptr %i.bq, ptr %i.o, align 8, !noalias !113
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !113
  store ptr %i.u, ptr %i.n, align 8, !noalias !113
  %.sroa.4187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.fi, align 8, !noalias !113
  %.sroa.4191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !113
  br label %bb.ao

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !113
  %i.fj = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 56) #9, !noalias !114 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !115
  store ptr %i.cb, ptr %i.fj, align 8, !noalias !114
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !114
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> %1, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !114
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !113
  store i64 0, ptr %i.m, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !113
  store ptr @8, ptr %i.l, align 8, !noalias !113, !captures !11
  store i64 23, ptr %i.cv, align 8, !noalias !113
  %i.fk = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE00uEB1K_, ptr noundef nonnull %i.fj) #9, !noalias !114
  %i.fl = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fk) #9, !noalias !114 ; 3 uses
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %bb.be
    i32 1, label %bb.ak
    i32 11, label %bb.al
    i32 22, label %bb.am
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !113
  store ptr %i.bq, ptr %i.r, align 8, !noalias !113
  %.sroa.4171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !113
  store ptr %i.u, ptr %i.q, align 8, !noalias !113
  %.sroa.4183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !113
  br label %bb.ao

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !113
  store ptr %i.bq, ptr %i.t, align 8, !noalias !113
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !113
  store ptr %i.u, ptr %i.s, align 8, !noalias !113
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !113
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  store i32 %i.fl, ptr %i.e, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  store ptr %i.bq, ptr %i.d, align 8, !noalias !113
  %.sroa.4196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  store ptr %i.l, ptr %i.c, align 8, !noalias !113
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !113
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fm, align 8, !noalias !113
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !113
  store ptr %i.bq, ptr %i.g, align 8, !noalias !113
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !113
  store ptr %i.l, ptr %i.f, align 8, !noalias !113
  %.sroa.4220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !113
  br label %bb.an

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !113
  store ptr %i.bq, ptr %i.k, align 8, !noalias !113
  %.sroa.4208.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !113
  store ptr %i.l, ptr %i.j, align 8, !noalias !113
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !113
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !113
  store ptr %i.bq, ptr %i.i, align 8, !noalias !113
  %.sroa.4204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !113
  store ptr %i.l, ptr %i.h, align 8, !noalias !113
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !113
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #9, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !113
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.27.6.i.i = phi i32 [ 13, %bb.aj ], [ 3, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !113
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !114
  br label %bb.ba

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.sroa.27.5.i.i = phi i32 [ 13, %bb.af ], [ 0, %bb.ah ], [ 12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !113
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao, %bb.x, %bb.v
  %.sroa.50.sroa.0.4.i.i = phi i32 [ %i.ed, %bb.v ], [ %.sroa.50.sroa.0.7.i.i, %bb.at ], [ %i.fd, %bb.ao ], [ undef, %bb.x ]
  %.sroa.27.4.i.i = phi i32 [ 13, %bb.v ], [ %.sroa.27.7.i.i, %bb.at ], [ %.sroa.27.5.i.i, %bb.ao ], [ 11, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !113
  br label %bb.au

.lr.ph.i.i.i.1:                                   ; preds = %bb.as, %.lr.ph.i.i.i
  %i.fn = add nuw nsw i64 %.sroa.0162.0245.i.i.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fe
  %i.fp = load i8, ptr %i.fo, align 1, !range !7, !alias.scope !112, !noalias !110, !noundef !5
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i.1
  %i.fr = trunc i64 %i.fe to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !113, !noundef !5
  %i.fx = or i8 %i.fw, %i.ft
  store i8 %i.fx, ptr %i.fv, align 1, !noalias !113
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = trunc i64 %.sroa.0162.0245.i.i.i to i8
  %i.fz = and i8 %i.fy, 6
  %i.ga = shl nuw nsw i8 1, %i.fz
  %i.gb = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !113, !noundef !5
  %i.ge = or i8 %i.gd, %i.ga
  store i8 %i.ge, ptr %i.gc, align 1, !noalias !113
  br label %.lr.ph.i.i.i.1

bb.at:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.50.sroa.0.7.i.i = phi i32 [ undef, %bb.ab ], [ %i.eo, %bb.ad ]
  %.sroa.27.7.i.i = phi i32 [ 7, %bb.ab ], [ 13, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !113
  br label %bb.ap

bb.au:                                            ; preds = %bb.ap, %bb.u, %bb.t, %bb.r
  %.sroa.50.sroa.0.3.i.i = phi i32 [ %i.dy, %bb.r ], [ %.sroa.50.sroa.0.4.i.i, %bb.ap ], [ undef, %bb.t ], [ undef, %bb.u ]
  %.sroa.27.3.i.i = phi i32 [ 13, %bb.r ], [ %.sroa.27.4.i.i, %bb.ap ], [ 6, %bb.t ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !113
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.q, %bb.p, %bb.n
  %.sroa.50.sroa.0.2.i.i = phi i32 [ %i.du, %bb.n ], [ %.sroa.50.sroa.0.3.i.i, %bb.au ], [ undef, %bb.p ], [ undef, %bb.q ]
  %.sroa.27.2.i.i = phi i32 [ 13, %bb.n ], [ %.sroa.27.3.i.i, %bb.au ], [ 10, %bb.p ], [ 10, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !113
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.m, %bb.k
  %.sroa.50.sroa.0.0.i.i = phi i32 [ %i.dp, %bb.k ], [ %.sroa.50.sroa.0.2.i.i, %bb.av ], [ undef, %bb.m ]
  %.sroa.27.0.i.i = phi i32 [ 13, %bb.k ], [ %.sroa.27.2.i.i, %bb.av ], [ 4, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !113
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCINvNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic28concurrent_recover_ping_pongjE00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !114
  br label %bb.ba

bb.ax:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
  %i.gf = add nuw nsw i64 %.sroa.8.0242.i.i.i, 1
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !113
  %i.gg = icmp eq i64 %.sroa.0.0.add.i.i.i, 1040
  br i1 %i.gg, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i
end_hunk_7
