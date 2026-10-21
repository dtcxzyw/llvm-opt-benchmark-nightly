Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.0?download=true
inline.NumInlined: 214
inline.NumDeleted: 124
begin_hunk_0_@_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyINtNtB7_6notify10AdditionalNtB1o_6NotifyEE0ECsbDLrNlwBX3H_4smol:bb.a
  %i.f = load i8, ptr %i.e, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.f, ptr %i.h, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef i64 @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify10AdditionalNtB14_6NotifyEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %1)
          to label %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyINtNtB9_6notify10AdditionalNtB15_6NotifyEE0CsbDLrNlwBX3H_4smol.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.j

_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyINtNtB9_6notify10AdditionalNtB15_6NotifyEE0CsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyINtNtB9_6notify10AdditionalNtB15_6NotifyEE0CsbDLrNlwBX3H_4smol.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !19, !nonnull !4, !align !5, !noundef !4
  %.val3.i = load i8, ptr %i.h, align 8, !range !6, !alias.scope !19, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i, i8 %.val3.i) #25
          to label %common.resume unwind label %bb.i

bb.d:                                             ; preds = %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyINtNtB9_6notify10AdditionalNtB15_6NotifyEE0CsbDLrNlwBX3H_4smol.exit
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !19, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i = load i8, ptr %i.h, align 8, !range !6, !alias.scope !19, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.n = trunc nuw i8 %.val1.i to i1
  br i1 %i.n, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !19
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.r, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = atomicrmw xchg ptr %.val.i, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit, !prof !8

bb.h:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.j

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.f, ptr %i.h, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef i64 @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %1)
          to label %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsbDLrNlwBX3H_4smol.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.j

_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsbDLrNlwBX3H_4smol.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !22, !nonnull !4, !align !5, !noundef !4
  %.val3.i = load i8, ptr %i.h, align 8, !range !6, !alias.scope !22, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i, i8 %.val3.i) #25
          to label %common.resume unwind label %bb.i

bb.d:                                             ; preds = %_RNCINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsbDLrNlwBX3H_4smol.exit
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !22, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i = load i8, ptr %i.h, align 8, !range !6, !alias.scope !22, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.n = trunc nuw i8 %.val1.i to i1
  br i1 %i.n, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !22
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.r, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = atomicrmw xchg ptr %.val.i, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit, !prof !8

bb.h:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.j

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE6notifyINtNtB7_6notify10AdditionalNtB13_6NotifyEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyINtNtB7_6notify10AdditionalNtB1o_6NotifyEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBE_5InneruEEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtB7_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !54
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !57, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !57
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) #25
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3: ; preds = %bb.d, %bb.e
  %i.i = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.l = load i8, ptr %i.k, align 8, !range !10, !alias.scope !64, !noundef !4
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !66, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !66, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !66, !nonnull !4, !noundef !4
  tail call void %i.r(ptr noundef %.val1.i.i.i.i.i.i.i.i.i), !noalias !66, !inline_history !45
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.s = load ptr, ptr %i.p, align 8, !alias.scope !70, !nonnull !4, !noundef !4
  %3 = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !70
  %i.t = icmp eq i64 %3, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3, %bb.g, %bb.i, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBW_4sync3ArcINtB1t_5InneruEEEEEECsbDLrNlwBX3H_4smol(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBE_5InneruEEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBG_4sync3ArcINtB1d_5InneruEEEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #28
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBG_4sync3ArcINtB1d_5InneruEEEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #28
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.d = load i8, ptr %i.c, align 8, !range !10, !alias.scope !98, !noundef !4
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !100, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !100, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !100, !nonnull !4, !noundef !4
  tail call void %i.j(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !100, !inline_history !85
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !104, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !104
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !107
  store i8 3, ptr %i.a, align 8, !alias.scope !107
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !110 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !110, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !4, !noalias !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !110

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !4, !noalias !110 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !4, !noalias !110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #28, !noalias !110
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4, !noalias !110 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4, !noalias !110
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #28, !noalias !110
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  %i.s = icmp eq i64 %i.e, %.val1
  br i1 %i.s, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1
  br i1 %i.u, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.t, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !110
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7.i.i = load ptr, ptr %i.x, align 8, !alias.scope !110, !nonnull !4, !align !5, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol(ptr %.val.i.i, ptr nonnull %.val7.i.i) #25
          to label %bb.e unwind label %bb.f, !noalias !110

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !110
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %.val4, 0
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.aa = shl nuw i64 %.val4, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit
  %i.ac = shl nuw i64 %.val2, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, %bb.h
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !127, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !128
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !130, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !131
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %.val3.i = load ptr, ptr %i.a, align 8, !alias.scope !125, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load ptr, ptr %i.k, align 8, !alias.scope !125
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbDLrNlwBX3H_4smol(ptr %.val3.i, ptr %.val4.i) #25
          to label %common.resume.i unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i: ; preds = %bb.g, %bb.f, %bb.e
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !125, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.m, align 8, !alias.scope !125 ; 6 uses
  %i.n = icmp eq ptr %.val.i, null
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.o = load ptr, ptr %.val2.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.o(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #28
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.u, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !12, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr %.0.val, i8 %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, !prof !8

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit

_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i8, ptr %i.c, align 8, !range !6, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2, i8 %.val3) #25
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.e, align 8, !range !6, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.g = trunc nuw i8 %.val1 to i1
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.k, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i8 1, ptr %i.f monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.l = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol.exit, !prof !8

bb.g:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !142, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !142
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !145, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !145
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %i.b, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void %i.d(ptr noundef %.val1), !inline_history !146
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !156, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !156
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit
    i64 1, label %bb.c
  ], !prof !13

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !159
  store i8 3, ptr %i.a, align 8, !alias.scope !159
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !172, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !172
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol(ptr %.val2, ptr nonnull %.val3) #25
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.n, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !188, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !189
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !191, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !192
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #25
          to label %bb.k unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.g
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret void

bb.j:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.j, align 8
  %i.k = trunc nuw i64 %2 to i1
  br i1 %i.k, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %.split.thread

.noexc:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !range !239, !noundef !4 ; 5 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.l, -1
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

bb.e:                                             ; preds = %.noexc
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.55.0.copyload.i)
          to label %bb.h unwind label %bb.f, !noalias !240

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.body32.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !241
  br label %.body32.thread

