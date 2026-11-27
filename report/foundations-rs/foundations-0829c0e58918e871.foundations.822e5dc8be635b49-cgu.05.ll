Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.05?download=true
inline.NumInlined: 1337
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry7testingNtB2_20TestTelemetryContext3new:bb.a
bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !5387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !5387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5388
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !dbg !5388
  %i.v = load i16, ptr %i.b, align 8, !dbg !5389, !range !648, !alias.scope !5368, !noundef !494
  %.not.i.i = icmp eq i16 %i.v, 2, !dbg !5389
  br i1 %.not.i.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7tracing15TracingSettingsEBJ_.exit, !dbg !5389

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !5389 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings16otlp_grpc_output31OpenTelemetryGrpcOutputSettingsEBJ_.exit.i.i unwind label %bb.k, !dbg !5390

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body unwind label %bb.l, !dbg !5391

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !5390
  unreachable, !dbg !5390

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings16otlp_grpc_output31OpenTelemetryGrpcOutputSettingsEBJ_.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7tracing15TracingSettingsEBJ_.exit unwind label %bb.m, !dbg !5392

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings16otlp_grpc_output31OpenTelemetryGrpcOutputSettingsEBJ_.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !5393

.body:                                            ; preds = %bb.o, %bb.m, %bb.k
  %.sroa.0.1.lpad-body = phi i1 [ true, %bb.m ], [ true, %bb.k ], [ false, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.x, %bb.k ], [ %i.ae, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEBJ_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #39
          to label %bb.s unwind label %bb.r, !dbg !5393

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7tracing15TracingSettingsEBJ_.exit: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings16otlp_grpc_output31OpenTelemetryGrpcOutputSettingsEBJ_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5386
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !5394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !5395
  store i64 1, ptr %i.a, align 8, !dbg !5394
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5394
  store i64 1, ptr %i.aa, align 8, !dbg !5394
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5394
  store i64 0, ptr %i.ab, align 8, !dbg !5394
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !5396, !noalias !5370
  %i.ac = call noundef ptr @_rjem_malloc(i64 noundef range(i64 8, 65) 64) #33, !dbg !5397, !noalias !5370 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !5398
  br i1 %i.ad, label %bb.n, label %bb.q, !dbg !5399, !prof !643

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7tracing15TracingSettingsEBJ_.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #40
          to label %.noexc11 unwind label %bb.o, !dbg !5400, !noalias !5370

.noexc11:                                         ; preds = %bb.n
  unreachable, !dbg !5400

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #39
          to label %.body unwind label %bb.p, !dbg !5401

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !5402
  unreachable, !dbg !5402

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7tracing15TracingSettingsEBJ_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !5403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5404
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !5406
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419), !dbg !5371
  %.sroa.419.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419, i64 7, !dbg !5407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.sroa.419.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !5407
  store i64 -1, ptr %0, align 8, !dbg !5405
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5405
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5405
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5405
  store i8 0, ptr %i.ag, align 8, !dbg !5405
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !5405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.419, i64 63, i1 false), !dbg !5405
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5405
  store ptr %i.p, ptr %i.ah, align 8, !dbg !5405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419), !dbg !5408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5409
  ret void, !dbg !5410

bb.r:                                             ; preds = %bb.e, %bb.u, %bb.s, %.body, %bb.h, %bb.b
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !5411
  unreachable, !dbg !5411

bb.s:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #39
          to label %bb.d unwind label %bb.r, !dbg !5393

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockINtNtBG_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEEEEB2o_.exit: ; preds = %bb.d, %bb.e
  br i1 %.sroa.0.0, label %bb.u, label %bb.t, !dbg !5409

bb.t:                                             ; preds = %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockINtNtBG_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEEEEB2o_.exit, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockINtNtBG_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEEEEB2o_.exit ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.pn.pn, !dbg !5411

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockINtNtBG_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEEEEB2o_.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #39
          to label %bb.t unwind label %bb.r, !dbg !5409
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry7testingNtB2_20TestTelemetryContext6traces(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5412 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !5432 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1, !dbg !5434
  %i.c = extractvalue { i8, i1 } %i.b, 1, !dbg !5434
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !5435, !prof !614

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1), !dbg !5436 ; 0 uses
  br label %bb.c, !dbg !5437

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !5438
  invoke void @_RNvMs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testingNtB5_14TestTracesSink6traces(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef %2)
          to label %bb.f unwind label %bb.d, !dbg !5439

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1, !dbg !5440
  %i.h = extractvalue { i8, i1 } %i.g, 1, !dbg !5440
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit, label %bb.e, !dbg !5441, !prof !614

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit unwind label %bb.h, !dbg !5442

