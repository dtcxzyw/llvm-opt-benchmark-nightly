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
  %.sroa.6257.i.i.i = alloca [16 x i8], align 8   ; 6 uses
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
          to label %bb.b unwind label %bb.mr      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %2)
  br label %bb.mp

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
  %.phi.trans.insert67.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1080 ; 2 uses
  %.phi.trans.insert69.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1088 ; 2 uses
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1208 ; 2 uses
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
  %.sroa.8235.0..sroa_idx236.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.8235.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.10.0..sroa_idx232.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
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
  %.sroa.5260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %.sroa.4259.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 1104 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 1216 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 1217 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 1128 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5266.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.be, i64 1136 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 1192 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.be, i64 1144 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 1218 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 1112 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 1219 ; 3 uses
  %.sroa.8359.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1232 ; 8 uses
  %.sroa.9360.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1240 ; 7 uses
  %.sroa.12363.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1288 ; 6 uses
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
  %.sroa.12307.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1296
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.8270.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5292.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5278.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.9282.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx280.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8281.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5290.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 4 uses
  %.sroa.5396.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 1120 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.ml, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !215
  %i.ef = load i8, ptr %i.bp, align 8, !range !7, !noundef !8
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, !prof !9

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.e
  %i.eh = invoke noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskruEhpekJ3V_5tokio7runtime7context7ContextE16get_or_init_slowCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc16 unwind label %bb.mj  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !225
  store i64 %i.fw, ptr %i.ch, align 8, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !225
  store <2 x ptr> <ptr @251, ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client>, ptr %i.ap, align 16, !noalias !225
  store <2 x ptr> <ptr @252, ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt>, ptr %i.ci, align 16, !noalias !225
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @253, ptr noundef nonnull %i.ap)
          to label %.thread.i.i.i unwind label %bb.ay, !noalias !226

bb.ay:                                            ; preds = %bb.ax
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !225
  br label %.body218.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !225
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.bn

bb.az:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  %i.gb = extractvalue { ptr, ptr } %i.fy, 0      ; 2 uses
  %i.gc = extractvalue { ptr, ptr } %i.fy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb), "nonnull"(ptr %i.gc) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !235
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.ba
  %.sroa.031.0.pre-phi.i.i.i = phi ptr [ %i.gd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gb, %bb.ba ]
  %.sroa.16.0.pre-phi.i.i.i = phi ptr [ %i.ge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gc, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.lh

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i, %bb.az
  %.pn135.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i ], [ %i.ga, %bb.az ], [ %i.fo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.bj

bb.bd:                                            ; preds = %bb.at
  %i.gd = extractvalue { ptr, ptr } %i.fu, 0      ; 2 uses
  %i.ge = extractvalue { ptr, ptr } %i.fu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd), "nonnull"(ptr %i.ge) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.gf = load ptr, ptr %i.at, align 8, !alias.scope !238, !noalias !225, !nonnull !8, !noundef !8
  %i.gg = atomicrmw add ptr %i.gf, i64 -1 release, align 8, !noalias !239
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i unwind label %bb.bf, !noalias !226

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.pn135.i.i.i = phi { ptr, i32 } [ %i.gi, %bb.bf ], [ %i.gj, %bb.bg ], [ %i.gj, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bc

bb.bf:                                            ; preds = %bb.be, %bb.au
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bb

bb.bg:                                            ; preds = %bb.at
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.gk = load ptr, ptr %i.at, align 8, !alias.scope !242, !noalias !225, !nonnull !8, !noundef !8
  %i.gl = atomicrmw add ptr %i.gk, i64 -1 release, align 8, !noalias !243
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i unwind label %bb.bi, !noalias !226

bb.bi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.le, %bb.lc, %bb.hl, %.loopexit.split-lp415.i.i.i, %bb.fy, %.body218.i.i.i, %.body169.i.i.i, %bb.bh, %bb.as
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body32

.body32:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bc

bb.bj:                                            ; preds = %bb.kt, %.body218.i.i.i, %bb.bc
  %.pn135.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.i.i.i, %bb.bc ], [ %i.ry, %bb.kt ], [ %.pn128.pn.i.i.i, %.body218.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i, align 1, !noalias !225
  br label %.body20.i.i

bb.bk:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc22.i.i unwind label %bb.lf, !noalias !217

.noexc22.i.i:                                     ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc23.i.i unwind label %bb.lf, !noalias !217

.noexc23.i.i:                                     ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.ah
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !17, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %bb.bn
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bo
    i8 4, label %bb.cf
  ]