bb.h:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !range !9, !noalias !240, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !240, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !240, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  switch i64 %i.w, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %i.u, align 1, !alias.scope !242, !noalias !240, !noundef !4 ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.j
  %.pr.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !242, !noalias !240
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i.i.i, %bb.k
  %i.y = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.x, %bb.k ]
  %cond.i.i.i = icmp eq i8 %i.y, 43               ; 2 uses
  %i.z = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.w, %i.z      ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.aa, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.l
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i91, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i.i.i90, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.l, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i91 = phi ptr [ %i.ab, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i.i.i90 = phi i64 [ %i.ac, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.l ]
  %.sroa.042.0.i.i.i89 = phi i64 [ %i.al, %.preheader56.i.i.i ], [ 0, %bb.l ]
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i89, i64 10) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = load i8, ptr %.sroa.0.1.i.i.i91, align 1, !alias.scope !242, !noalias !240, !noundef !4
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 9
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = add i64 %i.af, %i.ak                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.af
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %i.am, !prof !14
  br i1 %or.cond.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !14

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.sroa.0.269.i.i.i = phi ptr [ %i.at, %bb.n ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.as, %bb.n ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.av, %bb.n ], [ 0, %.preheader.i.i.i ]
  %i.an = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !242, !noalias !240, !noundef !4
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 9
  br i1 %i.aq, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = mul i64 %.sroa.042.267.i.i.i, 10
  %i.as = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = add i64 %i.ar, %i.au                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.m, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.n, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.k, %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.i ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.k ], [ 2097152, %bb.j ], [ 2097152, %bb.k ], [ %i.av, %bb.n ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.m ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.al, %.preheader56.i.i.i ] ; 2 uses
  %i.aw = icmp eq i64 %i.n, 0
  br i1 %i.aw, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.o

bb.o:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !243
  br label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i

