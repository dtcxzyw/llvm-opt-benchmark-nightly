Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RNvXNtCskXtk6F4WjxZ_4just9range_extINtB2_12DisplayRangeRINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEENtNtBZ_3fmt7Display3fmt:bb.a
  %i.m = icmp eq i64 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.46.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !27, !align !34, !noundef !27
  %i.q = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @85, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.421.0..sroa_idx, align 8
  %i.r = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !27, !align !34, !noundef !27
  %i.u = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @1629, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.437.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.v, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.441.0..sroa_idx, align 8
  %i.w = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !27, !align !34, !noundef !27
  %i.z = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @1630, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.u, %bb.d ], [ %i.q, %bb.c ], [ %i.z, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCskXtk6F4WjxZ_4just9semaphoreNtB2_5GuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !27, !align !34, !noundef !27 ; 8 uses
  %i.c = cmpxchg ptr %i.b, i32 0, i32 1 acquire monotonic, align 4, !noalias !79520
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.b), !noalias !79520
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !79520
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexyE4lockCskXtk6F4WjxZ_4just.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #73, !noalias !79520
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexyE4lockCskXtk6F4WjxZ_4just.exit

_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexyE4lockCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !79520
  %.not.i.i.not = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.not, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEINtBM_11PoisonErrorBH_EE6unwrapCskXtk6F4WjxZ_4just.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexyE4lockCskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79521
  store ptr %i.b, ptr %i.a, align 8, !noalias !79521
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !79521
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1631) #70
          to label %bb.g unwind label %bb.f, !noalias !79522

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardyEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #71
          to label %bb.i unwind label %bb.h, !noalias !79522

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !79522
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEINtBM_11PoisonErrorBH_EE6unwrapCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexyE4lockCskXtk6F4WjxZ_4just.exit
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !27
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  br i1 %i.p, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEINtBM_11PoisonErrorBH_EE6unwrapCskXtk6F4WjxZ_4just.exit
  %i.t = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.u = and i64 %i.t, 9223372036854775807
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.w = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #73
  br i1 %i.w, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEINtBM_11PoisonErrorBH_EE6unwrapCskXtk6F4WjxZ_4just.exit
  %i.x = atomicrmw xchg ptr %i.b, i32 0 release, align 4
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEECskXtk6F4WjxZ_4just.exit, !prof !43

bb.m:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardyEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync6poison7condvarNtB2_7Condvar10notify_one(ptr noundef nonnull align 4 %i.z)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79547
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke fastcc void @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(96) %i.i) #75
          to label %.noexc unwind label %bb.c, !noalias !79548

.noexc:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !noalias !79547, !noundef !27
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !79547
  %i.k = load ptr, ptr %1, align 8, !alias.scope !79546, !nonnull !27, !noundef !27
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit unwind label %bb.c, !noalias !79546, !inline_history !79526

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79547
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79547
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79546, !noundef !27
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !79546
  %.pr = load i64, ptr %i.g, align 8              ; 4 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread, %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  store i64 0, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.i)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.pr, 0
  br i1 %i.s, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !79549
  br label %bb.w

bb.h:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1) ; 2 uses
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 4) ; 3 uses
  %i.u = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.t, 384307168202282325
  br i1 %or.cond.i.i, label %bb.k, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !79550
  %i.w = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #69, !noalias !79550 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.u) #70
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.w, %bb.j ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.i ], [ %..i, %bb.j ] ; 2 uses
  %i.y = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.y)
  store i64 %.pr, ptr %.sroa.10.0.i, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !79551)
  call void @llvm.experimental.noalias.scope.decl(metadata !79552)
  call void @llvm.experimental.noalias.scope.decl(metadata !79553)
  call void @llvm.experimental.noalias.scope.decl(metadata !79554)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i, %bb.l
  %i.ab = phi ptr [ %i.al, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.10.0.i, %bb.l ]
  %i.ac = phi i64 [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ 1, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79555
  call void @llvm.experimental.noalias.scope.decl(metadata !79556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79557
  invoke fastcc void @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #75
          to label %.noexc.i.i unwind label %bb.o, !noalias !79558

.noexc.i.i:                                       ; preds = %bb.m
  %i.ad = load ptr, ptr %i.b, align 8, !noalias !79557, !noundef !27
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !79557
  %i.ae = load ptr, ptr %i.f, align 8, !alias.scope !79559, !nonnull !27, !noundef !27
  invoke void %i.ae(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i unwind label %bb.o, !noalias !79560, !inline_history !79526

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79557
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ao, %bb.q ], [ %i.ao, %bb.r ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.z)
          to label %.body unwind label %bb.t, !noalias !79561

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79557
  %i.ag = load i64, ptr %i.aa, align 8, !alias.scope !79559, !noundef !27
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.aa, align 8, !alias.scope !79559
  %.pr.i.i = load i64, ptr %i.c, align 8, !noalias !79555 ; 4 uses
  %.not.i.i6 = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i.i6, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !79555 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79555
  %i.ai = icmp samesign ult i64 %i.ac, 384307168202282326
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.h, align 8, !range !42, !alias.scope !79561, !noundef !27
  %i.ak = icmp eq i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge, %bb.p
  %i.al = phi ptr [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge ], [ %i.ab, %bb.p ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ac ; 3 uses
  store i64 %.pr.i.i, ptr %i.am, align 8, !noalias !79555
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !79555
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !79555
  %i.an = add nuw nsw i64 %i.ac, 1                ; 2 uses
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79555
  br label %bb.m

bb.q:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %.pr.i.i, 0
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.pr.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !79562
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ac, i64 noundef %i.aq, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge unwind label %bb.q, !noalias !79563

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !79561
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !79555
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79555
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.z)
          to label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit unwind label %bb.u, !noalias !79561

bb.u:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.u ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #71
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.v:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %.body, %bb.w
  %.pn22 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.w ]
  resume { ptr, i32 } %.pn22

bb.w:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.pn.ph = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitReENvYeNtB13_8ToString9to_stringEE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79640)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !range !39, !alias.scope !79641, !noundef !27
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !79641, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79642
  call fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1) #75, !noalias !79643
  %i.i = load i64, ptr %i.b, align 8, !range !40, !noalias !79642, !noundef !27
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitReENvYeNtB13_8ToString9to_stringEE9from_iterCskXtk6F4WjxZ_4just:bb.a
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitReENvYeNtBT_8ToString9to_stringEE11spec_extendCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i, %.lr.ph.i.i
  %i.ax = phi ptr [ %i.bw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.am, %.lr.ph.i.i ]
  %i.ay = phi i64 [ %i.by, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ 1, %.lr.ph.i.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79657)
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !79658, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79659
  invoke fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c) #75
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79660

