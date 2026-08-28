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
@0 = private unnamed_addr constant [40 x i8] c"there is no such thing as a release load", align 1
@1 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@2 = private unnamed_addr constant [80 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/sync/atomic.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00q\0F\00\00\18\00\00\00" }>, align 8
@4 = private unnamed_addr constant [49 x i8] c"there is no such thing as an acquire-release load", align 1
@5 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00r\0F\00\00\17\00\00\00" }>, align 8
@7 = private unnamed_addr constant [42 x i8] c"there is no such thing as an acquire store", align 1
@8 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00b\0F\00\00\18\00\00\00" }>, align 8
@10 = private unnamed_addr constant [50 x i8] c"there is no such thing as an acquire-release store", align 1
@11 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @10, [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00c\0F\00\00\17\00\00\00" }>, align 8
@13 = private unnamed_addr constant [73 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/time.rs\00", align 1
@14 = private unnamed_addr constant [25 x i8] c"overflow in Duration::new", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"H\00\00\00\00\00\00\00\C9\00\00\00\12\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h50f5a7791da37d96E" }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN74_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Debug$GT$3fmt17hcde58933d4ee87f5E" }>, align 8
@18 = private unnamed_addr constant [47 x i8] c"assertion failed: ttl >= Duration::from_secs(1)", align 1
@19 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3/src/retry/budget/tps_budget.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00G\00\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant [48 x i8] c"assertion failed: ttl <= Duration::from_secs(60)", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00H\00\00\00\09\00\00\00" }>, align 8
@23 = private unnamed_addr constant [38 x i8] c"assertion failed: retry_percent >= 0.0", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00I\00\00\00\09\00\00\00" }>, align 8
@25 = private unnamed_addr constant [41 x i8] c"assertion failed: retry_percent <= 1000.0", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00J\00\00\00\09\00\00\00" }>, align 8
@27 = private unnamed_addr constant [47 x i8] c"assertion failed: min_per_sec < i32::MAX as u32", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00K\00\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00_\00\00\00\19\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00j\00\00\00\1A\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00a\00\00\00\13\00\00\00" }>, align 8
@32 = private unnamed_addr constant [15 x i8] c"generation lock", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00s\00\00\00.\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\80\00\00\00\17\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\82\00\00\00\0D\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"o\00\00\00\00\00\00\00\84\00\00\00\13\00\00\00" }>, align 8
@38 = private unnamed_addr constant [22 x i8] c"jitter must not be NaN", align 1
@39 = private unnamed_addr constant [35 x i8] c"jitter must not be greater than 100", align 1
@40 = private unnamed_addr constant [27 x i8] c"jitter must not be negative", align 1
@41 = private unnamed_addr constant [24 x i8] c"maximum must be non-zero", align 1
@42 = private unnamed_addr constant [37 x i8] c"maximum must not be less than minimum", align 1
@43 = private unnamed_addr constant [35 x i8] c"overflow when subtracting durations", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"H\00\00\00\00\00\00\00\8D\04\00\00\1F\00\00\00" }>, align 8
@45 = private unnamed_addr constant [17 x i8] c"request timed out", align 1
@46 = private unnamed_addr constant ptr @_ZN4core3ops8function6FnOnce9call_once17hb8b5f45a2c04e0c7E, align 8
@47 = private unnamed_addr constant [4 x i8] c"None", align 1
@48 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @47, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@49 = private unnamed_addr constant [14 x i8] c"InvalidBackoff", align 1
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60fe18f8ebb34fa1E" }>, align 8
@51 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@52 = private unnamed_addr constant [17 x i8] c"invalid backoff: ", align 1
@53 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @52, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@54 = private unnamed_addr constant [6 x i8] c"Budget", align 1
@55 = private unnamed_addr constant [7 x i8] c"deposit", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17h6ed9026f019fbed5E" }>, align 8
@57 = private unnamed_addr constant [8 x i8] c"withdraw", align 1
@58 = private unnamed_addr constant [7 x i8] c"balance", align 1
@59 = private unnamed_addr constant [35 x i8] c"Unable to create ExponentialBackoff", align 1
@60 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3/src/retry/backoff.rs\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"e\00\00\00\00\00\00\00\C2\00\00\00\0A\00\00\00" }>, align 8

