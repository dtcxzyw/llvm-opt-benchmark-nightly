Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneReECskcxRuJ53GpR_9rustworkx(i64 %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !50508, !noundef !67 ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !noalias !50508, !noundef !67 ; 5 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 16), align 8, !noalias !50508, !noundef !67
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 24), align 8, !noalias !50508, !noundef !67
  %i.e = tail call noundef i64 @llvm.fshr.i64(i64 %.0.val, i64 %.0.val, i64 %1) ; 9 uses
  %i.f = icmp samesign ult i64 %1, 17
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i64 %1, 256
  %i.h = add i64 %i.b, %i.e                       ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d, !prof !77

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %1, 7
  br i1 %i.i, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %i.c, %i.e
  %i.k = add i64 %i.d, %i.e
  %i.l = tail call noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.a) #62, !noalias !50509
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash17hash_bytes_medium(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.a), !noalias !50509
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

bb.f:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %1, 3
  br i1 %i.n, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.g

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.c
  %.sroa.020.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !50510, !noalias !50509
  %i.o = xor i64 %.sroa.020.0.copyload.i.i, %i.e
  %i.p = getelementptr i8, ptr %0, i64 %1
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.q, align 1, !alias.scope !50510, !noalias !50509
  %i.r = xor i64 %.sroa.022.0.copyload.i.i, %i.b
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 %1
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %.sroa.025.0.copyload.i.i = load i32, ptr %i.t, align 1, !alias.scope !50510, !noalias !50509
  %.sroa.024.0.copyload.i.i = load i32, ptr %0, align 1, !alias.scope !50510, !noalias !50509
  %i.u = zext i32 %.sroa.024.0.copyload.i.i to i64
  %i.v = xor i64 %i.e, %i.u
  %i.w = zext i32 %.sroa.025.0.copyload.i.i to i64
  %i.x = xor i64 %i.b, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %0, align 1, !alias.scope !50510, !noalias !50509, !noundef !67
  %i.z = lshr i64 %1, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !50510, !noalias !50509, !noundef !67
  %i.ac = getelementptr i8, ptr %0, i64 %1
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !50510, !noalias !50509, !noundef !67
  %i.af = zext i8 %i.y to i64
  %i.ag = xor i64 %i.e, %i.af
  %i.ah = zext i8 %i.ae to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = zext i8 %i.ab to i64
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = xor i64 %i.ak, %i.b
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.g, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.010.0.i.i = phi i64 [ %i.r, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.x, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.al, %bb.h ], [ %i.b, %bb.g ]
  %.sroa.0.0.i.i = phi i64 [ %i.o, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.v, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ag, %bb.h ], [ %i.e, %bb.g ]
  %i.am = zext i64 %.sroa.0.0.i.i to i128
  %i.an = zext i64 %.sroa.010.0.i.i to i128
  %i.ao = mul nuw i128 %i.am, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = xor i128 %i.ap, %i.ao
  %i.ar = trunc i128 %i.aq to i64
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit: ; preds = %bb.i, %bb.e, %bb.d
  %.sink4.i = phi i64 [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.ar, %bb.i ]
  %i.as = xor i64 %.sink4.i, 255
  %i.at = zext i64 %i.as to i128
  %i.au = zext i64 %i.a to i128
  %i.av = mul nuw i128 %i.at, %i.au               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = xor i128 %i.aw, %i.av
  %i.ay = trunc i128 %i.ax to i64
  ret i64 %i.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 1                ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !alias.scope !50520
  %i.d = load atomic ptr, ptr @_RNvNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !50521 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback4init() #62, !noalias !50521 ; 2 uses
  store atomic ptr %i.f, ptr @_RNvNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !50521
  br label %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.g
  %.sroa.0.040.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.g ], [ %i.c, %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  %.sroa.6.039.i.i.i.i = phi i64 [ %.sroa.6.1.i.i.i.i, %bb.g ], [ 32, %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %i.h = call noundef i64 %.sroa.0.0.i.i.i.i(ptr noundef nonnull %.sroa.0.040.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039.i.i.i.i, i32 noundef 0) #59, !inline_history !50519 ; 5 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %bb.e, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.d:                                             ; preds = %.preheader.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.sroa.6.039.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef i32 @_RNvNtNtNtNtCsVAQhhDbxgK_9getrandom8backends8use_file5utils9get_errno9get_errno() ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i32 @_RNvMNtCsVAQhhDbxgK_9getrandom5errorNtB2_5Error10from_errno(i32 noundef %i.k)
  br label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.1.i.i.i.i = phi i64 [ %i.p, %bb.h ], [ %.sroa.6.039.i.i.i.i, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.0.040.i.i.i.i, %bb.e ]
  %i.n = icmp eq i64 %.sroa.6.1.i.i.i.i, 0
  br i1 %i.n, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.040.i.i.i.i, i64 %i.h
  %i.p = sub nuw nsw i64 %.sroa.6.039.i.i.i.i, %i.h
  br label %bb.g

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit: ; preds = %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.q = call noundef i32 @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) #62 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread: ; preds = %bb.d, %bb.c, %bb.f, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit
  %.sroa.0.0.i.i.i3 = phi i32 [ %i.q, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit ], [ %i.m, %bb.f ], [ 65538, %bb.c ], [ 65538, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.i.i.i3, ptr %i.r, align 4
  br label %bb.i

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4: ; preds = %bb.g, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.b)
  %i.s = load i128, ptr %i.a, align 16, !noundef !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i128, ptr %i.t, align 16, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.s, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %i.u, ptr %i.w, align 16
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread
  %.sink = phi i32 [ 0, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4 ], [ 1, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread ]
  store i32 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsjH8OHv3LeEG_4rand3rng6RngExt12random_rangejINtNtNtCslwFuT2d6ECx_4core3ops5range7RangeTojEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32
  %i.d = load i128, ptr %0, align 16, !alias.scope !50554, !noalias !50555, !noundef !67
  %i.e = mul i128 %i.d, 47026247687942121848144207491837523525
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i128, ptr %i.f, align 16, !alias.scope !50554, !noalias !50555, !noundef !67 ; 2 uses
  %i.h = add i128 %i.e, %i.g                      ; 5 uses
  store i128 %i.h, ptr %0, align 16, !alias.scope !50554, !noalias !50555
  %i.i = lshr i128 %i.h, 122
  %i.j = trunc nuw nsw i128 %i.i to i64
  %i.k = lshr i128 %i.h, 64
  %i.l = xor i128 %i.k, %i.h
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshr.i64(i64 %i.m, i64 %i.m, i64 %i.j)
  %i.o = and i64 %i.n, 4294967295
  %i.p = mul nuw i64 %i.o, %1                     ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %i.c
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.c
  %i.u = mul i128 %i.h, 47026247687942121848144207491837523525
  %i.v = add i128 %i.u, %i.g                      ; 4 uses
  store i128 %i.v, ptr %0, align 16, !alias.scope !50556, !noalias !50555
  %i.w = lshr i128 %i.v, 122
  %i.x = trunc nuw nsw i128 %i.w to i64
  %i.y = lshr i128 %i.v, 64
  %i.z = xor i128 %i.y, %i.v
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshr.i64(i64 %i.aa, i64 %i.aa, i64 %i.x)
  %3 = and i64 %i.ab, 4294967295
  %4 = mul nuw i64 %3, %1
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ac = xor i32 %i.r, -1
  %.not9.i.i.i.i = icmp ult i32 %i.ac, %6
  %i.ad = zext i1 %.not9.i.i.i.i to i64
  %i.ae = add nuw nsw i64 %i.q, %i.ad
  br label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.b
  %i.af = load i128, ptr %0, align 16, !alias.scope !50557, !noalias !50558, !noundef !67
  %i.ag = mul i128 %i.af, 47026247687942121848144207491837523525
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i128, ptr %i.ah, align 16, !alias.scope !50557, !noalias !50558, !noundef !67 ; 2 uses
  %i.aj = add i128 %i.ag, %i.ai                   ; 5 uses
  store i128 %i.aj, ptr %0, align 16, !alias.scope !50557, !noalias !50558
  %i.ak = lshr i128 %i.aj, 122
  %i.al = trunc nuw nsw i128 %i.ak to i64
  %i.am = lshr i128 %i.aj, 64
  %i.an = xor i128 %i.am, %i.aj
  %i.ao = trunc i128 %i.an to i64                 ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshr.i64(i64 %i.ao, i64 %i.ao, i64 %i.al)
  %i.aq = zext i64 %i.ap to i128
  %i.ar = zext i64 %1 to i128                     ; 2 uses
  %i.as = mul nuw i128 %i.aq, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw i128 %i.at to i64             ; 2 uses
  %i.av = trunc i128 %i.as to i64                 ; 2 uses
  %i.aw = sub i64 0, %1
  %i.ax = icmp ult i64 %i.aw, %i.av
  br i1 %i.ax, label %bb.f, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = mul i128 %i.aj, 47026247687942121848144207491837523525
  %i.az = add i128 %i.ay, %i.ai                   ; 4 uses
  store i128 %i.az, ptr %0, align 16, !alias.scope !50559, !noalias !50558
  %i.ba = lshr i128 %i.az, 122
  %i.bb = trunc nuw nsw i128 %i.ba to i64
  %i.bc = lshr i128 %i.az, 64
  %i.bd = xor i128 %i.bc, %i.az
  %i.be = trunc i128 %i.bd to i64                 ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshr.i64(i64 %i.be, i64 %i.be, i64 %i.bb)
  %7 = zext i64 %i.bf to i128
  %8 = mul nuw i128 %7, %i.ar
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.bg = xor i64 %i.av, -1
  %.not6.i.i.i.i = icmp ult i64 %i.bg, %10
  %i.bh = zext i1 %.not6.i.i.i.i to i64
  %i.bi = add nuw i64 %i.bh, %i.au
  br label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %.sroa.62.0 = phi i64 [ %i.q, %bb.c ], [ %i.ae, %bb.d ], [ %i.bi, %bb.f ], [ %i.au, %bb.e ]
  ret i64 %.sroa.62.0

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1150, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #60
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !50574
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50574
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50574
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50574
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !50574
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !50574
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !50574
  %.val.i = load i32, ptr %0, align 4, !noalias !50575, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50576
  store i32 %.val.i, ptr %i.a, align 4, !noalias !50576
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50576
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !50577
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50577
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50577 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50577
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !50577, !noundef !67
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50577, !noundef !67
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRhECskcxRuJ53GpR_9rustworkx(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(1) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !50590
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50590
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50590
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50590
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !50590
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !50590
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !50590
  %.val.i = load i8, ptr %0, align 1, !noalias !50591, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50592
  store i8 %.val.i, ptr %i.a, align 1, !noalias !50592
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50592
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !50593
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50593
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50593 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50593
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !50593, !noundef !67
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50593, !noundef !67
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  %i.hf = icmp slt i64 %.us-phi382.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.hf), !noalias !116179
  %i.hg = and i64 %i.he, -16                      ; 2 uses
  %i.hh = add i64 %i.hg, 16                       ; 2 uses
  %i.hi = add nsw i64 %.us-phi382.i.i, 17
  %i.hj = add i64 %i.hi, %i.hh                    ; 3 uses
  %i.hk = icmp uge i64 %i.hj, %i.hh
  call void @llvm.assume(i1 %i.hk), !noalias !116179
  %i.hl = icmp ult i64 %i.hj, 9223372036854775793
  call void @llvm.assume(i1 %i.hl), !noalias !116179
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi381.i.i) ], !noalias !116179
  %i.hm = sub nuw nsw i64 -16, %i.hg
  %i.hn = getelementptr inbounds i8, ptr %.us-phi381.i.i, i64 %i.hm
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !116176
  br label %.body.i.i