bb.bn:                                            ; preds = %bb.bm, %.thread.i.i.i
  store i8 0, ptr %i.cj, align 2, !noalias !244
  store i8 0, ptr %i.ck, align 1, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !244
  invoke void @_RINvNtNtCskruEhpekJ3V_5tokio3net4addr15to_socket_addrsNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bq unwind label %bb.bp, !noalias !245

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !244
  br label %bb.bt

bb.br:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc167.i.i.i unwind label %bb.eo, !noalias !226

.noexc167.i.i.i:                                  ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc168.i.i.i unwind label %bb.eo, !noalias !226

.noexc168.i.i.i:                                  ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !244
  invoke void @_RNvXNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.bw unwind label %bb.bu, !noalias !245

bb.bu:                                            ; preds = %bb.bt
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  %i.gq = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !246, !noalias !244, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gq, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.ce, !noalias !245

bb.bw:                                            ; preds = %bb.bt
  %i.gr = load i32, ptr %i.l, align 8, !range !247, !noalias !244, !noundef !8 ; 3 uses
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  br label %bb.ep

bb.by:                                            ; preds = %bb.bw
  %.sroa.3.0.copyload.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !244
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i166.i.i.i, align 8, !noalias !244 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  %i.gt = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !248, !noalias !244, !noundef !8
  %.not.i.i15.i.i.i.i = icmp eq i16 %i.gt, -1
  br i1 %.not.i.i15.i.i.i.i, label %bb.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i unwind label %bb.cc, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i: ; preds = %bb.bz, %bb.by
  %i.gu = icmp eq i32 %i.gr, 2
  br i1 %i.gu, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !244
  store i32 %i.gr, ptr %i.n, align 8, !noalias !244
  store i32 %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 4, !noalias !244
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !244
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr null, ptr %i.cl, align 8, !noalias !244
  store i8 0, ptr %i.cj, align 2, !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !244
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !244
  invoke void @_RNvXs_NtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm)
          to label %bb.eh unwind label %bb.eg, !noalias !245

bb.cc:                                            ; preds = %bb.bz
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.cd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  br label %bb.eq

bb.ce:                                            ; preds = %bb.en, %bb.em, %bb.ef, %bb.dq, %bb.bv
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !245
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i: ; preds = %bb.en, %bb.ec, %bb.cc, %bb.bv, %bb.bu, %bb.bp
  %.pn10.pn.i.i.i.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.pn.i.i.i.i, %bb.en ], [ %.pn4.pn.pn.pn.pn.i.i.i.i, %bb.ec ], [ %i.gv, %bb.cc ], [ %i.go, %bb.bp ], [ %i.gp, %bb.bv ], [ %i.gp, %bb.bu ]
  store i8 0, ptr %i.cj, align 2, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  store i8 2, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !244
  br label %.body169.i.i.i

bb.cf:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !244
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !14, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.cj
    i8 2, label %bb.ck
    i8 3, label %bb.cl
  ]

bb.cg:                                            ; preds = %.thread.i.i.i.i, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !249
  invoke void @_RNvMNtNtNtCsUoH6ltOcnV_3mio3net3tcp6streamNtB2_9TcpStream7connect(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.j)
          to label %bb.ci unwind label %bb.ch, !noalias !250

bb.ch:                                            ; preds = %bb.cg
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !249
  br label %.body.thread.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.gy = load i32, ptr %i.i, align 8, !range !19, !alias.scope !251, !noalias !249, !noundef !8
  %i.gz = trunc nuw i32 %i.gy to i1
  br i1 %i.gz, label %.thread68.i.i.i.i, label %.thread33.i.i.i.i.i

