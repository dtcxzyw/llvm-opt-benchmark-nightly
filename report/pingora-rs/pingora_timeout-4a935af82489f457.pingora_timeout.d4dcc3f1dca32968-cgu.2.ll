Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_timeout-4a935af82489f457.pingora_timeout.d4dcc3f1dca32968-cgu.2?download=true
inline.NumInlined: 155
inline.NumDeleted: 102
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECsih3NV0yzdTo_15pingora_timeout:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6WaiterECsih3NV0yzdTo_15pingora_timeout.exit4: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6WaiterECsih3NV0yzdTo_15pingora_timeout.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4time5sleep5SleepECsih3NV0yzdTo_15pingora_timeout(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.a = load i64, ptr %0, align 8, !range !14, !alias.scope !136, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !145, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !145
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !152, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !152
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2awuzAz5vY4_5tokio7runtime5TimerEECsih3NV0yzdTo_15pingora_timeout(ptr noundef nonnull align 8 %i.k) #20
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2awuzAz5vY4_5tokio7runtime5TimerEECsih3NV0yzdTo_15pingora_timeout(ptr noundef nonnull align 8 %i.l)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !159, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !159
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECsih3NV0yzdTo_15pingora_timeout.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECsih3NV0yzdTo_15pingora_timeout.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !166, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !166
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECsih3NV0yzdTo_15pingora_timeout.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECsih3NV0yzdTo_15pingora_timeout.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECsih3NV0yzdTo_15pingora_timeout.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtBE_5TimerEEBG_(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !176, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !176
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !183, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !184
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !191, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !192
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvNtCsih3NV0yzdTo_15pingora_timeout12fast_timeout18check_clock_thread0uEs_000uEB20_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsG258MDvU3F_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !196
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsih3NV0yzdTo_15pingora_timeout12fast_timeout18check_clock_thread0uEB1c_() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_B6_INtB6_4LazyBQ_E5force0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB1s_(ptr noundef nonnull align 8 @_RNvNtCsih3NV0yzdTo_15pingora_timeout12fast_timeout13TIMER_MANAGER, ptr noundef nonnull align 8 @_RNvNtCsih3NV0yzdTo_15pingora_timeout12fast_timeout13TIMER_MANAGER)
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMs4_NtCsih3NV0yzdTo_15pingora_timeout5timerNtB5_12TimerManager12clock_thread(ptr noundef nonnull align 8 %i.c)
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !196
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBa_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3I_5TimerEEEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB4N_8adapters3map3MapINtNtNtB4P_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EEB3K_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !197
  %spec.select.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0) ; 4 uses
  %i.d = mul i64 %spec.select.i.i.i.i.i.i, 40     ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i, 230584300921369395
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  %2 = icmp eq i64 %i.d, 0
  br i1 %2, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3y_5TimerEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB4V_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EEB3A_.exit.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !207
  %i.e = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 17) 8) #23, !noalias !207 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %i.g = ptrtoint ptr %i.e to i64
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3y_5TimerEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB4V_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EEB3A_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.d) #24, !noalias !197
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3y_5TimerEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB4V_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EEB3A_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr ; 2 uses
  %3 = icmp samesign ule i64 %spec.select.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.b, align 8, !noalias !197
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !210
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.k, align 8, !noalias !210
  store ptr %i.j, ptr %i.a, align 8, !noalias !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.l, align 8, !noalias !210
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB4L_5TimerEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5K_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_NtB3T_3vecINtB7e_3VecB6N_E14extend_trustedBN_E0E0EB4N_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB4F_5TimerEEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3N_3vec3VecINtB1o_5EntryB27_EEEB4H_.exit unwind label %bb.e, !noalias !197

bb.e:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3y_5TimerEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB4V_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EEB3A_.exit.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB40_5TimerEEEEEB42_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.f, !noalias !197

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !197
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB4F_5TimerEEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3N_3vec3VecINtB1o_5EntryB27_EEEB4H_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3y_5TimerEEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB4V_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EEB3A_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !197
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.o = load i64, ptr %i.c, align 8, !range !32, !alias.scope !215, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !215, !noundef !4 ; 5 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB4F_5TimerEEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3N_3vec3VecINtB1o_5EntryB27_EEEB4H_.exit
  %.sroa.410.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0.copyload.pre.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !215
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3w_5TimerEEEE16into_boxed_sliceB3y_.exit

bb.g:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB4F_5TimerEEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3N_3vec3VecINtB1o_5EntryB27_EEEB4H_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val10.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !224, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = mul nuw i64 %i.o, 40                     ; 2 uses
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !224
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3w_5TimerEEEE16into_boxed_sliceB3y_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = mul nuw i64 %i.q, 40                     ; 2 uses
  %i.w = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 40, 0) %i.v) #23, !noalias !224 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3w_5TimerEEEE16into_boxed_sliceB3y_.exit

bb.i:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB40_5TimerEEEEEB42_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c) #20
          to label %common.resume unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.v) #24
          to label %bb.k unwind label %bb.i, !noalias !215

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !215
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB3w_5TimerEEEE16into_boxed_sliceB3y_.exit: ; preds = %._crit_edge.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.w, %bb.h ]
  %i.aa = icmp ult i64 %i.q, 230584300921369396
  call void @llvm.assume(i1 %i.aa)
  %i.ab = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload.i, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMs1_NtCsih3NV0yzdTo_15pingora_timeout5timerNtB7_9TimerStub4poll0B9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !34, !noundef !4
  switch i8 %i.c, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.h = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.h, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load atomic i8, ptr %i.i seq_cst, align 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !234, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !234
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.o = load ptr, ptr %i.f, align 8, !alias.scope !241, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !242
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %.body unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !249, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !250
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %.invoke, label %common.ret

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  invoke void @_RNvMs5_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.v)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body14

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

.body14:                                          ; preds = %bb.w, %bb.s, %bb.r, %bb.o, %bb.i
  %.pn7 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.ac, %bb.o ], [ %i.ap, %bb.w ], [ %i.ad, %bb.s ], [ %i.ad, %bb.r ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer9TimerStubEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.y) #20
          to label %.body unwind label %bb.ab

.body:                                            ; preds = %bb.y, %bb.z, %bb.f, %bb.e, %bb.k, %.body14
  %.pn10 = phi { ptr, i32 } [ %.pn7, %.body14 ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.z, %bb.k ], [ %i.au, %bb.z ], [ %i.au, %bb.y ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %.invoke
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.p, %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i
end_hunk_0
