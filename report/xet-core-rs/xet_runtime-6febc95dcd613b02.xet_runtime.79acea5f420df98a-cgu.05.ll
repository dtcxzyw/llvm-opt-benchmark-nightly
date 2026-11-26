Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.05?download=true
inline.NumInlined: 479
inline.NumDeleted: 244
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore28increment_total_permits_impl:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.06.0.i23 = phi i64 [ %i.ac, %bb.m ], [ %i.ag, %bb.o ] ; 3 uses
  %.not.i.i24.not = icmp eq i64 %.sroa.06.0.i23, 0
  br i1 %.not.i.i24.not, label %.thread9, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.06.0.i23, i64 %i.z)
  %i.ae = cmpxchg weak ptr %i.ab, i64 %.sroa.06.0.i23, i64 %i.ad seq_cst seq_cst, align 8, !noalias !237 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 3 uses
  br i1 %i.af, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 %i.z)
  %.neg = sub i64 %i.ah, %i.ag
  br label %.thread9

.thread9:                                         ; preds = %bb.n, %bb.p
  %.sroa.05.0.neg = phi i64 [ %.neg, %bb.p ], [ 0, %bb.n ]
  %i.ai = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.thread9
  %i.ak = add i64 %.sroa.05.0.neg, %i.z
  %i.al = trunc i64 %i.ak to i32
  store ptr %.0.val, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.al, ptr %.sroa.67.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  br i1 %2, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.ar = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit, !prof !9

bb.u:                                             ; preds = %.thread9
  tail call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuarduEECsarFSTFZzLuM_11xet_runtime.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i29, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.v:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.w:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore3new(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.05.i = phi i64 [ 1, %bb.a ], [ %i.r, %bb.e ] ; 5 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.05.i, i1 true) ; 2 uses
  %i.f = lshr i64 %2, %i.e
  %i.g = add i64 %.sroa.0.05.i, -1                ; 2 uses
  %i.h = and i64 %i.g, %2
  %.not.i = icmp ne i64 %i.h, 0
  %i.i = zext i1 %.not.i to i64
  %.sroa.03.0.i = add i64 %i.f, %i.i              ; 2 uses
  %i.j = icmp ugt i64 %.sroa.03.0.i, 4294967295
  br i1 %i.j, label %bb.d, label %_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13compute_basis.exit

bb.c:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = shl i64 %.sroa.0.05.i, 1                 ; 3 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.k, i1 true) ; 2 uses
  %i.m = lshr i64 %2, %i.l
  %i.n = add i64 %i.k, -1                         ; 2 uses
  %i.o = and i64 %i.n, %2
  %.not.i.1 = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not.i.1 to i64
  %.sroa.03.0.i.1 = add nuw i64 %i.m, %i.p        ; 2 uses
  %i.q = icmp ugt i64 %.sroa.03.0.i.1, 4294967295
  br i1 %i.q, label %bb.e, label %_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13compute_basis.exit

bb.e:                                             ; preds = %bb.d
  %i.r = shl i64 %.sroa.0.05.i, 2                 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13compute_basis.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.05.i.lcssa = phi i64 [ %.sroa.0.05.i, %bb.b ], [ %i.k, %bb.d ]
  %.lcssa40 = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ %i.g, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.03.0.i.lcssa = phi i64 [ %.sroa.03.0.i, %bb.b ], [ %.sroa.03.0.i.1, %bb.d ] ; 4 uses
  %i.t = lshr i64 %1, %.lcssa40
  %i.u = and i64 %.lcssa, %1
  %.not = icmp ne i64 %i.u, 0
  %i.v = zext i1 %.not to i64
  %.sroa.0.0 = add i64 %i.t, %i.v                 ; 5 uses
  %.not.i19 = icmp ugt i64 %.sroa.0.0, %.sroa.03.0.i.lcssa
  br i1 %.not.i19, label %bb.f, label %_RNvXs13_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_3Ord5clamp.exit, !prof !9

bb.f:                                             ; preds = %_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13compute_basis.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !252
  store i64 %.sroa.0.0, ptr %i.c, align 8, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !252
  store i64 %.sroa.03.0.i.lcssa, ptr %i.b, align 8, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  store ptr %i.c, ptr %i.a, align 8, !noalias !252
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !252
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.w, align 8, !noalias !252
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !252
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #30
  unreachable