.thread33.i.i.i.i.i:                              ; preds = %bb.ci
  %i.ha = load i32, ptr %i.co, align 4, !range !20, !alias.scope !251, !noalias !249, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !249
  store i32 %i.ha, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !249
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  br label %bb.cm

.thread68.i.i.i.i:                                ; preds = %bb.ci
  %i.hb = load ptr, ptr %i.cv, align 8, !alias.scope !251, !noalias !249, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, i64 16, i1 false), !noalias !252
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, i64 16, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  br label %bb.dt

.body.thread.i.i.i.i:                             ; preds = %bb.do, %.body.i.i.i.i.i, %bb.ch
  %.pn4.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.gx, %bb.ch ], [ %i.ib, %bb.do ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !249
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #22
          to label %.noexc19.i.i.i.i unwind label %.body.i.i.i.i, !noalias !245

.noexc19.i.i.i.i:                                 ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #22
          to label %.noexc20.i.i.i.i unwind label %.body.i.i.i.i, !noalias !245

.noexc20.i.i.i.i:                                 ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !249
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !range !14, !noalias !253
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i.i
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.ct
  ]

._crit_edge.i.i.i.i:                              ; preds = %bb.cl
  %.pre76.i.i.i.i = load i32, ptr %.phi.trans.insert75.i.i.i.i, align 8, !range !20, !noalias !253
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i, %.thread33.i.i.i.i.i
  %i.hc = phi i32 [ %i.ha, %.thread33.i.i.i.i.i ], [ %.pre76.i.i.i.i, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !253
  invoke void @_RNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB2_9TcpStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, i32 noundef %i.hc)
          to label %bb.co unwind label %bb.cn, !noalias !254

bb.cn:                                            ; preds = %bb.cm
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !253
  br label %.body.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.he = load i64, ptr %i.h, align 8, !range !13, !alias.scope !256, !noalias !253, !noundef !8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 2
  %i.hg = load ptr, ptr %i.cp, align 8, !alias.scope !257, !noalias !253 ; 2 uses
  br i1 %i.hf, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx18.i.i.i.i.i.i, i64 16, i1 false), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !253
  store i64 %i.he, ptr %i.bu, align 8, !noalias !253
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !253
  store ptr %i.bu, ptr %i.cq, align 8, !noalias !253
  br label %bb.ct

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !253
  br label %.thread25.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.dj, %bb.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i, %bb.cn
  %.pn12.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hd, %bb.cn ], [ %.pn9.pn.i.i.i.i.i.i, %bb.di ], [ %i.hx, %bb.dj ], [ %i.hr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !253
  br label %.body.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #22
          to label %.noexc.i.i.i.i.i unwind label %bb.dl, !noalias !250

.noexc.i.i.i.i.i:                                 ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #22
          to label %.noexc8.i.i.i.i.i unwind label %bb.dl, !noalias !250

.noexc8.i.i.i.i.i:                                ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cp, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !253
  invoke void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB11_9TcpStream11connect_mio00ENtNtB7_6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.cv unwind label %bb.cu, !noalias !258

bb.cu:                                            ; preds = %bb.ct
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !253
  br label %bb.di

bb.cv:                                            ; preds = %bb.ct
  %i.hi = load i8, ptr %i.cr, align 1, !range !259, !noalias !253, !noundef !8 ; 2 uses
  %i.hj = icmp eq i8 %i.hi, -1
  br i1 %i.hj, label %.thread.i.i.i.i.i, label %bb.cw

.thread.i.i.i.i.i:                                ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !253
  store i8 3, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !253
  br label %bb.dr

bb.cw:                                            ; preds = %bb.cv
  %.sroa.022.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !253
  %i.hk = icmp eq i8 %i.hi, 2
  br i1 %i.hk, label %.sink.split.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hl = invoke noundef nonnull align 4 ptr @_RNvXs1_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.cy unwind label %bb.db, !noalias !258

bb.cy:                                            ; preds = %bb.cx
  %i.hm = invoke { i64, ptr } @_RNvMNtNtNtCsUoH6ltOcnV_3mio3net3tcp6streamNtB2_9TcpStream10take_error(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hl)
          to label %bb.cz unwind label %bb.db, !noalias !258 ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.hn = extractvalue { i64, ptr } %i.hm, 0
  %i.ho = extractvalue { i64, ptr } %i.hm, 1      ; 3 uses
  %i.hp = trunc nuw i64 %i.hn to i1
  br i1 %i.hp, label %.sink.split.i.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.not.i.i18.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i18.i.i.i.i, label %bb.dm, label %bb.dc

bb.db:                                            ; preds = %bb.cy, %bb.cx
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.cz, %bb.cw
  %.sink.i.i.i.i.i.i = phi ptr [ %.sroa.022.0.copyload.i.i.i.i.i.i, %bb.cw ], [ %i.ho, %bb.cz ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split.i.i.i.i.i.i, %bb.da
  %.sroa.626.1.i.i.i.i.i.i = phi ptr [ %i.ho, %bb.da ], [ %.sink.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i ]
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.df unwind label %bb.dd, !noalias !258

bb.dd:                                            ; preds = %bb.dc
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !260, !noalias !253, !noundef !8 ; 2 uses
  %i.hs = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, -1
  br i1 %i.hs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ht = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i.i.i) #17, !noalias !258 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i

bb.df:                                            ; preds = %bb.dc
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !260, !noalias !253, !noundef !8 ; 2 uses
  %i.hu = icmp eq i32 %.val.i.i.i.i.i.i.i.i, -1
  br i1 %i.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hv = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i) #17, !noalias !258 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu) #19
          to label %.body.i.i.i.i.i.i unwind label %bb.dh, !noalias !258

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i.i
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !258
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i: ; preds = %bb.dg, %bb.df
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %.thread25.i.i.i.i.i unwind label %bb.dj, !noalias !258