_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i: ; preds = %bb.o, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.o ], [ %.sroa.0.1.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.ax, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

.split.thread:                                    ; preds = %bb.p, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, %bb.c
  %.sroa.015.0.ph = phi i1 [ true, %bb.c ], [ true, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit ], [ false, %bb.p ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body32.thread

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit: ; preds = %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i ], [ %i.o, %bb.d ]
  %i.ay = invoke noundef i64 @_RNvMNtNtCsG258MDvU3F_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.p unwind label %.split.thread

bb.p:                                             ; preds = %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.az = invoke noundef nonnull ptr @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.q unwind label %.split.thread

bb.q:                                             ; preds = %bb.p
  store ptr %i.az, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ba, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.v

.thread:                                          ; preds = %bb.au, %.body26.thread, %bb.z, %bb.ax, %bb.u
  %.sroa.014.1 = phi i1 [ false, %bb.ax ], [ false, %bb.z ], [ true, %bb.u ], [ false, %.body26.thread ], [ false, %bb.au ]
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.ax ], [ %i.bk, %bb.z ], [ %i.bd, %bb.u ], [ %eh.lpad-body2754, %.body26.thread ], [ %eh.lpad-body2754, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.bb = load ptr, ptr %i.i, align 8, !alias.scope !248, !nonnull !4, !noundef !4
  %6 = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !248
  %i.bc = icmp eq i64 %6, 1
  br i1 %i.bc, label %bb.t, label %.body32

bb.t:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %.body32 unwind label %bb.aw

bb.u:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.v:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.bf, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !249
  %i.bg = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !249 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.w, label %bb.aa, !prof !8

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc35 unwind label %bb.x

.noexc35:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #25
          to label %bb.ax unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.z:                                             ; preds = %bb.ar
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.bg, ptr %i.g, align 8
  %i.bl = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bg, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.bq)
          to label %bb.ae unwind label %bb.av

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !250
  %i.br = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !250 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.af, label %bb.ai, !prof !8

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc36 unwind label %bb.ag

.noexc36:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #25
          to label %.body26.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body26:                                          ; preds = %bb.ao
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body26.thread

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bw = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  store ptr %i.bz, ptr %i.d, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.br, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @0, ptr %i.cb, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !251
  %i.cc = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #28, !noalias !251 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ak, label %bb.ao, !prof !8

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc38 unwind label %bb.al

.noexc38:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %.body26.thread unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cg = invoke { i64, ptr } @_RNvMs0_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cc)
          to label %bb.ap unwind label %.body26   ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ch = extractvalue { i64, ptr } %i.cg, 0
  %i.ci = extractvalue { i64, ptr } %i.cg, 1      ; 2 uses
  %i.cj = trunc nuw i64 %i.ch to i1
  br i1 %i.cj, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.ck, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.cl = load ptr, ptr %i.g, align 8, !alias.scope !254, !nonnull !4, !noundef !4
  %7 = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !254
  %i.cm = icmp eq i64 %7, 1
  br i1 %i.cm, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.z

bb.as:                                            ; preds = %bb.ap
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  store ptr %i.co, ptr %0, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.cq = load ptr, ptr %i.i, align 8, !alias.scope !259, !nonnull !4, !noundef !4
  %8 = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !259
  %i.cr = icmp eq i64 %8, 1
  br i1 %i.cr, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

.body26.thread:                                   ; preds = %bb.al, %bb.ag, %.body26, %bb.av
  %eh.lpad-body2754 = phi { ptr, i32 } [ %i.bv, %.body26 ], [ %i.cu, %bb.av ], [ %i.bt, %bb.ag ], [ %i.ce, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.cs = load ptr, ptr %i.g, align 8, !alias.scope !262, !nonnull !4, !noundef !4
  %9 = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !262
  %i.ct = icmp eq i64 %9, 1
  br i1 %i.ct, label %bb.au, label %.thread

bb.au:                                            ; preds = %.body26.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %.thread unwind label %bb.aw

bb.av:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #25
          to label %.body26.thread unwind label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.au, %bb.t, %bb.ax, %bb.av
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ax:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #25
          to label %.thread unwind label %bb.aw

.body32:                                          ; preds = %.thread, %bb.t
  br i1 %.sroa.014.1, label %.body32..body32.thread_crit_edge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

.body32..body32.thread_crit_edge:                 ; preds = %.body32
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !263
  br label %.body32.thread

.body32.thread:                                   ; preds = %.body32..body32.thread_crit_edge, %bb.g, %bb.f, %.split.thread
  %i.cw = phi ptr [ %5, %.split.thread ], [ %.pre, %.body32..body32.thread_crit_edge ], [ %5, %bb.f ], [ %5, %bb.g ] ; 2 uses
  %.pn2463 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn.pn, %.body32..body32.thread_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %.sroa.015.161 = phi i1 [ %.sroa.015.0.ph, %.split.thread ], [ false, %.body32..body32.thread_crit_edge ], [ true, %bb.f ], [ true, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit, label %bb.ay

bb.ay:                                            ; preds = %.body32.thread
  %10 = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !264
  %i.cy = icmp eq i64 %10, 1
  br i1 %i.cy, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.aw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.az, %.body32.thread, %bb.ay
  br i1 %.sroa.015.161, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit: ; preds = %.body32, %bb.bb, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit
  %.pn246267 = phi { ptr, i32 } [ %.pn2463, %bb.bb ], [ %.pn2463, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit ], [ %.pn.pn, %.body32 ], [ %.pn2463, %bb.ba ]
  resume { ptr, i32 } %.pn246267

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit
  %.val = load i64, ptr %1, align 8, !range !239, !noundef !4 ; 2 uses
  %i.cz = icmp sgt i64 %.val, 0
  br i1 %i.cz, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

bb.bb:                                            ; preds = %bb.ba
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !265
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !268, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !268
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 4, i64 noundef 28), !noalias !268
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noalias !268, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !15, !noalias !268, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !268, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !268
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !268
  ret void
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00B19_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_000uEB24_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1g_() #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1c_(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, i64 16, i1 false)
  %i.c = load <2 x ptr>, ptr %0, align 8, !alias.scope !279
  store <2 x ptr> %i.c, ptr %i.a, align 16, !noalias !279
  invoke fastcc void @_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a) #31
          to label %.noexc8.i unwind label %bb.b, !noalias !279