.split.i.i:                                       ; preds = %.noexc13.i.i, %.noexc13.us391.i.i, %.noexc13.us.i.i
  %.us-phi381.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.us.i.i, %.noexc13.us.i.i ], [ %.sroa.0.0.copyload.i.i.i.us392.i.i, %.noexc13.us391.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc13.i.i ] ; 2 uses
  %.us-phi382.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.us.i.i, %.noexc13.us.i.i ], [ %.sroa.5.0.copyload.i.i.i.us393.i.i, %.noexc13.us391.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i, %.noexc13.i.i ] ; 4 uses
  %.us-phi384.i.i = phi i64 [ 0, %.noexc13.us.i.i ], [ 8, %.noexc13.us391.i.i ], [ 8, %.noexc13.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.us-phi384.i.i, i64 %i.fl) #61
          to label %bb.w unwind label %bb.v, !noalias !116176

bb.w:                                             ; preds = %.split.i.i
  unreachable

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i: ; preds = %.noexc13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !noalias !116171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !116175
  store i64 %i.az, ptr %i.r, align 8, !noalias !116171
  store ptr %i.ha, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116171
  store i64 0, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116171
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116171
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.i.i.i, i64 16, i1 false), !noalias !116171
  store i64 %i.gy, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !116171
  store i64 %.pre-phi795.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !116171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12428.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !116171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !116178
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !116180
  %i.ho = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116180 ; 4 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.split405.i.i, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

