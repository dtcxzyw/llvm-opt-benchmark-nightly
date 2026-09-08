Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs7gfv9tzbXmh_6yara_x:bb.a
  store atomic i8 1, ptr %i.ap monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.s, %.noexc17, %bb.r, %bb.q
  %i.av = atomicrmw xchg ptr %i.ab, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit, !prof !14

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit

bb.u:                                             ; preds = %.body, %bb.z
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.v:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCs7gfv9tzbXmh_6yara_x.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.az = trunc nuw i8 %i.ac to i1
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4835
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.bd = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.x
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22, label %bb.y

bb.y:                                             ; preds = %.noexc27
  store atomic i8 1, ptr %i.ay monotonic, align 4, !noalias !4835
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22: ; preds = %bb.y, %.noexc27, %bb.w, %bb.v
  %i.be = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !4835
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit.sink.split.i23, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs7gfv9tzbXmh_6yara_x.exit29, !prof !14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit.sink.split.i23: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs7gfv9tzbXmh_6yara_x.exit29 unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs7gfv9tzbXmh_6yara_x.exit29: ; preds = %bb.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i22, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit.sink.split.i23
  %exitcond.not = icmp eq i32 %i.l, 10
  br i1 %exitcond.not, label %bb.f, label %bb.h

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x.exit.sink.split.i23, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i, %bb.k, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.d, %bb.l, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs7gfv9tzbXmh_6yara_x(ptr %1) #43
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtNtCscjxkGEBy879_6bitvec3ptr6singleINtB5_6BitPtrINtNtCs3f5EAvbiDJf_3wyz4comu6FrozenNtBV_3MutEE16frozen_write_bitCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 1, !nonnull !10, !noundef !10
  %i.b = tail call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 1, !noundef !10
  %i.e = and i8 %i.d, 63
  %i.f = zext nneg i8 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 3 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = xor i64 %i.g, -1
  %i.i = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.j = and i64 %i.i, %i.h
  br label %_RINvYINtNtCskKLDkoKarTP_4core4cell4CelljENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.l = or i64 %i.k, %i.g
  br label %_RINvYINtNtCskKLDkoKarTP_4core4cell4CelljENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit

_RINvYINtNtCskKLDkoKarTP_4core4cell4CelljENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  store i64 %storemerge.i, ptr %i.b, align 8
  %i.m = and i64 %.sroa.0.0.i, %i.g
  %i.n = icmp ne i64 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtNtCscjxkGEBy879_6bitvec3ptr6singleINtB5_6BitPtrINtNtCs3f5EAvbiDJf_3wyz4comu6FrozenNtBV_3MutEhE16frozen_write_bitCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 1, !nonnull !10, !noundef !10
  %i.b = tail call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEhE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CellhENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 1, !noundef !10
  %i.e = and i8 %i.d, 7
  %i.f = shl nuw i8 1, %i.e                       ; 3 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = xor i8 %i.f, -1
  %i.h = load i8, ptr %i.b, align 1, !noundef !10 ; 2 uses
  %i.i = and i8 %i.h, %i.g
  br label %_RINvYINtNtCskKLDkoKarTP_4core4cell4CellhENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.b, align 1, !noundef !10 ; 2 uses
  %i.k = or i8 %i.j, %i.f
  br label %_RINvYINtNtCskKLDkoKarTP_4core4cell4CellhENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit

_RINvYINtNtCskKLDkoKarTP_4core4cell4CellhENtNtCscjxkGEBy879_6bitvec6access9BitAccess9write_bitNtNtBH_5order4Lsb0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i8 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  %.sroa.0.0.i = phi i8 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  store i8 %storemerge.i, ptr %i.b, align 1
  %i.l = and i8 %.sroa.0.0.i, %i.f
  %i.m = icmp ne i8 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i16, i16 } @_RNvMs4_CskIN1fSNyKrj_7tinyzipINtB5_7ArchiveRShE13read_exact_atCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %3, %1                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit, !prof !14

_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit
  %i.f = tail call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3)
  %not. = xor i1 %i.f, true
  %. = sext i1 %not. to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit, %bb.b
  %.sroa.0.1 = phi i16 [ 2, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit ], [ %., %bb.b ], [ 4, %bb.a ]
  %i.g = insertvalue { i16, i16 } poison, i16 %.sroa.0.1, 0
  %i.h = insertvalue { i16, i16 } %i.g, i16 undef, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_CskIN1fSNyKrj_7tinyzipINtB5_7ArchiveRShE4openCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4096 x i8], align 1              ; 7 uses
  %i.e = alloca [56 x i8], align 4                ; 12 uses
  %i.f = alloca [20 x i8], align 4                ; 9 uses
  %i.g = alloca [65557 x i8], align 1             ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %i.i, align 8
  %i.j = icmp samesign ult i64 %2, 22
  br i1 %i.j, label %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call noundef range(i64 0, 315360001) i64 @llvm.umin.i64(i64 %2, i64 65557) ; 6 uses
  %i.k = sub nuw nsw i64 %2, %..i.i               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4854
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65557) %i.g, i8 0, i64 65557, i1 false), !noalias !4854
  %i.l = call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %i.k, ptr noalias nofree noundef nonnull %i.g, i64 noundef %..i.i), !noalias !4855
  br i1 %i.l, label %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread.sink.split, label %.split