.noexc8.i:                                        ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.d unwind label %bb.c, !noalias !279 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27, !noalias !279
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !279, !nonnull !4, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !279, !noundef !4 ; 4 uses
  %i.m = getelementptr i8, ptr %i.k, i64 24       ; 3 uses
  %.val5.i = load ptr, ptr %i.m, align 8, !noalias !279 ; 6 uses
  %i.n = icmp eq ptr %.val.i, null
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.o = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !279 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.o(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h, !noalias !279

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !4, !noalias !279 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !12, !invariant.load !4, !noalias !279
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #28, !noalias !279
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !11, !invariant.load !4, !noalias !279 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !12, !invariant.load !4, !noalias !279
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #28, !noalias !279
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.g, %bb.d
  store ptr %i.h, ptr %i.l, align 8, !noalias !279
  store ptr %i.i, ptr %i.m, align 8, !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  store ptr %i.k, ptr %i.b, align 8, !noalias !279
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !280
  %i.aa = icmp eq i64 %1, 1
  br i1 %i.aa, label %bb.i, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26, !noalias !279
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.h
  store ptr %i.h, ptr %i.l, align 8, !noalias !279
  store ptr %i.i, ptr %i.m, align 8, !noalias !279
  %2 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !281
  %i.ab = icmp eq i64 %2, 1
  br i1 %i.ab, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_detachedCsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.b = cmpxchg weak ptr %i.a, i64 273, i64 257 acq_rel acquire, align 8 ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = extractvalue { i64, i1 } %i.b, 0
  br label %.preheader.outer

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.i
  %.sroa.8.0 = phi ptr [ %i.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.q, %bb.i ], [ %.sroa.8.2.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.o, %bb.i ], [ %.sroa.0.2.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.y, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.y, %bb.i ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol(ptr %.sroa.0.0, ptr %.sroa.8.0) #25
          to label %bb.p unwind label %bb.o

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.d, %bb.n, %bb.m
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.k, %bb.m, %bb.n, %bb.a
  %.sroa.8.1 = phi ptr [ %.sroa.8.2.ph, %bb.m ], [ %.sroa.8.2.ph, %bb.n ], [ %.sroa.8.2.ph, %bb.k ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.2.ph, %bb.m ], [ %.sroa.0.2.ph, %bb.n ], [ %.sroa.0.2.ph, %bb.k ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.8.1, 1
  ret { ptr, ptr } %i.f

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.sroa.08.0 = phi i64 [ %.sroa.08.0.ph, %.preheader.outer ], [ %.sroa.08.0.be, %.preheader.backedge ] ; 8 uses
  %i.g = and i64 %.sroa.08.0, 12
  %or.cond = icmp eq i64 %i.g, 4
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.preheader
  %i.h = or disjoint i64 %.sroa.08.0, 8           ; 2 uses
  %i.i = cmpxchg weak ptr %i.a, i64 %.sroa.08.0, i64 %i.h acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !5, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull %.0.val)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.r = icmp eq ptr %.sroa.0.2.ph, null
  br i1 %i.r, label %.preheader.outer.backedge, label %bb.f

.preheader.outer.backedge:                        ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.h
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %.preheader.outer.backedge, %.preheader.preheader
  %.sroa.8.2.ph = phi ptr [ undef, %.preheader.preheader ], [ %i.q, %.preheader.outer.backedge ] ; 10 uses
  %.sroa.0.2.ph = phi ptr [ null, %.preheader.preheader ], [ %i.o, %.preheader.outer.backedge ] ; 8 uses
  %.sroa.08.0.ph = phi i64 [ %i.d, %.preheader.preheader ], [ %i.h, %.preheader.outer.backedge ]
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.2.ph) ]
  %i.s = load ptr, ptr %.sroa.8.2.ph, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.s(ptr noundef nonnull %.sroa.0.2.ph)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.preheader.outer.backedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.ph, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #28
  br label %.preheader.outer.backedge

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.ph, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #28
  br label %.body

