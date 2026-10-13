Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_async_client.unbuffered_async_client.8bc8a3765dce2620-cgu.00?download=true
inline.NumInlined: 454
inline.NumDeleted: 236
begin_hunk_0_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtB8_9scheduler14current_threadNtB27_13CurrentThread8block_onINtNtB1k_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEE00EEB42_:bb.a
bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %1)
          to label %bb.d unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val9 = load ptr, ptr %i.e, align 8, !nonnull !8, !align !12, !noundef !8
  %.val10 = load ptr, ptr %i.j, align 8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  call void %i.ai(ptr noundef %.val10), !inline_history !1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtB8_9scheduler14current_threadNtB27_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00EEB3c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { ptr, ptr } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.m, align 8
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  %i.q = load i8, ptr %i.o, align 8, !range !7, !noundef !8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, !prof !9

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.d
  %i.s = invoke noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskruEhpekJ3V_5tokio7runtime7context7ContextE16get_or_init_slowCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.n)
          to label %.noexc14 unwind label %bb.i   ; 2 uses

.noexc14:                                         ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i: ; preds = %.noexc14, %bb.d
  %.sroa.0.0.i.i2.i = phi ptr [ %i.s, %.noexc14 ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !10, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  store i8 1, ptr %i.u, align 1
  store i8 -128, ptr %i.w, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, %.noexc14
  %.sroa.3.0.i = phi i8 [ %i.x, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i ], [ undef, %.noexc14 ]
  %.sroa.0.0.i = phi i8 [ %i.v, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i ], [ 2, %.noexc14 ]
  store i8 %.sroa.0.0.i, ptr %i.a, align 1, !noalias !60
  store i8 %.sroa.3.0.i, ptr %i.p, align 1, !noalias !60
  invoke void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00ENtNtB7_6future6Future4pollB2y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RNCINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00EE0B3e_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i8, ptr %i.a, align 1, !range !7, !alias.scope !61, !noalias !62, !noundef !8
  %.not.i = icmp eq i8 %i.z, 2
  br i1 %.not.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXNvNtNtCskruEhpekJ3V_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %.body unwind label %bb.h

_RNCINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00EE0B3e_.exit: ; preds = %.noexc
  %i.aa = load i8, ptr %i.a, align 1, !range !7, !alias.scope !63, !noundef !8
  %.not.i17 = icmp eq i8 %i.aa, 2
  br i1 %.not.i17, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00EE0B3e_.exit
  invoke void @_RNvXNvNtNtCskruEhpekJ3V_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !62
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.y, %bb.e ], [ %i.y, %bb.f ]
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !align !12, !noundef !8
  %.val8 = load ptr, ptr %i.j, align 8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !noundef !8
  invoke void %i.ae(ptr noundef %.val8)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.n, !inline_history !0

bb.j:                                             ; preds = %bb.g, %_RNCINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsj6eKBz9Db1c_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0E00EE0B3e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  %i.af = load i64, ptr %i.b, align 8, !range !13, !noundef !8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %1)
          to label %bb.d unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val9 = load ptr, ptr %i.e, align 8, !nonnull !8, !align !12, !noundef !8
  %.val10 = load ptr, ptr %i.j, align 8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  call void %i.ai(ptr noundef %.val10), !inline_history !1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1400) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.517.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.915.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.958.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.955.i.i.i.i = alloca [16 x i8], align 8  ; 11 uses
  %i.k = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 15 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [48 x i8], align 8               ; 15 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [56 x i8], align 8               ; 7 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [64 x i8], align 8               ; 23 uses
  %.sroa.6258.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.ap = alloca [32 x i8], align 16              ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 13 uses
  %i.au = alloca [976 x i8], align 8              ; 10 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.av = alloca [360 x i8], align 8              ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %i.ay = alloca [168 x i8], align 8              ; 5 uses
  %i.az = alloca [184 x i8], align 8              ; 5 uses
  %i.ba = alloca [344 x i8], align 8              ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 10 uses
  %i.bd = alloca [2 x i8], align 1                ; 8 uses
  %i.be = alloca [1400 x i8], align 8             ; 69 uses
  %i.bf = alloca [32 x i8], align 8               ; 14 uses
  %i.bg = alloca [16 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.bh = invoke { ptr, ptr } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.ns      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %2)
  br label %bb.nq