; Function Attrs: norecurse nounwind nonlazybind uwtable
define i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E"(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 3 uses
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
  %lcmp.mod.not = trunc i64 %i.e to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit"

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa", %bb.b
  %.sroa.07.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %i.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ]
  %.sroa.09.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.i.epil.init
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.epil.init, i64 %i.p)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit": ; preds = %.epil.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa", %bb.a
  %.sroa.04.0.i = phi i64 [ %2, %bb.a ], [ %i.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E.exit.loopexit.unr-lcssa" ], [ %i.q, %.epil.preheader ]
  ret i64 %.sroa.04.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN112_$LT$tower..builder..ServiceBuilder$LT$tower_layer..identity..Identity$GT$$u20$as$u20$core..default..Default$GT$7default17h4d37556a2d8a6457E"() unnamed_addr #1 {
bb.a:
  tail call void @_ZN11tower_layer8identity8Identity3new17h0b781f6205840a7bE()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN3std4sync6poison10map_result17hf91adc73966c3c13E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, i1 zeroext %1, i8 %2, ptr align 8 %3) unnamed_addr #2 {
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
define void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$3new17h08da2b31e989aad4E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 5), (8, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
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
define void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17ha4e22db25adc6f2cE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr align 8 %1) unnamed_addr #1 {
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
define { ptr, i1 } @"_ZN3std4sync6poison5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hb5515d6f3117dfd8E"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
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
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$isize$GT$3fmt17h6ed9026f019fbed5E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 {
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
define internal ptr @_ZN4core3ops8function6FnOnce9call_once17hb8b5f45a2c04e0c7E(ptr align 8 %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfbe02e8b68fa78ebE"(ptr nonnull align 1 %i.a, ptr align 8 %0)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr109drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$17h6e83cb5201f9216bE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
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
define void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
end_hunk_0
begin_hunk_1_@"_ZN5tower5retry7backoff32ExponentialBackoffMaker$LT$R$GT$3new17h46aba8cf5ec9be71E":bb.a
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
define void @"_ZN5tower7builder53ServiceBuilder$LT$tower_layer..identity..Identity$GT$3new17hfaa180db4efaedcaE"() unnamed_addr #1 {
bb.a:
  tail call void @_ZN11tower_layer8identity8Identity3new17h0b781f6205840a7bE()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN5tower7timeout5error7Elapsed3new17hc911b0bd34e7d536E() unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i32 } @_ZN5tower7timeout5layer12TimeoutLayer3new17h72944a0ccc2c4d97E(i64 %0, i32 %1) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 %1, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdb03195453707f19E"(i32 %0, i32 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN69_$LT$tower..timeout..error..Elapsed$u20$as$u20$core..fmt..Display$GT$3fmt17h8b5ffd0fc5e9917aE"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr align 8 %1, ptr nonnull align 1 @45, i64 17)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h273a429130c23ff6E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$tower..util..rng..HasherRng$u20$as$u20$core..default..Default$GT$7default17h1d67406e0141fd5dE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 {
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
define void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0dc4ada7ef6f8b78E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
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
define zeroext i1 @"_ZN73_$LT$tower..util..optional..error..None$u20$as$u20$core..fmt..Display$GT$3fmt17h34d0b43c95beb366E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN74_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Debug$GT$3fmt17hcde58933d4ee87f5E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @49, i64 14, ptr nonnull align 1 %i.a, ptr nonnull align 8 @50)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h50f5a7791da37d96E"(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull align 1 @51, i64 11)
  %i.b = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN76_$LT$tower..retry..backoff..InvalidBackoff$u20$as$u20$core..fmt..Display$GT$3fmt17h7144be6ad1140d71E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
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
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bdaddfb96b83709E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr align 8 %0, i64 8, i64 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN80_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..fmt..Debug$GT$3fmt17hedfeb6cbc1bc70a4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  switch i64 %i.l, label %.preheader.i.preheader.new [
    i64 0, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit
    i64 1, label %.preheader.i.epil.preheader
  ]

.preheader.i.preheader.new:                       ; preds = %bb.a
  %unroll_iter = and i64 %i.l, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.s, %.preheader.i ]
  %.sroa.09.0.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.t, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i, i64 %i.n)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load atomic i64, ptr %i.q seq_cst, align 8
  %i.s = call i64 @llvm.sadd.sat.i64(i64 %i.o, i64 %i.r) ; 3 uses
  %i.t = add nuw i64 %.sroa.09.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", label %.preheader.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa": ; preds = %.preheader.i
  %lcmp.mod.not = trunc i64 %i.l to i1
  br i1 %lcmp.mod.not, label %.preheader.i.epil.preheader, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"

