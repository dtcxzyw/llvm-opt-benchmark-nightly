Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.15?download=true
inline.NumInlined: 757
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracingNtB2_9SpanScope12into_context:bb.a
bb.b:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !3905, !noalias !3891
  %i.h = icmp eq i64 %i.g, 1, !dbg !3906
  br i1 %i.h, label %bb.c, label %.thread, !dbg !3906

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3907
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %.thread unwind label %bb.g, !dbg !3908, !noalias !3890

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3909, !noalias !3890
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing19current_test_tracer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.f, !dbg !3909, !noalias !3890

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.b unwind label %bb.g, !dbg !3910, !noalias !3890

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !3911, !noalias !3890
  unreachable, !dbg !3911

bb.h:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !3912
  store ptr %i.f, ptr %i.m, align 8, !dbg !3912, !alias.scope !3890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !3912
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !3912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !3914
  call void @llvm.experimental.noalias.scope.decl(metadata !3892), !dbg !3915
  %i.o = load i64, ptr %i.e, align 8, !dbg !3916, !range !357, !alias.scope !3892, !noundef !263 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1, !dbg !3916
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, label %bb.j, !dbg !3916

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3893), !dbg !3916
  call void @llvm.experimental.noalias.scope.decl(metadata !3894), !dbg !3917
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3918 ; 4 uses
  switch i64 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit [
    i64 0, label %bb.k
    i64 1, label %bb.m
  ], !dbg !3918

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3895), !dbg !3918
  call void @llvm.experimental.noalias.scope.decl(metadata !3896), !dbg !3919
  %i.r = load ptr, ptr %i.q, align 8, !dbg !3920, !alias.scope !3897, !nonnull !263, !noundef !263
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !dbg !3921, !noalias !3897
  %i.t = icmp eq i64 %i.s, 1, !dbg !3922
  br i1 %i.t, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, !dbg !3922

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !3923
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4live18live_reference_set19LiveReferenceHandleIBx_INtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit unwind label %bb.o, !dbg !3924

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3898), !dbg !3918
  call void @llvm.experimental.noalias.scope.decl(metadata !3899), !dbg !3925
  %i.u = load ptr, ptr %i.q, align 8, !dbg !3926, !alias.scope !3900, !nonnull !263, !noundef !263
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !dbg !3927, !noalias !3900
  %i.w = icmp eq i64 %i.v, 1, !dbg !3928
  br i1 %i.w, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, !dbg !3928

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !3929
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit unwind label %bb.o, !dbg !3930

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3915
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_context16TelemetryContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #28
          to label %bb.q unwind label %bb.p, !dbg !3931

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit: ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.l, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3931
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3931
  %.val3 = load ptr, ptr %i.y, align 8, !dbg !3931, !nonnull !263, !align !265, !noundef !263
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbaWXNhtWAp9_11foundations9telemetry5scope5ScopeNtNtNtBG_7tracing8internal10SharedSpanEEBI_(ptr %.val3), !dbg !3931
  ret void, !dbg !3934

bb.p:                                             ; preds = %bb.q, %.thread, %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !3935
  unreachable, !dbg !3935

bb.q:                                             ; preds = %bb.o, %.thread
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.x, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3931
  %.val = load ptr, ptr %i.aa, align 8, !dbg !3931, !nonnull !263, !align !265, !noundef !263
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbaWXNhtWAp9_11foundations9telemetry5scope5ScopeNtNtNtBG_7tracing8internal10SharedSpanEEBI_(ptr %.val) #28
          to label %bb.r unwind label %bb.p, !dbg !3931

.thread:                                          ; preds = %bb.b, %bb.c, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.i, %bb.c ], [ %.pn.i, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28
          to label %bb.q unwind label %bb.p, !dbg !3931

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn8, !dbg !3935
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE16get_or_init_slowCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0) unnamed_addr #4 !dbg !3936 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !3948 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !3949, !range !489, !noundef !263
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ], !dbg !3950

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateECsbaWXNhtWAp9_11foundations), !dbg !3951
  store i8 0, ptr %i.a, align 8, !dbg !3952
  br label %bb.d, !dbg !3953

bb.c:                                             ; preds = %bb.a
  br label %bb.d, !dbg !3954

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ], !dbg !3955
  ret ptr %.sroa.0.0, !dbg !3953
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE16get_or_init_slowCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0) unnamed_addr #4 !dbg !3956 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3968 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !3969, !range !489, !noundef !263
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ], !dbg !3970

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextECsbaWXNhtWAp9_11foundations), !dbg !3971
  store i8 0, ptr %i.a, align 8, !dbg !3972
  br label %bb.d, !dbg !3973

bb.c:                                             ; preds = %bb.a
  br label %bb.d, !dbg !3974

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ], !dbg !3975
  ret ptr %.sroa.0.0, !dbg !3973
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_contextNtB5_16TelemetryContext4test(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 !dbg !3976 {
bb.a:
  tail call void @_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry7testingNtB2_20TestTelemetryContext3new(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0), !dbg !3977
  ret void, !dbg !3978
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_contextNtB5_16TelemetryContext5scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3979 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 16 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4303
  %i.m = load ptr, ptr %i.l, align 8, !dbg !4303, !nonnull !263, !noundef !263 ; 8 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !4304
  %i.o = icmp slt i64 %i.n, 0, !dbg !4305
  br i1 %i.o, label %bb.r, label %bb.b, !dbg !4305

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get()
          to label %bb.c unwind label %bb.o, !dbg !4306

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88, !dbg !4307 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.m, ptr %i.g, align 8
  %i.r = invoke noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1x_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB3V_(ptr noundef nonnull align 8 %i.q)
          to label %bb.d unwind label %bb.m, !dbg !4308 ; 10 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.s = load i64, ptr %i.r, align 8, !dbg !4309, !noundef !263
  %i.t = add i64 %i.s, 1, !dbg !4310
  store i64 %i.t, ptr %i.r, align 8, !dbg !4311
  br label %common.resume, !dbg !4312

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.u = load i64, ptr %i.r, align 8, !dbg !4313, !noundef !263
  %i.v = icmp eq i64 %i.u, 0, !dbg !4314
  br i1 %i.v, label %bb.e, label %bb.j, !dbg !4314, !prof !315

bb.e:                                             ; preds = %bb.d
  store i64 -1, ptr %i.r, align 8, !dbg !4315
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4316 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4266), !dbg !4317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8, !noalias !4266
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !4318 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !4318, !alias.scope !4266, !noundef !263 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !dbg !4319, !range !288, !alias.scope !4266, !noundef !263
  %i.aa = icmp eq i64 %i.y, %i.z, !dbg !4320
  br i1 %i.aa, label %bb.f, label %_RNvMs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_8LogScope3new.exit, !dbg !4320

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE8grow_oneB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RNvMs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_8LogScope3new.exit unwind label %bb.g, !dbg !4321

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !4322, !noalias !4267
  %i.ad = icmp eq i64 %i.ac, 1, !dbg !4323
  br i1 %i.ad, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i.i.i, !dbg !4323

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !4324
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i.i.i unwind label %bb.i, !dbg !4325

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4326
  unreachable, !dbg !4326

bb.j:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #33
          to label %bb.l unwind label %bb.m, !dbg !4327

bb.k:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4328
  unreachable, !dbg !4328

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !4329, !noalias !4268
  %i.ai = icmp eq i64 %i.ah, 1, !dbg !4330
  br i1 %i.ai, label %bb.n, label %common.resume, !dbg !4330

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !4331
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #29
          to label %common.resume unwind label %bb.k, !dbg !4332

common.resume:                                    ; preds = %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i.i.i, %bb.m, %bb.n, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.ag, %bb.m ], [ %i.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i.i.i ], [ %i.ag, %bb.n ], [ %i.aj, %bb.p ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !4333

bb.o:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !4334, !noalias !4269
  %i.al = icmp eq i64 %i.ak, 1, !dbg !4335
  br i1 %i.al, label %bb.p, label %common.resume, !dbg !4335

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !4336
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #29
          to label %common.resume unwind label %bb.q, !dbg !4337

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4338
  unreachable, !dbg !4338

_RNvMs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_8LogScope3new.exit: ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !4339
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !4339, !alias.scope !4266, !nonnull !263, !noundef !263
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.y, !dbg !4340
  store ptr %i.m, ptr %i.ap, align 8, !dbg !4341
  %i.aq = add i64 %i.y, 1, !dbg !4342
  store i64 %i.aq, ptr %i.x, align 8, !dbg !4342, !alias.scope !4266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4343
  %i.ar = load i64, ptr %i.r, align 8, !dbg !4344, !noundef !263
  %i.as = add i64 %i.ar, 1, !dbg !4345
  store i64 %i.as, ptr %i.r, align 8, !dbg !4346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4349
  %i.at = load i64, ptr %1, align 8, !dbg !4350, !range !357, !noundef !263 ; 3 uses
  %.not = icmp eq i64 %i.at, -1, !dbg !4350
  br i1 %.not, label %bb.x, label %bb.s, !dbg !4351

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !4352
  unreachable, !dbg !4352

bb.s:                                             ; preds = %_RNvMs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_8LogScope3new.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4353
  %.val12 = load ptr, ptr %i.au, align 8, !dbg !4353 ; 10 uses
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.z
  ], !dbg !4354

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.av = atomicrmw add ptr %.val12, i64 1 monotonic, align 8, !dbg !4355
  %i.aw = icmp slt i64 %i.av, 0, !dbg !4356
  br i1 %i.aw, label %bb.v, label %bb.aa, !dbg !4356