bb.f:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1, !dbg !5443
  %i.j = extractvalue { i8, i1 } %i.i, 1, !dbg !5443
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit6, label %bb.g, !dbg !5444, !prof !614

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false), !dbg !5445
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit6, !dbg !5445

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit6: ; preds = %bb.f, %bb.g
  ret void, !dbg !5446

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !5447
  unreachable, !dbg !5447

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing14TestTracesSinkEEB2g_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f, !dbg !5447
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB2_27LoggerWithKvNestingTracking12check_frozen(ptr noundef nonnull returned align 8 %0) unnamed_addr #0 !dbg !5448 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44, !dbg !5454
  %i.c = load i8, ptr %i.b, align 4, !dbg !5454, !range !515, !noundef !494
  %i.d = trunc nuw i8 %i.c to i1, !dbg !5454
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !5454, !prof !643

bb.b:                                             ; preds = %bb.a
  ret ptr %0, !dbg !5455

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_(ptr nonnull %0), !dbg !5456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5457
  store ptr @77, ptr %i.a, align 8, !dbg !5457
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5457
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !5457
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @78, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #41, !dbg !5458
  unreachable, !dbg !5458
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB2_27LoggerWithKvNestingTracking19check_nesting_level(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5459 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5473 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !dbg !5473, !noundef !494
  %i.d = tail call i32 @llvm.uadd.sat.i32(i32 %i.c, i32 1), !dbg !5474 ; 3 uses
  store i32 %i.d, ptr %i.b, align 8, !dbg !5475
  %i.e = icmp ult i32 %i.d, 1000, !dbg !5476
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, label %bb.b, !dbg !5476

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 1000, !dbg !5477
  br i1 %i.f, label %bb.c, label %bb.d, !dbg !5477

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_(ptr nonnull %0), !dbg !5478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5479
  store ptr @82, ptr %i.a, align 8, !dbg !5479
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5479
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !5479
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @78, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #40, !dbg !5480
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8, !dbg !5481
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.g, 1, !dbg !5482
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, label %bb.e, !dbg !5483, !prof !614

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false), !dbg !5484
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, !dbg !5484

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit: ; preds = %bb.e, %bb.d, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], !dbg !5485
  ret ptr %.sroa.0.0, !dbg !5486
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !5487 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5595
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5WakerE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0), !dbg !5596
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5597
  %i.c = load ptr, ptr %i.b, align 8, !dbg !5597, !nonnull !494, !align !513 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5597
  %i.e = load i8, ptr %i.d, align 8, !dbg !5597, !range !515 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5598
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5599
  call void @llvm.experimental.noalias.scope.decl(metadata !5584), !dbg !5600
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5601
  %i.h = load ptr, ptr %i.g, align 8, !dbg !5601, !alias.scope !5584, !nonnull !494, !noundef !494 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5602 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !5602, !alias.scope !5584, !noundef !494 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.j, 24, !dbg !5603
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i, !dbg !5603
  %i.l = icmp eq i64 %i.j, 0, !dbg !5604
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i, !dbg !5605

.lr.ph.i:                                         ; preds = %bb.a, %.noexc5
  %.sroa.0.02.i = phi ptr [ %i.m, %.noexc5 ], [ %i.h, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24, !dbg !5606 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !dbg !5607, !noalias !5584, !nonnull !494, !noundef !494
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 32, !dbg !5608
  %i.o = cmpxchg ptr %i.n, i64 0, i64 2 acq_rel acquire, align 8, !dbg !5609, !noalias !5584
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.o, 1, !dbg !5610
  br i1 %.sroa.18.0.in.i.i.i, label %bb.b, label %.noexc5, !dbg !5611

._crit_edge.i:                                    ; preds = %.noexc5, %bb.a
  invoke fastcc void @_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5612

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.sroa.0.02.i, align 8, !dbg !5613, !noalias !5584, !nonnull !494, !noundef !494
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !5614
  %i.r = load ptr, ptr %i.q, align 8, !dbg !5614, !noalias !5584, !nonnull !494, !noundef !494
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !5615 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, i32 1 release, align 4, !dbg !5616, !noalias !5584
  %i.u = icmp eq i32 %i.t, -1, !dbg !5617
  br i1 %i.u, label %bb.c, label %.noexc5, !dbg !5617

.noexc5:                                          ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.v = icmp eq ptr %i.m, %i.k, !dbg !5604
  br i1 %i.v, label %._crit_edge.i, label %.lr.ph.i, !dbg !5605

bb.c:                                             ; preds = %bb.b
  %i.w = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.s)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5618, !noalias !5584 ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %._crit_edge.i
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5WakerEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.c, i8 %i.e) #39
          to label %bb.k unwind label %bb.j, !dbg !5619

