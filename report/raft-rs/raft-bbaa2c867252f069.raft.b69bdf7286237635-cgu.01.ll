Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.01?download=true
inline.NumInlined: 248
inline.NumDeleted: 105
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2A_13TermDecoratorEEEEECsfG1pxJcRFT5_4raft, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_CsdBFbsshtEF1_4slogINtB5_4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB27_13TermDecoratorEEEENtB5_5Drain3logCsfG1pxJcRFT5_4raft, ptr @_RNvXsr_CsdBFbsshtEF1_4slogINtB5_4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB27_13TermDecoratorEEEENtB5_5Drain5flushCsfG1pxJcRFT5_4raft, ptr @_RNvXsr_CsdBFbsshtEF1_4slogINtB5_4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB27_13TermDecoratorEEEENtB5_5Drain10is_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain19is_critical_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain16is_error_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain18is_warning_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain15is_info_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain16is_debug_enabledCsfG1pxJcRFT5_4raft, ptr @_RNvYINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB21_13TermDecoratorEEEENtB5_5Drain16is_trace_enabledCsfG1pxJcRFT5_4raft }>, align 8
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog15OwnedKVListNodeTINtBE_8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEEECsfG1pxJcRFT5_4raft, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1s_CsdBFbsshtEF1_4slogINtB6_15OwnedKVListNodeTINtB6_8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEENtB6_2KV9serializeCsfG1pxJcRFT5_4raft }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog15OwnedKVListNodeuEECsfG1pxJcRFT5_4raft, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1s_CsdBFbsshtEF1_4slogINtB6_15OwnedKVListNodeuENtB6_2KV9serializeCsfG1pxJcRFT5_4raft }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs1m_CsdBFbsshtEF1_4sloguNtB6_2KV9serialize }>, align 8
@4 = private unnamed_addr constant [21 x i8] c"\12slog::Fuse Drain: \C0\00", align 1
@5 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/slog-2.8.2/src/lib.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"Z\00\00\00\00\00\00\00\DC\07\00\00!\00\00\00" }>, align 8
@7 = private unnamed_addr constant [17 x i8] c"Mutex is poisoned", align 1
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@8 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"Z\00\00\00\00\00\00\00\9D\0A\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [22 x i8] c"MutexDrainError::Mutex", align 1
@11 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"()", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsdBFbsshtEF1_4slogINtB3_6LoggerINtB3_4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2i_13TermDecoratorEEEEE4rootuECsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [184 x i8], align 8               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !32
  %i.f = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 185) 184, i64 noundef 8) #19, !noalias !32 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2Z_13TermDecoratorEEEEEE3newCsfG1pxJcRFT5_4raft.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2A_13TermDecoratorEEEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.k, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2Z_13TermDecoratorEEEEEE3newCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.f, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @0, ptr %i.j, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !33
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 185) 16, i64 noundef 8) #19, !noalias !33 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2Z_13TermDecoratorEEEEEE3newCsfG1pxJcRFT5_4raft.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #20
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %bb.e
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2Z_13TermDecoratorEEEEEE3newCsfG1pxJcRFT5_4raft.exit
  store i64 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @3, ptr %i.o, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !34
  %i.p = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 185) 32, i64 noundef 8) #19, !noalias !34 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.l, !prof !4

bb.f:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #20
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !35
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #22
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.r, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.w = load ptr, ptr %i.c, align 8, !alias.scope !38, !nonnull !5, !noundef !5
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !38
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %common.resume

bb.k:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #22
          to label %common.resume unwind label %bb.m

bb.l:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsdBFbsshtEF1_4slogINtB3_6LoggerINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtB3_26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EE3newTINtB3_8SingleKVNtNtBE_6string6StringEuEECsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.c, align 8            ; 3 uses
  %i.d = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  store ptr %.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %3 = load <2 x ptr>, ptr %i.g, align 8
  store <2 x ptr> %3, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !45
  %i.m = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 185) 72, i64 noundef 8) #19, !noalias !45 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.j, !prof !4

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #20
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog15OwnedKVListNodeTINtBE_8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.f
  %i.q = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !46
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %.noexc8

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.noexc8 unwind label %bb.k

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.val, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val6, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.noexc8:                                          ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsdBFbsshtEF1_4slogINtB3_6LoggerINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtB3_26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EE3newuECsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.c, align 8            ; 3 uses
  %i.d = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  store ptr %.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %2 = load <2 x ptr>, ptr %i.g, align 8
  store <2 x ptr> %2, ptr %i.l, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !61
  %i.m = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 185) 32, i64 noundef 8) #19, !noalias !61 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.j, !prof !4

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !62
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #22
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !65, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !65
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EECsfG1pxJcRFT5_4raft.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EECsfG1pxJcRFT5_4raft.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.val, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val4, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EECsfG1pxJcRFT5_4raft.exit: ; preds = %.body, %bb.i
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog15OwnedKVListNodeTINtBE_8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !72, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !72
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtCsdBFbsshtEF1_4slog8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23
          to label %common.resume unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtCsdBFbsshtEF1_4slog8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEECsfG1pxJcRFT5_4raft.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtCsdBFbsshtEF1_4slog8SingleKVNtNtCsexYYUdYSQU6_5alloc6string6StringEuEECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog15OwnedKVListNodeuEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !79
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_E9drop_slowCs2fP4T60lQ6l_10slog_scope(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCsdBFbsshtEF1_4slog23SendSyncRefUnwindSafeKVEL_EECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBFbsshtEF1_4slog4FuseINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtCskzEliSS7R8U_14slog_envlogger9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2A_13TermDecoratorEEEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.d = load i8, ptr %i.c, align 8, !range !104, !alias.scope !105, !noundef !5
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseia3OTXDmOe_9slog_term13TermDecoratorECsfG1pxJcRFT5_4raft.exit.i.i.i.i [
    i8 0, label %bb.b
    i8 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !105 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !105, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !invariant.load !5, !noalias !105 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !105

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !7, !invariant.load !5, !noalias !105 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseia3OTXDmOe_9slog_term13TermDecoratorECsfG1pxJcRFT5_4raft.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5, !noalias !105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19, !noalias !105
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseia3OTXDmOe_9slog_term13TermDecoratorECsfG1pxJcRFT5_4raft.exit.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !7, !invariant.load !5, !noalias !105 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !8, !invariant.load !5, !noalias !105
end_hunk_0
