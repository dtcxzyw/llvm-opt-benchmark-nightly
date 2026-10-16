Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.04?download=true
inline.NumInlined: 1416
inline.NumDeleted: 767
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc9do_export0EBL_:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.ag, !dbg !4298

bb.af:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4296
  unreachable, !dbg !4296

.body27:                                          ; preds = %bb.ag, %bb.ad, %bb.aq, %.body16
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body16 ], [ %.pn, %bb.aq ], [ %i.bq, %bb.ag ], [ %i.bn, %bb.ad ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 569, !dbg !4294
  store i8 0, ptr %i.bp, align 1, !dbg !4294
  br label %bb.aa, !dbg !4289

bb.ag:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body24:                                          ; preds = %bb.ai, %bb.x, %bb.aa
  %.pn7 = phi { ptr, i32 } [ %.pn5, %bb.aa ], [ %i.bv, %bb.ai ], [ %i.bc, %bb.x ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !4299 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4238), !dbg !4299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4239), !dbg !4300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4240), !dbg !4301
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !4302, !alias.scope !4241, !nonnull !718, !noundef !718
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !dbg !4303, !noalias !4241
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !4304
  br i1 %i.bu, label %bb.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30, !dbg !4304

bb.ah:                                            ; preds = %.body24
  fence acquire, !dbg !4305
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30 unwind label %bb.u, !dbg !4306

bb.ai:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body24

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !4299 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4242), !dbg !4299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4243), !dbg !4307
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4244), !dbg !4308
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !4309, !alias.scope !4245, !nonnull !718, !noundef !718
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !4310, !noalias !4245
  %i.bz = icmp eq i64 %i.by, 1, !dbg !4311
  br i1 %i.bz, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32, !dbg !4311

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4312
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32 unwind label %bb.ak, !dbg !4313

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30: ; preds = %.body24, %bb.ah, %bb.ak
  %.pn9 = phi { ptr, i32 } [ %i.cb, %bb.ak ], [ %.pn7, %bb.ah ], [ %.pn7, %.body24 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !4314
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ca) #38
          to label %.body35 unwind label %bb.u, !dbg !4314

bb.ak:                                            ; preds = %bb.aj
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !4314 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34 unwind label %bb.al, !dbg !4315

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %.body35 unwind label %bb.am, !dbg !4316

bb.am:                                            ; preds = %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4315
  unreachable, !dbg !4315

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38 unwind label %bb.an, !dbg !4317

.body35:                                          ; preds = %bb.an, %bb.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30
  %.pn11 = phi { ptr, i32 } [ %.pn9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30 ], [ %i.cg, %bb.an ], [ %i.cd, %bb.al ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !4318
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cf) #38
          to label %common.resume unwind label %bb.u, !dbg !4318

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !4318 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !4319
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit39 unwind label %bb.ao, !dbg !4319

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ch) #38
          to label %common.resume unwind label %bb.ap, !dbg !4319

bb.ap:                                            ; preds = %bb.ao
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4319
  unreachable, !dbg !4319

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit39: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ch), !dbg !4319
  br label %common.ret, !dbg !4246

bb.aq:                                            ; preds = %.body16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #38
          to label %.body27 unwind label %bb.u, !dbg !4294
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp9do_export0EBL_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4320 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4454
  %i.b = load i8, ptr %i.a, align 8, !dbg !4454, !range !869, !noundef !718
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
    i8 4, label %bb.e
  ], !dbg !4454

common.ret:                                       ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, %bb.a
  ret void, !dbg !4454

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4428), !dbg !4454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429), !dbg !4455
  %i.c = load ptr, ptr %0, align 8, !dbg !4456, !alias.scope !4430, !nonnull !718, !noundef !718
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !4457, !noalias !4430
  %i.e = icmp eq i64 %i.d, 1, !dbg !4458
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, !dbg !4458

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !4459
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.g, !dbg !4460

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4461
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19 unwind label %bb.j, !dbg !4461

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !4462
  %i.h = load i8, ptr %i.g, align 8, !dbg !4462, !range !872, !noundef !718
  %cond.i = icmp eq i8 %i.h, 3, !dbg !4462
  br i1 %cond.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !4462

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4463
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit unwind label %bb.n, !dbg !4463

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4454 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4431), !dbg !4454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4432), !dbg !4464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4433), !dbg !4465
  %i.l = load ptr, ptr %i.k, align 8, !dbg !4466, !alias.scope !4434, !nonnull !718, !noundef !718
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !4467, !noalias !4434
  %i.n = icmp eq i64 %i.m, 1, !dbg !4468
  br i1 %i.n, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !4468

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !4469
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4470

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4454 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4435), !dbg !4454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4436), !dbg !4471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4437), !dbg !4472
  %i.p = load ptr, ptr %i.o, align 8, !dbg !4473, !alias.scope !4438, !nonnull !718, !noundef !718
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !4474, !noalias !4438
  %i.r = icmp eq i64 %i.q, 1, !dbg !4475
  br i1 %i.r, label %bb.i, label %common.ret, !dbg !4475

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4476
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #37, !dbg !4477
  br label %common.ret, !dbg !4477

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %bb.n, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4454
  unreachable, !dbg !4454

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21, %bb.t, %bb.g, %bb.h
  %.pn8 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %.pn6, %bb.t ], [ %.pn6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21 ]
  resume { ptr, i32 } %.pn8, !dbg !4454