_RNvXs13_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_3Ord5clamp.exit: ; preds = %_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore13compute_basis.exit
  %i.x = and i64 %.lcssa, %0
  %.not18 = icmp ne i64 %i.x, 0
  %i.y = lshr i64 %0, %.lcssa40
  %i.z = zext i1 %.not18 to i64
  %.sroa.04.0 = add i64 %i.y, %i.z                ; 2 uses
  %i.aa = icmp ult i64 %.sroa.04.0, %.sroa.0.0
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.04.0, i64 %.sroa.03.0.i.lcssa)
  %.sroa.0.0.i = select i1 %i.aa, i64 %.sroa.0.0, i64 %..i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.5, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !253
  %i.ab = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !253 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !14

bb.g:                                             ; preds = %_RNvXs13_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_3Ord5clamp.exit
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #32, !noalias !253
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs13_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_3Ord5clamp.exit
  store i64 1, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx22, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %.sroa.03.0.i.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.0.05.i.lcssa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !254
  %i.af = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !254 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEE3newB16_.exit, !prof !14

bb.h:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !255
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1k_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ae) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1k_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEEB1k_.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.ah

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEE3newB16_.exit: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #31 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !258
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !258
  %i.f = load i64, ptr %i.a, align 8, !range !4, !noalias !258, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !258, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !258, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !258
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !258
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !15
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #31
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #31
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
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !15
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !15

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
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_6filter13layer_filters8FilteredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryNtNtNtB1S_6format6pretty6PrettyINtB2U_6FormatB2Q_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1d_3env9EnvFilterB2h_EB2h_ENtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber9try_closeCsarFSTFZzLuM_11xet_runtime:bb.a
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.l
  %i.s = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.m, label %_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1n_6format6pretty6PrettyINtB2p_6FormatB2l_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB7_3env9EnvFilterB1M_EINtNtB9_5layer5LayerB1M_E8on_closeCsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %.noexc7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !align !6, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  invoke void @_RINvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3envNtB5_9EnvFilter8on_closeNtNtNtB9_8registry7sharded8RegistryECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1, ptr noundef align 8 %i.v, i64 noundef %i.x)
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1784
  invoke void @_RNvXsb_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB7_6format6pretty6PrettyINtB1K_6FormatB1G_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingEINtNtB9_5layer5LayerB17_E8on_closeCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, i64 noundef range(i64 1, 0) %1, ptr noundef align 8 %i.v, i64 noundef %i.x)
          to label %_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1n_6format6pretty6PrettyINtB2p_6FormatB2l_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB7_3env9EnvFilterB1M_EINtNtB9_5layer5LayerB1M_E8on_closeCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e

_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1n_6format6pretty6PrettyINtB2p_6FormatB2l_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB7_3env9EnvFilterB1M_EINtNtB9_5layer5LayerB1M_E8on_closeCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.noexc8, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.n:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded10CloseGuardEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB4_25AdjustableSemaphorePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8, !noalias !438
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.g, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %.not.i.i.not = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %.not.i.i.not, label %_RINvMsY_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicyE10try_updateNCNvNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore11attempt_sub0EB1e_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.06.0.i, i64 %i.d)
  %i.i = cmpxchg weak ptr %i.f, i64 %.sroa.06.0.i, i64 %i.h seq_cst seq_cst, align 8, !noalias !438 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.d)
  br label %_RINvMsY_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicyE10try_updateNCNvNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore11attempt_sub0EB1e_.exit.thread

_RINvMsY_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicyE10try_updateNCNvNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore11attempt_sub0EB1e_.exit.thread: ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  store ptr null, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsY_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicyE10try_updateNCNvNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore11attempt_sub0EB1e_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.p, ptr %i.q, align 8
  %.not17 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not17, label %.thread, label %bb.g

bb.f:                                             ; preds = %_RINvMsY_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicyE10try_updateNCNvNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore11attempt_sub0EB1e_.exit.thread
  %.not16 = icmp eq i64 %.sroa.0.0, %i.d
  br i1 %.not16, label %bb.q, label %bb.s

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.r = trunc nuw i64 %.sroa.0.0 to i32          ; 3 uses
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = sub nuw i32 %i.p, %i.r
  store i32 %i.t, ptr %i.q, align 8, !alias.scope !439
  %i.u = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !439
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.g, %bb.p, %bb.e
  invoke void @_RNvXs2_NtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB5_20OwnedSemaphorePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.thread
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.x = load ptr, ptr %i.a, align 8, !alias.scope !442, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !443
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !446, !nonnull !5, !noundef !5
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !447
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsarFSTFZzLuM_11xet_runtime.exit