bb.d:                                             ; preds = %bb.b
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bi, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  store ptr %i.bk, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr null, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.be, ptr noundef nonnull align 8 dereferenceable(1400) %2, i64 1400, i1 false)
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 1393 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1221 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 19 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1248 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 1224 ; 18 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1384 ; 7 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1380 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 1336 ; 11 uses
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1376 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1200 ; 2 uses
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1080 ; 2 uses
  %.phi.trans.insert79.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1088 ; 2 uses
  %.phi.trans.insert81.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1208 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 1392 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 12 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 1220 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 88 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 1096 ; 8 uses
  %.sroa.8236.0..sroa_idx237.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.8236.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.10.0..sroa_idx233.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 104 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 1250 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 1249 ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 1256 ; 12 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0..sroa_idx.i166.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 1264 ; 7 uses
  %.sroa.648.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.447.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 1304 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.10.0..sroa_idx18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1352 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1344 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 1368 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 1360 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 1272 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5261.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %.sroa.4260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 1104 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 1216 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 1217 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 1128 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5267.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.be, i64 1136 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 1192 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.be, i64 1144 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 1218 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 1112 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 1219 ; 3 uses
  %.sroa.8360.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1232 ; 8 uses
  %.sroa.9361.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1240 ; 7 uses
  %.sroa.12364.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1288 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.12308.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1296
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.8271.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5293.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.9283.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6280.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx281.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8282.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5291.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 4 uses
  %.sroa.5397.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 1120 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.nm, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !219
  %i.ef = load i8, ptr %i.bp, align 8, !range !7, !noundef !8
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, !prof !9

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.e
  %i.eh = invoke noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskruEhpekJ3V_5tokio7runtime7context7ContextE16get_or_init_slowCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc16 unwind label %bb.nk  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(904) %.sroa.10.0..sroa_idx233.i.i.i, i64 904, i1 false), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !229
  store i64 %i.fx, ptr %i.ch, align 8, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !229
  store <2 x ptr> <ptr @251, ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client>, ptr %i.ap, align 16, !noalias !229
  store <2 x ptr> <ptr @252, ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt>, ptr %i.ci, align 16, !noalias !229
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @253, ptr noundef nonnull %i.ap)
          to label %.thread.i.i.i unwind label %bb.az, !noalias !230

bb.az:                                            ; preds = %bb.ay
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !229
  br label %.body219.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !229
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.bo

bb.ba:                                            ; preds = %bb.ax
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax
  %i.gc = extractvalue { ptr, ptr } %i.fz, 0      ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.fz, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !241
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.bb
  %.sroa.031.0.pre-phi.i.i.i = phi ptr [ %i.ge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gc, %bb.bb ]
  %.sroa.16.0.pre-phi.i.i.i = phi ptr [ %i.gf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gd, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.mi

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i, %bb.ba
  %.pn135.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i ], [ %i.gb, %bb.ba ], [ %i.fo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.bk

bb.be:                                            ; preds = %bb.at
  %i.ge = extractvalue { ptr, ptr } %i.fu, 0      ; 2 uses
  %i.gf = extractvalue { ptr, ptr } %i.fu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ge) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.gg = load ptr, ptr %i.at, align 8, !alias.scope !244, !noalias !229, !nonnull !8, !noundef !8
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !245
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i unwind label %bb.bg, !noalias !230

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.av
  %.pn135.i.i.i = phi { ptr, i32 } [ %i.gj, %bb.bg ], [ %i.fw, %bb.av ], [ %i.gk, %bb.bi ], [ %i.gk, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !229
  br label %bb.bd

bb.bg:                                            ; preds = %bb.bf
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !229
  br label %bb.bc

bb.bh:                                            ; preds = %bb.at
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.gl = load ptr, ptr %i.at, align 8, !alias.scope !248, !noalias !229, !nonnull !8, !noundef !8
  %i.gm = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !249
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i unwind label %bb.bj, !noalias !230

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.mf, %bb.md, %bb.ic, %bb.ia, %bb.gi, %.body219.i.i.i, %.body169.i.i.i, %bb.bi, %bb.as
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body32

.body32:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, %bb.bj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !230
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !229
  br label %bb.bd

bb.bk:                                            ; preds = %bb.lu, %.body219.i.i.i, %bb.bd
  %.pn135.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.i.i.i, %bb.bd ], [ %i.sn, %bb.lu ], [ %.pn128.pn.i.i.i, %.body219.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i, align 1, !noalias !229
  br label %.body20.i.i

bb.bl:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc22.i.i unwind label %bb.mg, !noalias !221

.noexc22.i.i:                                     ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc23.i.i unwind label %bb.mg, !noalias !221

.noexc23.i.i:                                     ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.ah
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !17, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %bb.bo
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bp
    i8 4, label %bb.cg
  ]

