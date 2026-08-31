Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hyper-rs/original/hyper-10edd7b632d8a65e.hyper.7c5c1ac1ec18fad4-cgu.0?download=true
inline.NumInlined: 97
inline.NumDeleted: 63
begin_hunk_0_@_RNvXs0_NtCsaFXMpQk5M54_5hyper5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtCsaFXMpQk5M54_5hyper5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtCsaFXMpQk5M54_5hyper5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.27, i64 %i.i
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a, %bb.c
  %.sroa.6.0 = phi i64 [ 20, %bb.a ], [ %switch.ext, %switch.lookup ], [ 22, %bb.c ]
  %.sroa.0.0 = phi ptr [ @7, %bb.a ], [ %switch.load2, %switch.lookup ], [ @8, %bb.c ]
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #22
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #22
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #22
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write17is_write_vectored(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a) #22
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write19poll_write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) #22
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsaFXMpQk5M54_5hyper4body8incomingNtB5_8IncomingNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10) ; 0 uses
  %i.c = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2P_5error5ErrorEEEENtNtB2e_3fmt7Display3fmtB2P_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 41, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_8UpgradedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsaFXMpQk5M54_5hyper5error4UserNtB6_5Debug3fmtBA_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsaFXMpQk5M54_5hyper5error5ParseNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !54, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsaFXMpQk5M54_5hyper5error5ParseNtB6_5Debug3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsaFXMpQk5M54_5hyper5error5ParseNtB6_5Debug3fmtBA_.28, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs2_NtCsaFXMpQk5M54_5hyper5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_5ParseE4from(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !55
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 25) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !55 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc.i, label %_RNvMNtCsaFXMpQk5M54_5hyper5errorNtB2_5Error3new.exit, !prof !58

.noexc.i:                                         ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
  unreachable

_RNvMNtCsaFXMpQk5M54_5hyper5errorNtB2_5Error3new.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %0, ptr %.sroa.6.0..sroa_idx.i, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_9OnUpgradeNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 12 uses
  %.sroa.12.i = alloca [48 x i8], align 8         ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.42.sroa.5 = alloca [32 x i8], align 8    ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 acquire monotonic, align 4, !noalias !59
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.g), !noalias !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !59
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2q_5error5ErrorEEE4lockB2q_.exit, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #21, !noalias !59
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2q_5error5ErrorEEE4lockB2q_.exit

_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2q_5error5ErrorEEE4lockB2q_.exit: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.q = load atomic i8, ptr %i.p monotonic, align 1, !noalias !59
  %.not.i.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.not, label %_RNvXNtNtCsaFXMpQk5M54_5hyper6common4lockINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverIBD_NtNtB6_7upgrade8UpgradedNtNtB6_5error5ErrorEEEINtB1j_11PoisonErrorB1e_EEINtB2_13LockResultExtB1e_E17panic_if_poisonedB6_.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2q_5error5ErrorEEE4lockB2q_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62
  store ptr %i.g, ptr %i.e, align 8, !noalias !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.r, align 8, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62
  store ptr %i.e, ptr %i.d, align 8, !noalias !62
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2P_5error5ErrorEEEENtNtB2e_3fmt7Display3fmtB2P_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !62
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
          to label %bb.h unwind label %bb.g, !noalias !62

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !62, !nonnull !4, !align !24, !noundef !4
  %.val5.i = load i8, ptr %i.r, align 8, !range !65, !noalias !62, !noundef !4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB32_5error5ErrorEEEEEB32_(ptr nonnull %.val.i, i8 %.val5.i) #18
          to label %common.resume unwind label %bb.i, !noalias !62

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !62
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCsaFXMpQk5M54_5hyper6common4lockINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverIBD_NtNtB6_7upgrade8UpgradedNtNtB6_5error5ErrorEEEINtB1j_11PoisonErrorB1e_EEINtB2_13LockResultExtB1e_E17panic_if_poisonedB6_.exit: ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2q_5error5ErrorEEE4lockB2q_.exit
  %i.u = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !66, !noalias !73, !noundef !4 ; 12 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.ad, label %bb.j, !prof !31

