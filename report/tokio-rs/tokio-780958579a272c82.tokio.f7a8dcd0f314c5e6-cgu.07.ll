Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.07?download=true
inline.NumInlined: 365
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [43 x i8] c"fatal runtime error: unreachable, aborting\0A", align 1
@1 = private unnamed_addr constant [95 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\0B\07\00\00$\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECslghKHtsL3a4_5tokio, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCslghKHtsL3a4_5tokio, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCslghKHtsL3a4_5tokio, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCslghKHtsL3a4_5tokio }>, align 8
@4 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@5 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@7 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@8 = private unnamed_addr constant [37 x i8] c"tokio/src/runtime/context/current.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"$\00\00\00\00\00\00\00)\00\00\005\00\00\00" }>, align 8
@10 = private unnamed_addr constant [51 x i8] c"tokio/src/runtime/scheduler/multi_thread/worker.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\00-\02\00\00\19\00\00\00" }>, align 8
@12 = private unnamed_addr constant [39 x i8] c"assertion failed: cx.run(core).is_err()", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\001\02\00\00\0D\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\00L\05\00\001\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\00\84\01\00\00\1D\00\00\00" }>, align 8
@16 = private unnamed_addr constant [35 x i8] c"assertion failed: cx_core.is_none()", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\00\89\01\00\00\19\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"2\00\00\00\00\00\00\00\88\01\00\003\00\00\00" }>, align 8
@19 = private unnamed_addr constant [50 x i8] c"tokio/src/runtime/scheduler/current_thread/mod.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"1\00\00\00\00\00\00\00\D3\02\00\00(\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBS_ }>, align 8
@22 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@23 = private unnamed_addr constant [20 x i8] c"\08elapsed=\C0\07; when=\C0\00", align 1
@24 = private unnamed_addr constant [36 x i8] c"tokio/src/runtime/time/wheel/mod.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\00\FD\00\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant [37 x i8] c"assertion failed: self.tail.is_none()", align 1
@27 = private unnamed_addr constant [30 x i8] c"tokio/src/util/linked_list.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1D\00\00\00\00\00\00\00\BC\00\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\00\0B\01\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant [38 x i8] c"tokio/src/runtime/time/wheel/level.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"%\00\00\00\00\00\00\00\93\00\00\00\1D\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\00\F5\00\00\00\19\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\008\00\00\00'\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\00f\00\00\00\0D\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"#\00\00\00\00\00\00\00\82\00\00\00\11\00\00\00" }>, align 8
@36 = private unnamed_addr constant [37 x i8] c"tokio/src/runtime/scheduler/defer.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"$\00\00\00\00\00\00\00!\00\00\00/\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"$\00\00\00\00\00\00\00\10\00\00\00*\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"$\00\00\00\00\00\00\00\1D\00\00\00\17\00\00\00" }>, align 8
@40 = private unnamed_addr constant [26 x i8] c"not a CurrentThread handle", align 1
@41 = private unnamed_addr constant [35 x i8] c"tokio/src/runtime/scheduler/mod.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"\22\00\00\00\00\00\00\00\CB\00\00\00\16\00\00\00" }>, align 8
@43 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_, align 8
@44 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1D\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@46 = private unnamed_addr constant [59 x i8] c"tokio/src/runtime/scheduler/multi_thread/handle/metrics.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c":\00\00\00\00\00\00\00\16\00\00\00\0A\00\00\00" }>, align 8
@48 = private unnamed_addr constant [31 x i8] c"expected `MultiThread::Context`", align 1
@49 = private unnamed_addr constant [33 x i8] c"expected `CurrentThread::Context`", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1D\00\00\00\00\00\00\00o\01\00\00*\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1D\00\00\00\00\00\00\00\81\01\00\00=\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1D\00\00\00\00\00\00\00\93\01\00\00I\00\00\00" }>, align 8
@53 = private unnamed_addr constant [42 x i8] c"Can't get a task id when not inside a task", align 1
@_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = local_unnamed_addr global [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@54 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@55 = private unnamed_addr constant [39 x i8] c"tokio/src/runtime/blocking/schedule.rs\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"&\00\00\00\00\00\00\00:\00\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant [87 x i8] c"std::sync::poison::mutex::Mutex<core::option::Option<tokio::sync::watch::Receiver<()>>>", align 1
@58 = private unnamed_addr constant [17 x i8] c"\0CPhantomData<\C0\01>\00", align 1
@59 = private unnamed_addr constant [69 x i8] c"std::sync::poison::mutex::Mutex<alloc::vec::Vec<std::process::Child>>", align 1
@60 = private unnamed_addr constant [37 x i8] c"std::sync::poison::rwlock::RwLock<()>", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCNvMB1G_NtB1G_13CurrentThread8shutdowns_0uE0TINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB1G_4CoreEuEEB9_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store ptr %1, ptr %0, align 8
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  %i.d = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread9shutdown2(ptr noalias noundef nonnull align 8 %.val1, ptr noundef nonnull align 128 %i.c)
          to label %_RNCINvMs7_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCNvMB8_NtB8_13CurrentThread8shutdowns_0uE0Be_.exit unwind label %bb.b

_RNCINvMs7_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCNvMB8_NtB8_13CurrentThread8shutdowns_0uE0Be_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  ret ptr %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.a, ptr %0, align 8
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCNCNvNtNtB15_12multi_thread6worker3run00uEB9_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store ptr %1, ptr %0, align 8
  %i.b = load i64, ptr %2, align 8, !range !6, !noalias !21, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc.i unwind label %bb.g, !noalias !21

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = invoke noundef align 8 ptr @_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context3run(ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 %3)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit7.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit.i: ; preds = %.noexc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull %i.e)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %.noexc4
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit7.i: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %.pr.i.i = load i64, ptr %i.f, align 8, !noalias !21
  %i.g = icmp eq i64 %.pr.i.i, 0
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !8