bb.j:                                             ; preds = %.preheader
  %i.ae = and i64 %.sroa.08.0, -248
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %.sroa.08.0, -17
  %.sroa.05.0 = select i1 %i.af, i64 265, i64 %i.ag
  %i.ah = cmpxchg weak ptr %i.a, i64 %.sroa.08.0, i64 %.sroa.05.0 acq_rel acquire, align 8 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.k, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.j, %bb.c
  %.pn48 = phi { i64, i1 } [ %i.i, %bb.c ], [ %i.ah, %bb.j ]
  %.sroa.08.0.be = extractvalue { i64, i1 } %.pn48, 0
  br label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp ult i64 %.sroa.08.0, 256
  br i1 %i.aj, label %bb.l, label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.ak = and i64 %.sroa.08.0, 8
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  invoke void %i.an(ptr noundef nonnull %.0.val, i1 noundef zeroext false)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  invoke void %i.ap(ptr noundef nonnull %.0.val)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE6detachCsbDLrNlwBX3H_4smol(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke fastcc { ptr, ptr } @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_detachedCsbDLrNlwBX3H_4smol(ptr nonnull %0)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 4 uses
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 6 uses
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = load ptr, ptr %i.d, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #28
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.body:                                            ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.l, %bb.f ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body6

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8grow_oneCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !284
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !284
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !284, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !284, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !284, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !284
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !284
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !291
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 72, i64 noundef 8) #28, !noalias !291 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !noalias !291
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %i.f = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { ptr, i1 } %i.f, 0
  %i.h = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit, %bb.a
  %.sroa.026.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit ], [ %.sroa.5.0..sroa_idx, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ]
  ret ptr %.sroa.026.0

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef nonnull %.sroa.5.0..sroa_idx)
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx, i64 %i.j ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !292
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !327
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 72, i64 noundef 8) #28, !noalias !327 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !noalias !327
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.i = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx.i acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 0
  %i.k = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.k, label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit, label %bb.d

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef nonnull %.sroa.5.0..sroa_idx.i)
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx.i, i64 %i.m ; 2 uses
  store ptr %i.n, ptr %i.c, align 8
  %1 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !328
  %i.o = icmp eq i64 %1, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit

_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i
  %.sroa.026.0.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i ] ; 3 uses
  %i.p = call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef %.sroa.026.0.i)
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %.sroa.026.0.i, i64 %i.q ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.r, ptr %i.u, align 8
  store i64 0, ptr %i.d, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !329
  %i.v = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef 8) #28, !noalias !329 ; 16 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit, !prof !8

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBE_5InneruEEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ab)
          to label %.noexc3 unwind label %bb.ad

.noexc3:                                          ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !5 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.af, ptr %i.ah, align 8
  store ptr %i.ab, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !330, !noundef !4 ; 4 uses
  %i.al = load i64, ptr %i.v, align 8, !range !9, !noalias !331, !noundef !4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.j

.body.i:                                          ; preds = %bb.n, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.v, align 8, !noalias !331
  store i8 0, ptr %i.ao, align 8, !noalias !331
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ak, ptr %.sroa.633.0..sroa_idx.i.i, align 8, !noalias !331
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !331
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body unwind label %bb.ab