bb.di:                                            ; preds = %bb.db, %bb.cu
  %.pn9.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hh, %bb.cu ], [ %i.hq, %bb.db ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu) #19
          to label %.body.i.i.i.i.i.i unwind label %bb.dk, !noalias !258

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !258
  unreachable

bb.dl:                                            ; preds = %bb.cs, %bb.cr
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.dl, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.hz, %bb.dl ], [ %.pn12.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu) #19
          to label %.body.thread.i.i.i.i unwind label %bb.dp, !noalias !250

.thread25.i.i.i.i.i:                              ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i, %bb.cq
  %.sroa.626.0.i.ph.i.i.i.i.i = phi ptr [ %.sroa.626.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i.i.i ], [ %i.hg, %bb.cq ]
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !253
  br label %bb.dn

bb.dm:                                            ; preds = %bb.da
  %.sroa.031.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !253 ; 2 uses
  %.sroa.432.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.915.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !249
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !noalias !253
  %i.ia = icmp eq i64 %.sroa.031.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.ia, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread25.i.i.i.i.i
  %.sroa.626.0.i29.i.i.i.i.i = phi ptr [ %.sroa.626.0.i.ph.i.i.i.i.i, %.thread25.i.i.i.i.i ], [ %.sroa.432.0.copyload.i.i.i.i.i.i, %bb.dm ] ; 2 uses
  %.sroa.024.0.i28.i.i.i.i.i = phi i64 [ 2, %.thread25.i.i.i.i.i ], [ %.sroa.031.0.copyload.i.i.i.i.i.i, %bb.dm ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.915.i.i.i.i.i, i64 16, i1 false), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu)
          to label %bb.ds unwind label %bb.do, !noalias !250

bb.do:                                            ; preds = %bb.dn
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

bb.dp:                                            ; preds = %.body.i.i.i.i.i
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !250
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.ck, %bb.cj
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 3
  br i1 %cond.i.i.i.i.i, label %bb.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.dq:                                            ; preds = %.body.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.ce, !noalias !245

bb.dr:                                            ; preds = %bb.dm, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.915.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !249
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  br label %bb.ep