bb.u:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.ax = atomicrmw add ptr %.val12, i64 1 monotonic, align 8, !dbg !4357
  %i.ay = icmp slt i64 %i.ax, 0, !dbg !4358
  br i1 %i.ay, label %bb.w, label %bb.ab, !dbg !4358

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.trap(), !dbg !4359
  unreachable, !dbg !4359

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.trap(), !dbg !4360
  unreachable, !dbg !4360

bb.x:                                             ; preds = %_RNvMs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_8LogScope3new.exit
  store i64 -1, ptr %i.k, align 8, !dbg !4361
  br label %bb.y, !dbg !4362

bb.y:                                             ; preds = %bb.at, %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !4363
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !4363, !noundef !263 ; 3 uses
  %.not10 = icmp eq ptr %i.ba, null, !dbg !4363
  br i1 %.not10, label %bb.ay, label %bb.au, !dbg !4364

.body:                                            ; preds = %bb.ae, %.thread.i, %.body18
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body.i, %bb.ae ], [ %eh.lpad-body.i, %.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8LogScopeEBJ_(ptr %i.q) #28
          to label %common.resume unwind label %bb.bo, !dbg !4365

bb.z:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4353
  %i.bc = load i8, ptr %i.bb, align 8, !dbg !4353, !range !327, !noundef !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4366
  store i64 2, ptr %i.j, align 8, !dbg !4366
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !4366
  store i8 %i.bc, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !4366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4367, !noalias !4277
  br label %bb.af, !dbg !4368

bb.aa:                                            ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4353
  %i.be = load i8, ptr %i.bd, align 8, !dbg !4353, !range !327, !noundef !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4366
  store i64 0, ptr %i.j, align 8, !dbg !4366
  %.sroa.45.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !4366
  store ptr %.val12, ptr %.sroa.45.0..sroa_idx27, align 8, !dbg !4366
  %.sroa.56.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !4366
  store i8 %i.be, ptr %.sroa.56.0..sroa_idx28, align 8, !dbg !4366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4367, !noalias !4280
  %i.bf = atomicrmw add ptr %.val12, i64 1 monotonic, align 8, !dbg !4369, !noalias !4277
  %i.bg = icmp slt i64 %i.bf, 0, !dbg !4370
  br i1 %i.bg, label %bb.ac, label %bb.af, !dbg !4370

bb.ab:                                            ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4353
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !4353, !range !327, !noundef !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4366
  store i64 1, ptr %i.j, align 8, !dbg !4366
  %.sroa.45.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !4366
  store ptr %.val12, ptr %.sroa.45.0..sroa_idx32, align 8, !dbg !4366
  %.sroa.56.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !4366
  store i8 %i.bi, ptr %.sroa.56.0..sroa_idx33, align 8, !dbg !4366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4367, !noalias !4281
  %i.bj = atomicrmw add ptr %.val12, i64 1 monotonic, align 8, !dbg !4371, !noalias !4277
  %i.bk = icmp slt i64 %i.bj, 0, !dbg !4372
  br i1 %i.bk, label %bb.ad, label %bb.af, !dbg !4372

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !4373
  unreachable, !dbg !4373

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.trap(), !dbg !4374
  unreachable, !dbg !4374

bb.ae:                                            ; preds = %.body.i14
  br i1 %.sroa.0.1.lpad-body.i, label %.thread.i, label %.body, !dbg !4375

bb.af:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  %i.bl = phi i8 [ %i.bc, %bb.z ], [ %i.be, %bb.aa ], [ %i.bi, %bb.ab ]
  %.sroa.4.0.i.i = phi ptr [ undef, %bb.z ], [ %.val12, %bb.aa ], [ %.val12, %bb.ab ], !dbg !4368
  store i64 %i.at, ptr %i.e, align 8, !dbg !4376, !noalias !4277
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4376
  store ptr %.sroa.4.0.i.i, ptr %i.bm, align 8, !dbg !4376, !noalias !4277
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4376
  store i8 %i.bl, ptr %i.bn, align 8, !dbg !4376, !noalias !4277
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4initNtB2_14TracingHarness3get()
          to label %bb.ah unwind label %bb.ag, !dbg !4377, !noalias !4277

bb.ag:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i14, !dbg !4378

.body.i14:                                        ; preds = %bb.ar, %bb.ai, %bb.ag
  %.sroa.0.1.lpad-body.i = phi i1 [ true, %bb.ag ], [ false, %bb.ar ], [ false, %bb.ai ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bp, %bb.ag ], [ %i.ce, %bb.ar ], [ %i.cb, %bb.ai ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #28
          to label %bb.ae unwind label %bb.as, !dbg !4378, !noalias !4277

bb.ah:                                            ; preds = %bb.af
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 56, !dbg !4379 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4380, !noalias !4277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !4380, !noalias !4282
  %i.br = invoke noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB27_(ptr noundef nonnull align 8 %i.bq)
          to label %bb.aj unwind label %bb.ar, !dbg !4381, !noalias !4283 ; 10 uses

bb.ai:                                            ; preds = %bb.am
  %i.bs = load i64, ptr %i.br, align 8, !dbg !4382, !noalias !4283, !noundef !263
  %i.bt = add i64 %i.bs, 1, !dbg !4383
  store i64 %i.bt, ptr %i.br, align 8, !dbg !4384, !noalias !4283
  br label %.body.i14, !dbg !4385

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bu = load i64, ptr %i.br, align 8, !dbg !4386, !noalias !4283, !noundef !263
  %i.bv = icmp eq i64 %i.bu, 0, !dbg !4387
  br i1 %i.bv, label %bb.ak, label %bb.ao, !dbg !4387, !prof !315

bb.ak:                                            ; preds = %bb.aj
  store i64 -1, ptr %i.br, align 8, !dbg !4388, !noalias !4283
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !4389 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4390, !noalias !4283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !4390, !noalias !4282
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !4391 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !dbg !4391, !alias.scope !4284, !noalias !4283, !noundef !263 ; 3 uses
  %i.bz = load i64, ptr %i.bw, align 8, !dbg !4392, !range !288, !alias.scope !4284, !noalias !4283, !noundef !263
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !4393
  br i1 %i.ca, label %bb.al, label %bb.at, !dbg !4393

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.at unwind label %bb.am, !dbg !4394, !noalias !4285

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %bb.ai unwind label %bb.an, !dbg !4395, !noalias !4283

bb.an:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4396, !noalias !4283
  unreachable, !dbg !4396

bb.ao:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #33
          to label %bb.aq unwind label %bb.ar, !dbg !4397, !noalias !4283

bb.ap:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4398, !noalias !4277
  unreachable, !dbg !4398

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ao, %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #28
          to label %.body.i14 unwind label %bb.ap, !dbg !4385, !noalias !4277

bb.as:                                            ; preds = %.thread.i, %.body.i14
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4399, !noalias !4282
  unreachable, !dbg !4399

.thread.i:                                        ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #28
          to label %.body unwind label %bb.as, !dbg !4375, !noalias !4282

bb.at:                                            ; preds = %bb.al, %bb.ak
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !4400
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !4400, !alias.scope !4284, !noalias !4283, !nonnull !263, !noundef !263
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.by, !dbg !4401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !4402, !noalias !4282
  %i.cj = add i64 %i.by, 1, !dbg !4403
  store i64 %i.cj, ptr %i.bx, align 8, !dbg !4403, !alias.scope !4284, !noalias !4283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4404, !noalias !4283
  %i.ck = load i64, ptr %i.br, align 8, !dbg !4405, !noalias !4283, !noundef !263
  %i.cl = add i64 %i.ck, 1, !dbg !4406
  store i64 %i.cl, ptr %i.br, align 8, !dbg !4407, !noalias !4283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4408, !noalias !4277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !4409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4378, !noalias !4277
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !4410
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4411
  br label %bb.y, !dbg !4411

bb.au:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4286), !dbg !4412
  %i.cm = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !dbg !4413, !noalias !4292
  %i.cn = icmp slt i64 %i.cm, 0, !dbg !4414
  br i1 %i.cn, label %bb.aw, label %bb.av, !dbg !4414

bb.av:                                            ; preds = %bb.au
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !4415 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !4415, !alias.scope !4286, !nonnull !263, !noundef !263
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !dbg !4416, !noalias !4292
  %i.cr = icmp slt i64 %i.cq, 0, !dbg !4417
  br i1 %i.cr, label %bb.ax, label %bb.az, !dbg !4417

bb.aw:                                            ; preds = %bb.au
  tail call void @llvm.trap(), !dbg !4418
  unreachable, !dbg !4418

bb.ax:                                            ; preds = %bb.av
  tail call void @llvm.trap(), !dbg !4419
  unreachable, !dbg !4419

bb.ay:                                            ; preds = %bb.y, %bb.bn
  %.sroa.01.0 = phi ptr [ %i.cv, %bb.bn ], [ null, %bb.y ], !dbg !4420
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4421
  store ptr %i.q, ptr %i.cs, align 8, !dbg !4421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !4421
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4421
  store ptr %.sroa.01.0, ptr %i.ct, align 8, !dbg !4421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !4365
  ret void, !dbg !4422

.body18:                                          ; preds = %bb.bb, %bb.bk, %bb.bl
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.dg, %bb.bb ], [ %i.dk, %bb.bl ], [ %i.dj, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing9SpanScopeEEB13_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #28
          to label %.body unwind label %bb.bo, !dbg !4365

bb.az:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4423
  store ptr %i.ba, ptr %i.i, align 8, !dbg !4423
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !4423
  %2 = load <2 x ptr>, ptr %i.co, align 8, !dbg !4424, !alias.scope !4286
  store <2 x ptr> %2, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !4423
  %i.cu = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4initNtB2_14TracingHarness3get()
          to label %bb.ba unwind label %bb.bl, !dbg !4425, !noalias !4294

bb.ba:                                            ; preds = %bb.az
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 568, !dbg !4426 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4427, !noalias !4294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !4427
  %i.cw = invoke noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB1x_5boxed3BoxDINtNtB24_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBW_6marker4SendNtB4y_4SyncEL_EB3u_EEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.cv)
          to label %bb.bc unwind label %bb.bk, !dbg !4428, !noalias !4300 ; 10 uses