bb.j:                                             ; preds = %.noexc3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !332), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !335), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !336), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !338), !noalias !333
  %i.ap = load i8, ptr %i.ao, align 8, !range !10, !alias.scope !339, !noalias !331, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 2
  br i1 %i.aq, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !333
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !341, !noalias !331, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !341, !noalias !331, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !noalias !342, !nonnull !4, !noundef !4
  invoke void %i.av(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.o unwind label %.body.i, !noalias !330, !inline_history !343

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !344), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !345), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !333
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !347, !noalias !331, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !348
  %i.ax = icmp eq i64 %2, 1
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  fence acquire, !noalias !333
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #26
          to label %bb.o unwind label %.body.i, !noalias !330

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %.noexc3
  store i64 1, ptr %i.v, align 8, !noalias !331
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !331
  %.sroa.633.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ak, ptr %.sroa.633.0..sroa_idx34.i.i, align 8, !noalias !331
  %.sroa.7.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx36.i.i, align 8, !noalias !331
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.aj, align 8, !alias.scope !330
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ay, align 8, !noalias !330
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ai, align 8, !alias.scope !330
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !330, !noundef !4
  %.not20.i.i = icmp eq ptr %i.ba, null
  br i1 %.not20.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.az, align 8, !alias.scope !330
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !330, !noundef !4
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !330
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !349, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i = load i8, ptr %i.ah, align 8, !range !6, !alias.scope !349, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #25
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %bb.t
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !349, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i = load i8, ptr %i.ah, align 8, !range !6, !alias.scope !349, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bg = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bg, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !349
  %i.bi = and i64 %i.bh, 9223372036854775807
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.bk = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc4 unwind label %bb.ad

.noexc4:                                          ; preds = %bb.x
  br i1 %i.bk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc4
  store atomic i8 1, ptr %i.bf monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc4, %bb.w, %bb.v
  %i.bl = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %bb.z, label %bb.ae, !prof !8