bb.n:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.ae, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #28
          to label %common.resume unwind label %bb.r

bb.p:                                             ; preds = %bb.h
  invoke void @_RNvMs0_NtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB5_20OwnedSemaphorePermit6forget(ptr noundef nonnull %i.n, i32 noundef %i.r)
          to label %.thread unwind label %bb.o

bb.q:                                             ; preds = %bb.f, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsarFSTFZzLuM_11xet_runtime.exit
  ret void

bb.r:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.s:                                             ; preds = %bb.f
  %i.ag = sub nsw i64 %i.d, %.sroa.0.0
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  tail call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB2_9Semaphore11add_permits(ptr noundef nonnull align 8 %i.ak, i64 noundef %i.ag)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1N_6format4json10JsonFieldsINtB2P_6FormatNtB2N_4JsonEENtNtB18_3env9EnvFilterB2c_EB2c_ENtNtB9_4util17SubscriberInitExt8try_initCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2368) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2384 x i8], align 8              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  store i64 1, ptr %i.a, align 8, !noalias !467
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !467
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2368) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(2368) %0, i64 2368, i1 false), !noalias !468
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !469
  %i.h = tail call noundef align 8 dereferenceable_or_null(2384) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2384, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !469 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonEENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2384) #32
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !467

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB1l_6filter13layer_filters8FilteredINtNtNtB1l_3fmt9fmt_layer5LayerNtNtNtB1l_8registry7sharded8RegistryNtNtNtB30_6format4json10JsonFieldsINtB44_6FormatNtB42_4JsonEENtNtB2k_3env9EnvFilterB3q_EB3q_EEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(2384) %i.a) #28
          to label %common.resume unwind label %bb.d, !noalias !467

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !467
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonEENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2384) %i.h, ptr noundef nonnull align 8 dereferenceable(2384) %i.a, i64 2384, i1 false), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !467
  store i64 1, ptr %i.b, align 8, !noalias !467
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !467
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !467
  invoke void @_RNvNtCs94TQx44N27d_12tracing_core8callsite17register_dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e, !noalias !467

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonEENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !470
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i) #27
          to label %common.resume unwind label %bb.g, !noalias !467

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !467
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonEENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !467
  %i.p = call noundef zeroext i1 @_RNvNtCs94TQx44N27d_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %bb.h, label %switch.lookup

switch.lookup:                                    ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.q, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 5, ptr %i.c, align 8
  %i.r = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %switch.offset = sub i64 5, %i.r
  call void @_RINvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB6_7Builder14with_max_levelNtCs2kss5F6ZsCC_3log11LevelFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %switch.offset)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = call noundef zeroext i1 @_RNvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %spec.select15 = select i1 %i.s, ptr inttoptr (i64 1 to ptr), ptr null
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.4.0 = phi ptr [ @34, %switch.lookup ], [ @36, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.0.0 = phi ptr [ %spec.select15, %switch.lookup ], [ inttoptr (i64 1 to ptr), %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonEENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1N_6format4json10JsonFieldsINtB2P_6FormatNtB2N_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB18_3env9EnvFilterB2c_EB2c_ENtNtB9_4util17SubscriberInitExt8try_initCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2392) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2408 x i8], align 8              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !491
  store i64 1, ptr %i.a, align 8, !noalias !491
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !491
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2392) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(2392) %0, i64 2392, i1 false), !noalias !492
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !493
  %i.h = tail call noundef align 8 dereferenceable_or_null(2408) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2408, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !493 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2408) #32
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !491

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB1l_6filter13layer_filters8FilteredINtNtNtB1l_3fmt9fmt_layer5LayerNtNtNtB1l_8registry7sharded8RegistryNtNtNtB30_6format4json10JsonFieldsINtB44_6FormatNtB42_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB2k_3env9EnvFilterB3q_EB3q_EEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(2408) %i.a) #28
          to label %common.resume unwind label %bb.d, !noalias !491

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !491
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2408) %i.h, ptr noundef nonnull align 8 dereferenceable(2408) %i.a, i64 2408, i1 false), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !491
  store i64 1, ptr %i.b, align 8, !noalias !491
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !491
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !491
  invoke void @_RNvNtCs94TQx44N27d_12tracing_core8callsite17register_dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e, !noalias !491

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !494
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i) #27
          to label %common.resume unwind label %bb.g, !noalias !491

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !491
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format4json10JsonFieldsINtB3Q_6FormatNtB3O_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !491
  %i.p = call noundef zeroext i1 @_RNvNtCs94TQx44N27d_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %bb.h, label %switch.lookup

