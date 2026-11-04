Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/tower-21355ed5550aa44b.tower.edcb24ae892e7d3d-cgu.0?download=true
inline.NumInlined: 89
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E = external global { i64 }
@0 = private unnamed_addr constant [40 x i8] c"there is no such thing as a release load", align 1, !guid !3
@1 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8, !guid !3
@2 = private unnamed_addr constant [80 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/sync/atomic.rs\00", align 1, !guid !3
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00q\0F\00\00\18\00\00\00" }>, align 8, !guid !3
@4 = private unnamed_addr constant [49 x i8] c"there is no such thing as an acquire-release load", align 1, !guid !3
@5 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8, !guid !3
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00r\0F\00\00\17\00\00\00" }>, align 8, !guid !3
@7 = private unnamed_addr constant [42 x i8] c"there is no such thing as an acquire store", align 1, !guid !3
@8 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8, !guid !3
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00b\0F\00\00\18\00\00\00" }>, align 8, !guid !3
@10 = private unnamed_addr constant [50 x i8] c"there is no such thing as an acquire-release store", align 1, !guid !3
@11 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @10, [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8, !guid !3
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00c\0F\00\00\17\00\00\00" }>, align 8, !guid !3
@13 = private unnamed_addr constant [73 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/time.rs\00", align 1, !guid !3
@14 = private unnamed_addr constant [25 x i8] c"overflow in Duration::new", align 1, !guid !3
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"H\00\00\00\00\00\00\00\C9\00\00\00\12\00\00\00" }>, align 8, !guid !3
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h50f5a7791da37d96E" }>, align 8, !guid !3
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN74_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Debug$GT$3fmt17hcde58933d4ee87f5E" }>, align 8, !guid !3
@18 = private unnamed_addr constant [47 x i8] c"assertion failed: ttl >= Duration::from_secs(1)", align 1, !guid !3
@19 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3/src/retry/budget/tps_budget.rs\00", align 1, !guid !3
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00G\00\00\00\09\00\00\00" }>, align 8, !guid !3
@21 = private unnamed_addr constant [48 x i8] c"assertion failed: ttl <= Duration::from_secs(60)", align 1, !guid !3
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00H\00\00\00\09\00\00\00" }>, align 8, !guid !3
@23 = private unnamed_addr constant [38 x i8] c"assertion failed: retry_percent >= 0.0", align 1, !guid !3
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00I\00\00\00\09\00\00\00" }>, align 8, !guid !3
@25 = private unnamed_addr constant [41 x i8] c"assertion failed: retry_percent <= 1000.0", align 1, !guid !3
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00J\00\00\00\09\00\00\00" }>, align 8, !guid !3
@27 = private unnamed_addr constant [47 x i8] c"assertion failed: min_per_sec < i32::MAX as u32", align 1, !guid !3
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00K\00\00\00\09\00\00\00" }>, align 8, !guid !3
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00_\00\00\00\19\00\00\00" }>, align 8, !guid !3
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00j\00\00\00\1A\00\00\00" }>, align 8, !guid !3
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00a\00\00\00\13\00\00\00" }>, align 8, !guid !3
@32 = private unnamed_addr constant [15 x i8] c"generation lock", align 1, !guid !3
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00s\00\00\00.\00\00\00" }>, align 8, !guid !3
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8, !guid !3
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\80\00\00\00\17\00\00\00" }>, align 8, !guid !3
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\82\00\00\00\0D\00\00\00" }>, align 8, !guid !3
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\84\00\00\00\13\00\00\00" }>, align 8, !guid !3
@38 = private unnamed_addr constant [22 x i8] c"jitter must not be NaN", align 1, !guid !3
@39 = private unnamed_addr constant [35 x i8] c"jitter must not be greater than 100", align 1, !guid !3
@40 = private unnamed_addr constant [27 x i8] c"jitter must not be negative", align 1, !guid !3
@41 = private unnamed_addr constant [24 x i8] c"maximum must be non-zero", align 1, !guid !3
@42 = private unnamed_addr constant [37 x i8] c"maximum must not be less than minimum", align 1, !guid !3
@43 = private unnamed_addr constant [35 x i8] c"overflow when subtracting durations", align 1, !guid !3
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"H\00\00\00\00\00\00\00\8D\04\00\00\1F\00\00\00" }>, align 8, !guid !3
@45 = private unnamed_addr constant [17 x i8] c"request timed out", align 1, !guid !3
@46 = private unnamed_addr constant ptr @_ZN4core3ops8function6FnOnce9call_once17hb8b5f45a2c04e0c7E, align 8, !guid !3
@47 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !3
@48 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @47, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8, !guid !3
@49 = private unnamed_addr constant [14 x i8] c"InvalidBackoff", align 1, !guid !3
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60fe18f8ebb34fa1E" }>, align 8, !guid !3
@51 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1, !guid !3
@52 = private unnamed_addr constant [17 x i8] c"invalid backoff: ", align 1, !guid !3
@53 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @52, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8, !guid !3
@54 = private unnamed_addr constant [6 x i8] c"Budget", align 1, !guid !3
@55 = private unnamed_addr constant [7 x i8] c"deposit", align 1, !guid !3
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17h6ed9026f019fbed5E" }>, align 8, !guid !3
@57 = private unnamed_addr constant [8 x i8] c"withdraw", align 1, !guid !3
@58 = private unnamed_addr constant [7 x i8] c"balance", align 1, !guid !3
@59 = private unnamed_addr constant [35 x i8] c"Unable to create ExponentialBackoff", align 1, !guid !3
@60 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3/src/retry/backoff.rs\00", align 1, !guid !3
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"e\00\00\00\00\00\00\00\C2\00\00\00\0A\00\00\00" }>, align 8, !guid !3