bb.bo:                                            ; preds = %bb.bn, %.thread.i.i.i
  store i8 0, ptr %i.cj, align 2, !noalias !250
  store i8 0, ptr %i.ck, align 1, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !250
  invoke void @_RINvNtNtCskruEhpekJ3V_5tokio3net4addr15to_socket_addrsNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.br unwind label %bb.bq, !noalias !251

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !250
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !250
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.br:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !250
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bn
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc167.i.i.i unwind label %bb.er, !noalias !230

.noexc167.i.i.i:                                  ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bn
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc168.i.i.i unwind label %bb.er, !noalias !230

.noexc168.i.i.i:                                  ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.br, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !250
  invoke void @_RNvXNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.bw unwind label %bb.bv, !noalias !251

bb.bv:                                            ; preds = %bb.bu
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !250
  %i.gr = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !252, !noalias !250, !noundef !8
  %.not.i.i15.i.i.i.i = icmp eq i16 %i.gr, -1
  br i1 %.not.i.i15.i.i.i.i, label %bb.ce, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.gs = load i32, ptr %i.l, align 8, !range !253, !noalias !250, !noundef !8 ; 3 uses
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !250
  br label %bb.es

bb.by:                                            ; preds = %bb.bw
  %.sroa.3.0.copyload.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !250
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i166.i.i.i, align 8, !noalias !250 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !250
  %i.gu = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !254, !noalias !250, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gu, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.ca, !noalias !251

bb.ca:                                            ; preds = %bb.bz
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.bz, %bb.by
  %i.gw = icmp eq i32 %i.gs, 2
  br i1 %i.gw, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !250
  store i32 %i.gs, ptr %i.n, align 8, !noalias !250
  store i32 %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 4, !noalias !250
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !250
  store i8 1, ptr %i.ck, align 1, !noalias !250
  store ptr null, ptr %i.cl, align 8, !noalias !250
  store i8 0, ptr %i.cj, align 2, !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !250
  br label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !250
  invoke void @_RNvXs_NtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm)
          to label %bb.ej unwind label %bb.ei, !noalias !251

bb.cd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  br label %bb.et

bb.ce:                                            ; preds = %bb.bv
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.cf, !noalias !251

bb.cf:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.eh, %bb.ce
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !251
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i: ; preds = %bb.eq, %bb.ee, %bb.ce, %bb.ca, %bb.bv, %bb.bq
  %.pn10.pn.i.i.i.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.i.i.i.i, %bb.eq ], [ %.pn4.pn.pn.pn.pn.i.i.i.i, %bb.ee ], [ %i.gq, %bb.bv ], [ %i.gv, %bb.ca ], [ %i.gp, %bb.bq ], [ %i.gq, %bb.ce ]
  store i8 0, ptr %i.cj, align 2, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !250
  store i8 2, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !250
  br label %.body169.i.i.i

bb.cg:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !250
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !14, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.ch
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
  ]

bb.ch:                                            ; preds = %.thread.i.i.i.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !255
  invoke void @_RNvMNtNtNtCsUoH6ltOcnV_3mio3net3tcp6streamNtB2_9TcpStream7connect(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.j)
          to label %bb.cj unwind label %bb.ci, !noalias !256

bb.ci:                                            ; preds = %bb.ch
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !255
  br label %.body.thread.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.gz = load i32, ptr %i.i, align 8, !range !19, !alias.scope !257, !noalias !258, !noundef !8
  %i.ha = trunc nuw i32 %i.gz to i1
  br i1 %i.ha, label %.thread65.i.i.i.i, label %.thread33.i.i.i.i.i

.thread33.i.i.i.i.i:                              ; preds = %bb.cj
  %i.hb = load i32, ptr %i.co, align 4, !range !20, !alias.scope !257, !noalias !258, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !255
  store i32 %i.hb, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !255
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  br label %bb.cn

