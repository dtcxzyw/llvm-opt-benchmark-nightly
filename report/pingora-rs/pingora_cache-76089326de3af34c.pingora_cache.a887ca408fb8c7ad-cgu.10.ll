Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.10?download=true
inline.NumInlined: 541
inline.NumDeleted: 259
begin_hunk_0_@_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB16_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_:bb.a
          to label %.thread unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB16_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [976 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !range !334, !noalias !877, !noundef !4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !625

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !877
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !633, !noalias !877, !noundef !4
  %i.k = tail call noundef i64 @_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.j), !noalias !877
  store i64 %i.k, ptr %i.b, align 8, !noalias !877
  invoke fastcc void @_RNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB7_9HttpCache17spawn_async_purge0B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB18_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0B18_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26, !noalias !877
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.e, !noalias !881

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !881
  unreachable

common.resume:                                    ; preds = %bb.m, %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB18_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0B18_.exit: ; preds = %bb.b
  call void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !877
  %i.n = load i8, ptr %i.d, align 8, !range !621, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.n, 2
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.n, %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB18_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0B18_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB18_9HttpCache17spawn_async_purge0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE4poll0B18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !882
  %i.o = load i64, ptr %i.i, align 8, !range !633, !noalias !882, !noundef !4
  %i.p = invoke noundef i64 @_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.o)
          to label %bb.h unwind label %bb.k, !noalias !882

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %i.a, align 8, !noalias !882
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB1A_9HttpCache17spawn_async_purge0EEB1A_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3.i unwind label %bb.i, !noalias !882

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.e, ptr noundef nonnull align 8 dereferenceable(976) %i.c, i64 976, i1 false)
  invoke void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.j, !noalias !882

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.e, ptr noundef nonnull align 8 dereferenceable(976) %i.c, i64 976, i1 false)
  invoke void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.l

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB1A_9HttpCache17spawn_async_purge0EEB1A_(ptr noundef nonnull align 8 dereferenceable(976) %i.c) #23
          to label %.body unwind label %bb.j

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.q, %bb.i ], [ %i.s, %bb.k ] ; 2 uses
  %cond = icmp eq i8 %i.n, 0
  br i1 %cond, label %common.resume, label %bb.m

bb.m:                                             ; preds = %.body
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr nonnull %.val1)
          to label %common.resume unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core11TaskIdGuardECset5b41vfmiv_13pingora_cache.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !882
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
  %i.c = load i64, ptr %i.b, align 8, !range !633, !noundef !4
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
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE4pushCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCset5b41vfmiv_13pingora_cache5trace18tag_span_with_meta(ptr noalias nofree noundef align 8 dereferenceable(232) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
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
  %i.d = load i64, ptr %i.a, align 8, !range !117, !alias.scope !885, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !885
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !888, !alias.scope !885
  %.sroa.0.0.i = select i1 %i.e, i64 0, i64 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = uitofp i64 %.sroa.0.0.i to double
  %i.k = uitofp nneg i32 %i.i to double
  %i.l = fdiv double %i.k, 1.000000e+09
  %2 = select i1 %i.e, double 0.000000e+00, double %i.l
  %3 = fadd double %2, %i.j
  ret double %3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !202, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtCskKLDkoKarTP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !noundef !4  ; 2 uses
  %i.c = icmp ugt i8 %i.b, -128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i8, ptr %i.d, align 4, !noundef !4
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = zext i8 %i.b to i64
  %i.h = sub nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !range !889, !noundef !4
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
  %i.f = load i8, ptr %i.e, align 8, !range !621, !noalias !890, !noundef !4
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, !prof !625

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !488, !noalias !893, !noundef !4 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !893 ; 4 uses
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
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !893
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
  %i.q = load i64, ptr %i.c, align 8, !range !113, !alias.scope !898, !noundef !4
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
  %i.s = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !4, !align !202, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !align !202, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.z = load i64, ptr %i.c, align 8, !range !113, !noundef !4
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
  %i.ab = load i64, ptr %i.c, align 8, !range !113, !alias.scope !901, !noundef !4
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
  %i.f = load i8, ptr %i.e, align 8, !range !621, !noalias !904, !noundef !4
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i, !prof !625

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCset5b41vfmiv_13pingora_cache.exit.thread.i

end_hunk_0