; Function Attrs: norecurse nounwind nonlazybind uwtable
define i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E"(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.07.0.i = phi i64 [ %2, %.new ], [ %i.m, %bb.c ]
  %.sroa.09.0.i = phi i64 [ 0, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.i
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  %i.i = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i, i64 %i.h)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call i64 @llvm.sadd.sat.i64(i64 %i.i, i64 %i.l) ; 3 uses
  %i.n = add nuw i64 %.sroa.09.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %i.o = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.07.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %i.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ]
  %.sroa.09.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.i.epil.init
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.epil.init, i64 %i.q)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit": ; preds = %.epil.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa", %bb.a
  %.sroa.04.0.i = phi i64 [ %2, %bb.a ], [ %i.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ], [ %i.r, %.epil.preheader ]
  ret i64 %.sroa.04.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN112_$LT$tower..builder..ServiceBuilder$LT$tower_layer..identity..Identity$GT$$u20$as$u20$core..default..Default$GT$7default17h4d37556a2d8a6457E"() unnamed_addr #1 !guid !5 {
bb.a:
  tail call void @_ZN11tower_layer8identity8Identity3new17h0b781f6205840a7bE()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN3std4sync6poison10map_result17hf91adc73966c3c13E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, i1 zeroext %1, i8 %2, ptr align 8 %3) unnamed_addr #2 !guid !6 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$3new17h08da2b31e989aad4E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 5), (8, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 !guid !7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i32 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr align 8 %1) unnamed_addr #1 !guid !8 {
bb.a:
  %i.a = tail call { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd63cb86e8894341eE(ptr %1, i32 0, i32 1, i8 2, i8 0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag5guard17he45ca8277d3e3d87E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_ZN3std4sync6poison4Flag5guard17he45ca8277d3e3d87E.exit

_ZN3std4sync6poison4Flag5guard17he45ca8277d3e3d87E.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = tail call i8 @_ZN4core4sync6atomic11atomic_load17hc4710425ff9d998bE(ptr nonnull align 1 %i.i, i8 0)
  %i.k = icmp ne i8 %i.j, 0
  %spec.select.i = zext i1 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01.0.i, ptr %i.m, align 8
  store i64 %spec.select.i, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i1 } @"_ZN3std4sync6poison5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb5515d6f3117dfd8E"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #4 !guid !9 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 !guid !10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ule i32 %i.e, %i.g
  br label %"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hf528b254dc73a941E.exit"

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ule i64 %i.a, %i.b
  br label %"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hf528b254dc73a941E.exit"

"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hf528b254dc73a941E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17h6ed9026f019fbed5E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 !guid !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$isize$GT$3fmt17hef17ba53b85fc412E"(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$isize$GT$3fmt17haaa73a96c4db1c53E"(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$isize$GT$3fmt17h3e339308295fbd7aE"(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN4core3ops8function6FnOnce9call_once17hb8b5f45a2c04e0c7E(ptr align 8 %0) unnamed_addr #6 personality ptr @rust_eh_personality !guid !12 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfbe02e8b68fa78ebE"(ptr nonnull align 1 %i.a, ptr align 8 %0)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i8, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.val.i to i1
  br i1 %i.d, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.h, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.b, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E.exit"

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr align 4 %i.i)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i8, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.h, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.b, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit"

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr align 4 %i.i)
  br label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit"

"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..sync..atomic..AtomicIsize$GT$$GT$17h28ef71603cf7491dE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !15 {
bb.a:
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..sync..atomic..AtomicIsize$GT$$GT$17hc0d495e4973fe69dE"(ptr align 8 %0) unnamed_addr #1 !guid !16 {
bb.a:
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$$u5b$core..sync..atomic..AtomicIsize$u5d$$GT$$GT$17h364f63a51b0f0306E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality !guid !17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0dc4ada7ef6f8b78E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %i.e, i64 range(i64 1, -9223372036854775808) %i.d, i64 8) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0dc4ada7ef6f8b78E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0dc4ada7ef6f8b78E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, 2305843009213693952) i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h86e3e83f5ce8d7ecE"(ptr %0, ptr %1) unnamed_addr #4 !guid !18 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 3
  ret i64 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf6d0a345e77a3d95E"(ptr nofree align 4 captures(none) %0) unnamed_addr #3 !guid !19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4                ; 3 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp ult i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.b, 1
  store i32 %i.e, ptr %0, align 4
  br label %"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E.exit"