.split:                                           ; preds = %bb.b
  %i.m = add nsw i64 %..i.i, -22
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.split
  %.sroa.5.0119.i = phi i64 [ %i.m, %.split ], [ %i.n, %bb.f ] ; 7 uses
  %i.n = add nsw i64 %.sroa.5.0119.i, -1
  %i.o = icmp eq i64 %.sroa.5.0119.i, 0
  %i.p = add nsw i64 %.sroa.5.0119.i, 4           ; 3 uses
  %.not.i = icmp ugt i64 %i.p, %..i.i
  br i1 %.not.i, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit102.i, !prof !51

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.5.0119.i, i64 noundef %i.p, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #39, !noalias !4855
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit102.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.5.0119.i ; 6 uses
  %.sroa.048.0.copyload.i = load i32, ptr %i.q, align 1, !noalias !4854
  %i.r = icmp eq i32 %.sroa.048.0.copyload.i, 101010256
  br i1 %i.r, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit100.i, label %bb.f

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit100.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit102.i
  %i.s = add nuw nsw i64 %.sroa.5.0119.i, 22
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.sroa.049.0.copyload.i = load i16, ptr %i.t, align 1, !noalias !4854
  %i.u = zext i16 %.sroa.049.0.copyload.i to i64
  %i.v = add nuw nsw i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.v, %..i.i
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit100.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %.sroa.050.0.copyload.i = load i16, ptr %i.x, align 1, !noalias !4854
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %.sroa.051.0.copyload.i = load i16, ptr %i.y, align 1, !noalias !4854
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %.sroa.052.0.copyload.i = load i16, ptr %i.z, align 1, !noalias !4854 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.053.0.copyload.i = load i32, ptr %i.aa, align 1, !noalias !4854 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.054.0.copyload.i = load i32, ptr %i.ab, align 1, !noalias !4854 ; 2 uses
  %i.ac = add i64 %.sroa.5.0119.i, %i.k           ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4854
  %i.ad = or i16 %.sroa.051.0.copyload.i, %.sroa.050.0.copyload.i
  %or.cond = icmp eq i16 %i.ad, 0
  br i1 %or.cond, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit100.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit102.i
  br i1 %i.o, label %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread.sink.split, label %bb.c

_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread.sink.split: ; preds = %bb.f, %bb.b
  %.sroa.7.1152.ph = phi i16 [ 0, %bb.b ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4854
  br label %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread

_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread.sink.split, %bb.a
  %.sroa.7.1152 = phi i16 [ 1, %bb.a ], [ %.sroa.7.1152.ph, %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread.sink.split ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.7.1152, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 6, ptr %i.af, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

bb.h:                                             ; preds = %bb.e
  %i.ag = icmp eq i16 %.sroa.052.0.copyload.i, -1
  %i.ah = icmp eq i32 %.sroa.053.0.copyload.i, -1
  %or.cond1 = or i1 %i.ag, %i.ah
  %i.ai = icmp eq i32 %.sroa.054.0.copyload.i, -1
  %or.cond2 = or i1 %or.cond1, %i.ai
  br i1 %or.cond2, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.ac, 20
  br i1 %i.aj, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ac, -20                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !noalias !4856
  %i.al = call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %i.ak, ptr noalias nofree noundef nonnull %i.f, i64 noundef 20), !noalias !4857
  br i1 %i.al, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit110.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit110.i: ; preds = %bb.j
  %.sroa.066.0.copyload.i = load i32, ptr %i.f, align 4, !noalias !4856
  %i.am = icmp eq i32 %.sroa.066.0.copyload.i, 117853008
  br i1 %i.am, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit118.i, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit118.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit110.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.067.0.copyload.i = load i32, ptr %i.an, align 4, !noalias !4856
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.068.0.copyload.i = load i64, ptr %i.ao, align 4, !noalias !4856 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.070.0.copyload.i = load i32, ptr %i.ap, align 4, !noalias !4856
  %i.aq = icmp eq i32 %.sroa.067.0.copyload.i, 0
  %i.ar = icmp eq i32 %.sroa.070.0.copyload.i, 1
  %or.cond.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %bb.k, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit118.i
  %i.as = icmp ugt i64 %.sroa.068.0.copyload.i, -5
  %i.at = add i64 %.sroa.068.0.copyload.i, 4
  %i.au = icmp ugt i64 %i.at, %2
  %or.cond.i.i.i = or i1 %i.as, %i.au
  br i1 %or.cond.i.i.i, label %.thread.i.i, label %bb.l, !prof !65

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4858
  store i32 0, ptr %i.c, align 4, !noalias !4858
  %i.av = call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %.sroa.068.0.copyload.i, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4), !noalias !4859
  br i1 %i.av, label %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.thread52.i.i, label %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.i.i