switch.lookup:                                    ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.q, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 5, ptr %i.c, align 8
  %i.r = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %switch.offset = sub i64 5, %i.r
  call void @_RINvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB6_7Builder14with_max_levelNtCs2kss5F6ZsCC_3log11LevelFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %switch.offset)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = call noundef zeroext i1 @_RNvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %spec.select15 = select i1 %i.s, ptr inttoptr (i64 1 to ptr), ptr null
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.4.0 = phi ptr [ @34, %switch.lookup ], [ @36, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.0.0 = phi ptr [ %spec.select15, %switch.lookup ], [ inttoptr (i64 1 to ptr), %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format4json10JsonFieldsINtB3l_6FormatNtB3j_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1N_6format6pretty6PrettyINtB2P_6FormatB2L_EENtNtB18_3env9EnvFilterB2c_EB2c_ENtNtB9_4util17SubscriberInitExt8try_initCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2368) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2384 x i8], align 8              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  store i64 1, ptr %i.a, align 8, !noalias !515
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !515
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2368) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(2368) %0, i64 2368, i1 false), !noalias !516
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !517
  %i.h = tail call noundef align 8 dereferenceable_or_null(2384) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2384, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !517 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_EENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2384) #32
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !515

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB1l_6filter13layer_filters8FilteredINtNtNtB1l_3fmt9fmt_layer5LayerNtNtNtB1l_8registry7sharded8RegistryNtNtNtB30_6format6pretty6PrettyINtB44_6FormatB40_EENtNtB2k_3env9EnvFilterB3q_EB3q_EEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(2384) %i.a) #28
          to label %common.resume unwind label %bb.d, !noalias !515

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !515
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_EENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2384) %i.h, ptr noundef nonnull align 8 dereferenceable(2384) %i.a, i64 2384, i1 false), !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  store i64 1, ptr %i.b, align 8, !noalias !515
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !515
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !515
  invoke void @_RNvNtCs94TQx44N27d_12tracing_core8callsite17register_dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e, !noalias !515

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_EENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !518
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i) #27
          to label %common.resume unwind label %bb.g, !noalias !515

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !515
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_EENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !515
  %i.p = call noundef zeroext i1 @_RNvNtCs94TQx44N27d_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %bb.h, label %switch.lookup

switch.lookup:                                    ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.q, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 5, ptr %i.c, align 8
  %i.r = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %switch.offset = sub i64 5, %i.r
  call void @_RINvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB6_7Builder14with_max_levelNtCs2kss5F6ZsCC_3log11LevelFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %switch.offset)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = call noundef zeroext i1 @_RNvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %spec.select15 = select i1 %i.s, ptr inttoptr (i64 1 to ptr), ptr null
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.4.0 = phi ptr [ @34, %switch.lookup ], [ @36, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.0.0 = phi ptr [ %spec.select15, %switch.lookup ], [ inttoptr (i64 1 to ptr), %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_EENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1N_6format6pretty6PrettyINtB2P_6FormatB2L_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB18_3env9EnvFilterB2c_EB2c_ENtNtB9_4util17SubscriberInitExt8try_initCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2392) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2408 x i8], align 8              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  store i64 1, ptr %i.a, align 8, !noalias !539
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !539
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2392) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(2392) %0, i64 2392, i1 false), !noalias !540
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !541
  %i.h = tail call noundef align 8 dereferenceable_or_null(2408) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2408, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !541 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2408) #32
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !539

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB1l_6filter13layer_filters8FilteredINtNtNtB1l_3fmt9fmt_layer5LayerNtNtNtB1l_8registry7sharded8RegistryNtNtNtB30_6format6pretty6PrettyINtB44_6FormatB40_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB2k_3env9EnvFilterB3q_EB3q_EEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(2408) %i.a) #28
          to label %common.resume unwind label %bb.d, !noalias !539

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !539
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2408) %i.h, ptr noundef nonnull align 8 dereferenceable(2408) %i.a, i64 2408, i1 false), !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  store i64 1, ptr %i.b, align 8, !noalias !539
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !539
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !539
  invoke void @_RNvNtCs94TQx44N27d_12tracing_core8callsite17register_dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.e, !noalias !539

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !542
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i) #27
          to label %common.resume unwind label %bb.g, !noalias !539

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !539
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtB17_6filter13layer_filters8FilteredINtNtNtB17_3fmt9fmt_layer5LayerNtNtNtB17_8registry7sharded8RegistryNtNtNtB2M_6format6pretty6PrettyINtB3Q_6FormatB3M_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB26_3env9EnvFilterB3c_EB3c_EEE3newCsarFSTFZzLuM_11xet_runtime.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !539
  %i.p = call noundef zeroext i1 @_RNvNtCs94TQx44N27d_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %bb.h, label %switch.lookup