bb.bb:                                            ; preds = %bb.bf
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !4429, !noalias !4300, !noundef !263
  %i.cy = add i64 %i.cx, 1, !dbg !4430
  store i64 %i.cy, ptr %i.cw, align 8, !dbg !4431, !noalias !4300
  br label %.body18, !dbg !4432

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cz = load i64, ptr %i.cw, align 8, !dbg !4433, !noalias !4300, !noundef !263
  %i.da = icmp eq i64 %i.cz, 0, !dbg !4434
  br i1 %i.da, label %bb.bd, label %bb.bh, !dbg !4434, !prof !315

bb.bd:                                            ; preds = %bb.bc
  store i64 -1, ptr %i.cw, align 8, !dbg !4435, !noalias !4300
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !4436 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4437, !noalias !4300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !4437
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !4438 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !4438, !alias.scope !4301, !noalias !4300, !noundef !263 ; 3 uses
  %i.de = load i64, ptr %i.db, align 8, !dbg !4439, !range !288, !alias.scope !4301, !noalias !4300, !noundef !263
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !4440
  br i1 %i.df, label %bb.be, label %bb.bn, !dbg !4440

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBR_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3j_4SyncEL_EB2f_EE8grow_oneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %bb.bn unwind label %bb.bf, !dbg !4441, !noalias !4302

bb.bf:                                            ; preds = %bb.be
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #28
          to label %bb.bb unwind label %bb.bg, !dbg !4442, !noalias !4300

bb.bg:                                            ; preds = %bb.bf
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4443, !noalias !4300
  unreachable, !dbg !4443

bb.bh:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #33
          to label %bb.bj unwind label %bb.bk, !dbg !4444, !noalias !4300

bb.bi:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4445, !noalias !4294
  unreachable, !dbg !4445

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bh, %bb.ba
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %.body18 unwind label %bb.bi, !dbg !4432, !noalias !4294

bb.bl:                                            ; preds = %bb.az
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #28
          to label %.body18 unwind label %bb.bm, !dbg !4446

bb.bm:                                            ; preds = %bb.bl
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4447
  unreachable, !dbg !4447

bb.bn:                                            ; preds = %bb.be, %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !4448
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !4448, !alias.scope !4301, !noalias !4300, !nonnull !263, !noundef !263
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dd, !dbg !4449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !4450
  %i.dp = add i64 %i.dd, 1, !dbg !4451
  store i64 %i.dp, ptr %i.dc, align 8, !dbg !4451, !alias.scope !4301, !noalias !4300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4452, !noalias !4300
  %i.dq = load i64, ptr %i.cw, align 8, !dbg !4453, !noalias !4300, !noundef !263
  %i.dr = add i64 %i.dq, 1, !dbg !4454
  store i64 %i.dr, ptr %i.cw, align 8, !dbg !4455, !noalias !4300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4456, !noalias !4294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4457
  br label %bb.ay, !dbg !4457

bb.bo:                                            ; preds = %.body, %.body18
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4458
  unreachable, !dbg !4458
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_contextNtB5_16TelemetryContext7current(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !183 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4469
  %i.d = tail call noundef nonnull ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal11current_log(), !dbg !4469 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !dbg !4469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4470
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !dbg !4470

bb.b:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.d ]
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !4471, !noalias !4468
  %i.f = icmp eq i64 %i.e, 1, !dbg !4472
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !4472

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !4473
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.h, !dbg !4474

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4475
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing19current_test_tracer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f, !dbg !4475

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.b unwind label %bb.h, !dbg !4476

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4477
  store ptr %i.d, ptr %i.i, align 8, !dbg !4477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !4477
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !4477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4476
  ret void, !dbg !4478

bb.h:                                             ; preds = %bb.c, %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !4479
  unreachable, !dbg !4479

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %.pn, !dbg !4479
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_contextNtB5_16TelemetryContext15with_forked_log(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4480 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8fork_log(), !dbg !4512
  %i.b = load i64, ptr %1, align 8, !dbg !4513, !range !357, !noundef !263 ; 3 uses
  %.not = icmp eq i64 %i.b, -1, !dbg !4513
  br i1 %.not, label %bb.g, label %bb.b, !dbg !4514

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4515
  %.val9 = load ptr, ptr %i.c, align 8, !dbg !4515 ; 6 uses
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.h
  ], !dbg !4516

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.d = atomicrmw add ptr %.val9, i64 1 monotonic, align 8, !dbg !4517
  %i.e = icmp slt i64 %i.d, 0, !dbg !4518
  br i1 %i.e, label %bb.e, label %bb.h, !dbg !4518

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.f = atomicrmw add ptr %.val9, i64 1 monotonic, align 8, !dbg !4519
  %i.g = icmp slt i64 %i.f, 0, !dbg !4520
  br i1 %i.g, label %bb.f, label %bb.h, !dbg !4520

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !4521
  unreachable, !dbg !4521

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !4522
  unreachable, !dbg !4522

bb.g:                                             ; preds = %bb.a, %bb.h
  %.sroa.6.0 = phi i8 [ %i.k, %bb.h ], [ undef, %bb.a ], !dbg !4523
  %.sroa.5.0 = phi ptr [ %.sroa.4.0.i, %bb.h ], [ undef, %bb.a ], !dbg !4523
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !4524
  %i.i = load ptr, ptr %i.h, align 8, !dbg !4524, !noundef !263 ; 3 uses
  %.not7 = icmp eq ptr %i.i, null, !dbg !4524
  br i1 %.not7, label %bb.m, label %bb.i, !dbg !4525

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.4.0.i = phi ptr [ undef, %bb.b ], [ %.val9, %bb.c ], [ %.val9, %bb.d ], !dbg !4516
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4515
  %i.k = load i8, ptr %i.j, align 8, !dbg !4515, !range !327, !noundef !263
  br label %bb.g, !dbg !4526

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4510), !dbg !4527
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !dbg !4528, !noalias !4511
  %i.m = icmp slt i64 %i.l, 0, !dbg !4529
  br i1 %i.m, label %bb.k, label %bb.j, !dbg !4529

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !4530 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4530, !alias.scope !4510, !nonnull !263, !noundef !263
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !4531, !noalias !4511
  %i.q = icmp slt i64 %i.p, 0, !dbg !4532
  br i1 %i.q, label %bb.l, label %bb.n, !dbg !4532

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap(), !dbg !4533
  unreachable, !dbg !4533

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !4534
  unreachable, !dbg !4534

bb.m:                                             ; preds = %bb.g, %bb.n
  %2 = phi <2 x ptr> [ undef, %bb.g ], [ %3, %bb.n ], !dbg !4535
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4536
  store ptr %i.a, ptr %i.r, align 8, !dbg !4536
  store i64 %i.b, ptr %0, align 8, !dbg !4536
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4536
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx11, align 8, !dbg !4536
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4536
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4536
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4536
  store ptr %i.i, ptr %i.s, align 8, !dbg !4536
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4536
  store <2 x ptr> %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4536
  ret void, !dbg !4537

bb.n:                                             ; preds = %bb.j
  %3 = load <2 x ptr>, ptr %i.n, align 8, !dbg !4538, !alias.scope !4510
  br label %bb.m, !dbg !4539
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4540 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1x_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB3V_(ptr noundef nonnull align 8 %0), !dbg !4601 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load i64, ptr %i.a, align 8, !dbg !4602, !noundef !263 ; 3 uses
  %i.c = icmp ult i64 %i.b, 9223372036854775807, !dbg !4603
  br i1 %i.c, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit, label %bb.b, !dbg !4604, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31, !dbg !4605
  unreachable, !dbg !4605

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit: ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1, !dbg !4606
  store i64 %i.d, ptr %i.a, align 8, !dbg !4607
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4608
  %i.f = load i64, ptr %i.e, align 8, !dbg !4608, !noundef !263 ; 2 uses
  %.not = icmp eq i64 %i.f, 0, !dbg !4609
  br i1 %.not, label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit, label %bb.c, !dbg !4609

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4610
  %i.h = load ptr, ptr %i.g, align 8, !dbg !4610, !nonnull !263, !noundef !263
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.f, !dbg !4611
  %i.j = getelementptr i8, ptr %i.i, i64 -8, !dbg !4611
  %.val = load ptr, ptr %i.j, align 8, !dbg !4612, !nonnull !263, !noundef !263 ; 2 uses
  %i.k = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !dbg !4613
  %i.l = icmp slt i64 %i.k, 0, !dbg !4614
  br i1 %i.l, label %bb.d, label %._RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit_crit_edge, !dbg !4614

._RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit_crit_edge: ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !dbg !4615
  %i.m = add i64 %.pre, -1, !dbg !4616
  br label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit, !dbg !4614

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !4617
  unreachable, !dbg !4617