"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.b, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3map17hb45aeb3b8d252210E(ptr %0, ptr %1) unnamed_addr #4 !guid !20 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress norecurse nounwind nonlazybind willreturn uwtable
define i64 @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1025798c6abf4307E"(ptr nofree readnone align 1 captures(none) %0, i64 %1, ptr nofree align 8 captures(none) %2) unnamed_addr #8 personality ptr @rust_eh_personality !guid !21 {
bb.a:
  %i.a = load atomic i64, ptr %2 seq_cst, align 8
  %i.b = tail call i64 @llvm.sadd.sat.i64(i64 %1, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core4sync6atomic11atomic_load17hd2145c4f1cac223bE(ptr nofree captures(none) %0, i8 %1) unnamed_addr #6 !guid !22 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %0 monotonic, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store ptr @1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.b, ptr nonnull align 8 @3) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %0 acquire, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store ptr @5, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.l, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.a, ptr nonnull align 8 @6) #25
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.0.0 = phi i64 [ %i.c, %bb.c ], [ %i.h, %bb.e ], [ %i.m, %bb.g ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4sync6atomic12atomic_store17h321b1060dd7a0995E(ptr nofree captures(none) %0, i64 %1, i8 %2) unnamed_addr #6 !guid !23 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  switch i8 %2, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 monotonic, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 release, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr @8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.f, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.b, ptr nonnull align 8 @9) #25
  unreachable

bb.f:                                             ; preds = %bb.a
  store ptr @11, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.a, ptr nonnull align 8 @12) #25
  unreachable

bb.g:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd7164f22aecb2da5E"(ptr align 8 %0, i64 %1) unnamed_addr #4 !guid !24 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3ee55681fbad8de3E"(ptr align 8 %0, i64 %1) unnamed_addr #4 !guid !25 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E"(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.g, ptr %i.h, align 8
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1 %1, i64 %2, ptr nonnull align 1 %i.a, ptr nonnull align 8 @16, ptr align 8 %3) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = trunc nuw i8 %i.g to i1
  %i.j = insertvalue { ptr, i1 } poison, ptr %i.e, 0
  %i.k = insertvalue { ptr, i1 } %i.j, i1 %i.i, 1
  ret { ptr, i1 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E"(ptr nonnull align 8 %i.a) #26
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 1 %2, i64 %3, ptr align 8 %4) unnamed_addr #6 personality ptr @rust_eh_personality !guid !27 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1000000000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  store ptr %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1 %2, i64 %3, ptr nonnull align 1 %i.a, ptr nonnull align 8 @17, ptr align 8 %4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45b3c589ff116712E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr align 8 %2) unnamed_addr #6 !guid !28 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 %1, i64 8, i64 8, ptr align 8 %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17hbe0632b44233971fE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 !guid !29 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 8) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hed08685c27ccda50E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !30 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 8)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not.i, label %.noexc._crit_edge, label %bb.c

.noexc._crit_edge:                                ; preds = %.noexc
  %.sroa.33.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.g = extractvalue { i64, i64 } %i.e, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc._crit_edge, %bb.a
  %.sroa.33.0.copyload = phi i64 [ %.sroa.33.0.copyload.pre, %.noexc._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.22.0.copyload, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.33.0.copyload, 1
  ret { ptr, i64 } %i.i

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr nonnull align 8 %0, i64 8, i64 8)
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #6 personality ptr @rust_eh_personality !guid !31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit": ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #6 personality ptr @rust_eh_personality !guid !32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #9 !guid !33 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hdf6f3792cb1bc5ecE"(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.c, i64 %i.d, ptr align 8 %1) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17h43521f0c87f793a0E"(i64 %0, ptr %1, i64 %2) unnamed_addr #10 !guid !34 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %2, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN5tower4util3rng18HasherRng$LT$H$GT$11with_hasher17h4fd65e4a0b541919E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, i64 %2) unnamed_addr #2 !guid !35 {
bb.a:
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tower4util3rng9HasherRng3new17h00ae5e165d3c8053E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 !guid !36 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr nonnull align 8 @46) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN5tower4util8optional5error4None3new17h56b175cc1575e1b7E() unnamed_addr #10 !guid !37 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tower5retry6budget10tps_budget9TpsBudget3new17h89d875e3cc15e9c4E(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0, i64 %1, i32 %2, i32 %3, float %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 24 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 %2, ptr %i.e, align 8
  store i64 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = call zeroext i1 @_ZN4core3cmp10PartialOrd2ge17he2840c1c4c933ac6E(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @18, i64 47, ptr nonnull align 8 @20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8              ; 3 uses
  %i.i = icmp eq i64 %i.h, 60
  br i1 %i.i, label %.split, label %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit

.split:                                           ; preds = %bb.c
  %i.j = load i32, ptr %i.e, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit: ; preds = %bb.c
  %i.l = icmp ult i64 %i.h, 61
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split, %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @21, i64 48, ptr nonnull align 8 @22) #25
  unreachable

bb.e:                                             ; preds = %.split, %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit
  %i.m = fcmp ult float %4, 0.000000e+00
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @23, i64 38, ptr nonnull align 8 @24) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = fcmp ugt float %4, 1.000000e+03
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @25, i64 41, ptr nonnull align 8 @26) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = icmp ult i32 %3, 2147483647
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @27, i64 47, ptr nonnull align 8 @28) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = fcmp oeq float %4, 0.000000e+00
  br i1 %i.p, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = fcmp ugt float %4, 1.000000e+00
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.r = fdiv float 1.000000e+03, %4
  %i.s = call i64 @llvm.fptosi.sat.i64.f32(float %i.r)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.t = fdiv float 1.000000e+00, %4
  %i.u = call i64 @llvm.fptosi.sat.i64.f32(float %i.t)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.4.0 = phi i64 [ %i.s, %bb.m ], [ %i.u, %bb.n ], [ 1, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 1000, %bb.m ], [ 1, %bb.n ], [ 0, %bb.k ]
  %i.v = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 10, i64 8, i64 8, ptr nonnull align 8 @29) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  store i64 %i.w, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.af = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %i.a, i64 %i.ad, i64 8, i64 8)
          to label %.noexc.i unwind label %bb.s   ; 2 uses

.noexc.i:                                         ; preds = %bb.q
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, -9223372036854775807
  br i1 %.not.i.i, label %.noexc._crit_edge.i, label %bb.r

.noexc._crit_edge.i:                              ; preds = %.noexc.i
  %.sroa.33.0.copyload.pre.i = load i64, ptr %i.ac, align 8
  br label %bb.u