bb.z:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ab:                                            ; preds = %.body.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.z, %bb.x, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.u, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.ad ], [ %i.be, %bb.u ], [ %i.an, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBW_4sync3ArcINtB1t_5InneruEEEEEECsbDLrNlwBX3H_4smol(ptr %i.v) #25
          to label %common.resume unwind label %bb.af

bb.ae:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.v

bb.af:                                            ; preds = %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 16, 29) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 0, 9223372036854775805) %i.b) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std7process5ChildE7reserveCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.414.i.i = alloca [23 x i8], align 1      ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.46.i.i = alloca [23 x i8], align 1       ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i8 %i.p, ptr %i.r, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %0, align 8, !range !9, !noalias !396, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.b, label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.v, align 8, !noalias !396
  %.sroa.4.0..sroa.01.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 3, ptr %i.v, align 8, !noalias !396
  switch i8 %.sroa.02.0.copyload.i.i, label %bb.c [
    i8 1, label %bb.h
    i8 2, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !396
  invoke void @_RNvMsn_Cs3iPtYnXk70z_14event_listenerNtB5_7TaskRef9into_task(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i64 noundef 0, ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %bb.c
  %.sroa.414.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.414.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !396
  store i8 2, ptr %i.v, align 8, !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.01.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.414.i.i, i64 23, i1 false), !noalias !396
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.w = load i8, ptr %i.b, align 8, !range !10, !alias.scope !397, !noalias !396, !noundef !4
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !399, !noalias !396, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !399, !noalias !396, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !400, !nonnull !4, !noundef !4
  invoke void %i.ac(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae, !inline_history !356

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ad = load ptr, ptr %i.aa, align 8, !alias.scope !404, !noalias !396, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !405
  %i.ae = icmp eq i64 %2, 1
  br i1 %i.ae, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i.i)
  br label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !396
  invoke void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %.noexc6.i unwind label %bb.ae

.noexc6.i:                                        ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.af = load i8, ptr %i.g, align 8, !range !16, !alias.scope !406, !noalias !396, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.ah = icmp eq i8 %i.af, 2
  br i1 %i.ah, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !409, !noalias !396, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !409, !noalias !396, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !409, !nonnull !4, !noundef !4
  invoke void %i.am(ptr noundef %.val1.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae, !inline_history !356

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.an = load ptr, ptr %i.ak, align 8, !alias.scope !413, !noalias !396, !nonnull !4, !noundef !4
  %3 = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !413
  %i.ao = icmp eq i64 %3, 1
  br i1 %i.ao, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !396
  br label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !396
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !396
  %i.aq = load ptr, ptr %i.f, align 8, !noalias !396, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !396, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !396, !noundef !4
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.l, align 8, !noalias !396, !nonnull !4, !align !5, !noundef !4
  %i.ay = icmp eq ptr %i.ax, %i.aq
  br i1 %i.ay, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  invoke void @_RNvMsn_Cs3iPtYnXk70z_14event_listenerNtB5_7TaskRef9into_task(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i64 noundef 0, ptr noundef nonnull %i.l)
          to label %bb.s unwind label %.thread.i.i, !noalias !396

.thread.i.i:                                      ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !396
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.0.i.i = phi i1 [ true, %bb.q ], [ false, %bb.r ] ; 2 uses
  %.sroa.46.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.46.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.46.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !396
  store i8 2, ptr %i.v, align 8, !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.01.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.i.i, i64 23, i1 false), !noalias !396
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ba = load i8, ptr %i.c, align 8, !range !10, !alias.scope !414, !noalias !396, !noundef !4
  %i.bb = icmp eq i8 %i.ba, 2
  br i1 %i.bb, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !416, !noalias !396, !noundef !4 ; 2 uses
  %.not.i.i22.i.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  br i1 %.not.i.i22.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i23.i.i = load ptr, ptr %i.be, align 8, !alias.scope !416, !noalias !396, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !417, !nonnull !4, !noundef !4
  invoke void %i.bg(ptr noundef %.val1.i.i23.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i unwind label %bb.x, !noalias !396, !inline_history !379

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.bh = load ptr, ptr %i.be, align 8, !alias.scope !421, !noalias !396, !nonnull !4, !noundef !4
  %4 = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !422
  %i.bi = icmp eq i64 %4, 1
  br i1 %i.bi, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i unwind label %bb.x, !noalias !396

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.015.0.i.i, label %bb.ac, label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  br i1 %.sroa.015.0.i.i, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !396
  br label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !423, !noalias !396, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val1.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !423, !noalias !396, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !424, !nonnull !4, !noundef !4
  invoke void %i.bn(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae, !inline_history !356

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.bo = load ptr, ptr %i.bl, align 8, !alias.scope !428, !noalias !396, !nonnull !4, !noundef !4
  %5 = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !429
  %i.bp = icmp eq i64 %5, 1
  br i1 %i.bp, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae

bb.ac:                                            ; preds = %bb.x, %.thread.i.i
  %i.bq = phi { ptr, i32 } [ %i.az, %.thread.i.i ], [ %i.bj, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #25
          to label %.body.i unwind label %bb.ad, !noalias !396

bb.ad:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !396
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.z, %bb.m, %bb.k, %bb.h, %bb.g, %bb.e, %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %bb.ac, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.ae ], [ %i.bq, %bb.ac ], [ %i.bj, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %common.resume.i unwind label %bb.am

_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.a ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.q, align 8, !alias.scope !430, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i = load i8, ptr %i.r, align 8, !range !6, !alias.scope !430, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #25
          to label %common.resume.i unwind label %bb.al

bb.ag:                                            ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !430, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i = load i8, ptr %i.r, align 8, !range !6, !alias.scope !430, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bv = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !430
  %i.bx = and i64 %i.bw, 9223372036854775807
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.bz = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.bz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store atomic i8 1, ptr %i.bu monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.ca = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.cb = icmp eq i32 %i.ca, 2
  br i1 %i.cb, label %bb.ak, label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit, !prof !8

bb.ak:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
  br label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit

bb.al:                                            ; preds = %bb.af
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume.i:                                  ; preds = %bb.af, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bt, %bb.af ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.am:                                            ; preds = %.body.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  switch i8 %.sroa.0.0.i.i, label %default.unreachable [
    i8 0, label %_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit
    i8 1, label %bb.an
    i8 2, label %bb.ao
  ], !prof !431

default.unreachable:                              ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  unreachable

bb.an:                                            ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  br label %_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit

bb.ao:                                            ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbDLrNlwBX3H_4smol, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30
  unreachable

_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit, %bb.an
  %.sroa.0.0 = phi i1 [ true, %bb.an ], [ false, %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL, i64 8) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2d_(ptr noundef nonnull align 8 @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL)
  br label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit

_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !438 ; 6 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.d = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !438 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e, !noalias !438

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !4, !noalias !438 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !12, !invariant.load !4, !noalias !438
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #28, !noalias !438
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !4, !noalias !438 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !12, !invariant.load !4, !noalias !438
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #28, !noalias !438
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.e
  store ptr null, ptr %0, align 8, !alias.scope !438
  %i.p = extractvalue { ptr, i32 } %i.j, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

.thread:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !438
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %.body.i.i.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %.not4 = icmp eq ptr %i.s, null
  br i1 %.not4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = invoke noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 62)
          to label %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g, %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %.not5 = icmp eq ptr %i.w, null
  br i1 %.not5, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.h, %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr nonnull %i.s, ptr nonnull %i.t) #25
          to label %bb.m unwind label %bb.l

_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %i.u)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #29
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.x

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.z, i1 noundef zeroext %.not)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtB7_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !456
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.e), !noalias !456
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !456, !nonnull !4, !align !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8, !noalias !456
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.i, ptr %i.k, align 8, !noalias !456
  store ptr %i.e, ptr %i.b, align 8, !noalias !456
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 %0, i1 noundef zeroext true)
          to label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume.i.i unwind label %bb.j, !noalias !456