bb.j:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, !dbg !4478

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4479 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.l unwind label %bb.k, !dbg !4480

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.m, !dbg !4481

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.r, !dbg !4482

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4480
  unreachable, !dbg !4480

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %bb.p, %bb.j
  %.pn2 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.ad, %bb.p ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4479
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #38
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4479

bb.n:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !4483
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4484

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !4483
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16 unwind label %bb.o, !dbg !4485

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.x, %bb.n ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4486
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4487

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4486
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19 unwind label %bb.p, !dbg !4488

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit

.body:                                            ; preds = %bb.r, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit ], [ %i.ai, %bb.r ], [ %i.u, %bb.k ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4489 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4440), !dbg !4489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4441), !dbg !4490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4442), !dbg !4491
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !4492, !alias.scope !4443, !nonnull !718, !noundef !718
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !dbg !4493, !noalias !4443
  %i.ah = icmp eq i64 %i.ag, 1, !dbg !4494
  br i1 %i.ah, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21, !dbg !4494

bb.q:                                             ; preds = %.body
  fence acquire, !dbg !4495
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4496

bb.r:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4489 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4444), !dbg !4489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4445), !dbg !4497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4446), !dbg !4498
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !4499, !alias.scope !4447, !nonnull !718, !noundef !718
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !4500, !noalias !4447
  %i.am = icmp eq i64 %i.al, 1, !dbg !4501
  br i1 %i.am, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23, !dbg !4501

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4502
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23 unwind label %bb.u, !dbg !4503

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21: ; preds = %.body, %bb.q, %bb.u
  %.pn6 = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %.pn4, %bb.q ], [ %.pn4, %.body ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4448), !dbg !4504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4449), !dbg !4505
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !4506, !alias.scope !4450, !nonnull !718, !noundef !718
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !dbg !4507, !noalias !4450
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !4508
  br i1 %i.aq, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !4508

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21
  fence acquire, !dbg !4509
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4510

bb.u:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4451), !dbg !4504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4452), !dbg !4511
  %i.at = load ptr, ptr %i.as, align 8, !dbg !4512, !alias.scope !4453, !nonnull !718, !noundef !718
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !4513, !noalias !4453
  %i.av = icmp eq i64 %i.au, 1, !dbg !4514
  br i1 %i.av, label %bb.v, label %common.ret, !dbg !4514

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23
  fence acquire, !dbg !4515
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #37, !dbg !4516
  br label %common.ret, !dbg !4516
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !315 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !4521

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.c, !dbg !4522

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4521
  unreachable, !dbg !4521

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4521

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4523
  ret void, !dbg !4524
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !78 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !4528

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !4529

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4528
  unreachable, !dbg !4528

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4528

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4530
  ret void, !dbg !4531
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4532 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp9do_export0B9_:bb.a

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_error(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noundef nonnull %i.nk)
          to label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.du, !dbg !12157, !noalias !11825

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.dw
  %.pr.i.i = load i64, ptr %i.n, align 8, !dbg !12158, !alias.scope !11901, !noalias !11819 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11902), !dbg !12000
  %.not.i34.i.i = icmp eq i64 %.pr.i.i, -1, !dbg !12158
  br i1 %.not.i34.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %bb.eb, !dbg !12159

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.i.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12154, !noalias !11819
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !12155 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %bb.dy unwind label %bb.dx, !dbg !12160, !noalias !11825

bb.dx:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.thread.i.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %.body36.i.i unwind label %bb.dz, !dbg !12161, !noalias !11825