_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit: ; preds = %._RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit_crit_edge, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit
  %i.n = phi i64 [ %i.b, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit ], [ %i.m, %._RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit_crit_edge ], !dbg !4615
  %.sroa.0.0 = phi ptr [ null, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_.exit ], [ %.val, %._RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_.exit_crit_edge ], !dbg !4618
  store i64 %i.n, ptr %i.a, align 8, !dbg !4619
  ret ptr %.sroa.0.0, !dbg !4620
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB1c_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3W_4SyncEL_EB2S_EE7currentB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4621 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB1x_5boxed3BoxDINtNtB24_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBW_6marker4SendNtB4y_4SyncEL_EB3u_EEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %1), !dbg !4694 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load i64, ptr %i.a, align 8, !dbg !4695, !noundef !263 ; 3 uses
  %i.c = icmp ult i64 %i.b, 9223372036854775807, !dbg !4696
  br i1 %i.c, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtBO_5boxed3BoxDINtNtB1l_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3O_4SyncEL_EB2K_EEE6borrowCsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !4697, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31, !dbg !4698
  unreachable, !dbg !4698

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtBO_5boxed3BoxDINtNtB1l_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3O_4SyncEL_EB2K_EEE6borrowCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1, !dbg !4699
  store i64 %i.d, ptr %i.a, align 8, !dbg !4700
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4701
  %i.f = load i64, ptr %i.e, align 8, !dbg !4701, !noundef !263 ; 2 uses
  %.not = icmp eq i64 %i.f, 0, !dbg !4702
  br i1 %.not, label %bb.c, label %bb.d, !dbg !4702

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtBO_5boxed3BoxDINtNtB1l_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3O_4SyncEL_EB2K_EEE6borrowCsbaWXNhtWAp9_11foundations.exit
  store ptr null, ptr %0, align 8, !dbg !4703
  br label %bb.h, !dbg !4704

bb.d:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtBO_5boxed3BoxDINtNtB1l_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3O_4SyncEL_EB2K_EEE6borrowCsbaWXNhtWAp9_11foundations.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4705
  %i.h = load ptr, ptr %i.g, align 8, !dbg !4705, !nonnull !263, !noundef !263
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %i.f, !dbg !4706 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24, !dbg !4706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4691), !dbg !4707
  %i.k = load ptr, ptr %i.j, align 8, !dbg !4708, !alias.scope !4691, !nonnull !263, !noundef !263 ; 2 uses
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !dbg !4709, !noalias !4693
  %i.m = icmp slt i64 %i.l, 0, !dbg !4710
  br i1 %i.m, label %bb.f, label %bb.e, !dbg !4710

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.i, i64 -16, !dbg !4711
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4711, !alias.scope !4691, !nonnull !263, !noundef !263 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !4712, !noalias !4693
  %i.q = icmp slt i64 %i.p, 0, !dbg !4713
  br i1 %i.q, label %bb.g, label %bb.i, !dbg !4713

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !4714
  unreachable, !dbg !4714

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !4715
  unreachable, !dbg !4715

bb.h:                                             ; preds = %bb.i, %bb.c
  %i.r = phi i64 [ %i.u, %bb.i ], [ %i.b, %bb.c ], !dbg !4716
  store i64 %i.r, ptr %i.a, align 8, !dbg !4717
  ret void, !dbg !4718

bb.i:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.i, i64 -8, !dbg !4711
  %i.t = load ptr, ptr %i.s, align 8, !dbg !4719, !alias.scope !4691, !nonnull !263, !align !265, !noundef !263
  store ptr %i.k, ptr %0, align 8, !dbg !4720
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4720
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4720
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4720
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4720
  %.pre = load i64, ptr %i.a, align 8, !dbg !4716
  %i.u = add i64 %.pre, -1, !dbg !4721
  br label %bb.h, !dbg !4722
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackNtNtNtB6_7tracing8internal10SharedSpanE7currentB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4723 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB27_(ptr noundef nonnull align 8 %1), !dbg !4791 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load i64, ptr %i.a, align 8, !dbg !4792, !noundef !263 ; 3 uses
  %i.c = icmp ult i64 %i.b, 9223372036854775807, !dbg !4793
  br i1 %i.c, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEE6borrowB1o_.exit, label %bb.b, !dbg !4794, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31, !dbg !4795
  unreachable, !dbg !4795

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEE6borrowB1o_.exit: ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1, !dbg !4796
  store i64 %i.d, ptr %i.a, align 8, !dbg !4797
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4798
  %i.f = load i64, ptr %i.e, align 8, !dbg !4798, !noundef !263 ; 2 uses
  %.not = icmp eq i64 %i.f, 0, !dbg !4799
  br i1 %.not, label %bb.c, label %bb.d, !dbg !4799

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEE6borrowB1o_.exit
  store i64 -1, ptr %0, align 8, !dbg !4800
  br label %bb.i, !dbg !4801

bb.d:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEE6borrowB1o_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4802
  %i.h = load ptr, ptr %i.g, align 8, !dbg !4802, !nonnull !263, !noundef !263
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %i.f, !dbg !4803 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24, !dbg !4803
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4788), !dbg !4804
  %.val.i = load i64, ptr %i.j, align 8, !dbg !4805, !range !389, !alias.scope !4788, !noundef !263 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 -16, !dbg !4805
  %.val1.i = load ptr, ptr %i.k, align 8, !dbg !4805, !alias.scope !4788 ; 6 uses
  switch i64 %.val.i, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.j
  ], !dbg !4806

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.l = atomicrmw add ptr %.val1.i, i64 1 monotonic, align 8, !dbg !4807, !noalias !4790
  %i.m = icmp slt i64 %i.l, 0, !dbg !4808
  br i1 %i.m, label %bb.g, label %bb.j, !dbg !4808

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.n = atomicrmw add ptr %.val1.i, i64 1 monotonic, align 8, !dbg !4809, !noalias !4790
  %i.o = icmp slt i64 %i.n, 0, !dbg !4810
  br i1 %i.o, label %bb.h, label %bb.j, !dbg !4810

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !4811
  unreachable, !dbg !4811

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap(), !dbg !4812
  unreachable, !dbg !4812