bb.j:                                             ; preds = %_RNvXNtNtCsaFXMpQk5M54_5hyper6common4lockINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverIBD_NtNtB6_7upgrade8UpgradedNtNtB6_5error5ErrorEEEINtB1j_11PoisonErrorB1e_EEINtB2_13LockResultExtB1e_E17panic_if_poisonedB6_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  %i.x = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs7iWyoMw7IzY_5tokio7runtime7context7CONTEXT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !65, !noalias !79, !noundef !4 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !79 ; 4 uses
  br i1 %i.z, label %bb.k, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyNtNtNtCs7iWyoMw7IzY_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCsj6eKBz9Db1c_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsaFXMpQk5M54_5hyper.exit.i.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread.i, label %bb.l

_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread.i: ; preds = %bb.k
  invoke void @_RNvNtNtCs7iWyoMw7IzY_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  store i24 0, ptr %i.a, align 4, !noalias !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.ac)
          to label %.noexc14 unwind label %bb.aj

.noexc14:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  br label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.ad = add i8 %i.ab, -1
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyNtNtNtCs7iWyoMw7IzY_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCsj6eKBz9Db1c_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsaFXMpQk5M54_5hyper.exit.i.i

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyNtNtNtCs7iWyoMw7IzY_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCsj6eKBz9Db1c_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsaFXMpQk5M54_5hyper.exit.i.i: ; preds = %bb.l, %bb.j
  %.sroa.33.0.i.i.i.i.i = phi i8 [ %i.ad, %bb.l ], [ %i.ab, %bb.j ]
  store i8 %.sroa.33.0.i.i.i.i.i, ptr %i.aa, align 1, !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  store i24 0, ptr %i.a, align 4, !noalias !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.ae)
          to label %.noexc15 unwind label %bb.aj

.noexc15:                                         ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyNtNtNtCs7iWyoMw7IzY_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCsj6eKBz9Db1c_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsaFXMpQk5M54_5hyper.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  store i8 %i.y, ptr %i.b, align 1, !noalias !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ab, ptr %i.af, align 1, !noalias !77
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  %i.ah = invoke noundef i64 @_RNvMs9_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8 %i.ag, i8 noundef 2)
          to label %bb.n unwind label %bb.m, !noalias !77 ; 3 uses

bb.m:                                             ; preds = %.thread.i.i, %bb.v, %.noexc15
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.body unwind label %bb.ac, !noalias !86

bb.n:                                             ; preds = %.noexc15
  %i.aj = and i64 %i.ah, 2
  %.not.i.i13 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i13, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = and i64 %i.ah, 4
  %.not48.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not48.i.i, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 1, !noalias !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.al, align 8, !noalias !77
  store i64 0, ptr %i.al, align 8, !noalias !77
  %i.am = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.am, label %bb.ab, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.q:                                             ; preds = %bb.o
  %i.an = and i64 %i.ah, 1
  %.not49.i.i = icmp eq i64 %i.an, 0
  br i1 %.not49.i.i, label %.thread.i.i, label %bb.s

bb.r:                                             ; preds = %bb.o
  store i8 0, ptr %i.b, align 1, !noalias !77
  br label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.s:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !alias.scope !87, !noalias !86, !nonnull !4, !align !24, !noundef !4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !77, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !77, !noundef !4
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %i.ap, align 8, !noalias !77, !nonnull !4, !align !24, !noundef !4
  %i.aw = load ptr, ptr %i.ao, align 8, !noalias !77, !nonnull !4, !align !24, !noundef !4
  %i.ax = icmp eq ptr %i.aw, %i.av
  br i1 %i.ax, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = atomicrmw and ptr %i.ag, i64 -2 acq_rel, align 8, !noalias !77
  %i.az = and i64 %i.ay, 2
  %.not50.i.i = icmp eq i64 %i.az, 0
  br i1 %.not50.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMNtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.ao)
          to label %.thread.i.i unwind label %bb.m, !noalias !77

bb.w:                                             ; preds = %bb.u
  %i.ba = atomicrmw or ptr %i.ag, i64 1 acq_rel, align 8, !noalias !77 ; 0 uses
  store i8 0, ptr %i.b, align 1, !noalias !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %.sroa.09.0.copyload.i.i = load i64, ptr %i.bb, align 8, !noalias !77
  store i64 0, ptr %i.bb, align 8, !noalias !77
  %i.bc = trunc nuw i64 %.sroa.09.0.copyload.i.i to i1
  br i1 %i.bc, label %bb.x, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.x:                                             ; preds = %bb.w
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx.i.i, i64 48, i1 false), !noalias !71
  br label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