bb.dy:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.thread.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %.thread unwind label %bb.ea, !dbg !12162, !noalias !11825

.thread:                                          ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12005, !noalias !11819
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !12007
  store i8 0, ptr %i.nu, align 8, !dbg !12007, !noalias !11819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, i64 16, i1 false), !dbg !12163, !noalias !11903
  store i8 1, ptr %i.nh, align 1, !dbg !12152, !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671.i.i), !dbg !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12152, !noalias !11812
  br label %bb.eh, !dbg !11950

bb.dz:                                            ; preds = %bb.dx
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12160, !noalias !11825
  unreachable, !dbg !12160

bb.ea:                                            ; preds = %bb.ed, %bb.dy
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i

bb.eb:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.1052.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !12164
  %.sroa.1052.0.copyload54.i.i = load i64, ptr %.sroa.1052.0..sroa_idx53.i.i, align 8, !dbg !12164, !alias.scope !11904, !noalias !11819
  %.sroa.11.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !12164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx55.i.i, i64 16, i1 false), !dbg !12164, !noalias !11819
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx55.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !12164
  %.sroa.11.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx55.sroa_idx.i.i, align 8, !dbg !12164, !alias.scope !11904, !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12154, !noalias !11819
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !12155 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %bb.ed unwind label %bb.ec, !dbg !12165, !noalias !11825

bb.ec:                                            ; preds = %bb.eb
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %.body36.i.i unwind label %bb.ee, !dbg !12166, !noalias !11825

bb.ed:                                            ; preds = %bb.eb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %bb.eg unwind label %bb.ea, !dbg !12167, !noalias !11825

bb.ee:                                            ; preds = %bb.ec
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12165, !noalias !11825
  unreachable, !dbg !12165

.body31.i.i:                                      ; preds = %bb.dr, %.body31.i.i.i
  %i.oa = phi ptr [ %i.ec, %.body31.i.i.i ], [ %i.av, %bb.dr ]
  %i.ob = phi ptr [ %i.ed, %.body31.i.i.i ], [ %.phi.trans.insert.i, %bb.dr ]
  %i.oc = phi ptr [ %i.ee, %.body31.i.i.i ], [ %i.bf, %bb.dr ] ; 2 uses
  %.pn10.i.i = phi { ptr, i32 } [ %.pn16.pn.i.i.i, %.body31.i.i.i ], [ %i.nf, %bb.dr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCs3zuhHmEJ01l_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.oc) #38
          to label %bb.dt unwind label %bb.ag, !dbg !12153, !noalias !11825

bb.ef:                                            ; preds = %bb.aj, %bb.ai
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12168

bb.eg:                                            ; preds = %bb.ed, %bb.af
  %i.oe = phi ptr [ %i.ng, %bb.ed ], [ %i.bg, %bb.af ] ; 2 uses
  %i.of = phi ptr [ %i.nh, %bb.ed ], [ %i.bk, %bb.af ]
  %i.og = phi ptr [ %i.ni, %bb.ed ], [ %i.bl, %bb.af ]
  %.sroa.772.1.i.i = phi i64 [ %.sroa.11.sroa.8.0.copyload.i.i, %bb.ed ], [ %.sroa.1048.0.i.i, %bb.af ]
  %.sroa.4.1.i.i = phi i64 [ %.sroa.1052.0.copyload54.i.i, %bb.ed ], [ %.sroa.7.sroa.0.0.i.i, %bb.af ]
  %.sroa.070.1.i.i = phi i64 [ %.pr.i.i, %bb.ed ], [ %.sroa.047.0.i.i, %bb.af ], !dbg !12169 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12005, !noalias !11819
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !12007
  store i8 0, ptr %i.oh, align 8, !dbg !12007, !noalias !11819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, i64 16, i1 false), !dbg !12163, !noalias !11903
  store i8 1, ptr %i.of, align 1, !dbg !12152, !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671.i.i), !dbg !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12152, !noalias !11812
  %i.oi = icmp eq i64 %.sroa.070.1.i.i, -2, !dbg !11950
  br i1 %i.oi, label %bb.ek, label %bb.eh, !dbg !11950