.split405.i.i:                                    ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.us.i.i
  %.us-phi410.i.i = phi i64 [ 0, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.us.i.i ], [ 4, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.us-phi410.i.i, i64 %i.fp) #61
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !116171

.noexc.i.i.i:                                     ; preds = %.split405.i.i
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i
  store i32 0, ptr %i.ho, align 4, !noalias !116178
  store i64 %i.fo, ptr %i.n, align 8, !noalias !116178
  store ptr %i.ho, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116178
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116178
  call void @llvm.experimental.noalias.scope.decl(metadata !116181)
  call void @llvm.experimental.noalias.scope.decl(metadata !116182)
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.hq = phi ptr [ %i.hw, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.ho, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.hr = phi i64 [ %i.hy, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 5 uses
  %storemerge.i.le.i19.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.le.i21.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.val.i.i14.i.i.i.i.i.i.i = phi i64 [ %.val.i.i16.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i10.i.i.i.i.in.i.i.i = phi i64 [ %.us-phi.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.val.i.i.i10.i.i.i.i.i.i.i = add i64 %.val.i.i.i10.i.i.i.i.in.i.i.i, -1 ; 2 uses
  %.not.i.i.i.peel.i.i.i.i.i.i.not.i.i.i = icmp eq i64 %.val.i.i.i10.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.peel.i.i.i.i.i.i.not.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.split.preheader.i.i.i.i.i.i.i.i.i
  %exitcond.peel.not.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i14.i.i.i.i.i.i.i, %i.az
  br i1 %exitcond.peel.not.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i, label %bb.aa

_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.hs = add nuw nsw i64 %.val.i.i14.i.i.i.i.i.i.i, 1
  %storemerge.i.le2.i.i.i.i.i.i.i.i = trunc i64 %.val.i.i14.i.i.i.i.i.i.i to i32
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i
  %storemerge.i.le.i21.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.le2.i.i.i.i.i.i.i.i, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %storemerge.i.le.i19.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i16.i.i.i.i.i.i.i = phi i64 [ %i.hs, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i14.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i10.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ht = icmp samesign ult i64 %i.hr, 2305843009213693952
  call void @llvm.assume(i1 %i.ht)
  %i.hu = load i64, ptr %i.n, align 8, !range !70, !alias.scope !116183, !noalias !116184, !noundef !67
  %i.hv = icmp eq i64 %i.hr, %i.hu
  br i1 %i.hv, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.hr, i64 noundef %.us-phi.i.i.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4)
          to label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !116178

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i
  %.pre48.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !116183, !noalias !116184
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i, %bb.y
  %i.hw = phi ptr [ %.pre48.i.i.i.i.i, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.hq, %bb.y ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hr
  store i32 %storemerge.i.le.i21.i.i.i.i.i.i.i, ptr %i.hx, align 4, !noalias !116185
  %i.hy = add nuw nsw i64 %i.hr, 1                ; 2 uses
  store i64 %i.hy, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !116183, !noalias !116184
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i:   ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp34.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !116178 ; 2 uses
  %i.hz = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hz, label %.body.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i
  %.val8.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116178, !nonnull !67, !noundef !67
  %i.ia = shl nuw i64 %.val.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef %i.ia, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116178
  br label %.body.i.i.i

bb.z:                                             ; preds = %.split405.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !116186
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116171 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !116178
  %i.ic = icmp ult i64 %.pre.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp eq i64 %.pre.i.i.i, 0
  br i1 %i.id, label %._crit_edge730.i.i.i, label %.lr.ph729.i.i.i

.lr.ph729.i.i.i:                                  ; preds = %bb.aa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !116171
  %i.ie = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.ad unwind label %bb.ac, !noalias !116171

._crit_edge730.i.i.i:                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i, %bb.aa
  %.sroa.034.0.copyload35.i.i = load i64, ptr %i.r, align 8, !noalias !116187 ; 5 uses
  %.sroa.736.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116187 ; 5 uses
  %.sroa.736.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116187 ; 3 uses
  %.sroa.736.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116187 ; 2 uses
  %.sroa.736.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116187 ; 4 uses
  %.val56.i.i.i = load i64, ptr %i.q, align 8, !noalias !116171 ; 2 uses
  %i.if = icmp eq i64 %.val56.i.i.i, 0
  br i1 %i.if, label %bb.ct, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %._crit_edge730.i.i.i
  %.val57.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116171, !nonnull !67, !noundef !67
  %i.ig = shl nuw i64 %.val56.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i.i, i64 noundef %i.ig, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116171
  br label %bb.ct

bb.ab:                                            ; preds = %.loopexit.split-lp.i.i.i, %bb.ac
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.ij, %bb.ac ] ; 2 uses
  %.val54.i.i.i = load i64, ptr %i.q, align 8, !noalias !116171 ; 2 uses
  %i.ih = icmp eq i64 %.val54.i.i.i, 0
  br i1 %i.ih, label %.body.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i62.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i62.i.i.i: ; preds = %bb.ab
  %.val55.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116171, !nonnull !67, !noundef !67
  %i.ii = shl nuw i64 %.val54.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116171
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.ae, %.lr.ph729.i.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.lr.ph729.i.i.i
  %i.ik = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !116171
  %i.il = icmp eq i8 %i.ik, 2
  br i1 %i.il, label %bb.af, label %bb.ae, !prof !77

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.af unwind label %bb.ac, !noalias !116171

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i64 0, ptr %i.p, align 8, !alias.scope !116188, !noalias !116171
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116188, !noalias !116171
  store i64 0, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116188, !noalias !116171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i66.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !116171
  store i64 %i.ie, ptr %i.fq, align 8, !alias.scope !116188, !noalias !116171
  %i.im = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116171, !noundef !67 ; 8 uses
  %i.in = icmp ult i64 %i.im, 2
  br i1 %i.in, label %._crit_edge.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = load ptr, ptr %i.fr, align 8, !noalias !116171, !nonnull !67, !noundef !67 ; 4 uses
  %i.ip = icmp samesign ult i64 %i.im, 4294967295
  %.promoted.i.i.i.i = load i128, ptr %i.w, align 16, !noalias !116162 ; 3 uses
  %i.iq = load i128, ptr %i.fs, align 16, !noalias !116162 ; 6 uses
  br i1 %i.ip, label %.lr.ph22.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.al
  %i.ir = phi i128 [ %i.ku, %bb.al ], [ %.promoted.i.i.i.i, %bb.ag ] ; 2 uses
  %.sroa.06.017.i.i.i.i = phi i64 [ %i.is, %bb.al ], [ 0, %bb.ag ] ; 5 uses
  %i.is = add nuw nsw i64 %.sroa.06.017.i.i.i.i, 1 ; 5 uses
  %i.it = icmp samesign ugt i64 %.sroa.06.017.i.i.i.i, 4294967294
  br i1 %i.it, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iu = trunc nuw i64 %.sroa.06.017.i.i.i.i to i32
  %.neg576.i.i.i = xor i32 %i.iu, -1
  %i.iv = mul i128 %i.ir, 47026247687942121848144207491837523525
  %i.iw = add i128 %i.iv, %i.iq                   ; 5 uses
  %i.ix = lshr i128 %i.iw, 122
  %i.iy = trunc nuw nsw i128 %i.ix to i64
  %i.iz = lshr i128 %i.iw, 64
  %i.ja = xor i128 %i.iz, %i.iw
  %i.jb = trunc i128 %i.ja to i64                 ; 2 uses
  %i.jc = call noundef i64 @llvm.fshr.i64(i64 %i.jb, i64 %i.jb, i64 %i.iy)
  %i.jd = and i64 %i.jc, 4294967295
  %i.je = mul nuw i64 %i.jd, %i.is                ; 2 uses
  %i.jf = lshr i64 %i.je, 32                      ; 2 uses
  %i.jg = trunc i64 %i.je to i32                  ; 2 uses
  %i.jh = icmp ult i32 %.neg576.i.i.i, %i.jg
  br i1 %i.jh, label %bb.ai, label %.noexc68.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ji = mul i128 %i.iw, 47026247687942121848144207491837523525
  %i.jj = add i128 %i.ji, %i.iq                   ; 4 uses
  %i.jk = lshr i128 %i.jj, 122
  %i.jl = trunc nuw nsw i128 %i.jk to i64
  %i.jm = lshr i128 %i.jj, 64
  %i.jn = xor i128 %i.jm, %i.jj
  %i.jo = trunc i128 %i.jn to i64                 ; 2 uses
  %i.jp = call noundef i64 @llvm.fshr.i64(i64 %i.jo, i64 %i.jo, i64 %i.jl)
  %5 = and i64 %i.jp, 4294967295
  %6 = mul nuw i64 %5, %i.is
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.jq = xor i32 %i.jg, -1
  %.not9.i.i.i.i.i.i.i.i = icmp ult i32 %i.jq, %8
  %i.jr = zext i1 %.not9.i.i.i.i.i.i.i.i to i64
  %i.js = add nuw nsw i64 %i.jf, %i.jr
  br label %.noexc68.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jt = mul i128 %i.ir, 47026247687942121848144207491837523525
  %i.ju = add i128 %i.jt, %i.iq                   ; 5 uses
  %i.jv = lshr i128 %i.ju, 122
  %i.jw = trunc nuw nsw i128 %i.jv to i64
  %i.jx = lshr i128 %i.ju, 64
  %i.jy = xor i128 %i.jx, %i.ju
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = call noundef i64 @llvm.fshr.i64(i64 %i.jz, i64 %i.jz, i64 %i.jw)
  %i.kb = zext i64 %i.ka to i128
  %i.kc = zext nneg i64 %i.is to i128             ; 2 uses
  %i.kd = mul nuw nsw i128 %i.kb, %i.kc           ; 2 uses
  %i.ke = lshr i128 %i.kd, 64
  %i.kf = trunc nuw nsw i128 %i.ke to i64         ; 2 uses
  %i.kg = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kh = xor i64 %.sroa.06.017.i.i.i.i, -1
  %i.ki = icmp ult i64 %i.kh, %i.kg
  br i1 %i.ki, label %bb.ak, label %.noexc68.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.kj = mul i128 %i.ju, 47026247687942121848144207491837523525
  %i.kk = add i128 %i.kj, %i.iq                   ; 4 uses
  %i.kl = lshr i128 %i.kk, 122
  %i.km = trunc nuw nsw i128 %i.kl to i64
  %i.kn = lshr i128 %i.kk, 64
  %i.ko = xor i128 %i.kn, %i.kk
  %i.kp = trunc i128 %i.ko to i64                 ; 2 uses
  %i.kq = call noundef i64 @llvm.fshr.i64(i64 %i.kp, i64 %i.kp, i64 %i.km)
  %9 = zext i64 %i.kq to i128
  %10 = mul nuw nsw i128 %9, %i.kc
  %11 = lshr i128 %10, 64
  %12 = trunc nuw nsw i128 %11 to i64
  %i.kr = xor i64 %i.kg, -1
  %.not6.i.i.i.i.i.i.i.i = icmp ult i64 %i.kr, %12
  %i.ks = zext i1 %.not6.i.i.i.i.i.i.i.i to i64
  %i.kt = add nuw i64 %i.ks, %i.kf
  br label %.noexc68.i.i.i

.noexc68.i.i.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.ku = phi i128 [ %i.iw, %bb.ah ], [ %i.jj, %bb.ai ], [ %i.kk, %bb.ak ], [ %i.ju, %bb.aj ] ; 2 uses
  %.sroa.62.0.i.i.i.i = phi i64 [ %i.jf, %bb.ah ], [ %i.js, %bb.ai ], [ %i.kt, %bb.ak ], [ %i.kf, %bb.aj ] ; 3 uses
  %i.kv = icmp ult i64 %.sroa.62.0.i.i.i.i, %i.im
  br i1 %i.kv, label %bb.al, label %.invoke916.i.i.i

bb.al:                                            ; preds = %.noexc68.i.i.i
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.06.017.i.i.i.i ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.62.0.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i67.i.i.i = load i32, ptr %i.kw, align 4, !alias.scope !116189, !noalias !116190
  %i.ky = load i32, ptr %i.kx, align 4, !alias.scope !116189, !noalias !116190
  store i32 %i.ky, ptr %i.kw, align 4, !alias.scope !116189, !noalias !116190
  store i32 %.sroa.0.0.copyload.i.i67.i.i.i, ptr %i.kx, align 4, !alias.scope !116189, !noalias !116190
  %exitcond.not.i.i.i.i = icmp eq i64 %i.is, %i.im
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph22.i.i.i.i:                                 ; preds = %bb.ag, %bb.as
  %i.kz = phi i128 [ %i.mr, %bb.as ], [ %.promoted.i.i.i.i, %bb.ag ]
  %.sroa.04.021.i.i.i.i = phi i64 [ %i.lb, %bb.as ], [ 0, %bb.ag ] ; 2 uses
  %.sroa.4.020.i.i.i.i = phi i32 [ %i.lc, %bb.as ], [ 0, %bb.ag ] ; 3 uses
  %.sroa.7.019.i.i.i.i = phi i32 [ %.sroa.7.2.i.i.i.i, %bb.as ], [ 0, %bb.ag ]
  %.sroa.12.018.i.i.i.i = phi i8 [ %.sroa.01.0.i.i.i.i.i, %bb.as ], [ 1, %bb.ag ] ; 2 uses
  %i.la = phi i128 [ %i.ms, %bb.as ], [ %.promoted.i.i.i.i, %bb.ag ] ; 2 uses
  %i.lb = add nuw nsw i64 %.sroa.04.021.i.i.i.i, 1 ; 2 uses
  %i.lc = add nuw i32 %.sroa.4.020.i.i.i.i, 1     ; 6 uses
  %i.ld = icmp eq i8 %.sroa.12.018.i.i.i.i, 0
  br i1 %i.ld, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph22.i.i.i.i
  %i.le = add i8 %.sroa.12.018.i.i.i.i, -1
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph22.i.i.i.i
  %i.lf = icmp eq i32 %i.lc, 2
  br i1 %i.lf, label %.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.an
  %.sroa.0.012.i.i.i.i.i.i = add nuw i32 %.sroa.4.020.i.i.i.i, 2 ; 2 uses
  %i.lg = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.lc, i32 %.sroa.0.012.i.i.i.i.i.i) ; 2 uses
  %i.lh = extractvalue { i32, i1 } %i.lg, 1
  br i1 %i.lh, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !161

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  %i.li = sub i32 %.sroa.0.013.i.i.i.i.i.i, %.sroa.4.020.i.i.i.i
  %i.lj = trunc i32 %i.li to i8
  %i.lk = add i8 %i.lj, -1
  %i.ll = icmp eq i32 %i.mn, 0
  br i1 %i.ll, label %bb.ap, label %.thread.i.i.i.i.i.i, !prof !116191

.thread.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.an
  %.sroa.03.010.i.i.i.i.i.i = phi i32 [ %i.mn, %._crit_edge.i.i.i.i.i.i ], [ 479001600, %bb.an ], [ %i.lc, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi i8 [ %i.lk, %._crit_edge.i.i.i.i.i.i ], [ 10, %bb.an ], [ 0, %.preheader.i.i.i.i.i.i ]
  %i.lm = mul i128 %i.la, 47026247687942121848144207491837523525
  %i.ln = add i128 %i.lm, %i.iq                   ; 5 uses
  %i.lo = lshr i128 %i.ln, 122
  %i.lp = trunc nuw nsw i128 %i.lo to i64
  %i.lq = lshr i128 %i.ln, 64
  %i.lr = xor i128 %i.lq, %i.ln
  %i.ls = trunc i128 %i.lr to i64                 ; 2 uses
  %i.lt = call noundef i64 @llvm.fshr.i64(i64 %i.ls, i64 %i.ls, i64 %i.lp)
  %i.lu = and i64 %i.lt, 4294967295
  %i.lv = zext i32 %.sroa.03.010.i.i.i.i.i.i to i64 ; 2 uses
  %i.lw = mul nuw i64 %i.lu, %i.lv                ; 2 uses
  %i.lx = lshr i64 %i.lw, 32                      ; 2 uses
  %i.ly = trunc i64 %i.lw to i32                  ; 2 uses
  %i.lz = sub i32 0, %.sroa.03.010.i.i.i.i.i.i
  %i.ma = icmp ugt i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.ao, label %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ao:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mb = mul i128 %i.ln, 47026247687942121848144207491837523525
  %i.mc = add i128 %i.mb, %i.iq                   ; 4 uses
  %i.md = lshr i128 %i.mc, 122
  %i.me = trunc nuw nsw i128 %i.md to i64
  %i.mf = lshr i128 %i.mc, 64
  %i.mg = xor i128 %i.mf, %i.mc
  %i.mh = trunc i128 %i.mg to i64                 ; 2 uses
  %i.mi = call noundef i64 @llvm.fshr.i64(i64 %i.mh, i64 %i.mh, i64 %i.me)
  %13 = and i64 %i.mi, 4294967295
  %14 = mul nuw i64 %13, %i.lv
  %15 = lshr i64 %14, 32
  %16 = trunc nuw i64 %15 to i32
  %i.mj = xor i32 %i.ly, -1
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.mj, %16
  %i.mk = zext i1 %.not9.i.i.i.i.i.i.i.i.i.i to i64
  %i.ml = add nuw nsw i64 %i.lx, %i.mk
  br label %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1150, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1320) #60
          to label %.noexc70.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !116171

.noexc70.i.i.i:                                   ; preds = %bb.ap
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.mm = phi { i32, i1 } [ %i.mo, %.lr.ph.i.i.i.i.i.i ], [ %i.lg, %.preheader.i.i.i.i.i.i ]
  %.sroa.0.013.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.mm, 0       ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = add i32 %.sroa.0.013.i.i.i.i.i.i, 1 ; 2 uses
  %i.mo = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.mn, i32 %.sroa.0.0.i.i.i.i.i.i) ; 2 uses
  %i.mp = extractvalue { i32, i1 } %i.mo, 1
  br i1 %i.mp, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !162

_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.ao, %.thread.i.i.i.i.i.i
  %i.mq = phi i128 [ %i.mc, %bb.ao ], [ %i.ln, %.thread.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ml, %bb.ao ], [ %i.lx, %.thread.i.i.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i to i32
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.am
  %i.mr = phi i128 [ %i.mq, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.kz, %bb.am ] ; 2 uses
  %i.ms = phi i128 [ %i.mq, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.la, %bb.am ]
  %.sroa.7.1.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.7.019.i.i.i.i, %bb.am ] ; 4 uses
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %.sroa.05.09.i.i.i.i.i.i, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.le, %bb.am ] ; 2 uses
  %i.mt = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.mt, label %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mu = urem i32 %.sroa.7.1.i.i.i.i, %i.lc
  %i.mv = udiv i32 %.sroa.7.1.i.i.i.i, %i.lc
  br label %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.7.2.i.i.i.i = phi i32 [ %i.mv, %bb.ar ], [ %.sroa.7.1.i.i.i.i, %bb.aq ]
  %.sroa.0.0.in.i.i.i.i.i = phi i32 [ %i.mu, %bb.ar ], [ %.sroa.7.1.i.i.i.i, %bb.aq ]
  %.sroa.0.0.i.i.i.i.i = zext i32 %.sroa.0.0.in.i.i.i.i.i to i64 ; 3 uses
  %i.mw = icmp samesign ugt i64 %i.im, %.sroa.0.0.i.i.i.i.i
  br i1 %i.mw, label %bb.as, label %.invoke916.i.i.i

bb.as:                                            ; preds = %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.04.021.i.i.i.i ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i11.i.i.i.i = load i32, ptr %i.mx, align 4, !alias.scope !116192, !noalias !116190
  %i.mz = load i32, ptr %i.my, align 4, !alias.scope !116192, !noalias !116190
  store i32 %i.mz, ptr %i.mx, align 4, !alias.scope !116192, !noalias !116190
  store i32 %.sroa.0.0.copyload.i11.i.i.i.i, ptr %i.my, align 4, !alias.scope !116192, !noalias !116190
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.lb, %i.im
  br i1 %exitcond27.not.i.i.i.i, label %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph22.i.i.i.i

.loopexit579.i.i.i:                               ; preds = %bb.ax
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.bg, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i169.i.i.i, %bb.cq, %bb.ce, %bb.bu
  %lpad.loopexit581.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %.invoke.i.i.i, %.invoke916.i.i.i, %bb.ap
  %lpad.loopexit.split-lp582.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit579.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit579.i.i.i ], [ %lpad.loopexit581.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp582.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p) #63, !noalias !116171
  br label %bb.ab