.thread.i.i:                                      ; preds = %bb.v, %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  invoke void @_RNvMNtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB2_4Task8set_task(ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.m, !noalias !86

bb.y:                                             ; preds = %.thread.i.i
  %i.be = atomicrmw or ptr %i.ag, i64 1 acq_rel, align 8, !noalias !88
  %i.bf = and i64 %i.be, 2
  %.not52.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not52.i.i, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.b, align 1, !noalias !77
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.bg, align 8, !noalias !88
  store i64 0, ptr %i.bg, align 8, !noalias !88
  %i.bh = trunc nuw i64 %.sroa.021.0.copyload.i.i to i1
  br i1 %i.bh, label %bb.aa, label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx.i.i, i64 48, i1 false), !noalias !89
  br label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.ab:                                            ; preds = %bb.p
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !noalias !71
  br label %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i

bb.ac:                                            ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !86
  unreachable

_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.i: ; preds = %bb.y, %bb.t
  invoke void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %bb.ak unwind label %bb.aj

bb.ad:                                            ; preds = %_RNvXNtNtCsaFXMpQk5M54_5hyper6common4lockINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverIBD_NtNtB6_7upgrade8UpgradedNtNtB6_5error5ErrorEEEINtB1j_11PoisonErrorB1e_EEINtB2_13LockResultExtB1e_E17panic_if_poisonedB6_.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
          to label %.noexc17 unwind label %bb.aj

.noexc17:                                         ; preds = %bb.ad
  unreachable

_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.r, %bb.p
  %i.bj = phi i1 [ false, %bb.w ], [ true, %bb.x ], [ false, %bb.p ], [ true, %bb.ab ], [ true, %bb.aa ], [ false, %bb.r ], [ false, %bb.z ]
  %.sroa.0.17.i = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.p ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 1, %bb.r ], [ 1, %bb.z ] ; 2 uses
  invoke void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.noexc18 unwind label %bb.aj

.noexc18:                                         ; preds = %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  store i64 %.sroa.0.17.i, ptr %i.c, align 8, !noalias !71
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.i, i64 48, i1 false), !noalias !71
  %i.bk = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !90
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %.noexc18
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB26_5error5ErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.v) #21
          to label %bb.al unwind label %bb.af, !noalias !97

bb.af:                                            ; preds = %bb.ae
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !alias.scope !66, !noalias !73
  br i1 %i.bj, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %.sroa.2.0..sroa_idx.i)
          to label %.body unwind label %bb.ah, !noalias !89

bb.ah:                                            ; preds = %bb.ag
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !89
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !98
  %i.bo = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 25) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !98 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.noexc.i.i.i, label %_RNvMNtCsaFXMpQk5M54_5hyper5errorNtB2_5Error19new_user_no_upgrade.exit, !prof !58

.noexc.i.i.i:                                     ; preds = %bb.ai
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
  unreachable

_RNvMNtCsaFXMpQk5M54_5hyper5errorNtB2_5Error19new_user_no_upgrade.exit: ; preds = %bb.ai
  store ptr null, ptr %i.bo, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 3, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2J_5error5ErrorEEEEB2J_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2J_5error5ErrorEEEEB2J_.exit: ; preds = %bb.at, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtCsaFXMpQk5M54_5hyper5errorNtB2_5Error19new_user_no_upgrade.exit
  ret void

bb.aj:                                            ; preds = %.noexc.i.i, %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread5.i, %bb.ad, %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.i, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyNtNtNtCs7iWyoMw7IzY_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCsj6eKBz9Db1c_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECsaFXMpQk5M54_5hyper.exit.i.i, %.noexc, %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.thread.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aj, %bb.m, %bb.af, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.ag ], [ %i.ai, %bb.m ], [ %i.bm, %bb.af ], [ %i.br, %bb.aj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2J_5error5ErrorEEEEB2J_(ptr nonnull %i.g, i8 %.sroa.01.0.i.i) #18
          to label %common.resume unwind label %bb.au

bb.ak:                                            ; preds = %.noexc14, %_RNvMs4_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotINtB5_5InnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB1y_5error5ErrorEE9poll_recvB1y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  store i64 1, ptr %0, align 8
  br label %bb.ap

bb.al:                                            ; preds = %bb.ae, %.noexc18
  store ptr null, ptr %i.v, align 8, !alias.scope !66, !noalias !73
  %.sroa.623.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !101
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !101
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.12.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.bt = trunc nuw i64 %.sroa.0.17.i to i1
  br i1 %i.bt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !102
  %i.bu = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 25) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !102 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.noexc.i.i, label %_RINvMNtCsaFXMpQk5M54_5hyper5errorNtB3_5Error4withNtNtB5_7upgrade15UpgradeExpectedEB5_.exit, !prof !58