bb.r:                                             ; preds = %.noexc.i
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.ag, i64 %i.ah, ptr nonnull align 8 @30) #25
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr nonnull align 8 %i.a, i64 8, i64 8)
          to label %.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.u:                                             ; preds = %.noexc._crit_edge.i, %bb.p
  %.sroa.33.0.copyload.i = phi i64 [ %.sroa.33.0.copyload.pre.i, %.noexc._crit_edge.i ], [ %i.ad, %bb.p ]
  %i.ak = extractvalue { i64, i32 } %i.dc, 1
  %i.al = extractvalue { i64, i32 } %i.dc, 0
  %i.am = zext nneg i32 %3 to i64
  %i.an = mul nuw nsw i64 %i.h, %i.am             ; 2 uses
  %i.ao = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.an, i64 %.sroa.4.0) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = xor i64 %.sroa.4.0, %i.an
  %i.ar = icmp sgt i64 %i.aq, -1
  %..i12 = select i1 %i.ar, i64 9223372036854775807, i64 -9223372036854775808
  %i.as = extractvalue { i64, i1 } %i.ao, 0
  %.sroa.0.0.i13 = select i1 %i.ap, i64 %..i12, i64 %i.as
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.at = load i64, ptr %i.d, align 8             ; 2 uses
  %i.au = load i32, ptr %i.e, align 8             ; 2 uses
  %i.av = udiv i64 %i.at, 10
  %i.aw = urem i64 %i.at, 10
  %i.ax = mul nuw nsw i64 %i.aw, 1000000000
  %i.ay = urem i32 %i.au, 10
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = udiv i32 %i.au, 10
  %i.bc = udiv i64 %i.ba, 10
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bb, %i.bd            ; 3 uses
  %i.bf = icmp samesign ugt i32 %i.be, 999999999  ; 2 uses
  %i.bg = add nsw i32 %i.be, -1000000000
  %.sroa.3.0.i.i.i = select i1 %i.bf, i32 %i.bg, i32 %i.be
  %i.bh = zext i1 %i.bf to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.av, %i.bh
  store i32 0, ptr %0, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %.sroa.218.0..sroa_idx, align 4
  %.sroa.319.sroa.1.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.319.sroa.1.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %.sroa.319.sroa.2.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.319.sroa.2.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ak, ptr %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i13, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.22.0.copyload.i, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.33.0.copyload.i, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0.i.i.i, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.3.0.i.i.i, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.4.0, ptr %i.bp, align 8
  ret void

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.w:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge": ; preds = %bb.w
  %.pre = load ptr, ptr %i.y, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge", %bb.o
  %i.br = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge" ], [ %i.x, %bb.o ]
  store i64 0, ptr %i.br, align 8
  store i64 1, ptr %i.z, align 8
  %i.bs = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge": ; preds = %bb.x
  %.pre42 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"
  %i.bu = phi i64 [ %.pre42, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge" ], [ %i.bs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit" ] ; 2 uses
  %i.bv = load ptr, ptr %i.y, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %i.bw, align 8
  store i64 2, ptr %i.z, align 8
  %i.bx = icmp eq i64 %i.bu, 2
  br i1 %i.bx, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge": ; preds = %bb.y
  %.pre43 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"
  %i.by = phi i64 [ %.pre43, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge" ], [ %i.bu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1" ] ; 2 uses
  %i.bz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 0, ptr %i.ca, align 8
  store i64 3, ptr %i.z, align 8
  %i.cb = icmp eq i64 %i.by, 3
  br i1 %i.cb, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"