_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.al, %bb.as
  %storemerge.i.i = phi i128 [ %i.mr, %bb.as ], [ %i.ku, %bb.al ]
  store i128 %storemerge.i.i, ptr %i.w, align 16, !noalias !116162
  %.pr.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116171 ; 2 uses
  %i.na = icmp ult i64 %.pr.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.na)
  %i.nb = icmp samesign ugt i64 %.pr.i.i.i, 1
  br i1 %i.nb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !116193)
  %i.nc = load i64, ptr %i.fx, align 8, !alias.scope !116193, !noalias !116194, !noundef !67
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %.noexc74.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.ne = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116193, !noalias !116194, !nonnull !67, !noundef !67 ; 8 uses
  %i.nf = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116193, !noalias !116194, !noundef !67 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.nf, 24
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx.i.i.i.i ; 5 uses
  %i.nh = icmp eq i64 %i.nf, 0
  br i1 %i.nh, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.preheader.i.i.i

.lr.ph.i73.preheader.i.i.i:                       ; preds = %bb.at
  %i.ni = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116171
  %.fr.i.i.i = freeze i64 %i.ni                   ; 3 uses
  %i.nj = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116171, !nonnull !67 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = getelementptr i8, ptr %i.nj, i64 12
  %.val5.i198.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !116171 ; 2 uses
  %.val6.i199.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !116171 ; 2 uses
  %i.nm = xor i64 %.val5.i198.i.i.i, 8317987319222330741
  %i.nn = xor i64 %.val6.i199.i.i.i, 7237128888997146477 ; 3 uses
  %i.no = xor i64 %.val5.i198.i.i.i, 7816392313619706465
  %i.np = add i64 %i.nn, %i.nm                    ; 3 uses
  %i.nq = call i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 13)
  %i.nr = xor i64 %i.nq, %i.np                    ; 3 uses
  %i.ns = call i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 32)
  %i.nt = call i64 @llvm.fshl.i64(i64 %i.nr, i64 %i.nr, i64 17)
  %i.nu = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116171 ; 2 uses
  %i.nv = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116171, !nonnull !67 ; 2 uses
  switch i64 %.fr.i.i.i, label %.lr.ph.i73.i.i.i.preheader [
    i64 0, label %.lr.ph.i73.preheader.i.split.us.i.i
    i64 1, label %.lr.ph.i73.i.us374.i.i
  ]