switch.lookup:                                    ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.q, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 5, ptr %i.c, align 8
  %i.r = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %switch.offset = sub i64 5, %i.r
  call void @_RINvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB6_7Builder14with_max_levelNtCs2kss5F6ZsCC_3log11LevelFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %switch.offset)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = call noundef zeroext i1 @_RNvMs1_NtCs2dUaLeREcod_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %spec.select15 = select i1 %i.s, ptr inttoptr (i64 1 to ptr), ptr null
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.4.0 = phi ptr [ @34, %switch.lookup ], [ @36, %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.0.0 = phi ptr [ %spec.select15, %switch.lookup ], [ inttoptr (i64 1 to ptr), %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7layered7LayeredINtNtNtBF_6filter13layer_filters8FilteredINtNtNtBF_3fmt9fmt_layer5LayerNtNtNtBF_8registry7sharded8RegistryNtNtNtB2j_6format6pretty6PrettyINtB3l_6FormatB3h_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB1E_3env9EnvFilterB2I_EB2I_EINtB5_4IntoNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchE4intoCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1h_6format4json10JsonFieldsINtB2j_6FormatNtB2h_4JsonEENtNtB7_3env9EnvFilterB1G_EINtNtB9_5layer5LayerB1G_E15with_subscriberCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2368 x i8]) align 8 captures(none) dereferenceable(2368) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(544) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef align 8 ptr @_RINvMNtCs94TQx44N27d_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @32)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i64 @_RNvXs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan15register_filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1808
  store i64 %i.b, ptr %i.c, align 8, !alias.scope !548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(1816) %1, i64 1816, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.d, ptr noundef nonnull align 8 dereferenceable(544) %2, i64 544, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2360
  store i8 1, ptr %i.e, align 8, !alias.scope !549
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2361
  store i8 1, ptr %i.f, align 1, !alias.scope !549
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2362
  store i8 1, ptr %i.g, align 2, !alias.scope !549
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9EnvFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(1816) %1)
          to label %.critedge unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1h_6format4json10JsonFieldsINtB2j_6FormatNtB2h_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB7_3env9EnvFilterB1G_EINtNtB9_5layer5LayerB1G_E15with_subscriberCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2392 x i8]) align 8 captures(none) dereferenceable(2392) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1840) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(544) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef align 8 ptr @_RINvMNtCs94TQx44N27d_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @32)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i64 @_RNvXs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan15register_filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1832
  store i64 %i.b, ptr %i.c, align 8, !alias.scope !554
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1840) %0, ptr noundef nonnull align 8 dereferenceable(1840) %1, i64 1840, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.d, ptr noundef nonnull align 8 dereferenceable(544) %2, i64 544, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store i8 1, ptr %i.e, align 8, !alias.scope !555
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2385
  store i8 1, ptr %i.f, align 1, !alias.scope !555
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2386
  store i8 1, ptr %i.g, align 2, !alias.scope !555
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryNtNtNtB1Q_6format4json10JsonFieldsINtB2S_6FormatNtB2Q_4JsonENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtBG_3env9EnvFilterB2f_EECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(1840) %1) #28
          to label %.critedge unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1h_6format6pretty6PrettyINtB2j_6FormatB2f_EENtNtB7_3env9EnvFilterB1G_EINtNtB9_5layer5LayerB1G_E15with_subscriberCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2368 x i8]) align 8 captures(none) dereferenceable(2368) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(544) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef align 8 ptr @_RINvMNtCs94TQx44N27d_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @32)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i64 @_RNvXs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan15register_filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1808
  store i64 %i.b, ptr %i.c, align 8, !alias.scope !560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(1816) %1, i64 1816, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.d, ptr noundef nonnull align 8 dereferenceable(544) %2, i64 544, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2360
  store i8 1, ptr %i.e, align 8, !alias.scope !561
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2361
  store i8 1, ptr %i.f, align 1, !alias.scope !561
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2362
  store i8 1, ptr %i.g, align 2, !alias.scope !561
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9EnvFilterECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(1816) %1)
          to label %.critedge unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtNtB1h_6format6pretty6PrettyINtB2j_6FormatB2f_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtB7_3env9EnvFilterB1G_EINtNtB9_5layer5LayerB1G_E15with_subscriberCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2392 x i8]) align 8 captures(none) dereferenceable(2392) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1840) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(544) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef align 8 ptr @_RINvMNtCs94TQx44N27d_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @32)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i64 @_RNvXs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan15register_filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1832
  store i64 %i.b, ptr %i.c, align 8, !alias.scope !566
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1840) %0, ptr noundef nonnull align 8 dereferenceable(1840) %1, i64 1840, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.d, ptr noundef nonnull align 8 dereferenceable(544) %2, i64 544, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store i8 1, ptr %i.e, align 8, !alias.scope !567
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2385
  store i8 1, ptr %i.f, align 1, !alias.scope !567
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2386
  store i8 1, ptr %i.g, align 2, !alias.scope !567
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %2) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryNtNtNtB1Q_6format6pretty6PrettyINtB2S_6FormatB2O_ENtNtCs5ZfSctYBbRf_16tracing_appender12non_blocking11NonBlockingENtNtBG_3env9EnvFilterB2f_EECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(1840) %1) #28
          to label %.critedge unwind label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters9FILTERING0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_NtB8_11FilterStateEEEE9call_onceCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter13layer_filters9FILTERING0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs2kss5F6ZsCC_3log14SetLoggerErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @37, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs2kss5F6ZsCC_3log14SetLoggerErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs2kss5F6ZsCC_3log14SetLoggerErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs2kss5F6ZsCC_3log14SetLoggerErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @38, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs94TQx44N27d_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @37, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs94TQx44N27d_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs94TQx44N27d_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber12downcast_rawCsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, -165650326920276467500275248847783017068
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, ptr } poison, i64 %., 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %0, 1
  ret { i64, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 -2, 5) i64 @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber14max_level_hintCsarFSTFZzLuM_11xet_runtime(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i64 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber20on_register_dispatchCsarFSTFZzLuM_11xet_runtime(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber9drop_spanCsarFSTFZzLuM_11xet_runtime(ptr nofree nonnull readnone align 8 captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !586, !noundef !5
  %i.d = add i64 %i.c, 8
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !586
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !586, !noundef !5 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 8, %i.f                          ; 3 uses
  %..i.i.i = tail call noundef range(i64 0, 192153584101141163) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.h, i64 8) ; 2 uses
  %i.i = icmp ugt i64 %i.h, 3                     ; 3 uses
  %i.j = and i64 %1, 4294967295
  %.sroa.03.0.i.i.i = select i1 %i.i, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i.i = select i1 %i.i, i64 %i.j, i64 0 ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i.i.i, 1
  %i.l = icmp samesign ult i64 %i.k, %..i.i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i = load i16, ptr %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !587
  %i.m = zext i16 %.sroa.015.0.copyload.i.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.1.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.03.0.i.i.i, %bb.b ] ; 3 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.0.0.i.i.i, %bb.b ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i.i, %..i.i.i
  br i1 %i.r, label %bb.e, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !587, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.2.i.i.i = phi i64 [ %i.x, %bb.e ], [ %.sroa.0.1.i.i.i, %bb.d ]
  %i.y = shl i64 %i.f, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !586, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !586
  %i.ae = icmp ugt i64 %i.f, 8
  br i1 %i.ae, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.g ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i.i       ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
end_hunk_1
