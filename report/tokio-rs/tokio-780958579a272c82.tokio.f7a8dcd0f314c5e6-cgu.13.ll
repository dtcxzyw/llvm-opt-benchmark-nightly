Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.13?download=true
inline.NumInlined: 395
inline.NumDeleted: 111
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [59 x i8] c"The Tokio context thread-local variable has been destroyed.", align 1
@1 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c";\00\00\00\00\00\00\00" }>, align 8
@2 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@3 = private unnamed_addr constant [33 x i8] c"tokio/src/process/unix/orphan.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c" \00\00\00\00\00\00\00v\00\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant [52 x i8] c"time cannot be frozen from outside the Tokio runtime", align 1
@6 = private unnamed_addr constant [18 x i8] c"time is not frozen", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@9 = private unnamed_addr constant [24 x i8] c"tokio/src/time/clock.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\17\00\00\00\00\00\00\00;\01\00\00\15\00\00\00" }>, align 8
@11 = private unnamed_addr constant [113 x i8] c"`time::pause()` requires the `current_thread` Tokio runtime. This is the default Runtime used by `#[tokio::test].", align 1
@12 = private unnamed_addr constant [22 x i8] c"time is already frozen", align 1
@13 = private unnamed_addr constant [29 x i8] c"tokio/src/net/unix/socket.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\1C\00\00\00\00\00\00\00`\00\00\00\1D\00\00\00" }>, align 8
@15 = private unnamed_addr constant [44 x i8] c"listen cannot be called on a datagram socket", align 1
@16 = private unnamed_addr constant [44 x i8] c"datagram cannot be called on a stream socket", align 1
@17 = private unnamed_addr constant [31 x i8] c"tokio/src/runtime/io/driver.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\A5\00\00\00 \00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\A0\00\00\00 \00\00\00" }>, align 8
@20 = private unnamed_addr constant [49 x i8] c".unexpected error when polling the I/O driver: \C0\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\C4\00\00\00\17\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\AA\00\00\00 \00\00\00" }>, align 8
@23 = private unnamed_addr constant [25 x i8] c"failed to wake I/O driver", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\10\01\00\00\1B\00\00\00" }>, align 8
@25 = private unnamed_addr constant [72 x i8] c"cannot enter a task-local scope while the task-local storage is borrowed", align 1
@26 = private unnamed_addr constant [90 x i8] c"cannot enter a task-local scope during or after destruction of the underlying thread-local", align 1
@27 = private unnamed_addr constant [28 x i8] c"tokio/src/util/wake_list.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1B\00\00\00\00\00\00\00#\00\00\00\09\00\00\00" }>, align 8
@_RNvNtNtCslghKHtsL3a4_5tokio4time5clock15DID_PAUSE_CLOCK.0 = internal unnamed_addr global i8 0, align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\17\00\00\00\00\00\00\00!\01\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant [41 x i8] c"invalid address family (not IPv4 or IPv6)", align 1
@31 = private unnamed_addr constant [8 x i8] c"fd != -1", align 1
@32 = private unnamed_addr constant [25 x i8] c"tokio/src/process/mod.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\18\00\00\00\00\00\00\00x\06\00\00\05\00\00\00" }>, align 8
@34 = private unnamed_addr constant [19 x i8] c"inner has gone away", align 1
@35 = private unnamed_addr constant [31 x i8] c"tokio/src/process/unix/reap.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"\1E\00\00\00\00\00\00\008\00\00\00\1D\00\00\00" }>, align 8
@37 = private unnamed_addr constant [8 x i8] c"READABLE", align 1
@38 = private unnamed_addr constant [3 x i8] c" | ", align 1
@39 = private unnamed_addr constant [8 x i8] c"WRITABLE", align 1
@40 = private unnamed_addr constant [8 x i8] c"PRIORITY", align 1
@41 = private unnamed_addr constant [5 x i8] c"ERROR", align 1
@42 = private unnamed_addr constant [6 x i8] c"Handle", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"\1E\00\00\00\00\00\00\00\7F\00\00\00(\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\18\00\00\00\00\00\00\00y\06\00\00\05\00\00\00" }>, align 8
@45 = private unnamed_addr constant [11 x i8] c"AccessError", align 1
@46 = private unnamed_addr constant [24 x i8] c"task-local value not set", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\18\00\00\00\00\00\00\00z\06\00\00\05\00\00\00" }>, align 8
@48 = private unnamed_addr constant [5 x i8] c"Mutex", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB8_5MutexppENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBS_3fmt }>, align 8
@50 = private unnamed_addr constant [4 x i8] c"data", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildENtB6_5Debug3fmtCslghKHtsL3a4_5tokio }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEENtB6_5Debug3fmtBZ_ }>, align 8
@53 = private unnamed_addr constant [6 x i8] c"Driver", align 1
@54 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@55 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @54, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@56 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @56, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtBc_7process3imp4PipeEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !34, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !34
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXsc_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_4PipeNtNtNtCsbPfeiB6icZG_3mio5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !37, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !37
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtCsbPfeiB6icZG_3mio3net3udp9UdpSocketEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !48, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !48
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs_NtNtCsbPfeiB6icZG_3mio3net3udpNtB4_9UdpSocketNtNtNtB8_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !51, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !51
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtBc_7process3imp12pidfd_reaper5PidfdEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !62, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !62
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaperNtB5_5PidfdNtNtNtCsbPfeiB6icZG_3mio5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !65, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !65
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !76, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !76
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs3_NtNtNtCsbPfeiB6icZG_3mio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !79, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !79
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp8listener11TcpListenerEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !90, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !90
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs_NtNtNtCsbPfeiB6icZG_3mio3net3tcp8listenerNtB4_11TcpListenerNtNtNtBa_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !93, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !93
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !104, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !104
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs3_NtNtNtCsbPfeiB6icZG_3mio3net3uds6streamNtB5_10UnixStreamNtNtNtBb_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !107, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !107
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3net3uds8datagram12UnixDatagramEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !118, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !118
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs_NtNtNtCsbPfeiB6icZG_3mio3net3uds8datagramNtB4_12UnixDatagramNtNtNtBa_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !121, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !121
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3net3uds8listener12UnixListenerEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !132, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !132
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs_NtNtNtCsbPfeiB6icZG_3mio3net3uds8listenerNtB4_12UnixListenerNtNtNtBa_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !135, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !135
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe6SenderEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !146, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !146
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXs_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeNtB4_6SenderNtNtNtBa_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !149, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !149
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle10add_sourceNtNtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipe8ReceiverEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = invoke { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet8allocate(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.h, 0
  %i.m = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.n = trunc nuw i64 %i.l to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.i:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.b, align 8
  %i.q = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19 unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 ], [ %i.v, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !160, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !160
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.ah

bb.m:                                             ; preds = %bb.j, %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19: ; preds = %bb.i, %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %3 = trunc i64 %2 to i1
  %i.x = and i64 %2, 2
  %.not30.i.a = icmp eq i64 %i.x, 0               ; 2 uses
  br i1 %3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit19
  br i1 %.not30.i.a, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.y = and i64 %2, 16
  %.not31.i = icmp eq i64 %i.y, 0
  br i1 %.not31.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i = phi i8 [ 1, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %i.z = and i64 %2, 16
  %.not34.i.a = icmp eq i64 %i.z, 0
  br i1 %.not34.i.a, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.aa = and i64 %2, 16
  %.not36.i.a = icmp eq i64 %i.aa, 0
  br i1 %.not36.i.a, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 16, %bb.p ] ; 2 uses
  %i.ab = and i64 %2, 32
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.01.2.i = phi i8 [ %.sroa.01.0.i, %bb.q ], [ 3, %bb.r ]
  %i.ac = or i8 %.sroa.01.2.i, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.01.3.i = phi i8 [ %i.ac, %bb.t ], [ 3, %bb.r ] ; 2 uses
  %i.ad = and i64 %2, 32
  %.not37.i = icmp eq i64 %i.ad, 0
  br i1 %.not37.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.01.5.i = phi i8 [ %.sroa.01.1.i, %bb.s ], [ %.sroa.01.3.i, %bb.u ]
  %i.ae = or i8 %.sroa.01.5.i, 1
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit

_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.p
  %.sroa.0.0.i21 = phi i8 [ %.sroa.01.3.i, %bb.u ], [ %i.ae, %bb.v ], [ %.sroa.01.1.i, %bb.s ], [ 1, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = invoke noundef ptr @_RNvXsa_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeNtB5_8ReceiverNtNtNtBb_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, i64 noundef %i.ah, i8 noundef %.sroa.0.0.i21)
          to label %bb.w unwind label %bb.m       ; 4 uses

bb.w:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio2io8interestNtB2_8Interest6to_mio.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aj = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24: ; preds = %bb.ac, %bb.ad, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.ac ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.k unwind label %bb.ah

bb.y:                                             ; preds = %bb.af, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8
  %i.al = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.ab, label %bb.aa, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet6remove(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24 unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ar = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !163, !nonnull !7, !noundef !7
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !163
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17

bb.ah:                                            ; preds = %bb.ad, %bb.l, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit24
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit17: ; preds = %bb.g, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26, %bb.ag, %bb.x
  %.sroa.4.1 = phi ptr [ %i.aj, %bb.x ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ %i.ai, %bb.ag ]
  %.sroa.0.1 = phi i64 [ 0, %bb.x ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit26 ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtBc_7process3imp4PipeEBc_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = tail call noundef ptr @_RNvXsc_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_4PipeNtNtNtCsbPfeiB6icZG_3mio5event6source6Source10deregister(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c, !prof !6

.body:                                            ; preds = %bb.m, %bb.e, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.b ], [ %i.k, %bb.f ], [ %i.r, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(ptr %i.c) #15
          to label %bb.q unwind label %bb.p

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit8, %bb.k, %bb.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet10deregister(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %.body, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %.body unwind label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.n = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1          ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit6, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit6 unwind label %bb.b

bb.j:                                             ; preds = %bb.g
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit8, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit8 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit6: ; preds = %.noexc9, %bb.i, %bb.h
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB2_6Driver8shutdown:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 3 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1O_.exit14, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit: ; preds = %bb.i, %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.m

bb.h:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit10, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17
  %i.x = phi ptr [ %i.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17 ], [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit10 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !413
  %i.z = load ptr, ptr %i.x, align 8, !noalias !413, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo8shutdown(ptr noundef nonnull align 128 %i.aa)
          to label %bb.k unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1O_.exit14: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit10
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ac = load ptr, ptr %i.a, align 8, !alias.scope !416, !nonnull !7, !noundef !7
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !416
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit unwind label %bb.m

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !419, !nonnull !7, !noundef !7
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !419
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17 unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit17: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !420, !nonnull !7, !noundef !7
  %i.aj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !420, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1O_.exit14, label %.lr.ph

bb.m:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit, %bb.e, %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit, %bb.d, %bb.e, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.n ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1h_.exit ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn

bb.n:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #15
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEEBK_.exit unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handleNtB2_6Handle11is_shutdown(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs0_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtB5_5Inner11is_shutdown(ptr noundef nonnull align 8 %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handleNtB2_6Handle6unpark(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  store atomic i8 1, ptr %i.a seq_cst, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6signalNtB4_6Handle24register_signal_receiver(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef ptr @_RNvXs3_NtNtNtCsbPfeiB6icZG_3mio3net3uds6streamNtB5_10UnixStreamNtNtNtBb_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, i64 noundef 1, i8 noundef 1)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp6orphanINtB5_15OrphanQueueImplNtNtCsaL1QbXo9JQH_3std7process5ChildE11push_orphanBb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %0, i64 undef, i32 noundef -1)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !424, !noalias !425, !noundef !7 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !21, !alias.scope !424, !noalias !425, !noundef !7
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std7process5ChildE8grow_oneCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %.body, !noalias !425

.body:                                            ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 4 dereferenceable(28) %1) #15
  %i.j = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %.thread, label %bb.e, !prof !6

bb.e:                                             ; preds = %.body
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %.thread unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !424, !noalias !425, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw [28 x i8], ptr %i.m, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(28) %1, i64 28, i1 false)
  %i.o = add i64 %i.f, 1
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !424, !noalias !425
  %i.p = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5: ; preds = %bb.g, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread:                                          ; preds = %bb.i, %bb.e, %.body
  %.pn8 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.s, %bb.i ], [ %i.i, %.body ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 4 dereferenceable(28) %1) #15
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp6orphanINtB5_15OrphanQueueImplNtNtCsaL1QbXo9JQH_3std7process5ChildE12reap_orphansBb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load atomic i8, ptr %i.b monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i8 [ %i.c, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  %2 = trunc i8 %.sroa.03.0.i to i1
  br i1 %2, label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i8 %.sroa.03.0.i, 1
  %i.e = cmpxchg weak ptr %i.b, i8 %.sroa.03.0.i, i8 %i.d acquire monotonic, align 1 ; 2 uses
  %i.f = extractvalue { i8, i1 } %i.e, 1
  %i.g = extractvalue { i8, i1 } %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.e

_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit: ; preds = %bb.b, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit
  ret void

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = invoke noundef i8 @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch13maybe_changeduEB6_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.aj unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20: ; preds = %bb.ag, %bb.ah, %.split, %bb.n, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.o, %bb.g ], [ %lpad.thr_comm.split-lp, %.split ], [ %.pn, %bb.n ], [ %.pn924, %bb.ah ], [ %.pn924, %bb.ag ]
  %i.m = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtBK_4sync5watch8ReceiveruEEEEBK_.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtBK_4sync5watch8ReceiveruEEEEBK_.exit unwind label %bb.ad

bb.g:                                             ; preds = %bb.m, %bb.am, %bb.al, %bb.i, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

bb.h:                                             ; preds = %bb.d
  %i.p = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %0, i64 undef, i32 noundef -1)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp ult i64 %i.t, 329406144173384851
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix18signal_with_handle(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.o unwind label %.split.thread

bb.l:                                             ; preds = %bb.af, %bb.j
  %i.w = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit unwind label %bb.g

bb.n:                                             ; preds = %bb.ac, %bb.x
  br i1 %.sroa.03.2, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

.split.thread:                                    ; preds = %bb.ae, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.split:                                           ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

bb.o:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.a, align 8, !noundef !7 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !7 ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !438, !noundef !7
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.af = load ptr, ptr %i.h, align 8, !alias.scope !441, !nonnull !7, !noundef !7
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !442
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #14
          to label %.body unwind label %bb.v

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ai = load ptr, ptr %i.h, align 8, !alias.scope !445, !nonnull !7, !noundef !7
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !446
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.w ], [ %i.ae, %bb.s ], [ %i.ae, %bb.r ]
  store ptr %i.y, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.an, align 8
  br label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit: ; preds = %bb.t, %bb.p, %bb.u
  store ptr %i.y, ptr %i.h, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.ao, align 8
  invoke fastcc void @_RINvNtNtNtCslghKHtsL3a4_5tokio7process3imp6orphan18drain_orphan_queueNtNtCsaL1QbXo9JQH_3std7process5ChildEB8_(ptr noundef nonnull align 8 %0)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.y, %.body
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.sroa.03.2 = phi i1 [ false, %bb.y ], [ true, %.body ]
  %i.ap = load ptr, ptr %i.a, align 8, !noundef !7
  %.not8 = icmp eq ptr %i.ap, null
  br i1 %.not8, label %bb.ac, label %bb.n

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit
  %i.ar = load ptr, ptr %i.a, align 8, !noundef !7
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
          to label %bb.ab unwind label %.split

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit

bb.ac:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #15
          to label %bb.n unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.f, %bb.ac
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ae:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
          to label %bb.af unwind label %.split.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.ag:                                            ; preds = %.split.thread, %bb.n
  %.pn924 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.n ] ; 2 uses
  %i.au = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.av = extractvalue { i8, i1 } %i.au, 1
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20, label %bb.ah, !prof !6

end_hunk_1
begin_hunk_2_@_RNvNtNtNtCslghKHtsL3a4_5tokio4time7instant7variant3now:bb.a
  br i1 %i.u, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

bb.j:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i

bb.l:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.w = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now(), !noalias !509
  br label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i

bb.o:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r

_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i
  %.pn.i.i = phi { i64, i32 } [ %i.w, %bb.n ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCslghKHtsL3a4_5tokio4time5clock3now.exit

_RNvNtNtCslghKHtsL3a4_5tokio4time5clock3now.exit: ; preds = %bb.b, %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i
  %.pn.i = phi { i64, i32 } [ %.pn.i.i, %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i ], [ %i.e, %bb.b ]
  ret { i64, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB5_8WakeList8wake_allNtB2_9DropGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !7   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.0.i1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %.val8.i = load ptr, ptr %i.j, align 8, !alias.scope !512, !nonnull !7, !align !11, !noundef !7
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val9.i = load ptr, ptr %i.l, align 8, !alias.scope !512, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !512, !nonnull !7, !noundef !7
  invoke void %i.n(ptr noundef %.val9.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i unwind label %bb.b, !noalias !512, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i: ; preds = %.lr.ph3
  %i.o = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.k, %i.g
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i
  %.sroa.0.1.i2 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i2 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !512, !nonnull !7, !align !11, !noundef !7
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val7.i = load ptr, ptr %i.t, align 8, !alias.scope !512, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !512, !nonnull !7, !noundef !7
  invoke void %i.v(ptr noundef %.val7.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i unwind label %bb.c, !noalias !512, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i, %bb.b
  resume { ptr, i32 } %i.q

bb.c:                                             ; preds = %.lr.ph3
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !512
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_10ChildStdinNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %or.cond.not = icmp eq i32 %i.a, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  ret i32 %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix6socketNtB5_10UnixSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !16, !noundef !7
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp4reapINtB5_6ReaperNtNtCsaL1QbXo9JQH_3std7process5ChildNtB7_17GlobalOrphanQueueNtNtNtBb_6signal4unix6SignalENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.e = call noundef i8 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB5_6SignalNtB5_14InternalStream9poll_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %.not = icmp eq i8 %i.e, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i32, ptr %i.b, align 8, !range !9, !noundef !7
  %.not10 = icmp eq i32 %i.f, 2
  br i1 %.not10, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvXNtNtCslghKHtsL3a4_5tokio7process3impNtNtCsaL1QbXo9JQH_3std7process5ChildNtNtB2_6orphan4Wait8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.b)
  %i.g = load i32, ptr %i.a, align 8, !range !14, !noundef !7
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.c, align 4, !range !14, !noundef !7
  %i.k = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = trunc nuw i32 %i.j to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %.not, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2io8interestNtB5_8InterestNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !7   ; 7 uses
  %2 = trunc i64 %i.a to i1
  br i1 %2, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %i.a, 2
  %.not104.a = icmp eq i64 %i.b, 0
  br i1 %.not104.a, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %.pre110, i64 24
  %.pre112 = load ptr, ptr %.phi.trans.insert111, align 8, !invariant.load !7
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %i.a, 16
  %.not105.a = icmp eq i64 %i.c, 0
  br i1 %.not105.a, label %bb.d, label %._crit_edge113

._crit_edge113:                                   ; preds = %bb.c
  %.pre114 = load ptr, ptr %1, align 8
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8 ; 2 uses
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %.pre116, i64 24
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 8, !invariant.load !7
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %i.a, 32
  %.not106.a = icmp eq i64 %i.d, 0
  br i1 %.not106.a, label %bb.o, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.d
  %.pre120 = load ptr, ptr %1, align 8
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %.pre122, i64 24
  %.pre124 = load ptr, ptr %.phi.trans.insert123, align 8, !invariant.load !7
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !11, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !7, !nonnull !7 ; 4 uses
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 8) #20
  br i1 %i.j, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i64 %i.a, 2
  %.not107.a = icmp eq i64 %i.k, 0
  br i1 %.not107.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.l = phi ptr [ %i.q, %bb.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.m = phi ptr [ %i.r, %bb.i ], [ %i.g, %bb.f ] ; 2 uses
  %i.n = phi ptr [ %i.s, %bb.i ], [ %i.e, %bb.f ] ; 3 uses
  %i.o = and i64 %i.a, 16
  %.not108.a = icmp eq i64 %i.o, 0
  br i1 %.not108.a, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.p = tail call noundef zeroext i1 %i.i(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3) #20
  br i1 %i.p, label %bb.p, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.q = phi ptr [ %.pre112, %._crit_edge ], [ %i.i, %bb.h ] ; 2 uses
  %i.r = phi ptr [ %.pre110, %._crit_edge ], [ %i.g, %bb.h ]
  %i.s = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.h ] ; 2 uses
  %i.t = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 8) #20
  br i1 %i.t, label %bb.p, label %bb.g

bb.j:                                             ; preds = %bb.l, %bb.g
  %i.u = phi ptr [ %i.z, %bb.l ], [ %i.m, %bb.g ]
  %i.v = phi ptr [ %i.aa, %bb.l ], [ %i.n, %bb.g ] ; 2 uses
  %i.w = and i64 %i.a, 32
  %.not109 = icmp eq i64 %i.w, 0
  br i1 %.not109, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.x = tail call noundef zeroext i1 %i.l(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3) #20
  br i1 %i.x, label %bb.p, label %bb.l

bb.l:                                             ; preds = %._crit_edge113, %bb.k
  %i.y = phi ptr [ %.pre118, %._crit_edge113 ], [ %i.l, %bb.k ]
  %i.z = phi ptr [ %.pre116, %._crit_edge113 ], [ %i.m, %bb.k ]
  %i.aa = phi ptr [ %.pre114, %._crit_edge113 ], [ %i.n, %bb.k ] ; 2 uses
  %i.ab = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8) #20
  br i1 %i.ab, label %bb.p, label %bb.j

bb.m:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !7, !nonnull !7 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3) #20
  br i1 %i.ae, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge119, %bb.m
  %i.af = phi ptr [ %.pre124, %._crit_edge119 ], [ %i.ad, %bb.m ]
  %i.ag = phi ptr [ %.pre120, %._crit_edge119 ], [ %i.v, %bb.m ]
  %i.ah = tail call noundef zeroext i1 %i.af(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5) #20
  br i1 %i.ah, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %bb.j, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.n ]
  ret i1 %.sroa.0.0

bb.p:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.e
  br label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio3net3tcp6socketNtB5_9TcpSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !16, !noundef !7
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio3net4unix6socketNtB5_10UnixSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsg_NtCskSTaaYajini_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB5_6HandleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !11, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !7, !nonnull !7
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6) #20
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtB8_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEENtB6_5Debug3fmtB2r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !11, !noundef !7 ; 7 uses
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !noalias !515
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i.i = phi i8 [ %i.e, %bb.a ], [ %i.i, %bb.c ] ; 3 uses
  %2 = trunc i8 %.sroa.03.0.i.i to i1
  br i1 %2, label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i8 %.sroa.03.0.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i8 %.sroa.03.0.i.i, i8 %i.f acquire monotonic, align 1, !noalias !515 ; 2 uses
  %i.h = extractvalue { i8, i1 } %i.g, 1
  %i.i = extractvalue { i8, i1 } %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  br label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEENtNtB1F_3fmt5Debug3fmtB2j_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !515
  invoke void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !515
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEEB2C_.exit.i, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEEB2C_.exit.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !515
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.b, align 8, !noalias !515, !captures !19
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !515
  %i.r = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !515
  %i.s = extractvalue { i8, i1 } %i.r, 1
  br i1 %i.s, label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEENtNtB1F_3fmt5Debug3fmtB2j_.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEENtNtB1F_3fmt5Debug3fmtB2j_.exit

bb.k:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEEB2C_.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEENtNtB1F_3fmt5Debug3fmtB2j_.exit: ; preds = %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.k, %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i ], [ %i.q, %bb.i ], [ %i.q, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEENtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !11, !noundef !7 ; 7 uses
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !noalias !518
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i.i = phi i8 [ %i.e, %bb.a ], [ %i.i, %bb.c ] ; 3 uses
  %2 = trunc i8 %.sroa.03.0.i.i to i1
  br i1 %2, label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i8 %.sroa.03.0.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i8 %.sroa.03.0.i.i, i8 %i.f acquire monotonic, align 1, !noalias !518 ; 2 uses
  %i.h = extractvalue { i8, i1 } %i.g, 1
  %i.i = extractvalue { i8, i1 } %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !518
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !518
  br label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !518
  invoke void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !518
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEECslghKHtsL3a4_5tokio.exit.i, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.b, align 8, !noalias !518, !captures !19
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !518
  %i.r = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !noalias !518
  %i.s = extractvalue { i8, i1 } %i.r, 1
  br i1 %i.s, label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit

bb.k:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex10MutexGuardNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

_RNvXs7_NtCshr7Cxz41BpA_8lock_api5mutexINtB5_5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit: ; preds = %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.k, %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit.i ], [ %i.q, %bb.i ], [ %i.q, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std2fs4FileNtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !519, !noundef !7
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs2_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_11ChildStdoutNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio3net3tcp6socketNtB5_9TcpSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsg_NtCskSTaaYajini_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs3_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_11ChildStdoutNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %or.cond.not = icmp eq i32 %i.a, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  ret i32 %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task10task_localNtB5_11AccessErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !11, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store atomic i8 0, ptr %i.b seq_cst, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCslghKHtsL3a4_5tokio4task10task_localNtB5_11AccessErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 24, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs5_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_11ChildStderrNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_11ChildStderrNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %or.cond.not = icmp eq i32 %i.a, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  ret i32 %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs7_NtCslghKHtsL3a4_5tokio7processNtB5_10ChildStdinNtNtNtB7_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsh_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtB9_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs7_NtCslghKHtsL3a4_5tokio7processNtB5_10ChildStdinNtNtNtB7_2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsh_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtB9_2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs8_NtCslghKHtsL3a4_5tokio7processNtB5_11ChildStdoutNtNtNtB7_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsi_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtB9_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs9_NtCslghKHtsL3a4_5tokio7processNtB5_11ChildStderrNtNtNtB7_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsi_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtB9_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCslghKHtsL3a4_5tokio4util9wake_listNtB4_8WakeListNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(520) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !alias.scope !522, !nonnull !7, !align !11, !noundef !7
end_hunk_2