.thread65.i.i.i.i:                                ; preds = %bb.cj
  %i.hc = load ptr, ptr %i.cv, align 8, !alias.scope !257, !noalias !258, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, i64 16, i1 false), !noalias !259
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, i64 16, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  br label %bb.du

.body.thread.i.i.i.i:                             ; preds = %.body.i.i.i.i.i, %bb.dq, %bb.ci
  %.pn4.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.gy, %bb.ci ], [ %i.id, %bb.dq ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !255
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i

bb.ck:                                            ; preds = %bb.cg
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #22
          to label %.noexc19.i.i.i.i unwind label %.body.i.i.i.i, !noalias !251

.noexc19.i.i.i.i:                                 ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.cg
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #22
          to label %.noexc20.i.i.i.i unwind label %.body.i.i.i.i, !noalias !251

.noexc20.i.i.i.i:                                 ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !255
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !range !14, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i.i
    i8 1, label %bb.cs
    i8 2, label %bb.ct
    i8 3, label %bb.cu
  ]

._crit_edge.i.i.i.i:                              ; preds = %bb.cm
  %.pre76.i.i.i.i = load i32, ptr %.phi.trans.insert75.i.i.i.i, align 8, !range !20, !noalias !260
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i, %.thread33.i.i.i.i.i
  %i.hd = phi i32 [ %i.hb, %.thread33.i.i.i.i.i ], [ %.pre76.i.i.i.i, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !260
  invoke void @_RNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB2_9TcpStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, i32 noundef %i.hd)
          to label %bb.cp unwind label %bb.co, !noalias !261

bb.co:                                            ; preds = %bb.cn
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !260
  br label %.body.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.hf = load i64, ptr %i.h, align 8, !range !13, !alias.scope !263, !noalias !264, !noundef !8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 2
  %i.hh = load ptr, ptr %i.cp, align 8, !alias.scope !265, !noalias !260 ; 2 uses
  br i1 %i.hg, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx18.i.i.i.i.i.i, i64 16, i1 false), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !260
  store i64 %i.hf, ptr %i.bu, align 8, !noalias !260
  store ptr %i.hh, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !260
  store ptr %i.bu, ptr %i.cq, align 8, !noalias !260
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !260
  br label %.thread25.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.dl, %bb.dk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i, %bb.co
  %.pn12.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.he, %bb.co ], [ %.pn9.pn.i.i.i.i.i.i, %bb.dk ], [ %i.hz, %bb.dl ], [ %i.ht, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !260
  br label %.body.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #22
          to label %.noexc.i.i.i.i.i unwind label %bb.dn, !noalias !256

.noexc.i.i.i.i.i:                                 ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #22
          to label %.noexc8.i.i.i.i.i unwind label %bb.dn, !noalias !256

.noexc8.i.i.i.i.i:                                ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cq, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !260
  invoke void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.cw unwind label %bb.cv, !noalias !266

bb.cv:                                            ; preds = %bb.cu
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  br label %bb.dk

bb.cw:                                            ; preds = %bb.cu
  %i.hj = load i8, ptr %i.cr, align 1, !range !267, !noalias !260, !noundef !8 ; 2 uses
  %i.hk = icmp eq i8 %i.hj, -1
  br i1 %i.hk, label %.thread.i.i.i.i.i, label %bb.cx

.thread.i.i.i.i.i:                                ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  store i8 3, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !260
  br label %bb.ds

bb.cx:                                            ; preds = %bb.cw
  %.sroa.022.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !260
  %i.hl = icmp eq i8 %i.hj, 2
  br i1 %i.hl, label %.sink.split.i.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hm = invoke noundef nonnull align 4 ptr @_RNvXs1_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.da unwind label %bb.cz, !noalias !266

bb.cz:                                            ; preds = %bb.cy
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.da:                                            ; preds = %bb.cy
  %i.ho = invoke { i64, ptr } @_RNvMNtNtNtCsUoH6ltOcnV_3mio3net3tcp6streamNtB2_9TcpStream10take_error(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hm)
          to label %bb.dc unwind label %bb.db, !noalias !266 ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dc:                                            ; preds = %bb.da
  %i.hq = extractvalue { i64, ptr } %i.ho, 0
  %i.hr = extractvalue { i64, ptr } %i.ho, 1      ; 3 uses
  %i.hs = trunc nuw i64 %i.hq to i1
  br i1 %i.hs, label %.sink.split.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i18.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i18.i.i.i.i, label %bb.do, label %bb.de

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.dc, %bb.cx
  %.sink.i.i.i.i.i.i = phi ptr [ %.sroa.022.0.copyload.i.i.i.i.i.i, %bb.cx ], [ %i.hr, %bb.dc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  br label %bb.de

bb.de:                                            ; preds = %.sink.split.i.i.i.i.i.i, %bb.dd
  %.sroa.626.1.i.i.i.i.i.i = phi ptr [ %i.hr, %bb.dd ], [ %.sink.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i ]
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.dh unwind label %bb.df, !noalias !266

bb.df:                                            ; preds = %bb.de
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !268, !noalias !260, !noundef !8 ; 2 uses
  %i.hu = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, -1
  br i1 %i.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hv = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i.i.i) #17, !noalias !266 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.de
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !268, !noalias !260, !noundef !8 ; 2 uses
  %i.hw = icmp eq i32 %.val.i.i.i.i.i.i.i.i, -1
  br i1 %i.hw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hx = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i) #17, !noalias !266 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dg, %bb.df
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu) #19
          to label %.body.i.i.i.i.i.i unwind label %bb.dj, !noalias !266

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !266
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.dh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %.thread25.i.i.i.i.i unwind label %bb.dl, !noalias !266