bb.ds:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i.i.i.i, i64 16, i1 false), !noalias !252
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.955.i.i.i.i, i64 16, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.955.i.i.i.i)
  %i.ie = icmp eq i64 %.sroa.024.0.i28.i.i.i.i.i, 2
  br i1 %i.ie, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds, %.thread68.i.i.i.i
  %.sroa.3.0.i71.i.i.i.i = phi ptr [ %i.hb, %.thread68.i.i.i.i ], [ %.sroa.626.0.i29.i.i.i.i.i, %bb.ds ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i71.i.i.i.i) ]
  %.val14.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8 ; 4 uses
  %i.if = icmp eq ptr %.val14.i.i.i.i, null
  br i1 %i.if, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !244
  %i.ig = ptrtoint ptr %.val14.i.i.i.i to i64     ; 2 uses
  %i.ih = and i64 %i.ig, 3
  switch i64 %i.ih, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
    i64 3, label %bb.dv
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
    i64 1, label %bb.dw
  ], !prof !21

bb.dv:                                            ; preds = %bb.du
  %i.ii = icmp ult ptr %.val14.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ij = and i64 %i.ig, 1095216660480
  %i.ik = icmp ne i64 %i.ij, 1095216660480
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.assume(i1 %i.ik)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.dw:                                            ; preds = %bb.du
  %i.il = getelementptr i8, ptr %.val14.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  store ptr %i.il, ptr %i.cw, align 8, !alias.scope !261, !noalias !244
  store i8 3, ptr %i.f, align 8, !alias.scope !261, !noalias !244
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i unwind label %bb.ee, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.dw, %bb.dv, %bb.du, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.dx:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  %i.im = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !262, !noalias !244, !noundef !8
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.el, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.dy, %bb.dx
  %.val13.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8 ; 4 uses
  %i.io = icmp eq ptr %.val13.i.i.i.i, null
  br i1 %i.io, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !244
  %i.ip = ptrtoint ptr %.val13.i.i.i.i to i64     ; 2 uses
  %i.iq = and i64 %i.ip, 3
  switch i64 %i.iq, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i
    i64 1, label %bb.eb
  ], !prof !21

bb.ea:                                            ; preds = %bb.dz
  %i.ir = icmp ult ptr %.val13.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.is = and i64 %i.ip, 1095216660480
  %i.it = icmp ne i64 %i.is, 1095216660480
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.assume(i1 %i.it)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.iu = getelementptr i8, ptr %.val13.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iu) ]
  store ptr %i.iu, ptr %i.cu, align 8, !alias.scope !263, !noalias !244
  store i8 3, ptr %i.e, align 8, !alias.scope !263, !noalias !244
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i unwind label %bb.ed, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i

bb.ec:                                            ; preds = %bb.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i, %bb.ed
  %.pn4.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.i.i.i.i, %bb.em ], [ %.pn4.pn.pn.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i ], [ %i.iy, %bb.ed ] ; 2 uses
  store i8 0, ptr %i.ck, align 1, !noalias !244
  %i.iv = load i8, ptr %i.cj, align 2, !range !10, !noalias !244, !noundef !8
  %i.iw = trunc nuw i8 %i.iv to i1
  %3 = load i32, ptr %i.n, align 8, !range !19, !noalias !244
  %i.ix = icmp ne i32 %3, 0
  %or.cond.not.i.i.i.i = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.en, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  store i8 0, ptr %i.ck, align 1, !noalias !244
  br label %bb.eq

bb.ee:                                            ; preds = %bb.dw
  %i.iz = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.cl, align 8, !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.dt
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.cl, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  br label %bb.cb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.eg, %bb.ee, %bb.dq, %.body.i.i.i.i, %.body.thread.i.i.i.i
  %.pn4.pn.i.i.i.i = phi { ptr, i32 } [ %i.jc, %bb.eg ], [ %i.iz, %bb.ee ], [ %i.id, %bb.dq ], [ %i.id, %.body.i.i.i.i ], [ %.pn4.pn.i.i.i.i.i, %.body.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  %i.ja = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !264, !noalias !244, !noundef !8
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i unwind label %bb.ce, !noalias !245

bb.eg:                                            ; preds = %bb.cb
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.eh:                                            ; preds = %bb.cb
  %i.jd = load i16, ptr %i.k, align 4, !range !265, !noalias !244, !noundef !8
  %.not.i165.i.i.i = icmp eq i16 %i.jd, 2
  br i1 %.not.i165.i.i.i, label %bb.ei, label %.thread.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  %i.je = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !266, !noalias !244, !noundef !8
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i unwind label %bb.el, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i: ; preds = %bb.ej, %bb.ei
  store i8 0, ptr %i.ck, align 1, !noalias !244
  %i.jg = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i, label %bb.ek, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %i.jh = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32) #21
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.el, !noalias !245

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.dy
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.jg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i ], [ %i.jh, %bb.ek ]
  store i8 0, ptr %i.ck, align 1, !noalias !244
  br label %bb.eq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i: ; preds = %bb.el, %bb.ef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %.pn4.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ji, %bb.el ], [ %.pn4.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.pn4.pn.i.i.i.i, %bb.ef ] ; 2 uses
  %i.jj = load i8, ptr %i.ck, align 1, !range !10, !noalias !244, !noundef !8
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.em, label %bb.ec