bb.z:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge": ; preds = %bb.z
  %.pre44 = load ptr, ptr %i.y, align 8
  %.pre45 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"
  %i.cc = phi i64 [ %.pre45, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" ], [ %i.by, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2" ] ; 2 uses
  %i.cd = phi ptr [ %.pre44, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" ], [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2" ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 0, ptr %i.ce, align 8
  store i64 4, ptr %i.z, align 8
  %i.cf = icmp eq i64 %i.cc, 4
  br i1 %i.cf, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"

bb.aa:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge": ; preds = %bb.aa
  %.pre46 = load ptr, ptr %i.y, align 8
  %.pre47 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"
  %i.cg = phi i64 [ %.pre47, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" ], [ %i.cc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3" ] ; 2 uses
  %i.ch = phi ptr [ %.pre46, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" ], [ %i.cd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3" ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 0, ptr %i.ci, align 8
  store i64 5, ptr %i.z, align 8
  %i.cj = icmp eq i64 %i.cg, 5
  br i1 %i.cj, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"

bb.ab:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge": ; preds = %bb.ab
  %.pre48 = load ptr, ptr %i.y, align 8
  %.pre49 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"
  %i.ck = phi i64 [ %.pre49, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" ], [ %i.cg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4" ] ; 2 uses
  %i.cl = phi ptr [ %.pre48, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" ], [ %i.ch, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4" ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 0, ptr %i.cm, align 8
  store i64 6, ptr %i.z, align 8
  %i.cn = icmp eq i64 %i.ck, 6
  br i1 %i.cn, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"

bb.ac:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge": ; preds = %bb.ac
  %.pre50 = load ptr, ptr %i.y, align 8
  %.pre51 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"
  %i.co = phi i64 [ %.pre51, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" ], [ %i.ck, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5" ] ; 2 uses
  %i.cp = phi ptr [ %.pre50, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" ], [ %i.cl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5" ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i64 0, ptr %i.cq, align 8
  store i64 7, ptr %i.z, align 8
  %i.cr = icmp eq i64 %i.co, 7
  br i1 %i.cr, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge": ; preds = %bb.ad
  %.pre52 = load ptr, ptr %i.y, align 8
  %.pre53 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"
  %i.cs = phi i64 [ %.pre53, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" ], [ %i.co, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6" ] ; 2 uses
  %i.ct = phi ptr [ %.pre52, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" ], [ %i.cp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6" ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store i64 0, ptr %i.cu, align 8
  store i64 8, ptr %i.z, align 8
  %i.cv = icmp eq i64 %i.cs, 8
  br i1 %i.cv, label %bb.ae, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge": ; preds = %bb.ae
  %.pre54 = load ptr, ptr %i.y, align 8
  %.pre55 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"
  %i.cw = phi i64 [ %.pre55, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" ], [ %i.cs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7" ]
  %i.cx = phi ptr [ %.pre54, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" ], [ %i.ct, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7" ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store i64 0, ptr %i.cy, align 8
  store i64 9, ptr %i.z, align 8
  %i.cz = icmp eq i64 %i.cw, 9
  br i1 %i.cz, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"

bb.af:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge": ; preds = %bb.af
  %.pre56 = load ptr, ptr %i.y, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"
  %i.da = phi ptr [ %.pre56, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge" ], [ %i.cx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8" ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  store i64 0, ptr %i.db, align 8
  store i64 10, ptr %i.z, align 8
  %i.dc = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant3now17h457a2db67d794c3eE()
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.pn31 = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn31

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr nonnull align 8 %i.b, i64 8, i64 8)
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !39 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = tail call { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd63cb86e8894341eE(ptr align 8 %0, i32 0, i32 1, i8 2, i8 0)
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = tail call i8 @_ZN4core4sync6atomic11atomic_load17hc4710425ff9d998bE(ptr nonnull align 1 %i.n, i8 0)
  %.not = icmp eq i8 %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE.exit"
  store ptr %0, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.p, align 8
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @32, i64 15, ptr nonnull align 1 %i.a, ptr nonnull align 8 @16, ptr nonnull align 8 @33) #25
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E"(ptr nonnull align 8 %i.a) #26
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE.exit"
  %i.s = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.t, align 8
  %i.u = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant3now17h457a2db67d794c3eE()
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %.invoke49, %.invoke47, %.invoke, %bb.j, %bb.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E.exit"
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE"(ptr nonnull align 8 %i.e) #26
          to label %common.resume unwind label %bb.ah

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E.exit"
  %i.v = extractvalue { i64, i32 } %i.u, 0
  %i.w = extractvalue { i64, i32 } %i.u, 1
  store i64 %i.v, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant25saturating_duration_since17hf3d2e1ccc327fe8cE(ptr nonnull align 8 %i.d, i64 %i.aa, i32 %i.ac)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = extractvalue { i64, i32 } %i.ad, 0
  %i.af = extractvalue { i64, i32 } %i.ad, 1
  store i64 %i.ae, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ai = invoke zeroext i1 @_ZN4core3cmp10PartialOrd2lt17h6302d28b66629a4eE(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br i1 %i.ai, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.s, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.am, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.n, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.an = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit.sink.split", label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit"

bb.p:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = atomicrmw xchg ptr %i.ap, i64 0 seq_cst, align 8
  %i.ar = load i64, ptr %i.y, align 8             ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult i64 %i.ar, %i.au
  br i1 %i.av, label %bb.q, label %.invoke49

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ar
  store atomic i64 %i.aq, ptr %i.ax seq_cst, align 8
  %i.ay = load i64, ptr %i.c, align 8
  %i.az = load i32, ptr %i.ag, align 8
  store i64 %i.ay, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.invoke47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load i64, ptr %i.y, align 8
  %i.be = add i64 %i.bd, 1
  %i.bf = urem i64 %i.be, %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.s

bb.s:                                             ; preds = %bb.ag, %bb.r
  %.sroa.0.0 = phi i64 [ %i.bf, %bb.r ], [ %i.cs, %bb.ag ] ; 5 uses
  %i.bh = invoke zeroext i1 @_ZN4core3cmp10PartialOrd2gt17h7f7bd5745ca9fae4E(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.ah)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bj = icmp ult i64 %.sroa.0.0, %i.bi
  br i1 %i.bj, label %bb.z, label %.invoke49

bb.v:                                             ; preds = %bb.t
  store i64 %.sroa.0.0, ptr %i.y, align 8
  %i.bk = load i64, ptr %i.d, align 8
  %i.bl = load i32, ptr %i.x, align 8
  store i64 %i.bk, ptr %i.z, align 8
  store i32 %i.bl, ptr %i.ab, align 8
  br i1 %i.s, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bp, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.n, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.bq = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit.sink.split", label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit"

"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit.sink.split": ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9, %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr nonnull align 4 %0)
  br label %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit"

"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit": ; preds = %"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE.exit.sink.split", %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i9, %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit.i.i
  ret void

.invoke49:                                        ; preds = %bb.u, %bb.p
  %i.bs = phi i64 [ %i.ar, %bb.p ], [ %.sroa.0.0, %bb.u ]
  %i.bt = phi i64 [ %i.au, %bb.p ], [ %i.bi, %bb.u ]
  %i.bu = phi ptr [ @34, %bb.p ], [ @36, %bb.u ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 %i.bs, i64 %i.bt, ptr nonnull align 8 %i.bu) #25
          to label %.cont50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont50:                                          ; preds = %.invoke49
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.as, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.sroa.0.0
  store atomic i64 0, ptr %i.bw seq_cst, align 8
  %i.bx = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.by = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bz = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ca = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.cb = icmp ult i64 %i.bz, %i.bx
  br i1 %i.cb, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = sub nuw i64 %i.bz, %i.bx                ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.ca, %i.by
  br i1 %.not.i.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.invoke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = add i64 %i.cc, -1
  %i.cf = add i32 %i.ca, 1000000000
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.02.0.i.i.i = phi i64 [ %i.ce, %bb.ac ], [ %i.cc, %bb.aa ] ; 3 uses
  %.pn.i.i.i = phi i32 [ %i.cf, %bb.ac ], [ %i.ca, %bb.aa ]
  %.sroa.04.0.i.i.i = sub i32 %.pn.i.i.i, %i.by   ; 4 uses
  %i.cg = icmp ult i32 %.sroa.04.0.i.i.i, 1000000000
  br i1 %i.cg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = udiv i32 %.sroa.04.0.i.i.i, 1000000000
  %i.ci = urem i32 %.sroa.04.0.i.i.i, 1000000000
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = add i64 %.sroa.02.0.i.i.i, %i.cj        ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.02.0.i.i.i
  br i1 %i.cl, label %.invoke, label %bb.af

.invoke:                                          ; preds = %bb.z, %bb.ab, %bb.ae
  %i.cm = phi ptr [ @14, %bb.ae ], [ @43, %bb.ab ], [ @43, %bb.z ]
  %i.cn = phi i64 [ 25, %bb.ae ], [ 35, %bb.ab ], [ 35, %bb.z ]
  %i.co = phi ptr [ @15, %bb.ae ], [ @44, %bb.ab ], [ @44, %bb.z ]
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 %i.cm, i64 %i.cn, ptr nonnull align 8 %i.co) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.4.0.i.i.i = phi i32 [ %.sroa.04.0.i.i.i, %bb.ad ], [ %i.ci, %bb.ae ]
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.02.0.i.i.i, %bb.ad ], [ %i.ck, %bb.ae ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8
  store i32 %.sroa.4.0.i.i.i, ptr %i.ba, align 8
  %i.cp = load i64, ptr %i.at, align 8            ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.invoke47, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = add nuw i64 %.sroa.0.0, 1
  %i.cs = urem i64 %i.cr, %i.cp
  br label %bb.s

.invoke47:                                        ; preds = %bb.af, %bb.q
  %i.ct = phi ptr [ @35, %bb.q ], [ @37, %bb.af ]
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr nonnull align 8 %i.ct) #25
          to label %.cont48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont48:                                          ; preds = %.invoke47
  unreachable

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 8), (56, 60)) %0, i64 %1, i32 %2, i64 %3, i32 %4, double %5, ptr nofree readonly align 8 captures(none) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !40 {
bb.a:
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %2, ptr %i.c, align 8
  store i64 %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %4, ptr %i.d, align 8
  %i.e = call zeroext i1 @_ZN4core3cmp10PartialOrd2gt17h7f7bd5745ca9fae4E(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %.val4 = load i32, ptr %i.d, align 8            ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  %i.g = icmp eq i32 %.val4, 0
  %spec.select.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %spec.select.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @42, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp olt double %5, 0.000000e+00
  br i1 %i.h, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @41, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.i = fcmp ogt double %5, 1.000000e+02
  br i1 %i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  store ptr @40, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.j = fcmp uno double %5, 0.000000e+00
  br i1 %i.j, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  store ptr @39, ptr %0, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.k = load i64, ptr %i.b, align 8
  %i.l = load i32, ptr %i.c, align 8
  store double %5, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store ptr @38, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.j
  %.sink11 = phi i64 [ 8, %bb.c ], [ 8, %bb.e ], [ 8, %bb.g ], [ 8, %bb.i ], [ 8, %bb.k ], [ 48, %bb.j ]
  %.sink9 = phi i64 [ 37, %bb.c ], [ 24, %bb.e ], [ 27, %bb.g ], [ 35, %bb.i ], [ 22, %bb.k ], [ %.val, %bb.j ]
  %.sink = phi i32 [ 1000000000, %bb.c ], [ 1000000000, %bb.e ], [ 1000000000, %bb.g ], [ 1000000000, %bb.i ], [ 1000000000, %bb.k ], [ %.val4, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  store i64 %.sink9, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN5tower7builder53ServiceBuilder$LT$tower_layer..identity..Identity$GT$3new17hfaa180db4efaedcaE"() unnamed_addr #1 !guid !41 {
bb.a:
  tail call void @_ZN11tower_layer8identity8Identity3new17h0b781f6205840a7bE()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN5tower7timeout5error7Elapsed3new17hc911b0bd34e7d536E() unnamed_addr #10 !guid !42 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i32 } @_ZN5tower7timeout5layer12TimeoutLayer3new17h72944a0ccc2c4d97E(i64 %0, i32 %1) unnamed_addr #10 !guid !43 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 %1, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdb03195453707f19E"(i32 %0, i32 %1) unnamed_addr #4 !guid !44 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN69_$LT$tower..timeout..error..Elapsed$u20$as$u20$core..fmt..Display$GT$3fmt17h8b5ffd0fc5e9917aE"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !45 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr align 8 %1, ptr nonnull align 1 @45, i64 17)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h273a429130c23ff6E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #10 !guid !46 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$tower..util..rng..HasherRng$u20$as$u20$core..default..Default$GT$7default17h1d67406e0141fd5dE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 !guid !47 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr nonnull align 8 @46) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0dc4ada7ef6f8b78E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 !guid !48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %i.e, i64 range(i64 1, -9223372036854775808) %i.d, i64 8) #24
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN73_$LT$tower..util..optional..error..None$u20$as$u20$core..fmt..Display$GT$3fmt17h34d0b43c95beb366E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !49 {
_ZN4core3fmt9Formatter9write_fmt17h96efc16903c15f64E.exit:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h0d525fc4118d3698E"(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 @48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.f = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %i.e, ptr align 8 %i.d, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN74_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Debug$GT$3fmt17hcde58933d4ee87f5E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 !guid !50 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @49, i64 14, ptr nonnull align 1 %i.a, ptr nonnull align 8 @50)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h50f5a7791da37d96E"(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !51 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull align 1 @51, i64 11)
  %i.b = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN76_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Display$GT$3fmt17h7144be6ad1140d71E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !52 {
_ZN4core3fmt9Formatter9write_fmt17h96efc16903c15f64E.exit:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt2rt8Argument11new_display17h19d2c6b6d07d00fcE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbef88af14ff79fc4E"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 @53, ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.h = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %i.g, ptr align 8 %i.f, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bdaddfb96b83709E"(ptr align 8 %0) unnamed_addr #1 !guid !53 {
bb.a:
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN80_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..fmt..Debug$GT$3fmt17hedfeb6cbc1bc70a4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !54 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 1 @54, i64 6)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @55, i64 7, ptr nonnull align 1 %i.c, ptr nonnull align 8 @56)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.d, ptr nonnull align 1 @57, i64 8, ptr nonnull align 1 %i.e, ptr nonnull align 8 @56)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.u, %.preheader.i ]
  %.sroa.09.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.v, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i, i64 %i.p)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %i.u = call i64 @llvm.sadd.sat.i64(i64 %i.q, i64 %i.t) ; 3 uses
  %i.v = add nuw i64 %.sroa.09.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", label %.preheader.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa": ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i", label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", %.preheader.i.preheader
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.u, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.v, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod2 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i.epil.init
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.epil.init, i64 %i.x)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", %.preheader.i.epil.preheader
  %.lcssa = phi i64 [ %i.u, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ], [ %i.y, %.preheader.i.epil.preheader ]
  %i.z = call i64 @llvm.sadd.sat.i64(i64 %i.h, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit: ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"
  %.sroa.04.0.i.i.i = phi i64 [ %i.h, %bb.a ], [ %i.z, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i" ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i, i64 %i.ab)
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.f, ptr nonnull align 1 @58, i64 7, ptr nonnull align 1 %i.a, ptr nonnull align 8 @56)
  %i.ae = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8 %i.ad)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..default..Default$GT$7default17h51d493777488b92eE"(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #1 !guid !55 {
bb.a:
  tail call void @_ZN5tower5retry6budget10tps_budget9TpsBudget3new17h89d875e3cc15e9c4E(ptr sret([96 x i8]) align 8 %0, i64 10, i32 0, i32 10, float 2.000000e-01)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 !guid !56 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.h, label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr nonnull align 1 %i.b, i8 1, i8 0)
  br label %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit

_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr align 4 %i.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZN3std4sync6poison4Flag4done17hac306e7baab13b17E.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i32, i32 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E"(ptr nofree align 4 captures(none) %0) unnamed_addr #3 !guid !57 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4                ; 3 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp ult i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.b, 1
  store i32 %i.e, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.b, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN89_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he99cd75f06d17dd5E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 !guid !58 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$tower..retry..backoff..ExponentialBackoffMaker$u20$as$u20$core..default..Default$GT$7default17h810a484a26cb1e09E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !59 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr nonnull align 8 @46) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 50000000, ptr %i.f, align 8
  store i64 18446744073709551, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 615000000, ptr %i.g, align 8
  %i.h = call zeroext i1 @_ZN4core3cmp10PartialOrd2gt17h7f7bd5745ca9fae4E(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
  br i1 %i.h, label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8           ; 2 uses
  %.val4.i = load i32, ptr %i.g, align 8          ; 3 uses
  %i.i = icmp eq i64 %.val.i, 0
  %i.j = icmp eq i32 %.val4.i, 0
  %spec.select.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %spec.select.i.i, label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", label %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"

"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread": ; preds = %bb.a, %bb.b
  %.sroa.0.0.ph = phi i64 [ ptrtoint (ptr @41 to i64), %bb.b ], [ ptrtoint (ptr @42 to i64), %bb.a ]
  %.sink9.i.ph = phi i64 [ 24, %bb.b ], [ 37, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit": ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8
  %i.l = load i32, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = icmp eq i32 %.val4.i, 1000000000
  br i1 %i.m, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E.exit"

bb.c:                                             ; preds = %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread", %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"
  %.sroa.5.0 = phi i64 [ %.sink9.i.ph, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread" ], [ %i.e, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit" ]
  %.sroa.0.013 = phi i64 [ %.sroa.0.0.ph, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit.thread" ], [ 4607092346807469998, %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit" ]
  %i.n = inttoptr i64 %.sroa.0.013 to ptr
  store ptr %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.o, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @59, i64 35, ptr nonnull align 1 %i.a, ptr nonnull align 8 @17, ptr nonnull align 8 @61) #25
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E.exit": ; preds = %"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E.exit"
  %i.p = extractvalue { i64, i64 } %i.d, 1
  store i64 4607092346807469998, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.2.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.9.sroa.2.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val.i, ptr %.sroa.114.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.val4.i, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind uwtable
define i64 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E"(ptr %0, ptr %1, i64 %2) unnamed_addr #13 personality ptr @rust_eh_personality !guid !60 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.07.0 = phi i64 [ %2, %.new ], [ %i.m, %bb.c ]
  %.sroa.09.0 = phi i64 [ 0, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  %i.i = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0, i64 %i.h)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call i64 @llvm.sadd.sat.i64(i64 %i.i, i64 %i.l) ; 3 uses
  %i.n = add nuw i64 %.sroa.09.0, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %i.o = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b
  %.sroa.07.0.epil.init = phi i64 [ %2, %bb.b ], [ %i.m, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.09.0.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.epil.init
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.epil.init, i64 %i.q)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  %.sroa.04.0 = phi i64 [ %2, %bb.a ], [ %i.m, %.loopexit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN92_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hf526521649e8e9bfE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 !guid !61 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$7deposit17hed8c7054f3e4ad18E"(ptr align 8 %0) unnamed_addr #1 !guid !62 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = atomicrmw add ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$8withdraw17h739ce30717fc556cE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !63 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.h, 1
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.q, %.preheader.i.i ]
  %.sroa.09.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.r, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i, i64 %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call i64 @llvm.sadd.sat.i64(i64 %i.m, i64 %i.p) ; 3 uses
  %i.r = add nuw i64 %.sroa.09.0.i.i.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", label %.preheader.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.07.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.r, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i.epil.init
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %i.u = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i.epil.init, i64 %i.t)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ], [ %i.u, %.preheader.i.i.epil.preheader ]
  %i.v = tail call i64 @llvm.sadd.sat.i64(i64 %i.d, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i", %bb.a
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.v, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i" ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i.i, i64 %i.x)
  %.not.i = icmp sge i64 %i.y, %i.b               ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit

bb.b:                                             ; preds = %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i
  %i.z = atomicrmw sub ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit

_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit: ; preds = %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i, %bb.b
  ret i1 %.not.i
}

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_ZN4core4sync6atomic11atomic_load17haaed84cdca62c2b0E(ptr, i8) unnamed_addr #6