.lr.ph.i73.i.i.i.preheader:                       ; preds = %.lr.ph.i73.preheader.i.i.i
  %invariant.op = xor i64 %.val6.i199.i.i.i, 8387220255154660723
  br label %.lr.ph.i73.i.i.i

.lr.ph.i73.preheader.i.split.us.i.i:              ; preds = %.lr.ph.i73.preheader.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %.val12.i.us.i.us.i.i = load i32, ptr %i.nw, align 4, !noalias !116195, !noundef !67
  br label %.lr.ph.i73.i.us.i.i

.lr.ph.i73.i.us.i.i:                              ; preds = %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, %.lr.ph.i73.preheader.i.split.us.i.i
  %.sroa.0.0314.i.i.us.i.i = phi ptr [ %i.nz, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i ], [ %i.ne, %.lr.ph.i73.preheader.i.split.us.i.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us.i.i, i64 16
  %.val.i.i.us.i.i = load i32, ptr %i.nx, align 4, !noalias !116195, !noundef !67
  %i.ny = icmp eq i32 %.val.i.i.us.i.i, %.val12.i.us.i.us.i.i
  br i1 %i.ny, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, label %.noexc74.thread.i.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i: ; preds = %.lr.ph.i73.i.us.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us.i.i, i64 24 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.ng
  br i1 %i.oa, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.us.i.i

.lr.ph.i73.i.us374.i.i:                           ; preds = %.lr.ph.i73.preheader.i.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i
  %.sroa.0.0314.i.i.us375.i.i = phi ptr [ %i.ob, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i ], [ %i.ne, %.lr.ph.i73.preheader.i.i.i ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us375.i.i, i64 24 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us375.i.i, i64 16
  %.val.i.i.us376.i.i = load i32, ptr %i.oc, align 4, !noalias !116195, !noundef !67 ; 3 uses
  br label %.lr.ph.i73.split.us714.i.us.i.i

.lr.ph.i73.split.us714.i.us.i.i:                  ; preds = %.noexc74.thread545.us717.i.us.i.i, %.lr.ph.i73.i.us374.i.i
  %.sroa.01.012.i.us715.i.us.i.i = phi ptr [ %i.od, %.noexc74.thread545.us717.i.us.i.i ], [ %i.ne, %.lr.ph.i73.i.us374.i.i ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.us715.i.us.i.i, i64 24 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.us715.i.us.i.i, i64 16
  %.val12.i.us716.i.us.i.i = load i32, ptr %i.oe, align 4, !noalias !116195, !noundef !67 ; 3 uses
  %i.of = icmp eq i32 %.val.i.i.us376.i.i, %.val12.i.us716.i.us.i.i
  br i1 %i.of, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i, label %.noexc74.us.i.us.i.i

.noexc74.us.i.us.i.i:                             ; preds = %.lr.ph.i73.split.us714.i.us.i.i
  %i.og = call i32 @llvm.umin.i32(i32 %.val.i.i.us376.i.i, i32 %.val12.i.us716.i.us.i.i)
  %i.oh = call i32 @llvm.umax.i32(i32 %.val.i.i.us376.i.i, i32 %.val12.i.us716.i.us.i.i)
  %.val3.i192.us.i.us.i.i = load i32, ptr %i.nk, align 4, !noalias !116196, !noundef !67
  %.val4.i193.us.i.us.i.i = load i32, ptr %i.nl, align 4, !noalias !116196
  %i.oi = icmp eq i32 %i.og, %.val3.i192.us.i.us.i.i
  %i.oj = icmp eq i32 %i.oh, %.val4.i193.us.i.us.i.i
  %spec.select.i.i.i194.us.i.us.i.i = select i1 %i.oi, i1 %i.oj, i1 false
  br i1 %spec.select.i.i.i194.us.i.us.i.i, label %.noexc74.thread545.us717.i.us.i.i, label %.noexc74.thread.i.i.i

.noexc74.thread545.us717.i.us.i.i:                ; preds = %.noexc74.us.i.us.i.i
  %i.ok = icmp eq ptr %i.od, %i.ng
  br i1 %i.ok, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i, label %.lr.ph.i73.split.us714.i.us.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i: ; preds = %.noexc74.thread545.us717.i.us.i.i, %.lr.ph.i73.split.us714.i.us.i.i
  %i.ol = icmp eq ptr %i.ob, %i.ng
  br i1 %i.ol, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.us374.i.i

.lr.ph.i73.i.i.i:                                 ; preds = %.lr.ph.i73.i.i.i.preheader, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i
  %.sroa.0.0314.i.i.i.i = phi ptr [ %i.om, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i ], [ %i.ne, %.lr.ph.i73.i.i.i.preheader ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.i.i, i64 24 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.i.i, i64 16
  %.val.i.i.i.i = load i32, ptr %i.on, align 4, !noalias !116195, !noundef !67 ; 3 uses
  br label %.lr.ph.i73.split.i.i.i

.lr.ph.i73.split.i.i.i:                           ; preds = %.noexc74.thread545.loopexit.i.i.i, %.lr.ph.i73.i.i.i
  %.sroa.01.012.i.i.i.i = phi ptr [ %i.oo, %.noexc74.thread545.loopexit.i.i.i ], [ %i.ne, %.lr.ph.i73.i.i.i ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.i.i.i, i64 24 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.i.i.i, i64 16
  %.val12.i.i.i.i = load i32, ptr %i.op, align 4, !noalias !116195, !noundef !67 ; 3 uses
  %i.oq = icmp eq i32 %.val.i.i.i.i, %.val12.i.i.i.i
  br i1 %i.oq, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i349.i.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i: ; preds = %.noexc74.thread545.loopexit.i.i.i, %.lr.ph.i73.split.i.i.i
  %i.or = icmp eq ptr %i.om, %i.ng
  br i1 %i.or, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.i.i

_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i349.i.i.i: ; preds = %.lr.ph.i73.split.i.i.i
  %i.os = call i32 @llvm.umin.i32(i32 %.val.i.i.i.i, i32 %.val12.i.i.i.i) ; 2 uses
  %i.ot = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i, i32 %.val12.i.i.i.i) ; 2 uses
  %i.ou = zext i32 %i.os to i64
  %i.ov = zext i32 %i.ot to i64
end_hunk_1
begin_hunk_2_@llvm.fma.f64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCslwFuT2d6ECx_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7_NtCsbv8bzjJ0gSk_6flate23memNtNtNtCslwFuT2d6ECx_4core2io5error5ErrorINtNtBC_7convert4FromNtB5_13CompressErrorE4from() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCsi0YPOvDEjiZ_4pyo37pyclass5guardNtNtB9_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_17PyClassGuardErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs1zNYWXRTdJn_9quick_xml6events10attributesNtB5_9AttributeINtNtCslwFuT2d6ECx_4core7convert4FromTReB1H_EE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyType_IsSubtype(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCslwFuT2d6ECx_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCslwFuT2d6ECx_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs59S24YpdcPa_10serde_core2deDNtB5_8ExpectedEL_NtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCse4xgDkpji04_10num_bigint7biguintNtB5_7BigUintNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCslwFuT2d6ECx_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCslwFuT2d6ECx_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3Tt2PVjAfPX_5numpy6borrow6shared7release(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods4repr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13python_format(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsl_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numiNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB8_8instance5BoundNtB4_5PySetENtB4_12PySetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo35types9frozensetINtNtB9_8instance5BoundNtB5_11PyFrozenSetENtB5_18PyFrozenSetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCscQOBX8uaZYv_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsbv8bzjJ0gSk_6flate23memNtB5_10Decompress5reset(ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCscQOBX8uaZYv_3std2fsNtB5_4FileNtNtNtCs87CvPiUlf0m_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_NtNtCs1zNYWXRTdJn_9quick_xml6events10attributesNtB5_9IterState4next(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription27unexpected_keyword_argument(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_10tp_dealloc(ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE27get_borrowed_item_unchecked(ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple18wrong_tuple_length(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCslwFuT2d6ECx_4core3fmt5floatfNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtCslLviULm4Laq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCslwFuT2d6ECx_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCslwFuT2d6ECx_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash17hash_bytes_medium(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs3Tt2PVjAfPX_5numpy6npyffi5array13PyArray_Check(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCslwFuT2d6ECx_4core3str5errorNtB5_14ParseBoolErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #41

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo311conversions11num_complexINtCse4EQE0hdTSP_11num_complex7ComplexdENtNtB9_10conversion12IntoPyObject13into_pyobject(double noundef, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCscQOBX8uaZYv_3std3sys5stdio4unixNtB5_6StderrNtNtNtCslwFuT2d6ECx_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsp_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numRjNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smin.i128(i128, i128) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #41

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #39 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #43 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #47 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #55 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #58 = { cold noreturn nounwind }
attributes #59 = { nounwind }
attributes #60 = { noinline noreturn }
attributes #61 = { noreturn }
attributes #62 = { noinline }
attributes #63 = { cold }
attributes #64 = { inlinehint }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{!0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!1 = distinct !{!1, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!2 = distinct !{!2, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!3 = distinct !{!3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!4 = distinct !{!4, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!5 = distinct !{!5, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!6 = distinct !{!6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!7 = distinct !{!7, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!8 = distinct !{!8, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!9 = distinct !{!9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!10 = distinct !{!10, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!11 = distinct !{!11, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!12 = distinct !{!12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!13 = distinct !{!13, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!14 = distinct !{!14, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!15 = distinct !{!15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!16 = distinct !{!16, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!17 = distinct !{!17, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!18 = distinct !{!18, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx"}
!19 = distinct !{!19, !18, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx: argument 0"}
!20 = distinct !{!20, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx"}
!21 = distinct !{!21, !20, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx: argument 0"}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{!27, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!28 = distinct !{!28, !27, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!33 = distinct !{!33, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!35 = distinct !{!35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!36 = distinct !{!36, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!37 = distinct !{!37, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!38 = distinct !{!38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!39 = distinct !{!39, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!41 = distinct !{!41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!42 = distinct !{!42, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!43 = distinct !{!43, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!44 = distinct !{!44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!45 = distinct !{!45, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!46 = distinct !{!46, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!47 = distinct !{null, null, null}
!48 = distinct !{null, null, null, null, null}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null, null, null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null, null}
!56 = distinct !{null}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{null, null, null, null, null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 2, !"RtLibUseGOT", i32 1}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!66 = !{i64 -1, i64 -9223372036854775808}
!67 = !{}
!68 = !{i64 0, i64 2}
!69 = !{i8 0, i8 2}
!70 = !{i64 0, i64 -9223372036854775808}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!"branch_weights", !"expected", i32 2144103052, i32 3380596}
!73 = !{!"branch_weights", i32 2002, i32 2000}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{i32 0, i32 2}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{i8 0, i8 3}
!79 = !{!"branch_weights", i32 1, i32 4001}
!80 = !{!"branch_weights", i32 1, i32 1999}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!1}
!83 = !{!2}
!84 = !{!"branch_weights", i32 2146410443, i32 1073205}
!85 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!86 = !{!4}
!87 = !{!5}
!88 = !{!7}
!89 = !{!8}
!90 = !{!"branch_weights", i32 4001, i32 4000000}
!91 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!92 = !{!13}
!93 = !{!14}
!94 = !{!16}
!95 = !{!17}
end_hunk_2