.lr.ph.i.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit7.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  store i64 -1, ptr %i.f, align 8, !noalias !21
  %i.k = load i64, ptr %i.h, align 8, !noalias !21, !noundef !4 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit7.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #23
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %._crit_edge.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.k, -1                     ; 3 uses
  store i64 %i.m, ptr %i.h, align 8, !noalias !21
  %i.n = load i64, ptr %i.i, align 8, !range !9, !noalias !21, !noundef !4
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %i.j, align 8, !noalias !21, !nonnull !4, !noundef !4
  %i.q = icmp ult i64 %i.k, 576460752303423489
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !5, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  invoke void %i.w(ptr noundef %i.u)
          to label %bb.f unwind label %.body.thread.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.f, align 8, !noalias !21, !noundef !4
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr %i.f, align 8, !noalias !21
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %._crit_edge.i.i, !prof !10

.body.thread.i:                                   ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.f, align 8, !noalias !21, !noundef !4
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.f, align 8, !noalias !21
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull align 8 %3) #25
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %._crit_edge.i.i, %.noexc4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEuEEB1G_.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !noalias !21
  store ptr %i.a, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.i, %bb.g, %.body.thread.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.aa, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.g ]
  store ptr %i.a, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCINvNtNtB15_12multi_thread6worker12with_currentuNCNvMs2_B1D_NtNtB1F_6handle6Handle13schedule_task0E0uEB9_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNCINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker12with_currentuNCNvMs2_B4_NtNtB6_6handle6Handle13schedule_task0E0Bc_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16push_remote_task(ptr noundef nonnull align 8 %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.4.0.copyload), !noalias !26
  tail call void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle20notify_parked_remote(ptr noundef nonnull align 8 %.sroa.0.0.copyload), !noalias !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCINvNtNtB15_12multi_thread6worker12with_currentuNCNvXNvB1D_14block_in_placeNtB2q_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0E0uEB9_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val3 = load i8, ptr %1, align 1
  %.val4 = load i8, ptr %2, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.val5 = load i8, ptr %i.c, align 1
  tail call fastcc void @_RNCINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker12with_currentuNCNvXNvB4_14block_in_placeNtB1t_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0E0Bc_(i8 %.val3, i8 %.val4, i8 %.val5, ptr noundef nonnull align 8 %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvB5_5defer0uEB9_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noalias !34, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context5defer(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_7Context5defer(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !35, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !35, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !35, !noundef !4
  tail call void %i.h(ptr noundef %i.j), !noalias !35, !inline_history !33
  br label %_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_.exit

_RNCNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer0B7_.exit: ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvXs5_NtB15_14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB1G_6HandleENtNtB7_4task8Schedule8schedule0uEB9_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNCNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB7_6HandleENtNtBb_4task8Schedule8schedule0Bd_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !38 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.pre.i, i64 424
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6injectINtB2_6InjectINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_14current_thread6HandleEE4pushB8_(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %.pre.i, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvXs6_NtB15_14current_threadNtB1G_6HandleNtNtNtB9_4util4wake4Wake11wake_by_ref0uEB9_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %i.b, label %_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit.sink.split

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %.val, %i.f
  br i1 %i.g, label %_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit, label %bb.c

_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit.sink.split: ; preds = %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 560
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %i.h)
  br label %_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit

_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit: ; preds = %_RNCNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB7_6HandleNtNtNtBd_4util4wake4Wake11wake_by_ref0Bd_.exit.sink.split, %bb.d
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECslghKHtsL3a4_5tokio(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics17worker_park_count:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.g = tail call noundef nonnull align 128 ptr @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle14worker_metrics(ptr noundef nonnull align 128 %i.f, i64 noundef %1)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #23
  unreachable

_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32
  %i.l = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB2_15MetricAtomicU644load(ptr noundef nonnull align 8 %i.k, i8 noundef 0)
  ret i64 %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics18global_queue_depth(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = trunc nuw i64 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = tail call noundef i64 @_RNvMNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle7metricsNtB4_6Handle21injection_queue_depth(ptr noundef nonnull align 8 %i.c)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle21injection_queue_depth.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.f = tail call noundef i64 @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle21injection_queue_depth(ptr noundef nonnull align 128 %i.e)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle21injection_queue_depth.exit

_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle21injection_queue_depth.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics24worker_park_unpark_count(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = trunc nuw i64 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 232
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.g = tail call noundef nonnull align 128 ptr @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle14worker_metrics(ptr noundef nonnull align 128 %i.f, i64 noundef %1)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #23
  unreachable

_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %i.l = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB2_15MetricAtomicU644load(ptr noundef nonnull align 8 %i.k, i8 noundef 0)
  ret i64 %i.l
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics26worker_total_busy_duration(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = trunc nuw i64 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 232
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.g = tail call noundef nonnull align 128 ptr @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle14worker_metrics(ptr noundef nonnull align 128 %i.f, i64 noundef %1)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #23
  unreachable

_RNvMs2_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle14worker_metrics.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.l = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB2_15MetricAtomicU644load(ptr noundef nonnull align 8 %i.k, i8 noundef 0) ; 2 uses
  %i.m = udiv i64 %i.l, 1000000000
  %i.n = urem i64 %i.l, 1000000000
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = insertvalue { i64, i32 } poison, i64 %i.m, 0
  %i.q = insertvalue { i64, i32 } %i.p, i32 %i.o, 1
  ret { i64, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %.val23 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %.val23, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val23, i64 640
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio4time5clockNtB2_5Clock20inhibit_auto_advance(ptr noundef nonnull align 8 %i.f)
  %i.g = atomicrmw add ptr %.val23, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.v = phi i64 [ 512, %bb.c ], [ 584, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %.val23, i64 %.sroa.01.0.v
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.h
  %i.m = phi <2 x ptr> [ %i.p, %bb.h ], [ <ptr null, ptr undef>, %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val23, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.m, ptr %i.o, align 8
  ret void

bb.h:                                             ; preds = %bb.f
  %i.p = load <2 x ptr>, ptr %i.i, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler5deferNtB2_5Defer4wake(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.pr = load i64, ptr %0, align 8
  %i.a = icmp eq i64 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge, !prof !8

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  store i64 -1, ptr %0, align 8
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.e, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #23
  unreachable

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 3 uses
  store i64 %i.g, ptr %i.b, align 8
  %i.h = load i64, ptr %i.c, align 8, !range !9, !noundef !4
  %i.i = icmp samesign ult i64 %i.g, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ult i64 %i.e, 576460752303423489
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !5, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  invoke void %i.q(ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %0, align 8, !noundef !4
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %0, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %._crit_edge, !prof !10

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i64, ptr %0, align 8, !noundef !4
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %0, align 8
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler5deferNtB2_5Defer5defer(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  %i.j = getelementptr i8, ptr %i.h, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !align !5, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = icmp eq ptr %i.k, %i.n
  %i.p = icmp eq ptr %i.l, %.pre
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi ptr [ %.pre4, %._crit_edge ], [ %i.n, %bb.d ]
  %i.r = load ptr, ptr %.pre, align 8, !nonnull !4, !noundef !4
  %i.s = invoke { ptr, ptr } %i.r(ptr noundef %i.q)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.u = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !222, !noalias !223, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.c, align 8, !range !9, !alias.scope !222, !noalias !223, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerE8grow_oneCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.i, !noalias !223

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !223, !noalias !222, !nonnull !4, !noundef !4
  invoke void %i.ab(ptr noundef %i.v)
          to label %bb.m unwind label %bb.j, !noalias !223, !inline_history !221

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !223
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !222, !noalias !223, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %i.u, ptr %i.af, align 8, !noalias !223
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.v, ptr %i.ag, align 8
  %i.ah = add i64 %i.w, 1
  store i64 %i.ah, ptr %i.d, align 8, !alias.scope !222, !noalias !223
  %i.ai = load i64, ptr %0, align 8, !noundef !4
  %i.aj = add i64 %i.ai, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k
  %storemerge = phi i64 [ %i.aj, %bb.k ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.z, %bb.i ]
  %i.ak = load i64, ptr %0, align 8, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler5deferNtB2_5Defer8is_empty(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp ult i64 %i.a, 9223372036854775807
  br i1 %i.b, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtB7_4task4wake5WakerEE6borrowCslghKHtsL3a4_5tokio.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #23
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtB7_4task4wake5WakerEE6borrowCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle32can_spawn_local_on_local_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.g = load i64, ptr %i.f, align 128, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current() ; 3 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !16, !noundef !4
  %i.k = icmp eq i64 %i.j, %i.g
  %i.l = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !232
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit, %bb.b, %bb.a
end_hunk_1