bb.i:                                             ; preds = %bb.j, %bb.c
  %i.p = phi i64 [ %i.s, %bb.j ], [ %i.b, %bb.c ], !dbg !4813
  store i64 %i.p, ptr %i.a, align 8, !dbg !4814
  ret void, !dbg !4815

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i.i = phi ptr [ undef, %bb.d ], [ %.val1.i, %bb.e ], [ %.val1.i, %bb.f ], !dbg !4806
  %i.q = getelementptr i8, ptr %i.i, i64 -8, !dbg !4816
  %i.r = load i8, ptr %i.q, align 8, !dbg !4816, !range !327, !alias.scope !4788, !noundef !263
  store i64 %.val.i, ptr %0, align 8, !dbg !4817
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4817
  store ptr %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4817
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4817
  store i8 %i.r, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4817
  %.pre = load i64, ptr %i.a, align 8, !dbg !4813
  %i.s = add i64 %.pre, -1, !dbg !4818
  br label %bb.i, !dbg !4819
}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!4223 = distinct !DISubprogram(name: "get<alloc::vec::Vec<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtBS_5boxed3BoxDINtNtB1p_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3S_4SyncEL_EB2O_EEE3getCsbaWXNhtWAp9_11foundations", scope: !332, file: !311, line: 2434, type: !264, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4224 = distinct !DILexicalBlock(scope: !4212, file: !311, line: 1260, column: 13)
!4225 = distinct !DILocation(line: 1267, column: 72, scope: !4224, inlinedAt: !4215)
!4226 = distinct !DISubprogram(name: "push_mut<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EE8push_mutCsbaWXNhtWAp9_11foundations", scope: !287, file: !284, line: 1027, type: !264, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4227 = distinct !DISubprogram(name: "push<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EE4pushCsbaWXNhtWAp9_11foundations", scope: !287, file: !284, line: 995, type: !264, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4228 = distinct !DILocation(line: 47, column: 53, scope: !4199, inlinedAt: !4200)
!4229 = distinct !DILocation(line: 996, column: 22, scope: !4227, inlinedAt: !4228)
!4230 = distinct !{!4230, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EE8push_mutCsbaWXNhtWAp9_11foundations"}
!4231 = distinct !{!4231, !4230, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EE8push_mutCsbaWXNhtWAp9_11foundations: argument 0"}
!4232 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner8capacityCsbaWXNhtWAp9_11foundations", scope: !291, file: !289, line: 615, type: !264, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4233 = distinct !DISubprogram(name: "capacity<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBR_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3j_4SyncEL_EB2f_EE8capacityCsbaWXNhtWAp9_11foundations", scope: !292, file: !289, line: 308, type: !264, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4234 = distinct !DILexicalBlock(scope: !4226, file: !284, line: 1029, column: 9)
!4235 = distinct !DILocation(line: 1032, column: 28, scope: !4234, inlinedAt: !4229)
!4236 = distinct !DILocation(line: 309, column: 20, scope: !4233, inlinedAt: !4235)
!4237 = distinct !{!4237, !4230, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EE8push_mutCsbaWXNhtWAp9_11foundations: argument 1"}
!4238 = distinct !DILexicalBlock(scope: !4213, file: !311, line: 1227, column: 13)
!4239 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB8_5boxed3BoxDINtNtB16_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3z_4SyncEL_EB2v_EECsbaWXNhtWAp9_11foundations", scope: !291, file: !289, line: 610, type: !264, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4240 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB8_5boxed3BoxDINtNtB11_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3u_4SyncEL_EB2q_EECsbaWXNhtWAp9_11foundations", scope: !291, file: !289, line: 605, type: !264, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4241 = distinct !DISubprogram(name: "ptr<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBR_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3j_4SyncEL_EB2f_EE3ptrCsbaWXNhtWAp9_11foundations", scope: !292, file: !289, line: 295, type: !264, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4242 = distinct !DISubprogram(name: "as_mut_ptr<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB6_5boxed3BoxDINtNtBJ_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3b_4SyncEL_EB27_EE10as_mut_ptrCsbaWXNhtWAp9_11foundations", scope: !287, file: !284, line: 2050, type: !264, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4243 = distinct !DILocation(line: 1036, column: 28, scope: !4234, inlinedAt: !4229)
!4244 = distinct !DILocation(line: 2053, column: 18, scope: !4242, inlinedAt: !4243)
!4245 = distinct !DILocation(line: 296, column: 20, scope: !4241, inlinedAt: !4244)
!4246 = distinct !DILocation(line: 606, column: 14, scope: !4240, inlinedAt: !4245)
!4247 = distinct !DISubprogram(name: "add<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBH_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB6_6marker4SendNtB3q_4SyncEL_EB2m_E3addCsbaWXNhtWAp9_11foundations", scope: !303, file: !301, line: 936, type: !264, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4248 = distinct !DILocation(line: 1036, column: 41, scope: !4234, inlinedAt: !4229)
!4249 = distinct !DILexicalBlock(scope: !4234, file: !284, line: 1036, column: 13)
!4250 = distinct !DILocation(line: 47, column: 63, scope: !4199, inlinedAt: !4200)
!4251 = distinct !DILocation(line: 848, column: 1, scope: !4203, inlinedAt: !4250)
!4252 = distinct !DILocation(line: 848, column: 1, scope: !140, inlinedAt: !4251)
!4253 = distinct !DILocation(line: 2056, column: 34, scope: !139, inlinedAt: !4252)
!4254 = distinct !DILocation(line: 2058, column: 21, scope: !142, inlinedAt: !4252)
!4255 = distinct !DILocation(line: 516, column: 9, scope: !145, inlinedAt: !4254)
!4256 = !DILocation(line: 191, column: 39, scope: !3979)
!4257 = !DILocation(line: 2477, column: 29, scope: !3981, inlinedAt: !4256)
!4258 = !DILocation(line: 2193, column: 27, scope: !3982, inlinedAt: !4257)
!4259 = !DILocation(line: 2477, column: 44, scope: !3981, inlinedAt: !4256)
!4260 = !DILocation(line: 3224, column: 26, scope: !3984, inlinedAt: !4259)
!4261 = !DIFile(filename: "foundations/src/telemetry/log/internal.rs", directory: "/opt-bench/work/foundations-rs/foundations", checksumkind: CSK_MD5, checksum: "26e23aadedcf5461eb22790c1e252ce5")
!4262 = !DINamespace(name: "log", scope: !323)
!4263 = !DINamespace(name: "internal", scope: !4262)
!4264 = !DINamespace(name: "LogScope", scope: !4263)
!4265 = !DINamespace(name: "Scope", scope: !376)
!4266 = !{!4017}
!4267 = !{!4030, !4028, !4017}
!4268 = !{!4040, !4038}
!4269 = !{!4049, !4047}
!4270 = !DILocation(line: 194, column: 36, scope: !3979)
!4271 = !DILocation(line: 194, column: 45, scope: !3979)
!4272 = !DILocation(line: 2161, column: 14, scope: !4076, inlinedAt: !4271)
!4273 = !DILocation(line: 1163, column: 29, scope: !4078, inlinedAt: !4272)
!4274 = !DILocation(line: 250, column: 5, scope: !4079, inlinedAt: !4273)
!4275 = !DILocation(line: 194, column: 54, scope: !3979)
!4276 = !DILocation(line: 200, column: 50, scope: !3979)
!4277 = !{!4091, !4090}
!4278 = !DILexicalBlockFile(scope: !4094, file: !363, discriminator: 2)
!4279 = !DILocation(line: 1163, column: 29, scope: !4278, inlinedAt: !4275)
!4280 = !{!4101, !4100}
!4281 = !{!4107, !4106}
!4282 = !{!4091}
!4283 = !{!4112, !4091, !4090}
!4284 = !{!4146}
!4285 = !{!4152, !4112, !4091, !4090}
!4286 = !{!4172}
!4287 = !DILexicalBlockFile(scope: !4176, file: !363, discriminator: 4)
!4288 = !DILexicalBlockFile(scope: !4174, file: !363, discriminator: 2)
!4289 = !DILocation(line: 200, column: 59, scope: !3979)
!4290 = !DILocation(line: 2161, column: 14, scope: !4288, inlinedAt: !4289)
!4291 = !DILocation(line: 1163, column: 29, scope: !4287, inlinedAt: !4290)
!4292 = !{!4177, !4172}
!4293 = !DILocation(line: 200, column: 68, scope: !3979)
!4294 = !{!4190}
!4295 = !DIFile(filename: "foundations/src/telemetry/tracing/testing.rs", directory: "/opt-bench/work/foundations-rs/foundations", checksumkind: CSK_MD5, checksum: "6ce6e4da9ad8c211d75c58a29c07b62b")
!4296 = !DINamespace(name: "testing", scope: !483)
!4297 = !DINamespace(name: "TestTracerScope", scope: !4296)
!4298 = !DILexicalBlockFile(scope: !4193, file: !363, discriminator: 6)
!4299 = !DILocation(line: 1163, column: 29, scope: !4298, inlinedAt: !4293)
!4300 = !{!4196, !4190}
!4301 = !{!4231}
!4302 = !{!4237, !4196, !4190}
!4303 = !DILocation(line: 454, column: 20, scope: !3980, inlinedAt: !4258)
!4304 = !DILocation(line: 4033, column: 24, scope: !3983, inlinedAt: !4260)
!4305 = !DILocation(line: 2494, column: 12, scope: !3985, inlinedAt: !4256)
!4306 = !DILocation(line: 134, column: 33, scope: !3986, inlinedAt: !3987)
!4307 = !DILocation(line: 134, column: 32, scope: !3986, inlinedAt: !3987)
!4308 = !DILocation(line: 206, column: 27, scope: !3988, inlinedAt: !3993)
!4309 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !3997)
!4310 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !3996)
!4311 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !3999)
!4312 = !DILocation(line: 53, column: 5, scope: !3990, inlinedAt: !3991)
!4313 = !DILocation(line: 558, column: 18, scope: !4000, inlinedAt: !4007)
!4314 = !DILocation(line: 2069, column: 9, scope: !4001, inlinedAt: !4006)
!4315 = !DILocation(line: 976, column: 49, scope: !4009, inlinedAt: !4012)
!4316 = !DILocation(line: 2437, column: 9, scope: !4013, inlinedAt: !4015)
!4317 = !DILocation(line: 996, column: 22, scope: !4018, inlinedAt: !4019)
!4318 = !DILocation(line: 1029, column: 19, scope: !4020, inlinedAt: !4021)
!4319 = !DILocation(line: 616, column: 49, scope: !4022, inlinedAt: !4026)
!4320 = !DILocation(line: 1032, column: 12, scope: !4024, inlinedAt: !4021)
!4321 = !DILocation(line: 1033, column: 22, scope: !4024, inlinedAt: !4021)
!4322 = !DILocation(line: 4053, column: 24, scope: !160, inlinedAt: !4034)
!4323 = !DILocation(line: 2928, column: 12, scope: !159, inlinedAt: !4032)
!4324 = !DILocation(line: 4497, column: 24, scope: !10, inlinedAt: !4035)
!4325 = !DILocation(line: 2971, column: 18, scope: !159, inlinedAt: !4032)
!4326 = !DILocation(line: 1027, column: 5, scope: !4020, inlinedAt: !4021)
!4327 = !DILocation(line: 1227, column: 25, scope: !4036, inlinedAt: !4004)
!4328 = !DILocation(line: 46, column: 5, scope: !3990, inlinedAt: !3991)
!4329 = !DILocation(line: 4053, column: 24, scope: !160, inlinedAt: !4044)
!4330 = !DILocation(line: 2928, column: 12, scope: !159, inlinedAt: !4042)
!4331 = !DILocation(line: 4497, column: 24, scope: !10, inlinedAt: !4045)
!4332 = !DILocation(line: 2971, column: 18, scope: !159, inlinedAt: !4042)
!4333 = !DILocation(line: 0, scope: !3979)
!4334 = !DILocation(line: 4053, column: 24, scope: !160, inlinedAt: !4053)
!4335 = !DILocation(line: 2928, column: 12, scope: !159, inlinedAt: !4051)
!4336 = !DILocation(line: 4497, column: 24, scope: !10, inlinedAt: !4054)
!4337 = !DILocation(line: 2971, column: 18, scope: !159, inlinedAt: !4051)
!4338 = !DILocation(line: 132, column: 5, scope: !3986, inlinedAt: !3987)
!4339 = !DILocation(line: 611, column: 9, scope: !4055, inlinedAt: !4062)
!4340 = !DILocation(line: 970, column: 18, scope: !4063, inlinedAt: !4064)
!4341 = !DILocation(line: 1964, column: 41, scope: !4065, inlinedAt: !4067)
!4342 = !DILocation(line: 1038, column: 13, scope: !4066, inlinedAt: !4021)
!4343 = !DILocation(line: 1042, column: 6, scope: !4020, inlinedAt: !4021)
!4344 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !4071)
!4345 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !4070)
!4346 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !4073)
!4347 = !DILocation(line: 53, column: 6, scope: !3990, inlinedAt: !3991)
!4348 = !DILocation(line: 136, column: 6, scope: !3986, inlinedAt: !3987)
!4349 = !DILocation(line: 194, column: 26, scope: !3979)
!4350 = !DILocation(line: 743, column: 15, scope: !4074, inlinedAt: !4270)
!4351 = !DILocation(line: 743, column: 9, scope: !4074, inlinedAt: !4270)
!4352 = !DILocation(line: 2495, column: 13, scope: !3985, inlinedAt: !4256)
!4353 = !DILocation(line: 69, column: 17, scope: !4075, inlinedAt: !4274)
!4354 = !DILocation(line: 22, column: 10, scope: !184, inlinedAt: !4080)
!4355 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4083)
!4356 = !DILocation(line: 2494, column: 12, scope: !189, inlinedAt: !4081)
!4357 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4086)
!4358 = !DILocation(line: 2494, column: 12, scope: !192, inlinedAt: !4084)
!4359 = !DILocation(line: 2495, column: 13, scope: !189, inlinedAt: !4081)
!4360 = !DILocation(line: 2495, column: 13, scope: !192, inlinedAt: !4084)
!4361 = !DILocation(line: 1164, column: 21, scope: !4087, inlinedAt: !4275)
!4362 = !DILocation(line: 1166, column: 5, scope: !4087, inlinedAt: !4275)
!4363 = !DILocation(line: 743, column: 15, scope: !4088, inlinedAt: !4276)
!4364 = !DILocation(line: 743, column: 9, scope: !4088, inlinedAt: !4276)
!4365 = !DILocation(line: 208, column: 9, scope: !3979)
!4366 = !DILocation(line: 1163, column: 18, scope: !4087, inlinedAt: !4275)
!4367 = !DILocation(line: 184, column: 19, scope: !4092, inlinedAt: !4095)
!4368 = !DILocation(line: 22, column: 10, scope: !184, inlinedAt: !4098)
!4369 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4104)
!4370 = !DILocation(line: 2494, column: 12, scope: !189, inlinedAt: !4102)
!4371 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4110)
!4372 = !DILocation(line: 2494, column: 12, scope: !192, inlinedAt: !4108)
!4373 = !DILocation(line: 2495, column: 13, scope: !189, inlinedAt: !4102)
!4374 = !DILocation(line: 2495, column: 13, scope: !192, inlinedAt: !4108)
!4375 = !DILocation(line: 187, column: 5, scope: !4092, inlinedAt: !4095)
!4376 = !DILocation(line: 69, column: 17, scope: !4096, inlinedAt: !4097)
!4377 = !DILocation(line: 185, column: 33, scope: !4092, inlinedAt: !4095)
!4378 = !DILocation(line: 186, column: 9, scope: !4092, inlinedAt: !4095)
!4379 = !DILocation(line: 185, column: 32, scope: !4092, inlinedAt: !4095)
!4380 = !DILocation(line: 185, column: 73, scope: !4092, inlinedAt: !4095)
!4381 = !DILocation(line: 206, column: 27, scope: !4113, inlinedAt: !4118)
!4382 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !4122)
!4383 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !4121)
!4384 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !4124)
!4385 = !DILocation(line: 53, column: 5, scope: !4115, inlinedAt: !4116)
!4386 = !DILocation(line: 558, column: 18, scope: !4125, inlinedAt: !4132)
!4387 = !DILocation(line: 2069, column: 9, scope: !4126, inlinedAt: !4131)
!4388 = !DILocation(line: 976, column: 49, scope: !4134, inlinedAt: !4137)
!4389 = !DILocation(line: 2437, column: 9, scope: !4138, inlinedAt: !4140)
!4390 = !DILocation(line: 47, column: 58, scope: !4115, inlinedAt: !4116)
!4391 = !DILocation(line: 1029, column: 19, scope: !4141, inlinedAt: !4144)
!4392 = !DILocation(line: 616, column: 49, scope: !4147, inlinedAt: !4151)
!4393 = !DILocation(line: 1032, column: 12, scope: !4149, inlinedAt: !4144)
!4394 = !DILocation(line: 1033, column: 22, scope: !4149, inlinedAt: !4144)
!4395 = !DILocation(line: 1042, column: 5, scope: !4141, inlinedAt: !4144)
!4396 = !DILocation(line: 1027, column: 5, scope: !4141, inlinedAt: !4144)
!4397 = !DILocation(line: 1227, column: 25, scope: !4153, inlinedAt: !4129)
!4398 = !DILocation(line: 46, column: 5, scope: !4115, inlinedAt: !4116)
!4399 = !DILocation(line: 182, column: 5, scope: !4092, inlinedAt: !4095)
!4400 = !DILocation(line: 611, column: 9, scope: !4154, inlinedAt: !4161)
!4401 = !DILocation(line: 970, column: 18, scope: !4162, inlinedAt: !4163)
!4402 = !DILocation(line: 1037, column: 29, scope: !4164, inlinedAt: !4144)
!4403 = !DILocation(line: 1038, column: 13, scope: !4164, inlinedAt: !4144)
!4404 = !DILocation(line: 47, column: 62, scope: !4115, inlinedAt: !4116)
!4405 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !4168)
!4406 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !4167)
!4407 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !4170)
!4408 = !DILocation(line: 185, column: 77, scope: !4092, inlinedAt: !4095)
!4409 = !DILocation(line: 183, column: 9, scope: !4092, inlinedAt: !4095)
!4410 = !DILocation(line: 1163, column: 24, scope: !4094, inlinedAt: !4275)
!4411 = !DILocation(line: 1163, column: 33, scope: !4087, inlinedAt: !4275)
!4412 = !DILocation(line: 250, column: 5, scope: !4173, inlinedAt: !4291)
!4413 = !DILocation(line: 4033, column: 24, scope: !193, inlinedAt: !4181)
!4414 = !DILocation(line: 2494, column: 12, scope: !197, inlinedAt: !4179)
!4415 = !DILocation(line: 454, column: 20, scope: !198, inlinedAt: !4185)
!4416 = !DILocation(line: 4033, column: 24, scope: !193, inlinedAt: !4187)
!4417 = !DILocation(line: 2494, column: 12, scope: !202, inlinedAt: !4183)
!4418 = !DILocation(line: 2495, column: 13, scope: !197, inlinedAt: !4179)
!4419 = !DILocation(line: 2495, column: 13, scope: !202, inlinedAt: !4183)
!4420 = !DILocation(line: 0, scope: !4188, inlinedAt: !4293)
!4421 = !DILocation(line: 189, column: 9, scope: !3979)
!4422 = !DILocation(line: 209, column: 6, scope: !3979)
!4423 = !DILocation(line: 1163, column: 18, scope: !4188, inlinedAt: !4293)
!4424 = !DILocation(line: 2498, column: 38, scope: !202, inlinedAt: !4183)
!4425 = !DILocation(line: 158, column: 33, scope: !4191, inlinedAt: !4194)
!4426 = !DILocation(line: 158, column: 32, scope: !4191, inlinedAt: !4194)
!4427 = !DILocation(line: 158, column: 80, scope: !4191, inlinedAt: !4194)
!4428 = !DILocation(line: 206, column: 27, scope: !4197, inlinedAt: !4202)
!4429 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !4207)
!4430 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !4206)
!4431 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !4209)
!4432 = !DILocation(line: 53, column: 5, scope: !4199, inlinedAt: !4200)
!4433 = !DILocation(line: 558, column: 18, scope: !4210, inlinedAt: !4217)
!4434 = !DILocation(line: 2069, column: 9, scope: !4211, inlinedAt: !4216)
!4435 = !DILocation(line: 976, column: 49, scope: !4219, inlinedAt: !4222)
!4436 = !DILocation(line: 2437, column: 9, scope: !4223, inlinedAt: !4225)
!4437 = !DILocation(line: 47, column: 58, scope: !4199, inlinedAt: !4200)
!4438 = !DILocation(line: 1029, column: 19, scope: !4226, inlinedAt: !4229)
!4439 = !DILocation(line: 616, column: 49, scope: !4232, inlinedAt: !4236)
!4440 = !DILocation(line: 1032, column: 12, scope: !4234, inlinedAt: !4229)
!4441 = !DILocation(line: 1033, column: 22, scope: !4234, inlinedAt: !4229)
!4442 = !DILocation(line: 1042, column: 5, scope: !4226, inlinedAt: !4229)
!4443 = !DILocation(line: 1027, column: 5, scope: !4226, inlinedAt: !4229)
!4444 = !DILocation(line: 1227, column: 25, scope: !4238, inlinedAt: !4214)
!4445 = !DILocation(line: 46, column: 5, scope: !4199, inlinedAt: !4200)
!4446 = !DILocation(line: 160, column: 5, scope: !4191, inlinedAt: !4194)
!4447 = !DILocation(line: 156, column: 5, scope: !4191, inlinedAt: !4194)
!4448 = !DILocation(line: 611, column: 9, scope: !4239, inlinedAt: !4246)
!4449 = !DILocation(line: 970, column: 18, scope: !4247, inlinedAt: !4248)
!4450 = !DILocation(line: 1037, column: 29, scope: !4249, inlinedAt: !4229)
!4451 = !DILocation(line: 1038, column: 13, scope: !4249, inlinedAt: !4229)
!4452 = !DILocation(line: 47, column: 62, scope: !4199, inlinedAt: !4200)
!4453 = !DILocation(line: 558, column: 18, scope: !138, inlinedAt: !4253)
!4454 = !DILocation(line: 2058, column: 29, scope: !142, inlinedAt: !4252)
!4455 = !DILocation(line: 976, column: 49, scope: !144, inlinedAt: !4255)
!4456 = !DILocation(line: 158, column: 86, scope: !4191, inlinedAt: !4194)
!4457 = !DILocation(line: 1163, column: 33, scope: !4188, inlinedAt: !4293)
!4458 = !DILocation(line: 188, column: 5, scope: !3979)
!4459 = distinct !{!4459, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!4460 = distinct !{!4460, !4459, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!4461 = distinct !{!4461, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!4462 = distinct !{!4462, !4461, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!4463 = distinct !DILocation(line: 138, column: 9, scope: !183)
!4464 = distinct !DILocation(line: 848, column: 1, scope: !156, inlinedAt: !4463)
!4465 = distinct !DILocation(line: 2928, column: 32, scope: !159, inlinedAt: !4464)
!4466 = distinct !DILocation(line: 3257, column: 26, scope: !161, inlinedAt: !4465)
!4467 = distinct !DILocation(line: 69, column: 9, scope: !159, inlinedAt: !4464)
!4468 = !{!4462, !4460}
!4469 = !DILocation(line: 125, column: 18, scope: !183)
!4470 = !DILocation(line: 128, column: 19, scope: !183)
!4471 = !DILocation(line: 4053, column: 24, scope: !160, inlinedAt: !4466)
!4472 = !DILocation(line: 2928, column: 12, scope: !159, inlinedAt: !4464)
!4473 = !DILocation(line: 4497, column: 24, scope: !10, inlinedAt: !4467)
!4474 = !DILocation(line: 2971, column: 18, scope: !159, inlinedAt: !4464)
!4475 = !DILocation(line: 134, column: 26, scope: !183)
!4476 = !DILocation(line: 138, column: 9, scope: !183)
!4477 = !DILocation(line: 123, column: 9, scope: !183)
!4478 = !DILocation(line: 139, column: 6, scope: !183)
!4479 = !DILocation(line: 122, column: 5, scope: !183)
!4480 = distinct !DISubprogram(name: "with_forked_log", linkageName: "_RNvMs3_NtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_contextNtB5_16TelemetryContext15with_forked_log", scope: !487, file: !485, line: 494, type: !264, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4481 = distinct !DISubprogram(name: "clone<foundations::telemetry::tracing::internal::SharedSpan>", linkageName: "_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanENtNtB7_5clone5Clone5cloneBS_", scope: !4506, file: !363, line: 2273, type: !264, scopeLine: 2273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4482 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs3_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internalNtB5_10SharedSpanNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !493, file: !491, line: 69, type: !264, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4483 = distinct !DILexicalBlock(scope: !4481, file: !363, line: 2275, column: 13)
!4484 = distinct !DILocation(line: 69, column: 17, scope: !4482, inlinedAt: !4508)
!4485 = distinct !DILocation(line: 24, column: 13, scope: !188, inlinedAt: !4484)
!4486 = distinct !DILocation(line: 2477, column: 44, scope: !496, inlinedAt: !4485)
!4487 = distinct !DILocation(line: 3224, column: 26, scope: !495, inlinedAt: !4486)
!4488 = distinct !DILocation(line: 25, column: 15, scope: !191, inlinedAt: !4484)
!4489 = distinct !DILocation(line: 2477, column: 44, scope: !190, inlinedAt: !4488)
!4490 = distinct !DILocation(line: 3224, column: 26, scope: !186, inlinedAt: !4489)
!4491 = distinct !DISubprogram(name: "clone<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>>", linkageName: "_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBP_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_6marker4SendNtB3y_4SyncEL_EB2u_EENtNtB7_5clone5Clone5cloneCsbaWXNhtWAp9_11foundations", scope: !4506, file: !363, line: 2273, type: !264, scopeLine: 2273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4492 = distinct !{!4492, i1 true, !"_RNvXs1_NtCs26L2cHvO7VQ_13cf_rustracing6tracerINtB5_6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB7_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2W_4SyncEL_EB1S_ENtNtB2Y_5clone5Clone5cloneCsbaWXNhtWAp9_11foundations"}
!4493 = distinct !{!4493, !4492, !"_RNvXs1_NtCs26L2cHvO7VQ_13cf_rustracing6tracerINtB5_6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB7_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2W_4SyncEL_EB1S_ENtNtB2Y_5clone5Clone5cloneCsbaWXNhtWAp9_11foundations: argument 1"}
!4494 = distinct !DILexicalBlock(scope: !4491, file: !363, line: 2275, column: 13)
!4495 = distinct !{!4495, !4492, !"_RNvXs1_NtCs26L2cHvO7VQ_13cf_rustracing6tracerINtB5_6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB7_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2W_4SyncEL_EB1S_ENtNtB2Y_5clone5Clone5cloneCsbaWXNhtWAp9_11foundations: argument 0"}
!4496 = distinct !DILocation(line: 2275, column: 31, scope: !4494, inlinedAt: !4509)
!4497 = distinct !DILocation(line: 66, column: 22, scope: !196, inlinedAt: !4496)
!4498 = distinct !DILocation(line: 2477, column: 44, scope: !195, inlinedAt: !4497)
!4499 = distinct !DILocation(line: 3224, column: 26, scope: !194, inlinedAt: !4498)
!4500 = distinct !DILocation(line: 67, column: 35, scope: !196, inlinedAt: !4496)
!4501 = distinct !DILocation(line: 71, column: 14, scope: !201, inlinedAt: !4500)
!4502 = distinct !DILocation(line: 2477, column: 29, scope: !502, inlinedAt: !4501)
!4503 = distinct !DILocation(line: 2193, column: 27, scope: !501, inlinedAt: !4502)
!4504 = distinct !DILocation(line: 2477, column: 44, scope: !502, inlinedAt: !4501)
!4505 = distinct !DILocation(line: 3224, column: 26, scope: !506, inlinedAt: !4504)
!4506 = !DINamespace(name: "{impl#6}", scope: !364)
!4507 = !DILocation(line: 499, column: 29, scope: !4480)
!4508 = !DILocation(line: 2275, column: 31, scope: !4483, inlinedAt: !4507)
!4509 = !DILocation(line: 505, column: 43, scope: !4480)
!4510 = !{!4493}
!4511 = !{!4495, !4493}
!4512 = !DILocation(line: 496, column: 18, scope: !4480)
!4513 = !DILocation(line: 2274, column: 15, scope: !4481, inlinedAt: !4507)
!4514 = !DILocation(line: 2274, column: 9, scope: !4481, inlinedAt: !4507)
!4515 = !DILocation(line: 69, column: 17, scope: !4482, inlinedAt: !4508)
!4516 = !DILocation(line: 22, column: 10, scope: !184, inlinedAt: !4484)
!4517 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4487)
!4518 = !DILocation(line: 2494, column: 12, scope: !189, inlinedAt: !4485)
!4519 = !DILocation(line: 4033, column: 24, scope: !185, inlinedAt: !4490)
!4520 = !DILocation(line: 2494, column: 12, scope: !192, inlinedAt: !4488)
!4521 = !DILocation(line: 2495, column: 13, scope: !189, inlinedAt: !4485)
!4522 = !DILocation(line: 2495, column: 13, scope: !192, inlinedAt: !4488)
!4523 = !DILocation(line: 499, scope: !4480)
!4524 = !DILocation(line: 2274, column: 15, scope: !4491, inlinedAt: !4509)
!4525 = !DILocation(line: 2274, column: 9, scope: !4491, inlinedAt: !4509)
!4526 = !DILocation(line: 2275, column: 38, scope: !4481, inlinedAt: !4507)
!4527 = !DILocation(line: 2275, column: 31, scope: !4494, inlinedAt: !4509)
!4528 = !DILocation(line: 4033, column: 24, scope: !193, inlinedAt: !4499)
!4529 = !DILocation(line: 2494, column: 12, scope: !197, inlinedAt: !4497)
!4530 = !DILocation(line: 454, column: 20, scope: !198, inlinedAt: !4503)
!4531 = !DILocation(line: 4033, column: 24, scope: !193, inlinedAt: !4505)
!4532 = !DILocation(line: 2494, column: 12, scope: !202, inlinedAt: !4501)
!4533 = !DILocation(line: 2495, column: 13, scope: !197, inlinedAt: !4497)
!4534 = !DILocation(line: 2495, column: 13, scope: !202, inlinedAt: !4501)
!4535 = !DILocation(line: 505, scope: !4480)
!4536 = !DILocation(line: 495, column: 9, scope: !4480)
!4537 = !DILocation(line: 510, column: 6, scope: !4480)
!4538 = !DILocation(line: 2498, column: 38, scope: !202, inlinedAt: !4501)
!4539 = !DILocation(line: 2275, column: 38, scope: !4491, inlinedAt: !4509)
!4540 = distinct !DISubprogram(name: "current<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_", scope: !507, file: !375, line: 29, type: !264, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4541 = distinct !DISubprogram(name: "get_or<core::cell::RefCell<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>, fn() -> core::cell::RefCell<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1x_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE6get_orNvYBR_NtNtBW_7default7Default7defaultEB3V_", scope: !379, file: !378, line: 202, type: !264, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4542 = distinct !DISubprogram(name: "get_or_default<core::cell::RefCell<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RNvMs7_Cs6AjmZOIP0uL_12thread_localINtB5_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1w_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE14get_or_defaultB3U_", scope: !379, file: !378, line: 385, type: !264, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4543 = distinct !DISubprogram(name: "get<isize>", linkageName: "_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelliE3getCsbaWXNhtWAp9_11foundations", scope: !313, file: !311, line: 555, type: !264, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4544 = distinct !DISubprogram(name: "new", linkageName: "_RNvMsF_NtCs3oUPovFnLWP_4core4cellNtB5_9BorrowRef3new", scope: !508, file: !311, line: 1561, type: !264, scopeLine: 1561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4545 = distinct !DISubprogram(name: "try_borrow<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE10try_borrowB3b_", scope: !381, file: !311, line: 1161, type: !264, scopeLine: 1161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4546 = distinct !DISubprogram(name: "borrow<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBO_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEE6borrowB3b_", scope: !381, file: !311, line: 1124, type: !276, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4547 = distinct !DILocation(line: 30, column: 33, scope: !4540)
!4548 = distinct !DILocation(line: 1125, column: 20, scope: !4546, inlinedAt: !4547)
!4549 = distinct !DILocation(line: 1162, column: 15, scope: !4545, inlinedAt: !4548)
!4550 = distinct !DILocation(line: 1562, column: 24, scope: !4544, inlinedAt: !4549)
!4551 = distinct !DISubprogram(name: "is_reading", linkageName: "_RNvNtCs3oUPovFnLWP_4core4cell10is_reading", scope: !312, file: !311, line: 957, type: !264, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4552 = distinct !DILexicalBlock(scope: !4544, file: !311, line: 1562, column: 9)
!4553 = distinct !DILocation(line: 1563, column: 13, scope: !4552, inlinedAt: !4549)
!4554 = distinct !DILexicalBlock(scope: !4546, file: !311, line: 1127, column: 13)
!4555 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs3_NtCs3oUPovFnLWP_4core3numi12wrapping_add", scope: !509, file: !467, line: 2188, type: !264, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4556 = distinct !DILocation(line: 1562, column: 30, scope: !4544, inlinedAt: !4549)
!4557 = distinct !DISubprogram(name: "replace<isize>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceiECsbaWXNhtWAp9_11foundations", scope: !320, file: !319, line: 961, type: !264, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4558 = distinct !DILexicalBlock(scope: !4557, file: !319, line: 975, column: 9)
!4559 = distinct !DISubprogram(name: "replace<isize>", linkageName: "_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CelliE7replaceCsbaWXNhtWAp9_11foundations", scope: !313, file: !311, line: 513, type: !264, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4560 = distinct !DILocation(line: 1578, column: 20, scope: !4552, inlinedAt: !4549)
!4561 = distinct !DILocation(line: 516, column: 9, scope: !4559, inlinedAt: !4560)
!4562 = distinct !DISubprogram(name: "as_slice<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE8as_sliceB2z_", scope: !287, file: !284, line: 1848, type: !264, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4563 = distinct !DISubprogram(name: "deref<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB2A_", scope: !336, file: !284, line: 3854, type: !264, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4564 = distinct !DISubprogram(name: "last<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE4lastB2G_", scope: !348, file: !347, line: 281, type: !264, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4565 = distinct !DILexicalBlock(scope: !4564, file: !347, line: 282, column: 34)
!4566 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2W_", scope: !291, file: !289, line: 610, type: !264, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4567 = distinct !DISubprogram(name: "as_ptr<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE6as_ptrB2z_", scope: !287, file: !284, line: 1966, type: !264, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4568 = distinct !DISubprogram(name: "ptr<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE3ptrB2H_", scope: !292, file: !289, line: 295, type: !264, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4569 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2R_", scope: !291, file: !289, line: 605, type: !264, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4570 = distinct !DISubprogram(name: "call_once<fn(&alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>) -> alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, (&alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>)>", linkageName: "_RNvYNvYINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneINtNtNtB3E_3ops8function6FnOnceTRB5_EE9call_onceB2h_", scope: !400, file: !397, line: 250, type: !264, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4571 = distinct !DISubprogram(name: "cloned<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE6clonedB2X_", scope: !365, file: !363, line: 2157, type: !264, scopeLine: 2157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4572 = distinct !DISubprogram(name: "map<&alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, fn(&alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>) -> alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE3mapBJ_NvYBJ_NtNtB5_5clone5Clone5cloneEB2V_", scope: !365, file: !363, line: 1158, type: !264, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4573 = distinct !DILexicalBlock(scope: !4572, file: !363, line: 1163, column: 13)
!4574 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic10atomic_addjjECsbaWXNhtWAp9_11foundations", scope: !295, file: !293, line: 4029, type: !264, scopeLine: 4029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4575 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !296, file: !293, line: 3222, type: !264, scopeLine: 3222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4576 = distinct !DISubprogram(name: "clone<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB2k_", scope: !490, file: !297, line: 2465, type: !276, scopeLine: 2465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4577 = distinct !DILocation(line: 250, column: 5, scope: !4570, inlinedAt: !4600)
!4578 = distinct !DILocation(line: 2477, column: 44, scope: !4576, inlinedAt: !4577)
!4579 = distinct !DILocation(line: 3224, column: 26, scope: !4575, inlinedAt: !4578)
!4580 = distinct !DILexicalBlock(scope: !4576, file: !297, line: 2477, column: 9)
!4581 = distinct !DISubprogram(name: "drop_glue<core::cell::Ref<alloc::vec::Vec<alloc::sync::Arc<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>, alloc::alloc::Global>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell3RefINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBX_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEB3k_", scope: !268, file: !300, line: 848, type: !276, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4582 = distinct !DILocation(line: 30, column: 56, scope: !4540)
!4583 = distinct !DILocation(line: 848, column: 1, scope: !4581, inlinedAt: !4582)
!4584 = distinct !DILocation(line: 848, column: 1, scope: !205, inlinedAt: !4583)
!4585 = distinct !DILocation(line: 1588, column: 34, scope: !204, inlinedAt: !4584)
!4586 = distinct !DILocation(line: 1590, column: 21, scope: !206, inlinedAt: !4584)
!4587 = distinct !DILocation(line: 516, column: 9, scope: !209, inlinedAt: !4586)
!4588 = !DILocation(line: 30, column: 16, scope: !4540)
!4589 = !DILocation(line: 386, column: 14, scope: !4542, inlinedAt: !4588)
!4590 = !DILexicalBlockFile(scope: !4540, file: !375, discriminator: 2)
!4591 = !DILocation(line: 30, column: 9, scope: !4590)
!4592 = !DILocation(line: 3855, column: 14, scope: !4563, inlinedAt: !4591)
!4593 = !DILocation(line: 30, column: 42, scope: !4540)
!4594 = !DILocation(line: 1865, column: 76, scope: !4562, inlinedAt: !4592)
!4595 = !DILocation(line: 1969, column: 18, scope: !4567, inlinedAt: !4594)
!4596 = !DILocation(line: 296, column: 20, scope: !4568, inlinedAt: !4595)
!4597 = !DILocation(line: 606, column: 14, scope: !4569, inlinedAt: !4596)
!4598 = !DILocation(line: 30, column: 49, scope: !4540)
!4599 = !DILocation(line: 2161, column: 14, scope: !4571, inlinedAt: !4598)
!4600 = !DILocation(line: 1163, column: 29, scope: !4573, inlinedAt: !4599)
!4601 = !DILocation(line: 206, column: 27, scope: !4541, inlinedAt: !4589)
!4602 = !DILocation(line: 558, column: 18, scope: !4543, inlinedAt: !4550)
!4603 = !DILocation(line: 958, column: 5, scope: !4551, inlinedAt: !4553)
!4604 = !DILocation(line: 1563, column: 13, scope: !4552, inlinedAt: !4549)
!4605 = !DILocation(line: 1127, column: 25, scope: !4554, inlinedAt: !4547)
!4606 = !DILocation(line: 2189, column: 13, scope: !4555, inlinedAt: !4556)
!4607 = !DILocation(line: 976, column: 49, scope: !4558, inlinedAt: !4561)
!4608 = !DILocation(line: 1865, column: 86, scope: !4562, inlinedAt: !4592)
!4609 = !DILocation(line: 282, column: 16, scope: !4565, inlinedAt: !4593)
!4610 = !DILocation(line: 611, column: 9, scope: !4566, inlinedAt: !4597)
!4611 = !DILocation(line: 282, column: 21, scope: !4565, inlinedAt: !4593)
!4612 = !DILocation(line: 250, column: 5, scope: !4570, inlinedAt: !4600)
!4613 = !DILocation(line: 4033, column: 24, scope: !4574, inlinedAt: !4579)
!4614 = !DILocation(line: 2494, column: 12, scope: !4580, inlinedAt: !4577)
!4615 = !DILocation(line: 558, column: 18, scope: !203, inlinedAt: !4585)
!4616 = !DILocation(line: 1590, column: 29, scope: !206, inlinedAt: !4584)
!4617 = !DILocation(line: 2495, column: 13, scope: !4580, inlinedAt: !4577)
!4618 = !DILocation(line: 0, scope: !4572, inlinedAt: !4599)
!4619 = !DILocation(line: 976, column: 49, scope: !208, inlinedAt: !4587)
!4620 = !DILocation(line: 31, column: 6, scope: !4540)
!4621 = distinct !DISubprogram(name: "current<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>>", linkageName: "_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB1c_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3W_4SyncEL_EB2S_EE7currentB8_", scope: !507, file: !375, line: 29, type: !264, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4622 = distinct !DISubprogram(name: "get_or<core::cell::RefCell<alloc::vec::Vec<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>>, fn() -> core::cell::RefCell<alloc::vec::Vec<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>>>", linkageName: "_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB1x_5boxed3BoxDINtNtB24_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBW_6marker4SendNtB4y_4SyncEL_EB3u_EEEE6get_orNvYBR_NtNtBW_7default7Default7defaultECsbaWXNhtWAp9_11foundations", scope: !379, file: !378, line: 202, type: !264, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4623 = distinct !DISubprogram(name: "get_or_default<core::cell::RefCell<alloc::vec::Vec<cf_rustracing::tracer::Tracer<alloc::boxed::Box<(dyn cf_rustracing::sampler::Sampler<cf_rustracing_jaeger::span::SpanContextState> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, cf_rustracing_jaeger::span::SpanContextState>, alloc::alloc::Global>>>", linkageName: "_RNvMs7_Cs6AjmZOIP0uL_12thread_localINtB5_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB1w_5boxed3BoxDINtNtB23_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBV_6marker4SendNtB4x_4SyncEL_EB3t_EEEE14get_or_defaultCsbaWXNhtWAp9_11foundations", scope: !379, file: !378, line: 385, type: !264, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!4624 = distinct !DISubprogram(name: "get<isize>", linkageName: "_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelliE3getCsbaWXNhtWAp9_11foundations", scope: !313, file: !311, line: 555, type: !264, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
end_hunk_1
