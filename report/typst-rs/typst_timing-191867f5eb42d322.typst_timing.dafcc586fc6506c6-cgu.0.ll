Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_timing-191867f5eb42d322.typst_timing.dafcc586fc6506c6-cgu.0?download=true
inline.NumInlined: 53
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS = global <{ [1 x i8], [7 x i8], [24 x i8] }> <{ [1 x i8] zeroinitializer, [7 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED = local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@_RNvNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_023___RUST_STD_INTERNAL_VAL = internal thread_local unnamed_addr global <{ [8 x i8], [1 x i8], [7 x i8] }> <{ [8 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@_RNvNvNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA27___rust_std_internal_init_fn7COUNTER = internal global [8 x i8] c"\01\00\00\00\00\00\00\00", align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noalias !5, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_10ThreadDataEEEE9call_onceB8_.exit_crit_edge.i.i, label %bb.b, !prof !17

._RNvYNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_10ThreadDataEEEE9call_onceB8_.exit_crit_edge.i.i: ; preds = %bb.a
  %.val.pre.i.i = load i64, ptr %i.a, align 8, !noalias !18
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE8try_withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr @_RNvNvNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA27___rust_std_internal_init_fn7COUNTER, i64 1 monotonic, align 8, !noalias !19 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !noalias !19
  store i8 1, ptr %i.b, align 8, !noalias !19
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE8try_withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE8try_withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit.i: ; preds = %bb.b, %._RNvYNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_10ThreadDataEEEE9call_onceB8_.exit_crit_edge.i.i
  %.val.i.i = phi i64 [ %.val.pre.i.i, %._RNvYNCNKNvCsiNFdexS2GJ6_12typst_timing11THREAD_DATA0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_NtB8_10ThreadDataEEEE9call_onceB8_.exit_crit_edge.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = tail call { i64, i32 } @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime3now(), !noalias !22 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE4withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit, !prof !25

bb.c:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE8try_withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !26
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE4withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE8try_withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit.i
  %i.i = extractvalue { i64, i32 } %i.f, 0
  %i.j = cmpxchg weak ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 0, i8 1 acquire monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !17

bb.d:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE4withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit
  %i.l = tail call noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtCsiNFdexS2GJ6_12typst_timing10ThreadDataE4withNCNvMBW_NtBW_11TimingScope8new_impl0TyNtBW_9TimestampEEBW_.exit, %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 24), align 8, !noalias !27, !noundef !16 ; 3 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 8), align 8, !range !30, !noalias !27, !noundef !16
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiNFdexS2GJ6_12typst_timing5EventE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 8)) #15
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = cmpxchg ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.e, %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 16), align 8, !noalias !27, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.m ; 7 uses
  store i64 %i.i, ptr %i.t, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.g, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %1, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %2, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %.val.i.i, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.u = add i64 %i.m, 1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 24), align 8, !noalias !27
  %i.v = cmpxchg ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 1, i8 0 release monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3: ; preds = %bb.i, %bb.j
  store ptr %1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val.i.i, ptr %i.z, align 8
  ret void

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvMs0_CsiNFdexS2GJ6_12typst_timingNtB5_9Timestamp12micros_since(i64 noundef %0, i32 noundef range(i32 0, 1000000000) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %2, i32 noundef %3)
  %i.d = load i64, ptr %i.a, align 8, !range !31, !noundef !16
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = zext i64 %i.g to i128
  %i.k = mul nuw nsw i128 %i.j, 1000000000
  %i.l = zext nneg i32 %i.i to i128
  %i.m = add nuw nsw i128 %i.k, %i.l
  %i.n = uitofp nneg i128 %i.m to double
  %i.o = fdiv double %i.n, 1.000000e+03
  %4 = select i1 %i.e, double 0.000000e+00, double %i.o
  ret double %4
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiNFdexS2GJ6_12typst_timing5EventE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !16
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsiNFdexS2GJ6_12typst_timing(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiNFdexS2GJ6_12typst_timing(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #2 {
bb.a:
  %i.a = mul i64 %1, 56                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 164703072086692425
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 56                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #18
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #18
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsiNFdexS2GJ6_12typst_timing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !30, !noundef !16 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiNFdexS2GJ6_12typst_timing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14)
  %i.f = load i64, ptr %i.a, align 8, !range !31, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !34, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime3now() ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 0
  %i.c = extractvalue { i64, i32 } %i.a, 1
  %i.d = cmpxchg weak ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x i64>, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !16
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 24), align 8, !noalias !35, !noundef !16 ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 8), align 8, !range !30, !noalias !35, !noundef !16
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiNFdexS2GJ6_12typst_timing5EventE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 8)) #15
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = cmpxchg ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 1, i8 0 release monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 16), align 8, !noalias !35, !nonnull !16, !noundef !16
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.l ; 6 uses
  store i64 %i.b, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store <2 x i64> %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.t = add i64 %i.l, 1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i64 24), align 8, !noalias !35
  %i.u = cmpxchg ptr @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i8 1, i8 0 release monotonic, align 1
  %i.v = extractvalue { i8, i1 } %i.u, 1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull @_RNvCsiNFdexS2GJ6_12typst_timing6EVENTS, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit3: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiNFdexS2GJ6_12typst_timing5EventEEEB2I_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