bb.dk:                                            ; preds = %bb.db, %bb.cz, %bb.cv
  %.pn9.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hi, %bb.cv ], [ %i.hn, %bb.cz ], [ %i.hp, %bb.db ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu) #19
          to label %.body.i.i.i.i.i.i unwind label %bb.dm, !noalias !266

bb.dl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !266
  unreachable

bb.dn:                                            ; preds = %bb.ct, %bb.cs
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.thread25.i.i.i.i.i:                              ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i, %bb.cr
  %.sroa.626.0.i.ph.i.i.i.i.i = phi ptr [ %.sroa.626.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i ], [ %i.hh, %bb.cr ]
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !260
  br label %bb.dp

bb.do:                                            ; preds = %bb.dd
  %.sroa.031.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !260 ; 2 uses
  %.sroa.432.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.915.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !255
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !260
  %i.ic = icmp eq i64 %.sroa.031.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.ic, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.thread25.i.i.i.i.i
  %.sroa.626.0.i29.i.i.i.i.i = phi ptr [ %.sroa.626.0.i.ph.i.i.i.i.i, %.thread25.i.i.i.i.i ], [ %.sroa.432.0.copyload.i.i.i.i.i.i, %bb.do ] ; 2 uses
  %.sroa.024.0.i28.i.i.i.i.i = phi i64 [ 2, %.thread25.i.i.i.i.i ], [ %.sroa.031.0.copyload.i.i.i.i.i.i, %bb.do ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.915.i.i.i.i.i, i64 16, i1 false), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu)
          to label %bb.dt unwind label %bb.dq, !noalias !256

bb.dq:                                            ; preds = %bb.dp
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.dn, %.body.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn12.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.ib, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu) #19
          to label %.body.thread.i.i.i.i unwind label %bb.dr, !noalias !256

bb.dr:                                            ; preds = %.body.i.i.i.i.i
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !256
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.cl, %bb.ck
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  %cond.i33.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 3
  br i1 %cond.i33.i.i.i.i, label %bb.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i

bb.ds:                                            ; preds = %bb.do, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !255
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !250
  br label %bb.es

bb.dt:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, i64 16, i1 false), !noalias !259
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, i64 16, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  %i.ig = icmp eq i64 %.sroa.024.0.i28.i.i.i.i.i, 2
  br i1 %i.ig, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt, %.thread65.i.i.i.i
  %.sroa.3.0.i68.i.i.i.i = phi ptr [ %i.hc, %.thread65.i.i.i.i ], [ %.sroa.626.0.i29.i.i.i.i.i, %bb.dt ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i68.i.i.i.i) ]
  %.val14.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !250, !noundef !8 ; 4 uses
  %i.ih = icmp eq ptr %.val14.i.i.i.i, null
  br i1 %i.ih, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !250
  %i.ii = ptrtoint ptr %.val14.i.i.i.i to i64     ; 2 uses
  %i.ij = and i64 %i.ii, 3
  switch i64 %i.ij, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
    i64 3, label %bb.dw
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
    i64 1, label %bb.dx
  ], !prof !21