.noexc.i.i:                                       ; preds = %bb.am
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc19 unwind label %bb.aj

.noexc19:                                         ; preds = %.noexc.i.i
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.sroa.5, i64 32, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtCsaFXMpQk5M54_5hyper5errorNtB3_5Error4withNtNtB5_7upgrade15UpgradeExpectedEB5_.exit, %bb.an
  %.sroa.55.0 = phi ptr [ %.sroa.7.0.copyload, %bb.an ], [ %i.bu, %_RINvMNtCsaFXMpQk5M54_5hyper5errorNtB3_5Error4withNtNtB5_7upgrade15UpgradeExpectedEB5_.exit ]
  %.sroa.03.0 = phi ptr [ %.sroa.623.0.copyload, %bb.an ], [ null, %_RINvMNtCsaFXMpQk5M54_5hyper5errorNtB3_5Error4withNtNtB5_7upgrade15UpgradeExpectedEB5_.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.bw, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.55.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.sroa.5)
  br label %bb.ap

_RINvMNtCsaFXMpQk5M54_5hyper5errorNtB3_5Error4withNtNtB5_7upgrade15UpgradeExpectedEB5_.exit: ; preds = %bb.am
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i8 4, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bu, align 8, !alias.scope !105
  store ptr @40, ptr %i.bx, align 8, !alias.scope !105
  br label %bb.ao

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  br i1 %i.u, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.by = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ar, !prof !30

bb.ar:                                            ; preds = %bb.aq
  %i.cb = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.cb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store atomic i8 1, ptr %i.p monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.cc = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2J_5error5ErrorEEEEB2J_.exit, !prof !31

bb.at:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs7iWyoMw7IzY_5tokio4sync7oneshot8ReceiverINtNtB4_6result6ResultNtNtCsaFXMpQk5M54_5hyper7upgrade8UpgradedNtNtB2J_5error5ErrorEEEEB2J_.exit

bb.au:                                            ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_9OnUpgradeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 34)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsaFXMpQk5M54_5hyper5errorNtB5_8TimedOutNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsaFXMpQk5M54_5hyper5errorNtB5_4KindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !53, !noundef !4 ; 2 uses
  %i.d = icmp samesign ugt i8 %i.c, 2
  %i.e = zext nneg i8 %i.c to i64
  %i.f = add nsw i64 %i.e, -2
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsaFXMpQk5M54_5hyper5errorNtB4_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 12)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtCsaFXMpQk5M54_5hyper7upgradeNtB4_8UpgradedNtNtNtB6_2rt2io4Read9poll_read(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.a, align 8, !alias.scope !108, !noalias !113 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !108, !noalias !113 ; 4 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !108, !noalias !113 ; 5 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !108, !noalias !113 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !108, !noalias !113
  %.not.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.6.sroa.5.0.copyload.i, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !108, !noalias !113, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.i = load ptr, ptr %i.c, align 8, !alias.scope !108, !noalias !113, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !noalias !115, !nonnull !4
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #22, !noalias !108, !inline_history !119 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1
  br label %_RNvXs_NtNtNtCsaFXMpQk5M54_5hyper6common2io6rewindINtB4_6RewindINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBa_7upgrade2IoNtNtCsj6eKBz9Db1c_4core6marker4SendEL_EENtNtNtBa_2rt2io4Read9poll_readBa_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !120, !nonnull !4, !noundef !4
  tail call void %i.j(ptr noundef %.sroa.6.sroa.6.0.copyload.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i, i64 noundef 0), !noalias !120, !inline_history !125
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !111, !noalias !126, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !111, !noalias !126, !noundef !4 ; 5 uses
  %i.o = sub i64 %i.l, %i.n                       ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 range(i64 1, 0) %.sroa.6.sroa.5.0.copyload.i) ; 4 uses
  %i.p = add i64 %..i.i, %i.n                     ; 6 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = icmp ule i64 %i.p, %i.l
  %or.cond.i.i = and i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %bb.f, label %bb.g, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %2, align 8, !alias.scope !111, !noalias !128, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %.sroa.6.sroa.0.0.copyload.i, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !noalias !131
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !111, !noalias !128, !noundef !4
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %.noexc18.i unwind label %bb.l, !noalias !131