.noexc6:                                          ; preds = %bb.p
  %i.az = load i64, ptr %i.a, align 8, !range !40, !noalias !79659, !noundef !27
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc6
  %i.bb = load i64, ptr %i.av, align 8, !noalias !79659, !noundef !27
  %i.bc = load i64, ptr %i.aw, align 8, !noalias !79659, !noundef !27
  %i.bd = load i64, ptr %i.au, align 8, !alias.scope !79658, !noundef !27 ; 2 uses
  %i.be = sub nuw i64 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bd
  store i64 %i.bc, ptr %i.au, align 8, !alias.scope !79658
  br label %bb.v

bb.r:                                             ; preds = %.noexc6
  %i.bg = load i8, ptr %i.ao, align 1, !range !39, !alias.scope !79661, !noundef !27
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_RNvXsX_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread6.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.ao, align 1, !alias.scope !79661
  %i.bi = load i8, ptr %i.as, align 8, !range !39, !alias.scope !79661, !noundef !27
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %._crit_edge.i.i.i.i.i.i, label %bb.t

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.s
  %.pre.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !79661
  %.pre3.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !79661
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr %i.at, align 8, !alias.scope !79661, !noundef !27 ; 2 uses
  %i.bl = load i64, ptr %i.au, align 8, !alias.scope !79661, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsX_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread6.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i
  %i.bm = phi i64 [ %.pre3.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.bk, %bb.t ]
  %i.bn = phi i64 [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.bl, %bb.t ] ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !79661, !nonnull !27, !noundef !27
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bn
  br label %bb.v

_RNvXsX_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread6.i.i.i: ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79659
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitReENvYeNtBT_8ToString9to_stringEE11spec_extendCskXtk6F4WjxZ_4just.exit

bb.v:                                             ; preds = %bb.u, %bb.q
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.be, %bb.q ], [ %i.bo, %bb.u ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bf, %bb.q ], [ %i.bp, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79659
  %i.bq = icmp eq i64 %.sroa.4.0.i.i.i.i.i, 0     ; 2 uses
  br i1 %i.bq, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !79662
  %i.br = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #69, !noalias !79662 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.x, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.4.0.i.i.i.i.i) #70
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79663

.noexc7:                                          ; preds = %bb.x
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.4.0.i.i.i.i.i, i1 false), !noalias !79664
  %.not.i.i5 = icmp eq i64 %.sroa.4.0.i.i.i.i.i, -1
  br i1 %.not.i.i5, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitReENvYeNtBT_8ToString9to_stringEE11spec_extendCskXtk6F4WjxZ_4just.exit, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, %bb.v
  %.sroa.7.018.i.i = phi ptr [ %i.br, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.v ] ; 2 uses
  %i.bt = icmp samesign ult i64 %i.ay, 384307168202282326
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %i.d, align 8, !range !42, !alias.scope !79665, !noundef !27
  %i.bv = icmp eq i64 %i.ay, %i.bu
  br i1 %i.bv, label %bb.aa, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i
  %i.bw = phi ptr [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge ], [ %i.ax, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.ay ; 3 uses
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.bx, align 8, !noalias !79666
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.sroa.7.018.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !79666
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !79666
  %i.by = add nuw nsw i64 %i.ay, 1                ; 2 uses
  store i64 %i.by, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79665
  %i.bz = load i8, ptr %i.ao, align 1, !range !39, !alias.scope !79667, !noundef !27
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitReENvYeNtBT_8ToString9to_stringEE11spec_extendCskXtk6F4WjxZ_4just.exit, label %bb.p

bb.y:                                             ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bq, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.018.i.i, i64 noundef %.sroa.4.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !79668
  br label %.body

bb.aa:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread12.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ay, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge unwind label %bb.y, !noalias !79669

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge: ; preds = %bb.aa
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !79665
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.x
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.y ], [ %i.cb, %bb.z ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #71
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitReENvYeNtBT_8ToString9to_stringEE11spec_extendCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYeNtNtCs4wP2HXfJTCR_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXsX_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread6.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %.body, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79694
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke fastcc void @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(96) %i.i) #75
          to label %.noexc unwind label %bb.c, !noalias !79695