bb.dw:                                            ; preds = %bb.dv
  %i.ik = icmp ult ptr %.val14.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.il = and i64 %i.ii, 1095216660480
  %i.im = icmp ne i64 %i.il, 1095216660480
  call void @llvm.assume(i1 %i.ik)
  call void @llvm.assume(i1 %i.im)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.in = getelementptr i8, ptr %.val14.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.in) ]
  store ptr %i.in, ptr %i.cw, align 8, !alias.scope !269, !noalias !250
  store i8 3, ptr %i.f, align 8, !alias.scope !269, !noalias !250
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i unwind label %bb.eg, !noalias !251

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !250
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !250
  %i.io = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !270, !noalias !250, !noundef !8
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.ea, !noalias !251

bb.ea:                                            ; preds = %bb.el, %bb.dz
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.dz, %bb.dy
  %.val13.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !250, !noundef !8 ; 4 uses
  %i.ir = icmp eq ptr %.val13.i.i.i.i, null
  br i1 %i.ir, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !250
  %i.is = ptrtoint ptr %.val13.i.i.i.i to i64     ; 2 uses
  %i.it = and i64 %i.is, 3
  switch i64 %i.it, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i
    i64 3, label %bb.ec
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i
    i64 1, label %bb.ed
  ], !prof !21

bb.ec:                                            ; preds = %bb.eb
  %i.iu = icmp ult ptr %.val13.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.iv = and i64 %i.is, 1095216660480
  %i.iw = icmp ne i64 %i.iv, 1095216660480
  call void @llvm.assume(i1 %i.iu)
  call void @llvm.assume(i1 %i.iw)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.ix = getelementptr i8, ptr %.val13.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ix) ]
  store ptr %i.ix, ptr %i.cu, align 8, !alias.scope !271, !noalias !250
  store i8 3, ptr %i.e, align 8, !alias.scope !271, !noalias !250
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i unwind label %bb.ef, !noalias !251

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i: ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !250
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i

bb.ee:                                            ; preds = %bb.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i, %bb.ef
  %.pn4.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.i.i.i.i, %bb.ep ], [ %.pn4.pn.pn.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i ], [ %i.jb, %bb.ef ] ; 2 uses
  store i8 0, ptr %i.ck, align 1, !noalias !250
  %i.iy = load i8, ptr %i.cj, align 2, !range !10, !noalias !250, !noundef !8
  %i.iz = trunc nuw i8 %i.iy to i1
  %3 = load i32, ptr %i.n, align 8, !range !19, !noalias !250
  %i.ja = icmp ne i32 %3, 0
  %or.cond.not.i.i.i.i = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.eq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i24.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  store i8 0, ptr %i.ck, align 1, !noalias !250
  br label %bb.et

bb.eg:                                            ; preds = %bb.dx
  %i.jc = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.ck, align 1, !noalias !250
  store ptr %.sroa.3.0.i68.i.i.i.i, ptr %i.cl, align 8, !noalias !250
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.du
  store i8 1, ptr %i.ck, align 1, !noalias !250
  store ptr %.sroa.3.0.i68.i.i.i.i, ptr %i.cl, align 8, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !250
  br label %bb.cc

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i: ; preds = %bb.eo, %bb.ei, %bb.eg, %.body.i.i.i.i, %.body.thread.i.i.i.i
  %.pn4.pn.i.i.i.i = phi { ptr, i32 } [ %i.jf, %bb.ei ], [ %i.jc, %bb.eg ], [ %i.if, %bb.eo ], [ %.pn4.pn.i.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.if, %.body.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !250
  %i.jd = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !272, !noalias !250, !noundef !8
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i unwind label %bb.cf, !noalias !251

bb.ei:                                            ; preds = %bb.cc
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i

bb.ej:                                            ; preds = %bb.cc
  %i.jg = load i16, ptr %i.k, align 4, !range !273, !noalias !250, !noundef !8
  %.not.i165.i.i.i = icmp eq i16 %i.jg, 2
  br i1 %.not.i165.i.i.i, label %bb.ek, label %.thread.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !250
  %i.jh = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !274, !noalias !250, !noundef !8
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i unwind label %bb.ea, !noalias !251

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i: ; preds = %bb.el, %bb.ek
  store i8 0, ptr %i.ck, align 1, !noalias !250
  %i.jj = load ptr, ptr %i.cl, align 8, !noalias !250, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i, label %bb.em, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i
  %i.jk = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32) #21
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.en, !noalias !251