_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.x = load i64, ptr %i.i, align 8, !dbg !5620, !noundef !494 ; 2 uses
  %i.y = icmp ult i64 %i.x, 384307168202282326, !dbg !5621
  call void @llvm.assume(i1 %i.y), !dbg !5622
  %i.z = icmp eq i64 %i.x, 0, !dbg !5623
  br i1 %i.z, label %bb.d, label %bb.e, !dbg !5624

bb.d:                                             ; preds = %_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !5625
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !5625, !noundef !494 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 384307168202282326, !dbg !5626
  call void @llvm.assume(i1 %i.ac), !dbg !5627
  %i.ad = icmp eq i64 %i.ab, 0, !dbg !5628
  %i.ae = zext i1 %i.ad to i8, !dbg !5628
  br label %bb.e, !dbg !5624

bb.e:                                             ; preds = %bb.d, %_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ae, %bb.d ], [ 0, %_RNvMNtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit ], !dbg !5629
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5630
  store atomic i8 %.sroa.0.0, ptr %i.af seq_cst, align 8, !dbg !5631
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !5632
  %i.ah = trunc nuw i8 %i.e to i1, !dbg !5633
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f, !dbg !5633

bb.f:                                             ; preds = %bb.e
  %i.ai = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5634
  %i.aj = and i64 %i.ai, 9223372036854775807, !dbg !5635
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !5635
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g, !dbg !5635, !prof !614

bb.g:                                             ; preds = %bb.f
  %i.al = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #37, !dbg !5636
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !dbg !5637

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr %i.ag monotonic, align 4, !dbg !5638
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !5639

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.am = atomicrmw xchg ptr %i.c, i32 0 release, align 4, !dbg !5640
  %i.an = icmp eq i32 %i.am, 2, !dbg !5641
  br i1 %i.an, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5WakerEECsbaWXNhtWAp9_11foundations.exit, !dbg !5641, !prof !643

bb.i:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.c), !dbg !5642
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5WakerEECsbaWXNhtWAp9_11foundations.exit, !dbg !5642

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5WakerEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.i
  ret void, !dbg !5643

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !5644
  unreachable, !dbg !5644

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10, !dbg !5644
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs0_NtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gaugeNtB5_5Gauge3setCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #12 !dbg !5645 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !5659, !nonnull !494, !noundef !494
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5660
  %i.c = atomicrmw xchg ptr %i.b, i64 %1 monotonic, align 8, !dbg !5661
  ret i64 %i.c, !dbg !5662
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtCshBQhFkKQVuE_10slog_async8AsyncMsgE10disconnectCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 128 %0) unnamed_addr #0 !dbg !5663 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !5673 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !5673, !noundef !494
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5674
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !5675
  %i.e = load i64, ptr %i.a, align 16, !dbg !5676, !noundef !494
  %i.f = and i64 %i.e, %i.d, !dbg !5677
  %i.g = icmp eq i64 %i.f, 0, !dbg !5677          ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !5677

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !5678
  tail call fastcc void @_RNvMs0_NtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #42, !dbg !5679
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !5680
  tail call fastcc void @_RNvMs0_NtCs49WdmBbiWyj_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #42, !dbg !5681
  br label %bb.c, !dbg !5682

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g, !dbg !5683
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtCshBQhFkKQVuE_10slog_async8AsyncMsgE13with_capacityCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #0 !dbg !5684 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ], !dbg !5699, !prof !5695

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @84, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41, !dbg !5700
  unreachable, !dbg !5700

bb.c:                                             ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !5701
  %i.b = lshr i64 -1, %i.a, !dbg !5702
  %i.c = add i64 %i.b, 1, !dbg !5703
  br label %bb.d, !dbg !5704

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i64 [ %i.c, %bb.c ], [ 1, %bb.a ], !dbg !5705 ; 2 uses
  %i.d = shl i64 %.sroa.04.0, 1, !dbg !5706
  %i.e = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2x_8adapters3map3MapINtNtNtB2z_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1N_E13with_capacity0EECsbaWXNhtWAp9_11foundations(i64 noundef 0, i64 noundef %1), !dbg !5707 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0, !dbg !5707
  %i.g = extractvalue { ptr, i64 } %i.e, 1, !dbg !5707
  store i64 0, ptr %0, align 128, !dbg !5708
end_hunk_0