.noexc18.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %i.p, ptr %i.u, align 8, !alias.scope !111, !noalias !128
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  store i64 %i.p, ptr %i.m, align 8, !alias.scope !111, !noalias !128
  %i.x = sub nuw i64 %.sroa.6.sroa.5.0.copyload.i, %..i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i, i64 %..i.i ; 2 uses
  %.not59.i = icmp ugt i64 %.sroa.6.sroa.5.0.copyload.i, %i.o
  br i1 %.not59.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !132, !nonnull !4, !noundef !4
  tail call void %i.aa(ptr noundef %.sroa.6.sroa.6.0.copyload.i, ptr noundef %i.y, i64 noundef %i.x), !noalias !132, !inline_history !125
  br label %_RNvXs_NtNtNtCsaFXMpQk5M54_5hyper6common2io6rewindINtB4_6RewindINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBa_7upgrade2IoNtNtCsj6eKBz9Db1c_4core6marker4SendEL_EENtNtNtBa_2rt2io4Read9poll_readBa_.exit

bb.k:                                             ; preds = %bb.i
  store ptr %.sroa.04.0.copyload.i, ptr %i.a, align 8, !alias.scope !108, !noalias !113
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !108, !noalias !113
  store i64 %i.x, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !108, !noalias !113
  br label %_RNvXs_NtNtNtCsaFXMpQk5M54_5hyper6common2io6rewindINtB4_6RewindINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBa_7upgrade2IoNtNtCsj6eKBz9Db1c_4core6marker4SendEL_EENtNtNtBa_2rt2io4Read9poll_readBa_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsbHaZOkqCN6E_5bytes5bytes5BytesECsaFXMpQk5M54_5hyper.exit.i: ; preds = %bb.l
  resume { ptr, i32 } %i.ab

bb.l:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !137, !nonnull !4, !noundef !4
  invoke void %i.ad(ptr noundef %.sroa.6.sroa.6.0.copyload.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i, i64 noundef %.sroa.6.sroa.5.0.copyload.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsbHaZOkqCN6E_5bytes5bytes5BytesECsaFXMpQk5M54_5hyper.exit.i unwind label %bb.m, !noalias !131, !inline_history !142

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !131
  unreachable

_RNvXs_NtNtNtCsaFXMpQk5M54_5hyper6common2io6rewindINtB4_6RewindINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBa_7upgrade2IoNtNtCsj6eKBz9Db1c_4core6marker4SendEL_EENtNtNtBa_2rt2io4Read9poll_readBa_.exit: ; preds = %bb.c, %bb.j, %bb.k
  %.sroa.4.1.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.k ], [ null, %bb.j ]
  %.sroa.03.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.03.1.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.4.1.i, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsaFXMpQk5M54_5hyper2rt2ioNtB4_7ReadBufNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  store i64 %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsaFXMpQk5M54_5hyper7upgradeNtB5_15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCsaFXMpQk5M54_5hyper(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !24, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsaFXMpQk5M54_5hyper7upgrade15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @41, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaFXMpQk5M54_5hyper7upgrade15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core5error5Error5causeB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaFXMpQk5M54_5hyper7upgrade15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core5error5Error6sourceB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaFXMpQk5M54_5hyper7upgrade15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core5error5Error7provideB6_(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaFXMpQk5M54_5hyper7upgrade15UpgradeExpectedNtNtCsj6eKBz9Db1c_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @42, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCs7iWyoMw7IzY_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef dereferenceable(2)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs7iWyoMw7IzY_5tokio4task4coop14register_waker(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs9_NtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8, i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7iWyoMw7IzY_5tokio4sync7oneshotNtB2_4Task8set_task(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