.thread.i.i.i.i:                                  ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 4 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !244
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  br label %bb.cg

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr %.val.i.i.i.i) #19
          to label %bb.ec unwind label %bb.ce, !noalias !245

bb.en:                                            ; preds = %bb.ec
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.ce, !noalias !245

bb.eo:                                            ; preds = %bb.bs, %bb.br
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i.i.i

.body169.i.i.i:                                   ; preds = %bb.eo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i
  %eh.lpad-body170.i.i.i = phi { ptr, i32 } [ %i.jl, %bb.eo ], [ %.pn10.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt) #19
          to label %.body218.i.i.i unwind label %bb.bi, !noalias !226

bb.ep:                                            ; preds = %bb.dr, %bb.bx
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.bx ], [ 4, %bb.dr ]
  store i8 %.sink.i.ph.i.i.i, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.lg

bb.eq:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i, %bb.cd
  %.sroa.056.1.i.i.i.i = phi i64 [ 2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ 2, %bb.cd ], [ %.sroa.024.0.i28.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 2 uses
  %.sroa.557.1.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.cd ], [ %.sroa.626.0.i29.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 3 uses
  store i8 0, ptr %i.cj, align 2, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6257.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, i64 16, i1 false), !noalias !225
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt)
          to label %bb.er unwind label %bb.ks, !noalias !226

bb.er:                                            ; preds = %bb.eq
  %i.jm = icmp eq i64 %.sroa.056.1.i.i.i.i, 2
  br i1 %i.jm, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.1.i.i.i.i) ]
  %i.jn = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %.sroa.557.1.i.i.i.i)
          to label %bb.ev unwind label %bb.ks, !noalias !226 ; 2 uses

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5260.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6257.i.i.i, i64 16, i1 false), !noalias !225
  store i64 %.sroa.056.1.i.i.i.i, ptr %i.bs, align 8, !noalias !225
  store ptr %.sroa.557.1.i.i.i.i, ptr %.sroa.4259.0..sroa_idx.i.i.i, align 8, !noalias !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false), !noalias !225
  store i32 0, ptr %i.cy, align 8, !noalias !225
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fl, %bb.et
  %i.jo = phi i8 [ %.pre492.i.i.i, %bb.fl ], [ 0, %bb.et ]
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.fo, label %bb.fp

bb.ev:                                            ; preds = %bb.es
  %i.jq = extractvalue { ptr, ptr } %i.jn, 0      ; 2 uses
  %i.jr = extractvalue { ptr, ptr } %i.jn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jq), "nonnull"(ptr %i.jr) ]
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i, %bb.ev
  %.sroa.031.1.pre-phi.i.i.i = phi ptr [ %.pre494.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i ], [ %i.jq, %bb.ev ]
  %.sroa.16.1.pre-phi.i.i.i = phi ptr [ %.pre493.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i ], [ %i.jr, %bb.ev ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch)
          to label %bb.lh unwind label %bb.kt, !noalias !226

.body218.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i, %bb.ks, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %.body169.i.i.i, %bb.ay
  %.pn128.pn.i.i.i = phi { ptr, i32 } [ %i.sb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i ], [ %i.fz, %bb.ay ], [ %i.rq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.rx, %bb.ks ], [ %eh.lpad-body170.i.i.i, %.body169.i.i.i ], [ %.pn126.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch) #19
          to label %bb.bj unwind label %bb.bi, !noalias !226