; Function Attrs: cold noinline nonlazybind uwtable
declare zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE() unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4sync6atomic12atomic_store17h857b8a032cfeaca2E(ptr, i8, i8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_ZN4core4sync6atomic11atomic_load17hc4710425ff9d998bE(ptr, i8) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd63cb86e8894341eE(ptr, i32, i32, i8, i8) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 4) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$isize$GT$3fmt17haaa73a96c4db1c53E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$isize$GT$3fmt17h3e339308295fbd7aE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$isize$GT$3fmt17hef17ba53b85fc412E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #17

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfbe02e8b68fa78ebE"(ptr align 1, ptr align 8) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr align 1, i64, ptr align 8) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr align 8, ptr align 8) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr align 8) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr align 1, i64, ptr align 8) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64, i64, i64, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr align 8, i64, i64, i64) unnamed_addr #6

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64, i64, ptr align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hdf6f3792cb1bc5ecE"(ptr align 8, i64, i64, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_ZN4core3cmp10PartialOrd2ge17he2840c1c4c933ac6E(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptosi.sat.i64.f32(float) #17

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN5tokio4time7instant7Instant3now17h457a2db67d794c3eE() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN5tokio4time7instant7Instant25saturating_duration_since17hf3d2e1ccc327fe8cE(ptr align 8, i64, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_ZN4core3cmp10PartialOrd2lt17h6302d28b66629a4eE(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64, i64, ptr align 8) unnamed_addr #21

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_ZN4core3cmp10PartialOrd2gt17h7f7bd5745ca9fae4E(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN11tower_layer8identity8Identity3new17h0b781f6205840a7bE() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h0d525fc4118d3698E"(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60fe18f8ebb34fa1E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h19d2c6b6d07d00fcE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbef88af14ff79fc4E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr align 4) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{i64 -1178389107795726760}
!4 = !{i64 3159306711247963416}
!5 = !{i64 2821610978592099238}
!6 = !{i64 2775037747958031390}
!7 = !{i64 -8625825424158199384}
!8 = !{i64 -1361516252166143858}
!9 = !{i64 -8486028591529606825}
!10 = !{i64 -2145015937853036781}
!11 = !{i64 -702629417051589265}
!12 = !{i64 968715276429428793}
!13 = !{i64 7827540579617585805}
!14 = !{i64 5373280394667752810}
!15 = !{i64 -2274672460439206143}
!16 = !{i64 -4669401904115068820}
!17 = !{i64 -902408436020169543}
!18 = !{i64 -2753803480505395621}
!19 = !{i64 8699452993007600412}
!20 = !{i64 5124861313517174384}
!21 = !{i64 -5288618829267604248}
!22 = !{i64 -6472125440572838248}
!23 = !{i64 2336981999074154968}
!24 = !{i64 -2084589829355034516}
!25 = !{i64 2283508673752948928}
!26 = !{i64 1370471927458506514}
!27 = !{i64 6376561026747178690}
!28 = !{i64 -5555487444157702461}
!29 = !{i64 -4766105592158916112}
!30 = !{i64 1864647663542499395}
!31 = !{i64 -5886823829068557065}
!32 = !{i64 -2104722677871089531}
!33 = !{i64 7022766075065054243}
!34 = !{i64 7076752041832648822}
!35 = !{i64 2612703301986856581}
!36 = !{i64 8038850842625954208}
!37 = !{i64 -5395607003630614529}
!38 = !{i64 -138294609614874115}
!39 = !{i64 2870572987820096400}
!40 = !{i64 -311765009608461461}
!41 = !{i64 -2009799251528311443}
!42 = !{i64 5058144242093497660}
!43 = !{i64 3975033079708916677}
!44 = !{i64 5501400340786067194}
!45 = !{i64 2310432485873298579}
!46 = !{i64 -2334011559715410384}
!47 = !{i64 4533325237389473114}
!48 = !{i64 6109860433099704420}
!49 = !{i64 6123320940015123827}
!50 = !{i64 -370059329209803703}
!51 = !{i64 3742934705594151861}
!52 = !{i64 8720020559404648417}
!53 = !{i64 4084576046333150033}
!54 = !{i64 -8525320810630081954}
!55 = !{i64 -1858341666525933751}
!56 = !{i64 -9036492887008450666}
!57 = !{i64 -4255385080199621461}
!58 = !{i64 -568025005366111668}
!59 = !{i64 -1012006068859263371}
!60 = !{i64 6197227969432726103}
!61 = !{i64 -2186105740187116696}
!62 = !{i64 -8293111523572431728}
!63 = !{i64 6112724918694204086}
end_hunk_0