bb.eh:                                            ; preds = %.thread, %bb.eg
  %i.oj = phi ptr [ %i.ng, %.thread ], [ %i.oe, %bb.eg ] ; 2 uses
  %.sroa.070.1.i.i89 = phi i64 [ -1, %.thread ], [ %.sroa.070.1.i.i, %bb.eg ] ; 2 uses
  %.sroa.4.1.i.i88 = phi i64 [ undef, %.thread ], [ %.sroa.4.1.i.i, %bb.eg ]
  %.sroa.772.1.i.i87 = phi i64 [ undef, %.thread ], [ %.sroa.772.1.i.i, %bb.eg ]
  %i.ok = phi ptr [ %i.ni, %.thread ], [ %i.og, %bb.eg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.ok)
          to label %bb.el unwind label %bb.ei, !dbg !12170, !noalias !11840

bb.ei:                                            ; preds = %bb.eh
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.i:                                          ; preds = %bb.ef, %bb.ah
  %i.om = phi ptr [ %i.cp, %bb.ah ], [ %i.av, %bb.ef ]
  %i.on = phi ptr [ %i.cr, %bb.ah ], [ %i.bf, %bb.ef ]
  %.pn2.i = phi { ptr, i32 } [ %.pn17.pn.pn.i.i, %bb.ah ], [ %i.od, %bb.ef ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.on) #38
          to label %.body.thread unwind label %bb.ej, !dbg !12170, !noalias !11840

bb.ej:                                            ; preds = %.body.i
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !11945, !noalias !11840
  unreachable, !dbg !11945

.body:                                            ; preds = %bb.k, %bb.j
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.av, align 8, !dbg !11953
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11952
  %cond.i = icmp eq i8 %.pr, 3, !dbg !11953
  br i1 %cond.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !11953

common.ret:                                       ; preds = %bb.fr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54, %bb.fe, %bb.ek
  %.sink = phi i8 [ 3, %bb.fe ], [ 4, %bb.ek ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 ], [ 1, %bb.fr ]
  %common.ret.op = phi i1 [ true, %bb.fe ], [ true, %bb.ek ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 ], [ false, %bb.fr ]
  store i8 %.sink, ptr %i.x, align 8, !dbg !12171
  ret i1 %common.ret.op, !dbg !12171

bb.ek:                                            ; preds = %bb.eg, %.thread.i
  %i.oq = phi ptr [ %i.oe, %bb.eg ], [ %i.ng, %.thread.i ]
  store i8 3, ptr %i.oq, align 8, !dbg !12172, !noalias !11812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11952
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !11946
  br label %common.ret, !dbg !11946

bb.el:                                            ; preds = %bb.eh
  store i8 1, ptr %i.oj, align 8, !dbg !12172, !noalias !11812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, i64 16, i1 false), !dbg !12173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11952
  %.not22 = icmp eq i64 %.sroa.070.1.i.i89, -1, !dbg !12174
  br i1 %.not22, label %bb.es, label %bb.em, !dbg !12175

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12176
  store i64 %.sroa.070.1.i.i89, ptr %i.v, align 8, !dbg !12176
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12176
  store i64 %.sroa.4.1.i.i88, ptr %.sroa.3.0..sroa_idx7, align 8, !dbg !12176
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !12176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, i64 16, i1 false), !dbg !12176
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !12176
  store i64 %.sroa.772.1.i.i87, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx, align 8, !dbg !12176
  %i.or = invoke noundef zeroext i1 @_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging16is_msgsize_error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %bb.eo unwind label %bb.en, !dbg !12177

bb.en:                                            ; preds = %bb.em
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa, !dbg !12178

bb.eo:                                            ; preds = %bb.em
  br i1 %i.or, label %bb.eq, label %bb.ep, !dbg !12177

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !dbg !12179
  invoke void @_RINvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal14reporter_errorNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.er unwind label %bb.et, !dbg !12180

bb.eq:                                            ; preds = %bb.eo
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12181 ; 2 uses
  invoke void @_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.ot)
          to label %bb.ev unwind label %bb.eu, !dbg !12182

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12184
  br label %bb.es, !dbg !12185

bb.es:                                            ; preds = %bb.el, %bb.er
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12186
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ou)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp105, !dbg !12187

bb.et:                                            ; preds = %bb.ep
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12183
  br label %bb.ew, !dbg !12184

bb.eu:                                            ; preds = %bb.eq
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa, !dbg !12178

bb.ev:                                            ; preds = %bb.eq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
          to label %bb.ey unwind label %bb.ex, !dbg !12184