bb.en:                                            ; preds = %bb.em
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.jj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit31.i.i.i.i ], [ %i.jk, %bb.em ]
  store i8 0, ptr %i.ck, align 1, !noalias !250
  br label %bb.et

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i: ; preds = %bb.en, %bb.eh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i, %bb.ea
  %.pn4.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.jl, %bb.en ], [ %.pn4.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i ], [ %i.iq, %bb.ea ], [ %.pn4.pn.i.i.i.i, %bb.eh ] ; 2 uses
  %i.jm = load i8, ptr %i.ck, align 1, !range !10, !noalias !250, !noundef !8
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.ep, label %bb.ee

.thread.i.i.i.i:                                  ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 4 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !250
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  br label %bb.ch

bb.eo:                                            ; preds = %.body.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit35.i.i.i.i unwind label %bb.cf, !noalias !251

bb.ep:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit29.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !250, !noundef !8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr %.val.i.i.i.i) #19
          to label %bb.ee unwind label %bb.cf, !noalias !251

bb.eq:                                            ; preds = %bb.ee
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.cf, !noalias !251

bb.er:                                            ; preds = %bb.bt, %bb.bs
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i.i.i

bb.es:                                            ; preds = %bb.ds, %bb.bx
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.bx ], [ 4, %bb.ds ]
  store i8 %.sink.i.ph.i.i.i, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.mh

bb.et:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i, %bb.cd
  %.sroa.056.1.i.i.i.i = phi i64 [ 2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ 2, %bb.cd ], [ %.sroa.024.0.i28.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i ] ; 2 uses
  %.sroa.557.1.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.cd ], [ %.sroa.626.0.i29.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit27.i.i.i.i ] ; 3 uses
  store i8 0, ptr %i.cj, align 2, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6258.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, i64 16, i1 false), !noalias !229
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt)
          to label %bb.ev unwind label %bb.eu, !noalias !230

bb.eu:                                            ; preds = %bb.et
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body219.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.jq = icmp eq i64 %.sroa.056.1.i.i.i.i, 2
  br i1 %i.jq, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.1.i.i.i.i) ]
  %i.jr = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %.sroa.557.1.i.i.i.i)
          to label %bb.fa unwind label %bb.ez, !noalias !230 ; 2 uses

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5261.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6258.i.i.i, i64 16, i1 false), !noalias !229
  store i64 %.sroa.056.1.i.i.i.i, ptr %i.bs, align 8, !noalias !229
  store ptr %.sroa.557.1.i.i.i.i, ptr %.sroa.4260.0..sroa_idx.i.i.i, align 8, !noalias !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false), !noalias !229
  store i32 0, ptr %i.cy, align 8, !noalias !229
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ft, %bb.ex
  %i.js = phi i8 [ %.pre495.i.i.i, %bb.ft ], [ 0, %bb.ex ]
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.fw, label %bb.fx

bb.ez:                                            ; preds = %bb.ew
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body219.i.i.i

bb.fa:                                            ; preds = %bb.ew
  %i.jv = extractvalue { ptr, ptr } %i.jr, 0      ; 2 uses
  %i.jw = extractvalue { ptr, ptr } %i.jr, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jv) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jw) ]
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i, %bb.fa
  %.sroa.031.1.pre-phi.i.i.i = phi ptr [ %.pre497.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.jv, %bb.fa ]
  %.sroa.16.1.pre-phi.i.i.i = phi ptr [ %.pre496.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i ], [ %i.jw, %bb.fa ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch)
          to label %bb.mi unwind label %bb.lu, !noalias !230

.body169.i.i.i:                                   ; preds = %bb.er, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i
  %.pn43.i.i.i = phi { ptr, i32 } [ %.pn10.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ], [ %i.jo, %bb.er ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt) #19
          to label %.body219.i.i.i unwind label %bb.bj, !noalias !230