.noexc:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !noalias !79694, !noundef !27
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !79694
  %i.k = load ptr, ptr %1, align 8, !alias.scope !79693, !nonnull !27, !noundef !27
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit unwind label %bb.c, !noalias !79693, !inline_history !79673

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79694
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79694
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79693, !noundef !27
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !79693
  %.pr = load i64, ptr %i.g, align 8              ; 4 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread, %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  store i64 0, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.i)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.pr, 0
  br i1 %i.s, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !79696
  br label %bb.w

bb.h:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1) ; 2 uses
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 4) ; 3 uses
  %i.u = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.t, 384307168202282325
  br i1 %or.cond.i.i, label %bb.k, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !79697
  %i.w = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #69, !noalias !79697 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.u) #70
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.w, %bb.j ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.i ], [ %..i, %bb.j ] ; 2 uses
  %i.y = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.y)
  store i64 %.pr, ptr %.sroa.10.0.i, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !79698)
  call void @llvm.experimental.noalias.scope.decl(metadata !79699)
  call void @llvm.experimental.noalias.scope.decl(metadata !79700)
  call void @llvm.experimental.noalias.scope.decl(metadata !79701)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i, %bb.l
  %i.ab = phi ptr [ %i.al, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.10.0.i, %bb.l ]
  %i.ac = phi i64 [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ 1, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79702
  call void @llvm.experimental.noalias.scope.decl(metadata !79703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79704
  invoke fastcc void @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #75
          to label %.noexc.i.i unwind label %bb.o, !noalias !79705

.noexc.i.i:                                       ; preds = %bb.m
  %i.ad = load ptr, ptr %i.b, align 8, !noalias !79704, !noundef !27
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !79704
  %i.ae = load ptr, ptr %i.f, align 8, !alias.scope !79706, !nonnull !27, !noundef !27
  invoke void %i.ae(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i unwind label %bb.o, !noalias !79707, !inline_history !79673

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79704
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ao, %bb.q ], [ %i.ao, %bb.r ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.z)
          to label %.body unwind label %bb.t, !noalias !79708

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i

_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79704
  %i.ag = load i64, ptr %i.aa, align 8, !alias.scope !79706, !noundef !27
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.aa, align 8, !alias.scope !79706
  %.pr.i.i = load i64, ptr %i.c, align 8, !noalias !79702 ; 4 uses
  %.not.i.i6 = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i.i6, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !79702 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79702
  %i.ai = icmp samesign ult i64 %i.ac, 384307168202282326
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.h, align 8, !range !42, !alias.scope !79708, !noundef !27
  %i.ak = icmp eq i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge, %bb.p
  %i.al = phi ptr [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge ], [ %i.ab, %bb.p ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ac ; 3 uses
  store i64 %.pr.i.i, ptr %i.am, align 8, !noalias !79702
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !79702
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !79702
  %i.an = add nuw nsw i64 %i.ac, 1                ; 2 uses
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79702
  br label %bb.m

bb.q:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %.pr.i.i, 0
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.pr.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !79709
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ac, i64 noundef %i.aq, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge unwind label %bb.q, !noalias !79710

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !79708
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !79702
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs5_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79702
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.z)
          to label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit unwind label %bb.u, !noalias !79708

bb.u:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.u ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i.i ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #71
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECskXtk6F4WjxZ_4just.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesBG_EECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.v:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECskXtk6F4WjxZ_4just.exit: ; preds = %.body, %bb.w
  %.pn22 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.w ]
  resume { ptr, i32 } %.pn22

bb.w:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.pn.ph = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECskXtk6F4WjxZ_4just.exit unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskXtk6F4WjxZ_4just7binding7BindingEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtNtB6_11collections5btree3map6ValuesNtNtB16_6number6NumberB12_ENCNvMNtB16_8justfileNtB4g_8Justfile3runs_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79776)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !79777 ; 3 uses
  %i.c = load i64, ptr %1, align 8, !alias.scope !79778
  %.fr19.i.i.i = freeze i64 %i.c
  %i.d = trunc i64 %.fr19.i.i.i to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.d, label %.split.us.preheader.i.i.i, label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.a
  %i.g = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph

end_hunk_1