bb.ew:                                            ; preds = %bb.et, %bb.fa, %bb.ex
  %.pn25 = phi { ptr, i32 } [ %i.ox, %bb.ex ], [ %.pn23.ph, %bb.fa ], [ %i.ov, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12184
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !12184

bb.ex:                                            ; preds = %bb.ev
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12184
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ot)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46 unwind label %.loopexit.split-lp105, !dbg !12188

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, %.loopexit.split-lp105
  %.pn28 = phi { ptr, i32 } [ %lpad.loopexit.split-lp107, %.loopexit.split-lp105 ], [ %.pn25.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12189
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12190
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.oy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12191

.loopexit.split-lp105:                            ; preds = %bb.ey, %bb.es
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46: ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12189
  br label %bb.ez, !dbg !12192

bb.ez:                                            ; preds = %bb.fu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12193 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11908), !dbg !12193
  %i.pa = load ptr, ptr %i.oz, align 8, !dbg !12194, !alias.scope !11908, !nonnull !718, !noundef !718 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12195
  %i.pc = load ptr, ptr %i.pb, align 8, !dbg !12195, !alias.scope !11908, !nonnull !718, !noundef !718
  %i.pd = icmp eq ptr %i.pa, %i.pc, !dbg !12196
  br i1 %i.pd, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit, !dbg !12197

bb.fa:                                            ; preds = %bb.eu, %bb.en
  %.pn23.ph = phi { ptr, i32 } [ %i.os, %bb.en ], [ %i.ow, %bb.eu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #38
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12184

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, %bb.fp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59, %bb.h, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.fd, %bb.fa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !11920
  unreachable, !dbg !11920

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12189
  br label %bb.ez, !dbg !12198

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ez
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 224, !dbg !12199
  store ptr %i.pe, ptr %i.oz, align 8, !dbg !12200, !alias.scope !11908
  %.sroa.063.0.copyload64 = load i64, ptr %i.pa, align 8, !dbg !12201, !noalias !11908 ; 2 uses
  %.not17 = icmp eq i64 %.sroa.063.0.copyload64, -1, !dbg !12193
  br i1 %.not17, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %.thread119, !dbg !12193

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.ez, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.oz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49 unwind label %bb.fb, !dbg !12202

bb.fb:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, %_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE13with_capacityCsbaWXNhtWAp9_11foundations.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12203
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12204
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12205
  %i.pj = load i64, ptr %i.pi, align 8, !dbg !12205, !noundef !718
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12203
  store ptr %i.pg, ptr %i.pk, align 8, !dbg !12203
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12203
  store ptr %i.ph, ptr %.sroa.862.0..sroa_idx, align 8, !dbg !12203
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !12203
  store i64 %i.pj, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !12203
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !12203
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !12203
  br label %bb.fc, !dbg !12206

bb.fc:                                            ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12206 ; 4 uses
  %i.pm = invoke fastcc { i64, i64 } @_RNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtB6_18SharedSpanReceiver9recv_many0Bc_(ptr noundef nonnull align 8 %i.pl, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.fe unwind label %bb.fd, !dbg !12206 ; 2 uses

bb.fd:                                            ; preds = %bb.fc
  %i.pn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.pl) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12207

bb.fe:                                            ; preds = %bb.fc
  %i.po = extractvalue { i64, i64 } %i.pm, 0, !dbg !12206
  %i.pp = extractvalue { i64, i64 } %i.pm, 1, !dbg !12206
  %i.pq = trunc nuw i64 %i.po to i1, !dbg !12206
  br i1 %i.pq, label %common.ret, label %bb.ff, !dbg !12206

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.pl)
          to label %bb.fh unwind label %bb.fg, !dbg !12207

bb.fg:                                            ; preds = %bb.ff
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit

bb.fh:                                            ; preds = %bb.ff
  %.not = icmp eq i64 %i.pp, 0, !dbg !12203
  br i1 %.not, label %bb.fi, label %bb.fm, !dbg !12203

bb.fi:                                            ; preds = %bb.fh
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12208 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %bb.fk unwind label %bb.fj, !dbg !12209

bb.fj:                                            ; preds = %bb.fi
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %.body51 unwind label %bb.fl, !dbg !12210

bb.fk:                                            ; preds = %bb.fi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.fn, !dbg !12211

bb.fl:                                            ; preds = %bb.fj
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12209
  unreachable, !dbg !12209

bb.fm:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12212
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12212
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %bb.fu unwind label %bb.ft, !dbg !12213

