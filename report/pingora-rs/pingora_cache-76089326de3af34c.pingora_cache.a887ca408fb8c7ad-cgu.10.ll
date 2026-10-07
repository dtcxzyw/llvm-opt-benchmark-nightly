Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.10?download=true
inline.NumInlined: 541
inline.NumDeleted: 259
begin_hunk_0_@_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB16_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB16_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr nonnull %.val1)
          to label %common.resume unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.o:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB16_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(976) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !noundef !6
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB1A_9HttpCache17spawn_async_purge0EEB1A_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.e, ptr noundef nonnull align 8 dereferenceable(976) %1, i64 976, i1 false)
  invoke void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.e, ptr noundef nonnull align 8 dereferenceable(976) %1, i64 976, i1 false)
  call void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c, %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread:                                          ; preds = %bb.c, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB1A_9HttpCache17spawn_async_purge0EEB1A_(ptr noundef nonnull align 8 %1) #23
          to label %.thread unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreE4sendCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE4pushCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCset5b41vfmiv_13pingora_cache5trace18tag_span_with_meta(ptr noalias nofree noundef align 8 dereferenceable(232) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE8set_tagsNCNvNtCset5b41vfmiv_13pingora_cache5trace18tag_span_with_meta0ANtNtB8_3tag3Tagj6_EB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvNvNtCset5b41vfmiv_13pingora_cache5trace18tag_span_with_meta8ts2epoch(i64 noundef %0, i32 noundef range(i32 0, 1000000000) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.d = load i64, ptr %i.a, align 8, !range !13, !alias.scope !887, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !887
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !888, !alias.scope !887
  %.sroa.0.0.i = select i1 %i.e, i64 0, i64 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = uitofp i64 %.sroa.0.0.i to double
  %i.k = uitofp nneg i32 %i.i to double
  %i.l = fdiv double %i.k, 1.000000e+09
  %i.m = select i1 %i.e, double 0.000000e+00, double %i.l
  %i.n = fadd double %i.m, %i.j
  ret double %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !14, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtCskKLDkoKarTP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !noundef !6  ; 2 uses
  %i.c = icmp ugt i8 %i.b, -128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i8, ptr %i.d, align 4, !noundef !6
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = zext i8 %i.b to i64
  %i.h = sub nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !range !889, !noundef !6
  %i.l = tail call noundef zeroext i1 @_RNvXsb_NtCskKLDkoKarTP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1M_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_6future6future6Future4pollCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noalias !900, !noundef !6
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, !prof !20

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !16, !noalias !901, !noundef !6 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !901 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !901
  br label %bb.f

.thread28:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread31

bb.h:                                             ; preds = %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load i64, ptr %i.c, align 8, !range !12, !alias.scope !902, !noundef !6
  %.not.i = icmp eq i64 %i.q, 2
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB16_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit

.thread31:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i33.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !6, !align !14, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !align !14, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.z = load i64, ptr %i.c, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.z, 2
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20: ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.c, align 8, !range !12, !alias.scope !903, !noundef !6
  %.not.i21 = icmp eq i64 %i.ab, 2
  br i1 %.not.i21, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB16_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1w_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_6future6future6Future4pollCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noalias !910, !noundef !6
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, !prof !20

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !16, !noalias !911, !noundef !6 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !911 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !911
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit, label %.thread28

common.resume:                                    ; preds = %.thread
  resume { ptr, i32 } %.pn24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.g
  store i64 1, ptr %0, align 8
  br label %bb.k

.thread28:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !nonnull !6, !align !14, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !align !14, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6
  invoke void %i.w(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.thread28
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.l

bb.i:                                             ; preds = %.thread28
  %i.y = load i64, ptr %i.c, align 8, !range !13, !noundef !6
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20: ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.h, %.thread
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread:                                          ; preds = %bb.h, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.x, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23
          to label %common.resume unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1M_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs6_NtNtCs2awuzAz5vY4_5tokio4task4coopINtB5_4CoopNCINvNtNtB9_4sync5watch12changed_implNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateE0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1t_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 14 uses
  %i.b = alloca [3 x i8], align 4                 ; 8 uses
  %i.c = alloca [2 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noalias !922, !noundef !6
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, !prof !20

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.a
  %i.h = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.d), !noalias !922 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !16, !noalias !923, !noundef !6 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !923 ; 4 uses
  br i1 %i.l, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.p = add i8 %i.n, -1
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.p, %bb.c ], [ %i.n, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i24 0, ptr %i.b, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %.sroa.03.011.i21.off8 = phi i8 [ %i.k, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit ], [ 0, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i ]
  %.sroa.03.011.i21.off16 = phi i8 [ %i.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit ], [ 0, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i ]
  store i8 %.sroa.03.011.i21.off8, ptr %i.c, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i21.off16, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.t = load i8, ptr %i.s, align 1, !range !924, !noalias !925, !noundef !6
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  unreachable

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !925
  br label %bb.p

.thread.i:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.u, align 8, !noalias !925
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !noalias !925
  store <2 x ptr> %i.w, ptr %0, align 8, !noalias !925
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.x, align 8, !noalias !925
  br label %bb.j

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
          to label %.noexc18 unwind label %bb.an

.noexc18:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCset5b41vfmiv_13pingora_cache.exit.thread
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !17, !noalias !926
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %bb.j
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs2awuzAz5vY4_5tokio4task4coopINtB5_4CoopNCINvNtNtB9_4sync5watch12changed_implNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateE0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1t_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !925
  %i.ad = load ptr, ptr %0, align 8, !noalias !925, !nonnull !6, !align !14, !noundef !6
  invoke void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync5watch10big_notifyNtB2_9BigNotify8notified(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.ad)
          to label %bb.ab unwind label %bb.aa

bb.o:                                             ; preds = %bb.am, %bb.q
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %.body36.i, %bb.l, %bb.k
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn23.i, %.body36.i ], [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  store i8 2, ptr %i.s, align 1, !noalias !925
  br label %.body

bb.p:                                             ; preds = %bb.al, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = invoke noundef zeroext i1 @_RNvXsa_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.af) #23
          to label %.body28.i unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  br i1 %i.ag, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !925
  br label %.thread

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXsb_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.af)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 72
  %.val2.i.i = load ptr, ptr %i.aj, align 8, !noalias !925, !align !14, !noundef !6 ; 2 uses
  %i.ak = icmp eq ptr %.val2.i.i, null
  br i1 %i.ak, label %.body28.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr i8, ptr %0, i64 80
  %.val3.i.i = load ptr, ptr %i.al, align 8, !noalias !925
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !6, !noundef !6
  invoke void %i.an(ptr noundef %.val3.i.i)
          to label %.body28.i unwind label %bb.y, !inline_history !1

bb.w:                                             ; preds = %bb.t
  %i.ao = getelementptr i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.ao, align 8, !noalias !925, !align !14, !noundef !6 ; 2 uses
  %i.ap = icmp eq ptr %.val.i.i, null
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECset5b41vfmiv_13pingora_cache.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.aq, align 8, !noalias !925
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  invoke void %i.as(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.z, !inline_history !927

bb.y:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.x, %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.av, align 8, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !925
  br label %bb.n

bb.aa:                                            ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

bb.ab:                                            ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 1, ptr %i.ax, align 8, !noalias !925
  %i.ay = load ptr, ptr %0, align 8, !noalias !925, !nonnull !6, !align !14, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !925, !nonnull !6, !align !14, !noundef !6
  %i.bb = invoke noundef i8 @_RINvNtNtCs2awuzAz5vY4_5tokio4sync5watch13maybe_changedNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateEBU_(ptr noundef nonnull align 8 %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.ad unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

bb.ad:                                            ; preds = %bb.ab
  %.not.i = icmp eq i8 %i.bb, 2
  br i1 %.not.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsb_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.a)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val2.i30.i = load ptr, ptr %i.be, align 8, !noalias !925, !align !14, !noundef !6 ; 2 uses
  %i.bf = icmp eq ptr %.val2.i30.i, null
  br i1 %i.bf, label %.body36.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val3.i31.i = load ptr, ptr %i.bg, align 8, !noalias !925
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2.i30.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  invoke void %i.bi(ptr noundef %.val3.i31.i)
          to label %.body36.i unwind label %bb.aj, !inline_history !1

bb.ah:                                            ; preds = %bb.ae
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i33.i = load ptr, ptr %i.bj, align 8, !noalias !925, !align !14, !noundef !6 ; 2 uses
  %i.bk = icmp eq ptr %.val.i33.i, null
  br i1 %i.bk, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val1.i34.i = load ptr, ptr %i.bl, align 8, !noalias !925
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i33.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !6, !noundef !6
  invoke void %i.bn(ptr noundef %.val1.i34.i)
          to label %bb.ao unwind label %bb.ak, !inline_history !927

bb.aj:                                            ; preds = %bb.ag
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body36.i:                                        ; preds = %bb.am, %.body28.i, %bb.ak, %bb.ag, %bb.af, %bb.aa
  %.pn23.i = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %.pn20.pn.i, %bb.am ], [ %.pn20.pn.i, %.body28.i ], [ %i.bq, %bb.ak ], [ %i.bd, %bb.ag ], [ %i.bd, %bb.af ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bp, align 8, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !925
  br label %.body.i

bb.ak:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

bb.al:                                            ; preds = %bb.ad
  store i8 0, ptr %i.ax, align 8, !noalias !925
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !925
  br label %bb.p

.body28.i:                                        ; preds = %bb.q, %bb.u, %bb.v, %bb.z, %bb.ac
  %.pn20.pn.i = phi { ptr, i32 } [ %i.bc, %bb.ac ], [ %i.ai, %bb.u ], [ %i.ah, %bb.q ], [ %i.au, %bb.z ], [ %i.ai, %bb.v ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load i8, ptr %i.bs, align 8, !range !16, !noalias !925, !noundef !6
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.am, label %.body36.i

bb.am:                                            ; preds = %.body28.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.a) #23
          to label %.body36.i unwind label %bb.o

bb.an:                                            ; preds = %bb.f, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %.pn23.pn.i, %.body.i ]
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit unwind label %bb.ar

.thread:                                          ; preds = %bb.s, %bb.m
  %.sink.i.ph = phi i8 [ 3, %bb.m ], [ 4, %bb.s ]
  store i8 %.sink.i.ph, ptr %i.s, align 1, !noalias !925
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.ax, align 8, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !925
  store i8 1, ptr %i.s, align 1, !noalias !925
  store i8 0, ptr %i.c, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %.thread, %bb.ao
  %.sroa.0.0 = phi i8 [ %i.bb, %bb.ao ], [ 2, %.thread ]
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge, %bb.ap
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ap ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.1

bb.ar:                                            ; preds = %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECset5b41vfmiv_13pingora_cache.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE5closeCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemEENtNtNtB8_6traits8iterator8Iterator9size_hintCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !930
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !930
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !930
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagEj6_NtB4_11PartialDrop12partial_dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtB2_11PartialDrop12partial_dropCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtB2_11PartialDrop12partial_dropCset5b41vfmiv_13pingora_cache.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #23
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtB2_11PartialDrop12partial_dropCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsd_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 range(i64 0, -9223372036854775808) %1, i1 false), !alias.scope !934, !noalias !935
  br label %_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECset5b41vfmiv_13pingora_cache.exit

_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 128 dereferenceable(384) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE3popCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 128 %0)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %switch1.i = icmp ugt i64 %i.c, -3
  br i1 %switch1.i, label %_RNCNvXsd_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB7_4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB9_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0Cset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5block4ReadINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE3popCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 128 %0)
  %i.d = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %switch.i = icmp ugt i64 %i.d, -3
  br i1 %switch.i, label %_RNCNvXsd_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB7_4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB9_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0Cset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i

_RNCNvXsd_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB7_4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB9_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0Cset5b41vfmiv_13pingora_cache.exit: ; preds = %.lr.ph.i, %bb.a
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5block4ReadINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE11free_blocksCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCs2awuzAz5vY4_5tokio7runtime8blocking8schedule16BlockingScheduleNtNtB8_4task8Schedule9yield_nowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs_NtNtNtCs2awuzAz5vY4_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8
end_hunk_1