_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.thread52.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4858
  br label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.l
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !noalias !4858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4858
  %i.aw = icmp eq i32 %.sroa.09.0.copyload.i.i.i, 101075792
  br i1 %i.aw, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.k
  %i.ax = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -20) %i.ak, i64 4096) ; 3 uses
  %i.ay = sub nuw i64 %i.ak, %i.ax                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4860
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false), !noalias !4860
  %i.az = icmp ult i64 %i.ay, 4097
  br i1 %i.az, label %bb.n, label %bb.m, !prof !66

bb.m:                                             ; preds = %.thread.i.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #39, !noalias !4859
  unreachable

bb.n:                                             ; preds = %.thread.i.i
  %i.ba = call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %i.ax, ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.ay), !noalias !4859
  br i1 %i.ba, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread156.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp samesign ult i64 %i.ay, 4
  br i1 %i.bb, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread156.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i64 %i.ay, -4
  br label %bb.q

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.p
  %.sroa.8.0.i.i = phi i1 [ false, %bb.p ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i ]
  %.sroa.5.0.i.i = phi i64 [ %i.bc, %bb.p ], [ %i.be, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i ] ; 5 uses
  br i1 %.sroa.8.0.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond.i.i = icmp ult i64 %.sroa.5.0.i.i, 4093
  br i1 %or.cond.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.t, !prof !66

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4860
  br label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef -1, i64 noundef 3, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #39, !noalias !4859
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.r
  %i.bd = icmp eq i64 %.sroa.5.0.i.i, 0
  %i.be = add nsw i64 %.sroa.5.0.i.i, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.5.0.i.i
  %.sroa.039.0.copyload.i.i = load i32, ptr %i.bf, align 1, !noalias !4860
  %i.bg = icmp eq i32 %.sroa.039.0.copyload.i.i, 101075792
  br i1 %i.bg, label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.q

_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread156.i: ; preds = %bb.o, %bb.n
  %.sroa.8.0.ph.i = phi i16 [ 3, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4860
  br label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.bh = add nuw i64 %.sroa.5.0.i.i, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4860
  br label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i

_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.i, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.15124.1154.i = phi i64 [ %i.bh, %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.068.0.copyload.i, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !4856
  %i.bi = icmp ugt i64 %.sroa.15124.1154.i, -57
  br i1 %i.bi, label %bb.v, label %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit.i, !prof !14

_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i
  %i.bj = add nuw i64 %.sroa.15124.1154.i, 56
  %i.bk = icmp ugt i64 %i.bj, %2
  br i1 %i.bk, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bl = call noundef zeroext i1 @_RNvXs1_CskIN1fSNyKrj_7tinyzipRShNtB5_6Reader13read_exact_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %.sroa.15124.1154.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 56), !noalias !4857
  br i1 %i.bl, label %bb.v, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit107.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit107.i: ; preds = %bb.u
  %.sroa.071.0.copyload.i = load i32, ptr %i.e, align 4, !noalias !4856
  %i.bm = icmp eq i32 %.sroa.071.0.copyload.i, 101075792
  br i1 %i.bm, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit116.i, label %bb.v

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit116.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit107.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.072.0.copyload.i = load i64, ptr %i.bn, align 4, !noalias !4856 ; 2 uses
  %i.bo = icmp ugt i64 %.sroa.072.0.copyload.i, -13
  br i1 %i.bo, label %bb.v, label %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit120.i, !prof !14

_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit120.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit116.i
  %i.bp = add nuw i64 %.sroa.15124.1154.i, 12
  %i.bq = add i64 %i.bp, %.sroa.072.0.copyload.i  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %.sroa.15124.1154.i
  br i1 %i.br, label %bb.v, label %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit122.i, !prof !14

_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit122.i: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit120.i
  %i.bs = icmp ugt i64 %i.bq, %2
  br i1 %i.bs, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit122.i, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit120.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit116.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit107.i, %bb.u, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit.i, %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i
  %.sink.i = phi i16 [ 2, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit.i ], [ 4, %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread150.i ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit107.i ], [ 4, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit120.i ], [ 4, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit116.i ], [ 0, %bb.u ], [ 2, %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit122.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4856
  br label %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i

_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.thread52.i.i, %bb.s, %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread156.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit118.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit110.i, %bb.j, %bb.v
  %.sroa.11127.0 = phi i16 [ 0, %bb.j ], [ 6, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit118.i ], [ %.sink.i, %bb.v ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit110.i ], [ %.sroa.8.0.ph.i, %_RINvCskIN1fSNyKrj_7tinyzip27resolve_zip64_record_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread156.i ], [ 0, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit.thread52.i.i ], [ 3, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4856
  br label %bb.y

bb.w:                                             ; preds = %bb.h
  %i.bt = zext i16 %.sroa.052.0.copyload.i to i64
  %i.bu = zext i32 %.sroa.053.0.copyload.i to i64
  %i.bv = zext i32 %.sroa.054.0.copyload.i to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
end_hunk_0