.body219.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i, %bb.lt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %.body169.i.i.i, %bb.ez, %bb.eu, %bb.az
  %.pn128.pn.i.i.i = phi { ptr, i32 } [ %i.sq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i ], [ %i.ga, %bb.az ], [ %i.sf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.sm, %bb.lt ], [ %i.ju, %bb.ez ], [ %i.jp, %bb.eu ], [ %.pn43.i.i.i, %.body169.i.i.i ], [ %.pn126.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch) #19
          to label %bb.bk unwind label %bb.bj, !noalias !230

bb.fb:                                            ; preds = %bb.ke, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !229
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.fd unwind label %bb.fc, !noalias !230

bb.fc:                                            ; preds = %bb.fb
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !229
  br label %bb.ib

bb.fd:                                            ; preds = %bb.fb
  %i.jy = load i64, ptr %i.t, align 8, !range !11, !noalias !229, !noundef !8
  %i.jz = trunc nuw i64 %i.jy to i1
  br i1 %i.jz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !229
  br label %bb.mh

bb.ff:                                            ; preds = %bb.fd
  %i.ka = load ptr, ptr %i.dp, align 8, !noalias !229, !noundef !8 ; 2 uses
  %i.kb = load ptr, ptr %i.dq, align 8, !noalias !229 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !229
  %.not.i172.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i172.i.i.i, label %bb.fg, label %bb.lv

bb.fg:                                            ; preds = %bb.kq, %bb.kb, %bb.jq, %bb.je, %bb.ix, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %bb.ff
  %.pr = load i64, ptr %i.de, align 8, !noalias !229
  switch i64 %.pr, label %.thread799 [
    i64 0, label %bb.fh
    i64 4, label %bb.fh
    i64 5, label %bb.fh
    i64 7, label %bb.fh
  ]

.thread799:                                       ; preds = %bb.gj, %bb.gl, %bb.fg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de)
          to label %bb.fh unwind label %bb.fi, !noalias !230

bb.fh:                                            ; preds = %.thread799, %bb.fg, %bb.fg, %bb.fg, %bb.fg
  %i.kc = load i64, ptr %i.da, align 8, !noalias !229, !noundef !8 ; 3 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.lw, %.thread799
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.kf = load i64, ptr %i.cx, align 8, !noalias !229, !noundef !8 ; 2 uses
  %.not100.i.i.i = icmp ugt i64 %i.kc, %i.kf
  br i1 %.not100.i.i.i, label %bb.fl, label %bb.fm, !prof !15

bb.fk:                                            ; preds = %bb.fs, %bb.fh
  %i.kg = load i64, ptr %i.ee, align 8, !noalias !229, !noundef !8
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  store i64 %i.kh, ptr %i.ee, align 8, !noalias !229
  %i.ki = icmp ult i64 %i.kh, 20
  br i1 %i.ki, label %bb.ft, label %bb.fu

bb.fl:                                            ; preds = %bb.fj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #20
          to label %bb.fo unwind label %bb.fn, !noalias !230

bb.fm:                                            ; preds = %bb.fj
  %i.kj = load ptr, ptr %i.cd, align 8, !noalias !229, !nonnull !8, !noundef !8 ; 2 uses
  %i.kk = load i64, ptr %i.ce, align 8, !noalias !229, !noundef !8
  %i.kl = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, 0) %i.kf, i64 noundef range(i64 0, -9223372036854775808) %i.kk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %bb.fq unwind label %bb.fp, !noalias !230 ; 2 uses

bb.fn:                                            ; preds = %bb.fl
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fo:                                            ; preds = %bb.ll, %bb.li, %bb.lf, %bb.kw, %bb.gn, %bb.fu, %bb.fl
  unreachable

bb.fp:                                            ; preds = %bb.fm
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fq:                                            ; preds = %bb.fm
  %i.ko = extractvalue { i64, i64 } %i.kl, 1
  %i.kp = extractvalue { i64, i64 } %i.kl, 0      ; 2 uses
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kj, ptr nonnull align 1 %i.kr, i64 %i.kq, i1 false), !alias.scope !275, !noalias !230
  %i.ks = load i64, ptr %i.da, align 8, !noalias !229, !noundef !8
  %i.kt = load i64, ptr %i.cx, align 8, !noalias !229, !noundef !8
  %i.ku = sub i64 %i.kt, %i.ks
end_hunk_1