.preheader.i.epil.preheader:                      ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa"
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.s, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.t, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod2 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.09.0.i.i.i.epil.init
  %i.v = load atomic i64, ptr %i.u seq_cst, align 8
  %i.w = call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.epil.init, i64 %i.v)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa", %.preheader.i.epil.preheader
  %.lcssa = phi i64 [ %i.s, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.unr-lcssa" ], [ %i.w, %.preheader.i.epil.preheader ]
  %i.x = call i64 @llvm.sadd.sat.i64(i64 %i.h, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit: ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i"
  %.sroa.04.0.i.i.i = phi i64 [ %i.h, %bb.a ], [ %i.x, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i" ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i, i64 %i.z)
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.f, ptr nonnull align 1 @58, i64 7, ptr nonnull align 1 %i.a, ptr nonnull align 8 @56)
  %i.ac = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8 %i.ab)
  ret i1 %i.ac
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$core..default..Default$GT$7default17h51d493777488b92eE"(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN5tower5retry6budget10tps_budget9TpsBudget3new17h89d875e3cc15e9c4E(ptr sret([96 x i8]) align 8 %0, i64 10, i32 0, i32 10, float 2.000000e-01)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d3795f9784e7353E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
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
define { i32, i32 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hee4156b79bb1a688E"(ptr nofree align 4 captures(none) %0) unnamed_addr #3 {
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
define nonnull align 8 ptr @"_ZN89_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he99cd75f06d17dd5E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$tower..retry..backoff..ExponentialBackoffMaker$u20$as$u20$core..default..Default$GT$7default17h810a484a26cb1e09E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define i64 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h892299863ce45780E"(ptr %0, ptr %1, i64 %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 3 uses
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
  %lcmp.mod.not = trunc i64 %i.e to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b
  %.sroa.07.0.epil.init = phi i64 [ %2, %bb.b ], [ %i.m, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.09.0.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0.epil.init
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.epil.init, i64 %i.p)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  %.sroa.04.0 = phi i64 [ %2, %bb.a ], [ %i.m, %.loopexit.loopexit.unr-lcssa ], [ %i.q, %.epil.preheader ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN92_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hf526521649e8e9bfE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$7deposit17hed8c7054f3e4ad18E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = atomicrmw add ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN92_$LT$tower..retry..budget..tps_budget..TpsBudget$u20$as$u20$tower..retry..budget..Budget$GT$8withdraw17h739ce30717fc556cE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @_ZN5tower5retry6budget10tps_budget9TpsBudget6expire17h90c49f74785091f1E(ptr align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  switch i64 %i.h, label %.preheader.i.i.preheader.new [
    i64 0, label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i
    i64 1, label %.preheader.i.i.epil.preheader
  ]

.preheader.i.i.preheader.new:                     ; preds = %bb.a
  %unroll_iter = and i64 %i.h, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.o, %.preheader.i.i ]
  %.sroa.09.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.p, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i, i64 %i.j)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = tail call i64 @llvm.sadd.sat.i64(i64 %i.k, i64 %i.n) ; 3 uses
  %i.p = add nuw i64 %.sroa.09.0.i.i.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", label %.preheader.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = trunc i64 %i.h to i1
  br i1 %lcmp.mod.not, label %.preheader.i.i.epil.preheader, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i"

.preheader.i.i.epil.preheader:                    ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa"
  %.sroa.07.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.o, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %.sroa.09.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.p, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.09.0.i.i.i.i.epil.init
  %i.r = load atomic i64, ptr %i.q seq_cst, align 8
  %i.s = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.07.0.i.i.i.i.epil.init, i64 %i.r)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.o, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i.unr-lcssa" ], [ %i.s, %.preheader.i.i.epil.preheader ]
  %i.t = tail call i64 @llvm.sadd.sat.i64(i64 %i.d, i64 %.lcssa)
  br label %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i

_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i: ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i"
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.t, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h956c2c47fb25a057E.exit.loopexit.i.i" ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i.i.i.i, i64 %i.v)
  %.not.i = icmp sge i64 %i.w, %i.b               ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN5tower5retry6budget10tps_budget9TpsBudget7try_get17h7a41976427cf8ce2E.exit

bb.b:                                             ; preds = %_ZN5tower5retry6budget10tps_budget9TpsBudget3sum17h7046136ecb1547f3E.exit.i
  %i.x = atomicrmw sub ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
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
end_hunk_1