bb.fn:                                            ; preds = %bb.fk
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.fk
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11936 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11909), !dbg !11936
  call void @llvm.experimental.noalias.scope.decl(metadata !11910), !dbg !12214
  call void @llvm.experimental.noalias.scope.decl(metadata !11911), !dbg !12215
  %i.py = load ptr, ptr %i.px, align 8, !dbg !12216, !alias.scope !11912, !nonnull !718, !noundef !718
  %i.pz = atomicrmw sub ptr %i.py, i64 1 release, align 8, !dbg !12217, !noalias !11912
  %i.qa = icmp eq i64 %i.pz, 1, !dbg !12218
  br i1 %i.qa, label %bb.fo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54, !dbg !12218

bb.fo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !12219
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.px) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 unwind label %bb.fq, !dbg !12220

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit: ; preds = %.body51, %bb.e, %bb.fq
  %.pn28.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qf, %bb.fq ], [ %.pn28.pn.pn.pn.pn, %bb.e ], [ %.pn28.pn.pn.pn.pn, %.body51 ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12221 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11913), !dbg !12221
  call void @llvm.experimental.noalias.scope.decl(metadata !11914), !dbg !12222
  %i.qc = load ptr, ptr %i.qb, align 8, !dbg !12223, !alias.scope !11915, !nonnull !718, !noundef !718
  %i.qd = atomicrmw sub ptr %i.qc, i64 1 release, align 8, !dbg !12224, !noalias !11915
  %i.qe = icmp eq i64 %i.qd, 1, !dbg !12225
  br i1 %i.qe, label %bb.fp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, !dbg !12225

bb.fp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit
  fence acquire, !dbg !12226
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qb) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12227

bb.fq:                                            ; preds = %bb.fo
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.fo
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12221 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11916), !dbg !12221
  call void @llvm.experimental.noalias.scope.decl(metadata !11917), !dbg !12228
  %i.qh = load ptr, ptr %i.qg, align 8, !dbg !12229, !alias.scope !11918, !nonnull !718, !noundef !718
  %i.qi = atomicrmw sub ptr %i.qh, i64 1 release, align 8, !dbg !12230, !noalias !11918
  %i.qj = icmp eq i64 %i.qi, 1, !dbg !12231
  br i1 %i.qj, label %bb.fr, label %common.ret, !dbg !12231

bb.fr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54
  fence acquire, !dbg !12232
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qg) #37
          to label %common.ret unwind label %bb.fs, !dbg !12233

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, %bb.fp, %bb.fs
  %.pn28.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qk, %bb.fs ], [ %.pn28.pn.pn.pn.pn.pn, %bb.fp ], [ %.pn28.pn.pn.pn.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit ]
  store i8 2, ptr %i.x, align 8, !dbg !11920
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn.pn.pn, !dbg !11920

bb.fs:                                            ; preds = %bb.fr
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit

bb.ft:                                            ; preds = %bb.fm
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12234
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, !dbg !12235

bb.fu:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pl, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.w, i64 40, i1 false), !dbg !12236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12234
  br label %bb.ez, !dbg !12198

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.fb, %bb.ft, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59, %bb.fd, %bb.fg
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %i.pn, %bb.fd ], [ %i.pr, %bb.fg ], [ %i.ql, %bb.ft ], [ %i.pf, %bb.fb ], [ %.pn28, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59 ]
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qm) #38
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12208

.thread119:                                       ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit
  %.sroa.1165.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.pa, i64 8, !dbg !12201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868), !dbg !12237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.1165.0..sroa_idx66, i64 216, i1 false), !dbg !12237
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12238 ; 2 uses
  store i64 %.sroa.063.0.copyload64, ptr %i.qn, align 8, !dbg !12238
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !12238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868, i64 216, i1 false), !dbg !12238
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12174
  %.val = load ptr, ptr %i.qo, align 8, !dbg !12174, !nonnull !718, !noundef !718
  %i.qp = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12239
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12174
  store ptr %i.qp, ptr %i.qq, align 8, !dbg !12174
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12174
  store ptr %i.qn, ptr %.sroa.976.0..sroa_idx, align 8, !dbg !12174
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !12174
  store i64 1, ptr %.sroa.1077.0..sroa_idx, align 8, !dbg !12174
  %.sroa.1279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !12174
  store i8 0, ptr %.sroa.1279.0..sroa_idx, align 8, !dbg !12174
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.982), !dbg !11946
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !11945
  br label %.thread23.i, !dbg !11945
end_hunk_1