_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !456

bb.c:                                             ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !457, !noalias !456, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i.i = load i8, ptr %i.k, align 8, !range !6, !alias.scope !457, !noalias !456, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i.i, i8 %.val3.i.i.i) #25
          to label %common.resume.i.i unwind label %bb.i, !noalias !456

bb.d:                                             ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !457, !noalias !456, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i.i = load i8, ptr %i.k, align 8, !range !6, !alias.scope !457, !noalias !456, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4
  %i.p = trunc nuw i8 %.val1.i.i.i to i1
  br i1 %i.p, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !458
  %i.r = and i64 %i.q, 9223372036854775807
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !noalias !456
  br i1 %i.t, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.o monotonic, align 4, !noalias !456
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.u = atomicrmw xchg ptr %.val.i.i.i, i32 0 release, align 4, !noalias !456
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.h, label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i, !prof !8

bb.h:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i.i), !noalias !456
  br label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !456
  unreachable

common.resume.i.i:                                ; preds = %bb.c, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !456
  unreachable

_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.h, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.y = load i8, ptr %i.c, align 8, !range !16, !alias.scope !459, !noundef !4 ; 2 uses
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.aa = icmp eq i8 %i.y, 2
  br i1 %i.aa, label %bb.l, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !462, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !462, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !462, !nonnull !4, !noundef !4
  call void %i.af(ptr noundef %.val1.i.i.i.i), !noalias !462, !inline_history !449
  br label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.ag = load ptr, ptr %i.ad, align 8, !alias.scope !466, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !466
  %i.ah = icmp eq i64 %1, 1
  br i1 %i.ah, label %bb.o, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #26
  br label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i, %bb.k, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std7process5ChildENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 28
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !471, !nonnull !4, !noundef !4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8, !noalias !471
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.d, %bb.a ], [ %i.m, %bb.c ] ; 6 uses
  %i.e = and i64 %.sroa.03.0.i, 12
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.sroa.03.0.i, 3
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = add i64 %.sroa.03.0.i, 265
  %i.j = or disjoint i64 %.sroa.03.0.i, 8
  %.sroa.0.0.i = select i1 %i.h, i64 %i.i, i64 %i.j
  %i.k = cmpxchg weak ptr %i.c, i64 %.sroa.03.0.i, i64 %.sroa.0.0.i acq_rel acquire, align 8, !noalias !471 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !noalias !471, !nonnull !4, !align !5, !noundef !4
  %i.o = load ptr, ptr %i.n, align 8, !noalias !471, !nonnull !4, !noundef !4
  tail call void %i.o(ptr noundef nonnull %i.b, i1 noundef zeroext false), !noalias !471, !inline_history !469
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %.sroa.03.0.i, 32
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw or ptr %i.c, i64 128 acq_rel, align 8, !noalias !471
  %i.s = and i64 %i.r, 192
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !471, !align !5, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !471
  store ptr null, ptr %i.u, align 8, !noalias !471
  %i.y = atomicrmw and ptr %i.c, i64 -161 release, align 8, !noalias !471 ; 0 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.v, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !noalias !471, !nonnull !4, !noundef !4
  invoke void %.val.i(ptr noundef %i.x)
          to label %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit unwind label %bb.j, !noalias !471, !inline_history !470

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvNtCsfO0Hesl1pIe_10async_task5utils14abort_on_panicNtB2_4BombNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %common.resume unwind label %bb.k, !noalias !471

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !471
  unreachable

common.resume:                                    ; preds = %bb.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.am, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.am, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.h, %bb.i
  %i.ac = tail call fastcc { ptr, ptr } @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_detachedCsbDLrNlwBX3H_4smol(ptr nonnull %i.b) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 6 uses
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.ag = load ptr, ptr %i.ae, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ag(ptr noundef nonnull %i.ad)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit

bb.o:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #28
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_canceledCsbDLrNlwBX3H_4smol.exit, %bb.n, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00B19_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0) #31
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std7process5ChildENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsG258MDvU3F_3std7process5ChildECsbDLrNlwBX3H_4smol.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECsbDLrNlwBX3H_4smol.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECsbDLrNlwBX3H_4smol.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [28 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.val.i.i = load i32, ptr %i.h, align 4, !alias.scope !478, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %.val.i.i, -1
end_hunk_0