bb.ew:                                            ; preds = %bb.jm, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.ey unwind label %bb.ex, !noalias !226

bb.ex:                                            ; preds = %bb.ew
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  br label %bb.hk

bb.ey:                                            ; preds = %bb.ew
  %i.jt = load i64, ptr %i.t, align 8, !range !11, !noalias !225, !noundef !8
  %i.ju = trunc nuw i64 %i.jt to i1
  br i1 %i.ju, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.fa:                                            ; preds = %bb.ey
  %i.jv = load ptr, ptr %i.dp, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.jw = load ptr, ptr %i.dq, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  %.not.i172.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i172.i.i.i, label %bb.fb, label %bb.ku

bb.fb:                                            ; preds = %bb.jy, %bb.jj, %bb.iy, %bb.in, %bb.ig, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %bb.fa
  %.pr = load i64, ptr %i.de, align 8, !noalias !225
  switch i64 %.pr, label %.thread718 [
    i64 0, label %bb.fc
    i64 4, label %bb.fc
    i64 5, label %bb.fc
    i64 7, label %bb.fc
  ]

.thread718:                                       ; preds = %bb.fz, %bb.gb, %bb.fb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de)
          to label %bb.fc unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.fc:                                            ; preds = %.thread718, %bb.fb, %bb.fb, %bb.fb, %bb.fb
  %i.jx = load i64, ptr %i.da, align 8, !noalias !225, !noundef !8 ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.jz = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8 ; 2 uses
  %.not100.i.i.i = icmp ugt i64 %i.jx, %i.jz
  br i1 %.not100.i.i.i, label %bb.ff, label %bb.fg, !prof !15

bb.fe:                                            ; preds = %bb.fk, %bb.fc
  %i.ka = load i64, ptr %i.ee, align 8, !noalias !225, !noundef !8
  %i.kb = add i64 %i.ka, 1                        ; 2 uses
  store i64 %i.kb, ptr %i.ee, align 8, !noalias !225
  %i.kc = icmp ult i64 %i.kb, 20
  br i1 %i.kc, label %bb.fl, label %bb.fm

bb.ff:                                            ; preds = %bb.fd
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #20
          to label %bb.fh unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.fg:                                            ; preds = %bb.fd
  %i.kd = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8 ; 2 uses
  %i.ke = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  %i.kf = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef range(i64 1, 0) %i.jx, i64 noundef range(i64 1, 0) %i.jz, i64 noundef range(i64 0, -9223372036854775808) %i.ke, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %bb.fi unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226 ; 2 uses

bb.fh:                                            ; preds = %bb.gd, %bb.fm, %bb.ff
  unreachable

.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kv, %bb.fg, %.thread718, %bb.ff
  %lpad.loopexit.split-lp922 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.kg = extractvalue { i64, i64 } %i.kf, 1
  %i.kh = extractvalue { i64, i64 } %i.kf, 0      ; 2 uses
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull align 1 %i.kj, i64 %i.ki, i1 false), !alias.scope !267, !noalias !226
  %i.kk = load i64, ptr %i.da, align 8, !noalias !225, !noundef !8
  %i.kl = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8
  %i.km = sub i64 %i.kl, %i.kk
  store i64 %i.km, ptr %i.cx, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !225
  store ptr %i.da, ptr %i.s, align 8, !noalias !225
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5396.0..sroa_idx.i.i.i, align 8, !noalias !225
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @258, ptr noundef nonnull %i.s)
          to label %bb.fk unwind label %bb.fj, !noalias !226

bb.fj:                                            ; preds = %bb.fi
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !225
  br label %.body.i.i.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !225
  br label %bb.fe

bb.fl:                                            ; preds = %bb.fe
  store i8 0, ptr %i.cc, align 4, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  %.pre492.i.i.i = load i8, ptr %i.cz, align 1, !range !10, !noalias !225
  br label %bb.eu

bb.fm:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !225
  store ptr @259, ptr %i.r, align 8, !noalias !225
end_hunk_1
