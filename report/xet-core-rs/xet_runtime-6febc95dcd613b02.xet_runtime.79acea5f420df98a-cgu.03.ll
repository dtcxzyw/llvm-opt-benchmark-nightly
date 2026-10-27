Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.03?download=true
inline.NumInlined: 396
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockbE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsarFSTFZzLuM_11xet_runtime:bb.a
  %i.e = load ptr, ptr %i.b, align 8, !noalias !657, !nonnull !5, !noundef !5
  %i.f = tail call noundef zeroext i1 %i.e(), !noalias !657, !inline_history !654
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.b, align 8, !noalias !657
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE13worker_threadCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 -1, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.g, align 8
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  call void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB1c_6WorkerNtNtB1e_7rolling19RollingFileAppenderE13worker_thread0uECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !662, !noundef !5
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.g, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !663
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !662, !nonnull !5, !noundef !5
  store ptr %i.k, ptr %i.a, align 8, !noalias !663
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 61, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
          to label %bb.e unwind label %bb.d, !noalias !663

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.thread unwind label %bb.f, !noalias !663

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !663
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body.thread:                                     ; preds = %bb.d, %bb.h
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body6

bb.h:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5ZfSctYBbRf_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(176) %1) #28
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE4workCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 17 uses
  %i.b = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @_RNvMsa_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgE4recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.d = load i64, ptr %i.b, align 8, !range !13, !noundef !5
  switch i64 %i.d, label %bb.c [
    i64 -2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit16
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit16

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !676, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !676, !noundef !5
  %i.i = invoke noundef ptr @_RNvYNtNtCs5ZfSctYBbRf_16tracing_appender7rolling19RollingFileAppenderNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.h, label %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE11handle_recvCsarFSTFZzLuM_11xet_runtime.exit

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %common.resume unwind label %bb.z

_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE11handle_recvCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store i8 1, ptr %0, align 8
  %i.l = load i64, ptr %i.b, align 8, !range !13, !alias.scope !677, !noundef !5
  %switch.i = icmp ugt i64 %i.l, -3
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE11handle_recvCsarFSTFZzLuM_11xet_runtime.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.r, %bb.x, %bb.t, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.x ], [ %i.m, %bb.f ], [ %i.o, %bb.j ], [ %i.ad, %bb.t ], [ %i.aa, %bb.r ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE11handle_recvCsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.h:                                             ; preds = %.noexc
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !678
  %switch.i13 = icmp ugt i64 %.pr, -3
  br i1 %switch.i13, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i15 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i15: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit16: ; preds = %bb.b, %bb.a
  %.sroa.5.0.ph37 = phi i8 [ 1, %bb.a ], [ 3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i15, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.l

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit16
  %.sroa.06.0.lcssa = phi i8 [ %.sroa.5.0.ph37, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit16 ], [ %.sroa.529.0.ph48.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26.thread ]
  %i.s = call noundef ptr @_RNvXs_NtCs5ZfSctYBbRf_16tracing_appender7rollingNtB4_19RollingFileAppenderNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.p, label %bb.o

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgE8try_recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noundef !5
  switch i64 %i.t, label %bb.n [
    i64 -2, label %bb.m
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26.thread
  ]

bb.m:                                             ; preds = %bb.l
  %i.u = load i8, ptr %i.q, align 8, !range !9, !alias.scope !679, !noundef !5
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26.thread

bb.n:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.q, align 8, !alias.scope !679, !nonnull !5, !noundef !5
  %i.w = load i64, ptr %i.r, align 8, !alias.scope !679, !noundef !5
  %i.x = invoke noundef ptr @_RNvYNtNtCs5ZfSctYBbRf_16tracing_appender7rolling19RollingFileAppenderNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %.noexc19 unwind label %bb.r   ; 2 uses

.noexc19:                                         ; preds = %bb.n
  %.not.i18 = icmp eq ptr %i.x, null
  br i1 %.not.i18, label %bb.v, label %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE15handle_try_recvCsarFSTFZzLuM_11xet_runtime.exit

bb.o:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.y, align 8
  br label %.sink.split

bb.p:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.06.0.lcssa, ptr %i.z, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.p
  %.sink = phi i8 [ 0, %bb.p ], [ 1, %bb.o ]
  store i8 %.sink, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err9RecvErrorEECsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit
  ret void

bb.r:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %common.resume unwind label %bb.z

_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE15handle_try_recvCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.noexc19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ab, align 8
  store i8 1, ptr %0, align 8
  %i.ac = load i64, ptr %i.a, align 8, !range !13, !alias.scope !680, !noundef !5
  %switch.i20 = icmp ugt i64 %i.ac, -3
  br i1 %switch.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.s

bb.s:                                             ; preds = %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE15handle_try_recvCsarFSTFZzLuM_11xet_runtime.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i22 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i22: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE15handle_try_recvCsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.v:                                             ; preds = %.noexc19
  %.pr42.pr = load i64, ptr %i.a, align 8, !alias.scope !681
  %switch.i23 = icmp ugt i64 %.pr42.pr, -3
  br i1 %switch.i23, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i25 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i25: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26.thread: ; preds = %bb.l, %bb.m
  %.sroa.529.0.ph48.ph = phi i8 [ %i.u, %bb.m ], [ 3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %._crit_edge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs5ZfSctYBbRf_16tracing_appender3MsgNtNtCsjfHCj4Qo55Q_17crossbeam_channel3err12TryRecvErrorEECsarFSTFZzLuM_11xet_runtime.exit26: ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.z:                                             ; preds = %bb.r, %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_contextNtB2_26PrivilegedExecutionContext7current() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11IS_ELEVATED, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11is_elevated.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11IS_ELEVATED, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11IS_ELEVATED, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11is_elevated.exit

_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11is_elevated.exit: ; preds = %bb.a, %bb.b
  %i.e = load i8, ptr @_RNvNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17privilege_context11IS_ELEVATED, align 8, !range !9, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17safe_file_creatorNtB2_15SafeFileCreator5abort(ptr noalias nofree noundef align 8 dereferenceable(256) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.c, align 8
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCsG258MDvU3F_3std2fs8metadataRNtNtB4_4path4PathECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.j = load i64, ptr %i.b, align 8, !range !16, !noundef !5
  %.not8 = icmp eq i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10 = load ptr, ptr %i.k, align 8           ; 4 uses
  br i1 %.not8, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !686
  %i.l = ptrtoint ptr %.val10 to i64              ; 2 uses
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread
    i64 1, label %bb.f
  ], !prof !11

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult ptr %.val10, inttoptr (i64 188978561024 to ptr)
  %i.o = and i64 %i.l, 1095216660480
  %i.p = icmp ne i64 %i.o, 1095216660480
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.assume(i1 %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.val10, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !687, !noalias !686
  store i8 3, ptr %i.a, align 8, !alias.scope !687, !noalias !686
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !686
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = tail call noundef ptr @_RINvNtCsG258MDvU3F_3std2fs11remove_fileRNtNtB4_4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread, %bb.g, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.t, %bb.g ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17safe_file_creatorNtB2_15SafeFileCreator5close(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(256) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %i.c = alloca [176 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsarFSTFZzLuM_11xet_runtime10file_utils17safe_file_creatorNtB2_15SafeFileCreator5close:bb.a
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread
    i64 1, label %bb.m
  ], !prof !11

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.w = icmp ult ptr %.val59, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.val59, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !693, !noalias !692
  store i8 3, ptr %i.a, align 8, !alias.scope !693, !noalias !692
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.m, %bb.k, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtCsG258MDvU3F_3std2fs8metadataRNtNtB4_4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.ab = load i64, ptr %i.c, align 8, !range !16, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %.sroa.932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.932.0.copyload = load i32, ptr %.sroa.932.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = call noundef ptr @_RINvNtCsG258MDvU3F_3std2fs15set_permissionsRNtNtB4_4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, i32 noundef %.sroa.932.0.copyload) ; 2 uses
  %.not58 = icmp eq ptr %i.af, null
  br i1 %.not58, label %bb.o, label %bb.s

bb.r:                                             ; preds = %bb.b, %bb.s, %bb.o, %bb.c
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.s ], [ null, %bb.o ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.i, %bb.g, %bb.f
  %.sroa.0.2 = phi ptr [ %i.j, %bb.f ], [ %i.n, %bb.i ], [ %i.l, %bb.g ], [ %i.ae, %bb.p ], [ %i.af, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.t:                                             ; preds = %bb.u
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.u:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #28
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE22observed_tail_positionCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime(i64 noundef %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noundef align 8 dereferenceable_or_null(1056) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1056, i64 noundef 8) #20 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  store i64 %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1056) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE4growCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.c = tail call noundef align 8 dereferenceable_or_null(1056) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1056, i64 noundef 8) #20 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1056) #27
  unreachable

_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 1024
  %i.k = load i64, ptr %i.j, align 8, !noalias !696, !noundef !5
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 8, !noalias !696
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 1032
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !696 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 1024
  %i.q = load i64, ptr %i.p, align 8, !noalias !696, !noundef !5
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 8, !noalias !696
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 1032
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !696 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE3newCsarFSTFZzLuM_11xet_runtime.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE4readCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not3 = icmp eq i64 %i.f, 0
  %. = select i1 %.not3, i64 2, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %., %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE5writeCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtBY_2io5error5ErrorEE8try_pushCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1024
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.g = tail call fastcc ptr @_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5block5BlockINtNtB6_6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB6_2io5error5ErrorEEECsarFSTFZzLuM_11xet_runtime(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #30
  ret ptr %i.g
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE16get_or_init_slowB2R_(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB19_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEEB2L_)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE16get_or_init_slowCsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextECsarFSTFZzLuM_11xet_runtime)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs2_Cs2KMS13e2TGE_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEE6insertCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsarFSTFZzLuM_11xet_runtime(i64 noundef 0, i64 noundef %i.h)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = cmpxchg ptr %i.d, ptr null, ptr %i.j acq_rel acquire, align 8 ; 2 uses
  %i.l = extractvalue { ptr, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, i1 } %i.k, 0
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtCs2KMS13e2TGE_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEECsarFSTFZzLuM_11xet_runtime(ptr nonnull %i.j, i64 %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0, i64 %i.o ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store atomic i8 1, ptr %i.q release, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.s = atomicrmw add ptr %i.r, i64 1 release, align 8 ; 0 uses
  ret ptr %i.p

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #28
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEE3newCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEENCNvMsd_BP_BM_3new0ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2x_5field9SpanMatchEEE3newCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2H_5field9SpanMatchEEENCNvMsd_BP_BM_3new0ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2K_5field13CallsiteMatchEEE3newCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2U_5field13CallsiteMatchEEENCNvMsd_BP_BM_3new0ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
