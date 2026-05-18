inline.NumInlined: 1401
inline.NumDeleted: 547
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtB8_9scheduler14current_threadNtB27_13CurrentThread8block_onINtNtB1k_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EEE00EEB44_:bb.a
  %.val9 = load ptr, ptr %i.j, align 8, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  call void %i.ah(ptr noundef %.val9), !inline_history !45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtB8_9scheduler14current_threadNtB27_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00EEB3e_(ptr dead_on_unwind noalias noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [416 x i8], align 16              ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775805, ptr %0, align 16
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
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  %i.q = load i8, ptr %i.o, align 8, !range !19, !noundef !6 ; 2 uses
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !20

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.r = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.n)
          to label %.noexc15 unwind label %bb.i   ; 2 uses

.noexc15:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i: ; preds = %.noexc15, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %.noexc15 ], [ %i.n, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !21, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 1, ptr %i.t, align 1
  store i8 -128, ptr %i.v, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i, %.noexc15, %bb.d
  %.sroa.3.0.i = phi i8 [ %i.w, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i ], [ undef, %.noexc15 ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi i8 [ %i.u, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i ], [ 2, %.noexc15 ], [ %i.q, %bb.d ]
  store i8 %.sroa.0.0.i, ptr %i.a, align 1, !noalias !46
  store i8 %.sroa.3.0.i, ptr %i.p, align 1, !noalias !46
  invoke void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00ENtNtB7_6future6Future4pollB2A_(ptr noalias noundef nonnull sret([416 x i8]) align 16 captures(address) dereferenceable(416) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RNCINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00EE0B3g_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i8, ptr %i.a, align 1, !range !19, !alias.scope !51, !noalias !54, !noundef !6
  %.not.i = icmp eq i8 %i.y, 2
  br i1 %.not.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.a)
          to label %.body unwind label %bb.h

_RNCINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00EE0B3g_.exit: ; preds = %.noexc
  %i.z = load i8, ptr %i.a, align 1, !range !19, !alias.scope !55, !noundef !6
  %.not.i18 = icmp eq i8 %i.z, 2
  br i1 %.not.i18, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00EE0B3g_.exit
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.a)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !54
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.x, %bb.e ], [ %i.x, %bb.f ]
  %.val10 = load ptr, ptr %i.e, align 8, !nonnull !6, !align !30, !noundef !6
  %.val11 = load ptr, ptr %i.j, align 8, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !noundef !6
  invoke void %i.ad(ptr noundef %.val11)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n, !inline_history !31

bb.j:                                             ; preds = %bb.g, %_RNCINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCsbvkFyIu7lgC_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0E00EE0B3g_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  %i.ae = load i64, ptr %i.b, align 16, !range !44, !noundef !6
  %i.af = icmp eq i64 %i.ae, -9223372036854775805
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.d unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 16 dereferenceable(416) %i.b, i64 416, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !align !30, !noundef !6
  %.val9 = load ptr, ptr %i.j, align 8, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  call void %i.ah(ptr noundef %.val9), !inline_history !45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EB1j_(ptr dead_on_unwind noalias noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(9920) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [624 x i8], align 8               ; 5 uses
  %i.b = alloca [776 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [776 x i8], align 8               ; 18 uses
  %i.j = alloca [776 x i8], align 8               ; 5 uses
  %i.k = alloca [776 x i8], align 8               ; 5 uses
  %i.l = alloca [776 x i8], align 8               ; 5 uses
  %i.m = alloca [776 x i8], align 8               ; 5 uses
  %i.n = alloca [776 x i8], align 8               ; 7 uses
  %i.o = alloca [776 x i8], align 8               ; 5 uses
  %i.p = alloca [496 x i8], align 8               ; 5 uses
  %i.q = alloca [504 x i8], align 8               ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 12 uses
  %i.u = alloca [496 x i8], align 8               ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [416 x i8], align 8               ; 33 uses
  %i.x = alloca [416 x i8], align 8               ; 21 uses
  %.sroa.098.i.i.i = alloca [96 x i8], align 8    ; 8 uses
  %i.y = alloca [416 x i8], align 8               ; 22 uses
  %i.z = alloca [416 x i8], align 8               ; 33 uses
  %.sroa.068.i.i.i = alloca [96 x i8], align 8    ; 8 uses
  %i.aa = alloca [416 x i8], align 8              ; 9 uses
  %i.ab = alloca [416 x i8], align 8              ; 42 uses
  %.sroa.435 = alloca [408 x i8], align 8         ; 4 uses
  %i.ac = alloca [416 x i8], align 8              ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [624 x i8], align 8              ; 5 uses
  %i.af = alloca [624 x i8], align 8              ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %i.an = alloca [776 x i8], align 8              ; 5 uses
  %.sroa.853.i.i = alloca [768 x i8], align 8     ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [600 x i8], align 8              ; 6 uses
  %i.ar = alloca [600 x i8], align 8              ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [40 x i8], align 8               ; 9 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [1952 x i8], align 8             ; 5 uses
  %i.az = alloca [2 x i8], align 1                ; 8 uses
  %.sroa.9 = alloca [408 x i8], align 8           ; 5 uses
  %i.ba = alloca [9920 x i8], align 8             ; 45 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [16 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.bd = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.fq      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.be = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 -9223372036854775806, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %2)
  br label %bb.fo

bb.d:                                             ; preds = %bb.b
  %i.bg = extractvalue { ptr, ptr } %i.bd, 1
  store ptr %i.be, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr %i.bc, ptr %i.bb, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr null, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9920) %i.ba, ptr noundef nonnull align 8 dereferenceable(9920) %2, i64 9920, i1 false)
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 43 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 9912 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 4 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 9905 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 1296 ; 5 uses
  %.phi.trans.insert69.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 9904 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 41 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 42 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 11 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 3952
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 72 ; 4 uses
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 9913 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 696 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 864
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 3856
  %.sroa.872.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 3 uses
  %.sroa.973.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 100
  %.sroa.1074.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 104 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %.sroa.1175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %.sroa.1276.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 168 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %.sroa.1377.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 232 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %.sroa.1478.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 280 ; 3 uses
  %.sroa.1579.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %.sroa.1680.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 296 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 296
  %.sroa.1781.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 320 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %.sroa.1882.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 344 ; 3 uses
  %.sroa.1983.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %.sroa.2084.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 360 ; 4 uses
  %.sroa.2185.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 368 ; 2 uses
  %.sroa.2286.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 376 ; 3 uses
  %.sroa.2387.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 384
  %.sroa.2488.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 392 ; 3 uses
  %.sroa.2589.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 400
  %.sroa.2690.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 408 ; 3 uses
  %.sroa.2791.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 409
  %.sroa.2892.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 410
  %.sroa.2993.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 411
  %.sroa.3094.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 412
  %.sroa.3195.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 413
  %.sroa.3296.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 414
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 344
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 376
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 408
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.068.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i.i.i, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.da = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %.sroa.068.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i.i.i, i64 72
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 413
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.068.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i.i.i, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 352
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 376
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 408
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 409
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 368
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 414
  %i.dr = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 400
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 410
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 411
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 412
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ba, i64 840 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ba, i64 9919 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.eh = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ek = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.en = getelementptr inbounds nuw i8, ptr %i.w, i64 413
  %i.eo = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 352
  %i.eq = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.ev = getelementptr inbounds nuw i8, ptr %i.w, i64 409
  %i.ew = getelementptr inbounds nuw i8, ptr %i.w, i64 414
  %i.ex = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 400
  %i.ez = getelementptr inbounds nuw i8, ptr %i.w, i64 410
  %i.fa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 411
  %i.fd = getelementptr inbounds nuw i8, ptr %i.w, i64 412
  %i.fe = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.098.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i.i.i, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  %i.fg = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  %i.fh = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  %i.fi = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.098.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i.i.i, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.098.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i.i.i, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  %i.fm = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.fn = getelementptr inbounds nuw i8, ptr %i.x, i64 376
  %i.fo = getelementptr inbounds nuw i8, ptr %i.x, i64 408
  %i.fp = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  %i.fq = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.fr = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 9918 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 744 ; 2 uses
  %.sroa.6154.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 752
  %.sroa.6154.0..sroa_idx155.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.0.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.0.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.0.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %.sroa.0.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.0.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %.sroa.0.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %.sroa.0.sroa.18.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %.sroa.0.sroa.20.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ba, i64 9917 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ba, i64 9916 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ba, i64 720 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ba, i64 9915 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ba, i64 768 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ba, i64 9914 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ba, i64 792 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ba, i64 1280
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 268
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ba, i64 816 ; 2 uses
  %.sroa.853.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.759.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 2608
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.fk, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !58
  %i.gj = load i8, ptr %i.bl, align 8, !range !19, !noundef !6 ; 2 uses
  switch i8 %i.gj, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !20

default.unreachable:                              ; preds = %bb.ay, %bb.at, %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e
  %i.gk = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bk)
          to label %.noexc16 unwind label %bb.fi  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.gk, %.noexc16 ], [ %i.bk, %bb.e ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !range !21, !noundef !6
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1
  store i8 1, ptr %i.gm, align 1
  store i8 -128, ptr %i.go, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.gp, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.gn, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.gj, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.az, align 1, !noalias !58
  store i8 %.sroa.3.0.i, ptr %i.bm, align 1, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !63
  %i.gq = load i8, ptr %i.bn, align 1, !range !67, !noalias !68, !noundef !6
  switch i8 %i.gq, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.at
    i8 5, label %bb.g
  ]

bb.f:                                             ; preds = %.noexc
  store i8 0, ptr %i.bq, align 8, !noalias !68
  store i8 0, ptr %i.br, align 1, !noalias !68
  store i8 0, ptr %i.bs, align 2, !noalias !68
  %i.gr = load ptr, ptr %i.bt, align 8, !noalias !68, !nonnull !6, !align !30, !noundef !6
  store ptr %i.gr, ptr %i.ba, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !68
  invoke void @_RNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB2_23DefaultCredentialsChain7builder(ptr noalias noundef nonnull sret([1952 x i8]) align 8 captures(none) dereferenceable(1952) %i.ay)
          to label %bb.i unwind label %bb.h, !noalias !72

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !68
  br label %bb.ev

bb.h:                                             ; preds = %bb.f
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !68
  br label %bb.ar

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1952) %i.bu, ptr noundef nonnull align 8 dereferenceable(1952) %i.ay, i64 1952, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !68
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !68
  br label %bb.m

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #21
          to label %.noexc18 unwind label %bb.fd

.noexc18:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #21
          to label %.noexc19 unwind label %bb.fd

.noexc19:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bu) #19
          to label %bb.ar unwind label %bb.ao, !noalias !72

bb.m:                                             ; preds = %.noexc, %bb.i
  invoke fastcc void @_RNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB7_7Builder5build0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax, ptr noundef nonnull align 8 %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.n unwind label %bb.l, !noalias !72

bb.n:                                             ; preds = %bb.m
  %i.gu = load i64, ptr %i.ax, align 8, !range !7, !noalias !68, !noundef !6
  %i.gv = icmp eq i64 %i.gu, -9223372036854775808
  br i1 %i.gv, label %bb.ff, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bq, align 8, !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !68
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bu)
          to label %bb.q unwind label %bb.p, !noalias !72

bb.p:                                             ; preds = %bb.o
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !68
  %i.gx = load ptr, ptr %i.ba, align 8, !noalias !68, !nonnull !6, !align !30, !noundef !6
  invoke void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials15assume_role_arn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gx)
          to label %bb.t unwind label %bb.s, !noalias !72

bb.r:                                             ; preds = %bb.fb, %bb.es, %bb.eq, %bb.ac, %bb.s
  %.pn30.pn.i.i = phi { ptr, i32 } [ %.pn30.i.i, %bb.fb ], [ %.pn30.i.i, %bb.eq ], [ %.pn21.pn.i.i, %bb.es ], [ %.pn8.i.i, %bb.ac ], [ %i.ha, %bb.s ] ; 2 uses
  store i8 0, ptr %i.br, align 1, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !68
  %i.gy = load i8, ptr %i.bq, align 8, !range !21, !noalias !68, !noundef !6
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.fc, label %bb.ar

bb.s:                                             ; preds = %bb.q
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.hb = load i64, ptr %i.bu, align 8, !range !7, !noalias !68, !noundef !6
  %.not.i.i = icmp eq i64 %i.hb, -9223372036854775808
  br i1 %.not.i.i, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !68
  %i.hc = load ptr, ptr %i.ba, align 8, !noalias !68, !nonnull !6, !align !30, !noundef !6
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hc)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.v, !noalias !72

bb.v:                                             ; preds = %bb.u
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !68
  br label %bb.w

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !68
  invoke void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEB1K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 14, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.y unwind label %bb.x, !noalias !72

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn6.i.i = phi { ptr, i32 } [ %i.he, %bb.x ], [ %i.hd, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !68
  br label %bb.ac

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EB1j_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !68
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role25AssumeRoleProviderBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(600) %i.aq) #19
          to label %bb.am unwind label %bb.ao, !noalias !72

bb.ao:                                            ; preds = %bb.fc, %bb.fb, %bb.eu, %bb.et, %bb.er, %.body.i.i, %bb.an, %bb.l
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !72
  unreachable

bb.ap:                                            ; preds = %bb.ej, %bb.ed, %bb.am
  %.pn21.i.i = phi { ptr, i32 } [ %i.ls, %bb.ej ], [ %.pn18.pn.i.i, %bb.ed ], [ %.pn12.i.i, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !68
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af
  %.pn21.pn.i.i = phi { ptr, i32 } [ %.pn21.i.i, %bb.ap ], [ %i.hj, %bb.af ]
  %i.hp = load i8, ptr %i.bs, align 2, !range !21, !noalias !68, !noundef !6
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.et, label %bb.es

bb.ar:                                            ; preds = %bb.h, %bb.l, %bb.p, %bb.fc, %bb.r
  %.pn30.pn.pn.i.i = phi { ptr, i32 } [ %.pn30.pn.i.i, %bb.fc ], [ %.pn30.pn.i.i, %bb.r ], [ %i.gw, %bb.p ], [ %i.gt, %bb.l ], [ %i.gs, %bb.h ]
  store i8 0, ptr %i.bq, align 8, !noalias !68
  store i8 2, ptr %i.bn, align 1, !noalias !68
  br label %.body20

bb.as:                                            ; preds = %bb.ax, %bb.aw
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.dy, %bb.as
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hr, %bb.as ], [ %.pn45.i.i.i, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtBN_25AssumeRoleProviderBuilder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bo) #19
          to label %bb.ed unwind label %bb.ao, !noalias !72

bb.at:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !68
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !73, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.853.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %bb.au
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.ay
  ]

bb.au:                                            ; preds = %bb.at, %.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cb, i8 1, i64 7, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.cc, ptr noundef nonnull align 8 dereferenceable(600) %i.bo, i64 600, i1 false), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !74
  %i.hs = load i64, ptr %i.cd, align 8, !range !78, !noalias !74, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.hs, -9223372036854775807
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, ptr noundef nonnull align 8 dereferenceable(416) %i.ce, i64 416, i1 false), !noalias !74
  br label %bb.bl

.thread.i.i.i:                                    ; preds = %bb.au
  store i8 4, ptr %.phi.trans.insert69.i.i, align 8, !noalias !74
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !74
  br label %bb.az

bb.aw:                                            ; preds = %bb.at
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #21
          to label %.noexc.i.i unwind label %bb.as, !noalias !72

.noexc.i.i:                                       ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.at
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #21
          to label %.noexc37.i.i unwind label %bb.as, !noalias !72

.noexc37.i.i:                                     ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !74
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !range !73, !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
  ]

._crit_edge.i.i:                                  ; preds = %bb.ay
  %.pre70.i.i = load i8, ptr %.phi.trans.insert69.i.i, align 8, !range !84, !noalias !79
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i, %.thread.i.i.i
  %i.ht = phi i8 [ 4, %.thread.i.i.i ], [ %.pre70.i.i, %._crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  invoke void @_RNvCsaB04DkjCm5a_10aws_config8defaults(ptr noalias noundef nonnull sret([624 x i8]) align 8 captures(address) dereferenceable(624) %i.a, i8 noundef %i.ht)
          to label %bb.bb unwind label %bb.ba, !noalias !85

bb.ba:                                            ; preds = %bb.az
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  br label %.body.thread.i.i.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %i.bp, ptr noundef nonnull align 8 dereferenceable(624) %i.a, i64 624, i1 false), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !79
  br label %bb.be

.body.thread.i.i.i:                               ; preds = %bb.bi, %bb.bf, %bb.ba
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.hy, %bb.bi ], [ %i.hv, %bb.bf ], [ %i.hu, %bb.ba ]
  store i8 2, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !74
  br label %.thread167.i.i.i

bb.bc:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %.noexc.i.i.i unwind label %.body.i.i.i, !noalias !86

.noexc.i.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %.noexc50.i.i.i unwind label %.body.i.i.i, !noalias !86

.noexc50.i.i.i:                                   ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.ay, %bb.bb
  invoke fastcc void @_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.aa, ptr noundef nonnull align 8 %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.bg unwind label %bb.bf, !noalias !86

bb.bf:                                            ; preds = %bb.be
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bp) #19
          to label %.body.thread.i.i.i unwind label %bb.bj, !noalias !87

bb.bg:                                            ; preds = %bb.be
  %i.hw = load i64, ptr %i.aa, align 8, !range !78, !alias.scope !83, !noalias !88, !noundef !6
  %i.hx = icmp eq i64 %i.hw, -9223372036854775807
  br i1 %i.hx, label %.thread62.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bp)
          to label %bb.bk unwind label %bb.bi, !noalias !87

bb.bi:                                            ; preds = %bb.bh
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.bj:                                            ; preds = %bb.bf
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !87
  unreachable

.body.i.i.i:                                      ; preds = %bb.bd, %bb.bc
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !74
  %cond.i64.i.i.i = icmp eq i8 %.pr.i.i.i, 3
  br i1 %cond.i64.i.i.i, label %bb.dl, label %.thread167.i.i.i

.thread62.i.i:                                    ; preds = %bb.bg
  store i8 3, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !74
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %bb.eb

bb.bk:                                            ; preds = %bb.bh
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, ptr noundef nonnull align 8 dereferenceable(416) %i.aa, i64 416, i1 false), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !74
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !74
  %i.ib = load <2 x ptr>, ptr %.sroa.1478.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.ib, ptr %i.cr, align 8, !alias.scope !89, !noalias !92
  %i.ic = load <2 x ptr>, ptr %.sroa.1882.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.ic, ptr %i.cs, align 8, !alias.scope !89, !noalias !92
  %i.id = load <2 x ptr>, ptr %.sroa.2084.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.id, ptr %i.ct, align 8, !alias.scope !89, !noalias !92
  %i.ie = load <2 x ptr>, ptr %.sroa.2286.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.ie, ptr %i.cu, align 8, !alias.scope !89, !noalias !92
  %i.if = load <2 x ptr>, ptr %.sroa.2488.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.if, ptr %i.cw, align 8, !alias.scope !89, !noalias !92
  %i.ig = load <2 x i32>, ptr %.sroa.872.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x i32> %i.ig, ptr %i.cx, align 8, !alias.scope !89, !noalias !92
  %3 = load <7 x i8>, ptr %.sroa.2690.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <7 x i8> %3, ptr %i.cv, align 8, !alias.scope !89, !noalias !92
  %i.ih = invoke { ptr, ptr } @_RNvMNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client8identity5cacheNtB2_13IdentityCache8no_cache()
          to label %bb.bn unwind label %bb.dj, !noalias !86 ; 2 uses

bb.bm:                                            ; preds = %bb.bn
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bn:                                            ; preds = %bb.bl
  %i.ij = extractvalue { ptr, ptr } %i.ih, 0
  %i.ik = extractvalue { ptr, ptr } %i.ih, 1
  invoke void @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder14identity_cacheNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(none) dereferenceable(416) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.y, ptr noundef nonnull %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ik)
          to label %bb.bo unwind label %bb.bm, !noalias !86

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !alias.scope !97, !noalias !74
  %i.il = load ptr, ptr %i.cz, align 8, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.im = load ptr, ptr %i.da, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.72..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !alias.scope !97, !noalias !74
  %i.in = load i8, ptr %i.de, align 1, !range !73, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !alias.scope !97, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i64 40, i1 false), !noalias !74
  %i.io = load ptr, ptr %i.dh, align 8, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.ip = load ptr, ptr %i.di, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i64 64, i1 false), !noalias !74
  %i.iq = load ptr, ptr %i.dk, align 8, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.ir = load ptr, ptr %i.dl, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  %i.is = load i8, ptr %i.dm, align 8, !range !19, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.it = load i8, ptr %i.dn, align 1, !range !19, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.iu = load ptr, ptr %i.do, align 8, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.iv = load ptr, ptr %i.dp, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  %i.iw = load i8, ptr %i.dq, align 2, !range !67, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false), !noalias !74
  %i.ix = load ptr, ptr %i.ds, align 8, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.iy = load ptr, ptr %i.dt, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.du, i64 48, i1 false), !noalias !74
  %i.iz = load i8, ptr %i.dv, align 2, !range !19, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.ja = load i32, ptr %i.dw, align 8, !range !101, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.jb = load i32, ptr %i.dx, align 4, !alias.scope !99, !noalias !100 ; 2 uses
  %i.jc = load i8, ptr %i.dy, align 1, !range !19, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.jd = load i8, ptr %i.dz, align 4, !range !19, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !97, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.068.i.i.i, i64 96, i1 false), !noalias !74
  store i32 %i.ja, ptr %.sroa.872.0..sroa_idx.i.i.i, align 8, !noalias !74
  store i32 %i.jb, ptr %.sroa.973.0..sroa_idx.i.i.i, align 4, !noalias !74
  store ptr %i.il, ptr %.sroa.1478.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.im, ptr %.sroa.1579.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.io, ptr %.sroa.1882.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.ip, ptr %.sroa.1983.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.iu, ptr %.sroa.2084.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.iv, ptr %.sroa.2185.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.iq, ptr %.sroa.2286.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.ir, ptr %.sroa.2387.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.ix, ptr %.sroa.2488.0..sroa_idx.i.i.i, align 8, !noalias !74
  store ptr %i.iy, ptr %.sroa.2589.0..sroa_idx.i.i.i, align 8, !noalias !74
  store i8 %i.is, ptr %.sroa.2690.0..sroa_idx.i.i.i, align 8, !noalias !74
  store i8 %i.it, ptr %.sroa.2791.0..sroa_idx.i.i.i, align 1, !noalias !74
  store i8 %i.iz, ptr %.sroa.2892.0..sroa_idx.i.i.i, align 2, !noalias !74
  store i8 %i.jc, ptr %.sroa.2993.0..sroa_idx.i.i.i, align 1, !noalias !74
  store i8 %i.jd, ptr %.sroa.3094.0..sroa_idx.i.i.i, align 4, !noalias !74
  store i8 %i.in, ptr %.sroa.3195.0..sroa_idx.i.i.i, align 1, !noalias !74
  store i8 %i.iw, ptr %.sroa.3296.0..sroa_idx.i.i.i, align 2, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068.i.i.i)
  %i.je = load i64, ptr %i.ea, align 8, !range !78, !noalias !74, !noundef !6
  %.not16.i.i.i = icmp eq i64 %i.je, -9223372036854775807
  br i1 %.not16.i.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !74
  invoke void @_RNvXs5_NtCs9hC3HWJ95bf_11aws_sdk_sts6configNtB5_7BuilderINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigE4from(ptr noalias noundef nonnull sret([496 x i8]) align 8 captures(none) dereferenceable(496) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ab)
          to label %bb.bv unwind label %bb.bu, !noalias !86

bb.bq:                                            ; preds = %bb.bo
  store i8 0, ptr %i.eb, align 1, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.098.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !74
  store ptr %i.il, ptr %i.el, align 8, !alias.scope !102, !noalias !105
  store ptr %i.im, ptr %i.em, align 8, !alias.scope !102, !noalias !105
  store i8 %i.in, ptr %i.en, align 1, !alias.scope !102, !noalias !105
  store ptr %i.io, ptr %i.eo, align 8, !alias.scope !102, !noalias !105
  store ptr %i.ip, ptr %i.ep, align 8, !alias.scope !102, !noalias !105
  store ptr %i.iu, ptr %i.eq, align 8, !alias.scope !102, !noalias !105
  store ptr %i.iv, ptr %i.er, align 8, !alias.scope !102, !noalias !105
  store ptr %i.iq, ptr %i.es, align 8, !alias.scope !102, !noalias !105
  store ptr %i.ir, ptr %i.et, align 8, !alias.scope !102, !noalias !105
  store i8 %i.is, ptr %i.eu, align 8, !alias.scope !102, !noalias !105
  store i8 %i.it, ptr %i.ev, align 1, !alias.scope !102, !noalias !105
  store i8 %i.iw, ptr %i.ew, align 2, !alias.scope !102, !noalias !105
  store ptr %i.ix, ptr %i.ex, align 8, !alias.scope !102, !noalias !105
  store ptr %i.iy, ptr %i.ey, align 8, !alias.scope !102, !noalias !105
  store i8 %i.iz, ptr %i.ez, align 2, !alias.scope !102, !noalias !105
  store i32 %i.ja, ptr %i.fa, align 8, !alias.scope !102, !noalias !105
  store i32 %i.jb, ptr %i.fb, align 4, !alias.scope !102, !noalias !105
  store i8 %i.jc, ptr %i.fc, align 1, !alias.scope !102, !noalias !105
  store i8 %i.jd, ptr %i.fd, align 4, !alias.scope !102, !noalias !105
  invoke void @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder6regionNtNtB5_6region6RegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(none) dereferenceable(416) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bs unwind label %bb.br, !noalias !86

bb.br:                                            ; preds = %bb.bq
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098.i.i.i)
  br label %.thread167.i.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !alias.scope !110, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.72..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false), !alias.scope !110, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i64 24, i1 false), !alias.scope !110, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fk, i64 40, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.fm, i64 64, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.fs, i64 48, i1 false), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !alias.scope !110, !noalias !74
  %4 = load <7 x i8>, ptr %i.fo, align 8, !alias.scope !112, !noalias !113
  %i.jg = load <2 x i32>, ptr %i.ft, align 8, !alias.scope !112, !noalias !113
  %i.jh = load <2 x ptr>, ptr %i.ff, align 8, !alias.scope !112, !noalias !113
  %i.ji = load <2 x ptr>, ptr %i.fl, align 8, !alias.scope !112, !noalias !113
  %i.jj = load <2 x ptr>, ptr %i.fp, align 8, !alias.scope !112, !noalias !113
  %i.jk = load <2 x ptr>, ptr %i.fn, align 8, !alias.scope !112, !noalias !113
  %i.jl = load <2 x ptr>, ptr %i.fr, align 8, !alias.scope !112, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.098.i.i.i, i64 96, i1 false), !noalias !74
  store <2 x i32> %i.jg, ptr %.sroa.872.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.jh, ptr %.sroa.1478.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.ji, ptr %.sroa.1882.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.jj, ptr %.sroa.2084.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.jk, ptr %.sroa.2286.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <2 x ptr> %i.jl, ptr %.sroa.2488.0..sroa_idx.i.i.i, align 8, !noalias !74
  store <7 x i8> %4, ptr %.sroa.2690.0..sroa_idx.i.i.i, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098.i.i.i)
  br label %bb.bp

bb.bt:                                            ; preds = %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %bb.df, %bb.cz
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !86
  unreachable

bb.bu:                                            ; preds = %bb.bp
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.bv:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !74
  %.val.i.i.i = load ptr, ptr %.sroa.2084.0..sroa_idx.i.i.i, align 8, !noalias !74, !noundef !6 ; 3 uses
  %.val48.i.i.i = load ptr, ptr %.sroa.2185.0..sroa_idx.i.i.i, align 8, !noalias !74 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i.i.i) ]
  %i.jo = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !86
  %i.jp = icmp slt i64 %i.jo, 0
  br i1 %i.jp, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.trap()
  unreachable

bb.by:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #21
          to label %.noexc53.i.i.i unwind label %.thread179.i.i.i, !noalias !86

.noexc53.i.i.i:                                   ; preds = %bb.by
  unreachable

.thread179.i.i.i:                                 ; preds = %bb.by
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !74
  br label %bb.dh

bb.bz:                                            ; preds = %bb.bw
  store ptr %.val.i.i.i, ptr %i.t, align 8, !noalias !74
  store ptr %.val48.i.i.i, ptr %i.fu, align 8, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !74
  store i8 0, ptr %i.fv, align 2, !noalias !74
  %.sroa.0152.0.copyload.i.i.i = load i64, ptr %i.fw, align 8, !noalias !74 ; 2 uses
  %.not.i54.i.i.i = icmp eq i64 %.sroa.0152.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i54.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i64 %.sroa.0152.0.copyload.i.i.i, ptr %i.s, align 8, !alias.scope !114, !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6154.0..sroa_idx155.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6154.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !74
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.jr = invoke { i64, i32 } @_RNvMs4_NtCs9PsDcNHE0mC_16aws_smithy_async4timeNtB5_16SharedTimeSource3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %.noexc55.i.i.i unwind label %bb.cc, !noalias !86 ; 2 uses

.noexc55.i.i.i:                                   ; preds = %bb.cb
  %i.js = extractvalue { i64, i32 } %i.jr, 0
  %i.jt = extractvalue { i64, i32 } %i.jr, 1
  invoke void @_RNvNtNtCsaB04DkjCm5a_10aws_config3sts4util20default_session_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 20, i64 noundef %i.js, i32 noundef %i.jt)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.cc, !noalias !86

bb.cc:                                            ; preds = %.noexc55.i.i.i, %bb.cb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.noexc55.i.i.i, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.p, ptr noundef nonnull align 8 dereferenceable(496) %i.u, i64 496, i1 false), !noalias !74
  invoke void @_RNvMs0_NtCs9hC3HWJ95bf_11aws_sdk_sts6configNtB5_7Builder5build(ptr noalias noundef nonnull sret([504 x i8]) align 8 captures(none) dereferenceable(504) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(496) %i.p)
          to label %bb.ce unwind label %bb.cd, !noalias !86

bb.cd:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !74
  br label %.thread171.i.i.i

bb.ce:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !74
  %i.jw = invoke noundef nonnull ptr @_RNvMNtCs9hC3HWJ95bf_11aws_sdk_sts6clientNtB2_6Client9from_conf(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(504) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79)
          to label %bb.cg unwind label %bb.cf, !noalias !86 ; 3 uses

.thread171.i.i.i:                                 ; preds = %bb.cf, %bb.cd
  %.pn21.i.i.i = phi { ptr, i32 } [ %i.jx, %bb.cf ], [ %i.jv, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !74
  br label %bb.dg

bb.cf:                                            ; preds = %bb.ce
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.thread171.i.i.i

bb.cg:                                            ; preds = %bb.ce
  store ptr %i.jw, ptr %i.r, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.jy = atomicrmw add ptr %i.jw, i64 1 monotonic, align 8, !noalias !123
  %i.jz = icmp slt i64 %i.jy, 0
  br i1 %i.jz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.trap()
  unreachable

bb.ci:                                            ; preds = %bb.cg
  store ptr %i.jw, ptr %i.fx, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.11.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.16.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.18.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.20.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i32 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !120, !noalias !74
  store i64 -9223372036854775808, ptr %i.fy, align 8, !alias.scope !120, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !74
  store i8 0, ptr %i.fz, align 1, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !74
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder12set_role_arn(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ck unwind label %bb.cj, !noalias !86

bb.cj:                                            ; preds = %bb.ci
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !74
  br label %bb.dd

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !74
  store i8 0, ptr %i.ga, align 4, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 24, i1 false), !noalias !74
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder15set_external_id(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cm unwind label %bb.cl, !noalias !86

bb.cl:                                            ; preds = %bb.ck
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !74
  br label %bb.dd

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !74
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder21set_role_session_name(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.co unwind label %bb.cn, !noalias !86

bb.cn:                                            ; preds = %bb.cm
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !74
  br label %bb.dc

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !74
  store i8 0, ptr %i.gc, align 1, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false), !noalias !74
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder10set_policy(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.cq unwind label %bb.cp, !noalias !86

bb.cp:                                            ; preds = %bb.co
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74
  br label %bb.db

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74
  store i8 0, ptr %i.ge, align 2, !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false), !noalias !74
end_hunk_1
begin_hunk_2_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.cmw = icmp ult i64 %i.cmv, 6
  call void @llvm.assume(i1 %i.cmw)
  %i.cmx = icmp samesign ugt i64 %i.cmv, 1
  br i1 %i.cmx, label %bb.aon, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aon:                                           ; preds = %bb.aom
  %i.cmy = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3605, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 32
  %i.cna = load ptr, ptr %i.cmz, align 8, !noalias !3609, !nonnull !6, !noundef !6
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cmy, i64 40
  %i.cnc = load i64, ptr %i.cnb, align 8, !noalias !3609, !noundef !6
  store i64 2, ptr %i.g, align 8, !noalias !3605
  %.sroa.3.0..sroa_idx.i.i.i725 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cna, ptr %.sroa.3.0..sroa_idx.i.i.i725, align 8, !noalias !3605
  %.sroa.513.0..sroa_idx.i.i.i726 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cnc, ptr %.sroa.513.0..sroa_idx.i.i.i726, align 8, !noalias !3605
  %i.cnd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.aoo unwind label %bb.aoa, !noalias !3609 ; 2 uses

bb.aoo:                                           ; preds = %bb.aon
  %i.cne = extractvalue { ptr, ptr } %i.cnd, 0    ; 2 uses
  %i.cnf = extractvalue { ptr, ptr } %i.cnd, 1    ; 2 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 24
  %i.cnh = load ptr, ptr %i.cng, align 8, !invariant.load !6, !noalias !3609, !nonnull !6
  %i.cni = invoke noundef zeroext i1 %i.cnh(ptr noundef %i.cne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.aop unwind label %bb.aoa, !noalias !3609

bb.aop:                                           ; preds = %bb.aoo
  br i1 %i.cni, label %bb.aoq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aoq:                                           ; preds = %bb.aop
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3605
  %i.cnj = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3605, !nonnull !6, !align !30, !noundef !6
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3605
  store ptr @18, ptr %i.d, align 8, !noalias !3605
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 81 to ptr), ptr %i.cnl, align 8, !noalias !3605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3605
  store ptr %i.m, ptr %i.b, align 8, !noalias !3605
  store ptr %i.b, ptr %i.c, align 8, !noalias !3605
  store ptr %i.d, ptr %i.e, align 8, !noalias !3605
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @9, ptr %i.cnm, align 8, !noalias !3605
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.cnn, align 8, !noalias !3605
  %i.cno = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @19, ptr %i.cno, align 8, !noalias !3605
  store i64 1, ptr %i.f, align 8, !noalias !3605
  %.sroa.415.0..sroa_idx.i.i.i727 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.415.0..sroa_idx.i.i.i727, align 8, !noalias !3605
  %.sroa.516.0..sroa_idx.i.i.i728 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i728, align 8, !noalias !3605
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cnk, ptr %i.cnp, align 8, !noalias !3605
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cmy, ptr noundef nonnull %i.cne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cnf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.aor unwind label %bb.aoa, !noalias !3608

bb.aor:                                           ; preds = %bb.aoq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3605
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aos:                                           ; preds = %bb.aoa
  %i.cnq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !3608
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aor, %bb.aop, %bb.aom, %bb.aol, %bb.aok
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i unwind label %bb.aot, !noalias !3563

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i: ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3559
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.aot:                                           ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cnr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aox

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.any
  %i.cns = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.034.0.copyload.i = load i64, ptr %i.cns, align 8, !alias.scope !3614, !noalias !3559 ; 2 uses
  %.sroa.10.0..sroa_idx.i738 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i738, i64 16, i1 false), !alias.scope !3614, !noalias !3559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3559
  %i.cnt = icmp eq i64 %.sroa.034.0.copyload.i, -9223372036854775807
  br i1 %i.cnt, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.aou

bb.aou:                                           ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i713, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !alias.scope !3615, !noalias !3619
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.aou, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i
  %.sroa.037.0.i = phi i64 [ %.sroa.034.0.copyload.i, %bb.aou ], [ -9223372036854775808, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i ], [ -9223372036854775808, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  %i.cnu = load ptr, ptr %i.clm, align 8, !alias.scope !3627, !noalias !3559, !noundef !6 ; 2 uses
  %i.cnv = icmp eq ptr %i.cnu, null
  br i1 %i.cnv, label %bb.aph, label %bb.aov

bb.aov:                                           ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cnw = atomicrmw sub ptr %i.cnu, i64 1 release, align 8, !noalias !3628
  %i.cnx = icmp eq i64 %i.cnw, 1
  br i1 %i.cnx, label %bb.aow, label %bb.aph

bb.aow:                                           ; preds = %bb.aov
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clm) #22
          to label %bb.aph unwind label %bb.and, !noalias !3563

bb.aox:                                           ; preds = %bb.aot, %bb.aoa, %bb.anx
  %.pn8.i721 = phi { ptr, i32 } [ %i.cln, %bb.anx ], [ %i.cnr, %bb.aot ], [ %i.clr, %bb.aoa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3633)
  call void @llvm.experimental.noalias.scope.decl(metadata !3636)
  %i.cny = load ptr, ptr %i.clm, align 8, !alias.scope !3639, !noalias !3559, !noundef !6 ; 2 uses
  %i.cnz = icmp eq ptr %i.cny, null
  br i1 %i.cnz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717, label %bb.aoy

bb.aoy:                                           ; preds = %bb.aox
  %i.coa = atomicrmw sub ptr %i.cny, i64 1 release, align 8, !noalias !3640
  %i.cob = icmp eq i64 %i.coa, 1
  br i1 %i.cob, label %bb.aoz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.aoz:                                           ; preds = %bb.aoy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clm) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3563

bb.apa:                                           ; preds = %bb.ape, %bb.apc, %bb.aoz, %bb.anv, %bb.anr
  %i.coc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !3563
  unreachable

bb.apb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715
  %i.cod = atomicrmw sub ptr %i.ckg, i64 1 release, align 8, !noalias !3645
  %i.coe = icmp eq i64 %i.cod, 1
  br i1 %i.coe, label %bb.apc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.apc:                                           ; preds = %bb.apb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ckf) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3563

bb.apd:                                           ; preds = %bb.ani
  %i.cof = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.cog = load i8, ptr %i.cof, align 8, !range !73, !noalias !3559, !noundef !6
  %cond.i.i29.i719 = icmp eq i8 %i.cog, 3
  br i1 %cond.i.i29.i719, label %bb.ape, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715

bb.ape:                                           ; preds = %bb.apd
  %i.coh = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.coh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715 unwind label %bb.apa, !noalias !3563

bb.apf:                                           ; preds = %bb.ang, %bb.anf
  %i.coi = landingpad { ptr, i32 }
          cleanup
  br label %.body743

bb.apg:                                           ; preds = %bb.anj
  store i8 3, ptr %i.cki, align 8, !noalias !3559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i713)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  br label %common.ret

bb.aph:                                           ; preds = %bb.aow, %bb.aov, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8990, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i713, i64 16, i1 false), !noalias !3650
  store i8 1, ptr %i.cki, align 8, !noalias !3559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i713)
  %.sroa.4992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4992.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8990, i64 16, i1 false)
  store i64 %.sroa.037.0.i, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  br label %bb.api

bb.api:                                           ; preds = %bb.aph, %bb.amw
  %i.coj = getelementptr inbounds nuw i8, ptr %1, i64 2104 ; 6 uses
  %i.cok = getelementptr inbounds nuw i8, ptr %1, i64 2564
  %i.col = load i8, ptr %i.cok, align 4, !range !19, !noundef !6
  %i.com = getelementptr inbounds nuw i8, ptr %1, i64 2515
  store i8 %i.col, ptr %i.com, align 1, !alias.scope !3651
  %i.con = getelementptr inbounds nuw i8, ptr %1, i64 2565
  %i.coo = load i8, ptr %i.con, align 1, !range !19, !noundef !6
  %i.cop = getelementptr inbounds nuw i8, ptr %1, i64 2516
  store i8 %i.coo, ptr %i.cop, align 4, !alias.scope !3654
  %i.coq = getelementptr inbounds nuw i8, ptr %1, i64 2582 ; 2 uses
  store i8 0, ptr %i.coq, align 2
  %i.cor = getelementptr inbounds nuw i8, ptr %1, i64 2544
  %i.cos = load ptr, ptr %i.cor, align 8, !noundef !6
  %i.cot = getelementptr inbounds nuw i8, ptr %1, i64 2552
  %i.cou = load ptr, ptr %i.cot, align 8
  %i.cov = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder18set_identity_cache(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noundef %i.cos, ptr %i.cou)
          to label %bb.apk unwind label %bb.apj   ; 0 uses

bb.apj:                                           ; preds = %bb.api
  %i.cow = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqr

bb.apk:                                           ; preds = %bb.api
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  %i.cox = getelementptr inbounds nuw i8, ptr %1, i64 2586 ; 2 uses
  store i8 0, ptr %i.cox, align 2
  %i.coy = getelementptr inbounds nuw i8, ptr %1, i64 2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.coy, i64 24, i1 false)
  %i.coz = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder24set_credentials_provider(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hk)
          to label %bb.apm unwind label %bb.apl   ; 0 uses

bb.apl:                                           ; preds = %bb.apk
  %i.cpa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  br label %bb.aqr

bb.apm:                                           ; preds = %bb.apk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  %i.cpb = getelementptr inbounds nuw i8, ptr %1, i64 2583
  store i8 0, ptr %i.cpb, align 1
  %i.cpc = getelementptr inbounds nuw i8, ptr %1, i64 2520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %i.cpc, i64 24, i1 false)
  %i.cpd = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder18set_token_provider(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hj)
          to label %bb.apo unwind label %bb.apn   ; 0 uses

bb.apn:                                           ; preds = %bb.apm
  %i.cpe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  br label %bb.aqr

bb.apo:                                           ; preds = %bb.apm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  %i.cpf = getelementptr inbounds nuw i8, ptr %1, i64 2587 ; 2 uses
  store i8 0, ptr %i.cpf, align 1
  %i.cpg = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.cph = load ptr, ptr %i.cpg, align 8, !noundef !6
  %i.cpi = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.cpj = load ptr, ptr %i.cpi, align 8
  %i.cpk = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder14set_sleep_impl(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noundef %i.cph, ptr %i.cpj)
          to label %bb.apq unwind label %bb.app   ; 0 uses

bb.app:                                           ; preds = %bb.apo
  %i.cpl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqr

bb.apq:                                           ; preds = %bb.apo
  %i.cpm = getelementptr inbounds nuw i8, ptr %1, i64 2561
  %i.cpn = load i8, ptr %i.cpm, align 1, !range !19, !noundef !6
  %i.cpo = getelementptr inbounds nuw i8, ptr %1, i64 2512 ; 2 uses
  store i8 %i.cpn, ptr %i.cpo, align 8, !alias.scope !3657
  %i.cpp = getelementptr inbounds nuw i8, ptr %1, i64 2562
  %i.cpq = load i8, ptr %i.cpp, align 2, !range !19, !noundef !6
  %i.cpr = getelementptr inbounds nuw i8, ptr %1, i64 2513
  store i8 %i.cpq, ptr %i.cpr, align 1, !alias.scope !3660
  %i.cps = getelementptr inbounds nuw i8, ptr %1, i64 2563
  %i.cpt = load i8, ptr %i.cps, align 1, !range !19, !noundef !6
  %i.cpu = getelementptr inbounds nuw i8, ptr %1, i64 2514
  store i8 %i.cpt, ptr %i.cpu, align 2, !alias.scope !3663
  %i.cpv = getelementptr inbounds nuw i8, ptr %1, i64 1944
  %i.cpw = getelementptr inbounds nuw i8, ptr %1, i64 2200 ; 2 uses
  %i.cpx = load <2 x i32>, ptr %i.cpv, align 8
  store <2 x i32> %i.cpx, ptr %i.cpw, align 8, !alias.scope !3666
  %i.cpy = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.cpz = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cpz, ptr noundef nonnull align 8 dereferenceable(24) %i.cpy, i64 24, i1 false)
  %i.cqa = getelementptr inbounds nuw i8, ptr %1, i64 2566
  %i.cqb = load i8, ptr %i.cqa, align 2, !range !73, !noundef !6
  %i.cqc = getelementptr inbounds nuw i8, ptr %1, i64 2517
  store i8 %i.cqb, ptr %i.cqc, align 1, !alias.scope !3669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 24, i1 false)
  %i.cqd = invoke noundef nonnull align 8 ptr @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder26set_auth_scheme_preferenceNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hi)
          to label %bb.aps unwind label %bb.apr   ; 0 uses

bb.apr:                                           ; preds = %bb.apq
  %i.cqe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  br label %bb.amy

bb.aps:                                           ; preds = %bb.apq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  %i.cqf = load <2 x i32>, ptr %i.cpw, align 8
  %.sroa.10996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10996.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008, ptr noundef nonnull align 8 dereferenceable(24) %i.cpz, i64 24, i1 false)
  %.sroa.12998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12998.0..sroa_idx, i64 64, i1 false)
  %.sroa.13999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13999.0..sroa_idx, i64 48, i1 false)
  %.sroa.141000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %i.cqg = load <2 x ptr>, ptr %.sroa.141000.0..sroa_idx, align 8
  %.sroa.161002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.161002.0..sroa_idx, i64 24, i1 false)
  %.sroa.171003.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.171003.0..sroa_idx, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2448
  %i.cqh = load <2 x ptr>, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.cqi = load <2 x ptr>, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.cqj = load <2 x ptr>, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.cqk = load <2 x ptr>, ptr %.sroa.24.0..sroa_idx, align 8
  %3 = load <7 x i8>, ptr %i.cpo, align 8
  %.sroa.01004.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 48
  %i.cql = getelementptr inbounds nuw i8, ptr %1, i64 2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cql, i64 24, i1 false)
  %.sroa.01004.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 72
  %i.cqm = getelementptr inbounds nuw i8, ptr %1, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cqm, i64 24, i1 false)
  %.sroa.01004.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 24
  %i.cqn = getelementptr inbounds nuw i8, ptr %1, i64 2128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cqn, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004, ptr noundef nonnull align 8 dereferenceable(24) %i.coj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  %i.cqo = getelementptr inbounds nuw i8, ptr %1, i64 2571
  store i8 0, ptr %i.cqo, align 1
  store i32 0, ptr %i.coq, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  store i8 0, ptr %i.cox, align 2
  %i.cqp = getelementptr inbounds nuw i8, ptr %1, i64 2572
  store i8 0, ptr %i.cqp, align 4
  %i.cqq = getelementptr inbounds nuw i8, ptr %1, i64 1688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.cqq)
          to label %bb.apu unwind label %bb.apt

bb.apt:                                           ; preds = %bb.aps
  %i.cqr = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.apu:                                           ; preds = %bb.aps
  %i.cqs = getelementptr inbounds nuw i8, ptr %1, i64 2567 ; 2 uses
  %i.cqt = load i8, ptr %i.cqs, align 1, !range !21, !noundef !6
  %i.cqu = trunc nuw i8 %i.cqt to i1
  br i1 %i.cqu, label %bb.apv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.apv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.apu
  store i8 0, ptr %i.cqs, align 1
  %i.cqv = getelementptr inbounds nuw i8, ptr %1, i64 2573
  store i8 0, ptr %i.cqv, align 1
  %i.cqw = getelementptr inbounds nuw i8, ptr %1, i64 2574
  store i8 0, ptr %i.cqw, align 2
  store i8 0, ptr %i.cpf, align 1
  %i.cqx = getelementptr inbounds nuw i8, ptr %1, i64 2575
  store i8 0, ptr %i.cqx, align 1
  %i.cqy = getelementptr inbounds nuw i8, ptr %1, i64 2569 ; 2 uses
  %i.cqz = load i8, ptr %i.cqy, align 1, !range !21, !noundef !6
  %i.cra = trunc nuw i8 %i.cqz to i1
  br i1 %i.cra, label %bb.apz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.apv:                                           ; preds = %bb.apu
  %i.crb = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 4 uses
  %i.crc = load i64, ptr %i.crb, align 8, !range !78, !alias.scope !3672, !noundef !6
  %switch.i = icmp slt i64 %i.crc, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.apw

bb.apw:                                           ; preds = %bb.apv
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %i.crd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %.body323 unwind label %bb.apy

bb.apy:                                           ; preds = %bb.apx
  %i.cre = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.apw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.apz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crf = getelementptr inbounds nuw i8, ptr %1, i64 2568 ; 2 uses
  %i.crg = load i8, ptr %i.crf, align 8, !range !21, !noundef !6
  %i.crh = trunc nuw i8 %i.crg to i1
  br i1 %i.crh, label %bb.aqe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.apz:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cri = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 4 uses
  %i.crj = load i64, ptr %i.cri, align 8, !range !78, !alias.scope !3675, !noundef !6
  %switch.i758 = icmp slt i64 %i.crj, -9223372036854775806
  br i1 %switch.i758, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760 unwind label %bb.aqb

bb.aqb:                                           ; preds = %bb.aqa
  %i.crk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %.body761 unwind label %bb.aqc

bb.aqc:                                           ; preds = %bb.aqb
  %i.crl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760: ; preds = %bb.aqa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aqd

bb.aqd:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760
  %i.crm = landingpad { ptr, i32 }
          cleanup
  br label %.body761

.body761:                                         ; preds = %bb.aqb, %bb.aqd
  %eh.lpad-body762 = phi { ptr, i32 } [ %i.crm, %bb.aqd ], [ %i.crk, %bb.aqb ] ; 2 uses
  %i.crn = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %i.cro = load i8, ptr %i.crn, align 8, !range !21, !noundef !6
  %i.crp = trunc nuw i8 %i.cro to i1
  br i1 %i.crp, label %bb.aqn, label %.body764

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.aqe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crq = getelementptr inbounds nuw i8, ptr %1, i64 2570 ; 2 uses
  %i.crr = load i8, ptr %i.crq, align 2, !range !21, !noundef !6
  %i.crs = trunc nuw i8 %i.crr to i1
  br i1 %i.crs, label %bb.aqj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768

bb.aqe:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crt = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 4 uses
  %i.cru = load i64, ptr %i.crt, align 8, !range !7, !alias.scope !3678, !noundef !6
  %i.crv = icmp eq i64 %i.cru, -9223372036854775808
  br i1 %i.crv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqf

bb.aqf:                                           ; preds = %bb.aqe
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf
  %i.crw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %.body764 unwind label %bb.aqh

bb.aqh:                                           ; preds = %bb.aqg
  %i.crx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.aqf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aqi

.body764:                                         ; preds = %bb.aqi, %bb.aqg, %bb.aqn, %.body761
  %.pn215 = phi { ptr, i32 } [ %eh.lpad-body762, %.body761 ], [ %eh.lpad-body762, %bb.aqn ], [ %i.csb, %bb.aqi ], [ %i.crw, %bb.aqg ] ; 4 uses
  %i.cry = getelementptr inbounds nuw i8, ptr %1, i64 2570
  %i.crz = load i8, ptr %i.cry, align 2, !range !21, !noundef !6
  %i.csa = trunc nuw i8 %i.crz to i1
  br i1 %i.csa, label %bb.aqo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqi:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.csb = landingpad { ptr, i32 }
          cleanup
  br label %.body764

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768: ; preds = %bb.aqk, %bb.aqj, %bb.aql, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.csc = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store i8 0, ptr %i.crf, align 8
  store i8 0, ptr %i.cqy, align 1
  %i.csd = getelementptr inbounds nuw i8, ptr %1, i64 2588
  store i8 0, ptr %i.crq, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.csc, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.csd, i8 0, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01004, i64 96, i1 false)
  %.sroa.51005.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i32> %i.cqf, ptr %.sroa.51005.0..sroa_idx, align 8
  %.sroa.71007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007, i64 40, i1 false)
  %.sroa.81008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008, i64 24, i1 false)
  %.sroa.91009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009, i64 64, i1 false)
  %.sroa.101010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010, i64 48, i1 false)
  %.sroa.111011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x ptr> %i.cqg, ptr %.sroa.111011.0..sroa_idx, align 8
  %.sroa.131013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013, i64 24, i1 false)
  %.sroa.141014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014, i64 24, i1 false)
  %.sroa.151015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x ptr> %i.cqh, ptr %.sroa.151015.0..sroa_idx, align 8
  %.sroa.171017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x ptr> %i.cqi, ptr %.sroa.171017.0..sroa_idx, align 8
  %.sroa.191019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x ptr> %i.cqj, ptr %.sroa.191019.0..sroa_idx, align 8
  %.sroa.211021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x ptr> %i.cqk, ptr %.sroa.211021.0..sroa_idx, align 8
  %.sroa.231023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <7 x i8> %3, ptr %.sroa.231023.0..sroa_idx, align 8
  br label %common.ret

bb.aqj:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cse = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  %i.csf = load ptr, ptr %i.cse, align 8, !alias.scope !3681, !noundef !6 ; 2 uses
  %i.csg = icmp eq ptr %i.csf, null
  br i1 %i.csg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768, label %bb.aqk

bb.aqk:                                           ; preds = %bb.aqj
  %i.csh = atomicrmw sub ptr %i.csf, i64 1 release, align 8, !noalias !3684
  %i.csi = icmp eq i64 %i.csh, 1
  br i1 %i.csi, label %bb.aql, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768

bb.aql:                                           ; preds = %bb.aqk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cse) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768 unwind label %bb.aqm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770: ; preds = %bb.aqp, %bb.aqo, %bb.aqq, %bb.asu, %bb.ass, %bb.aqm, %.body764
  %.pn217 = phi { ptr, i32 } [ %i.cso, %bb.aqm ], [ %.pn204.pn.pn.pn.pn.pn, %bb.ass ], [ %.pn215, %.body764 ], [ %.pn204.pn.pn.pn.pn.pn, %bb.asu ], [ %.pn215, %bb.aqq ], [ %.pn215, %bb.aqo ], [ %.pn215, %bb.aqp ]
  %i.csj = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %i.csk = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store i8 0, ptr %i.csk, align 8
  %i.csl = getelementptr inbounds nuw i8, ptr %1, i64 2569
  store i8 0, ptr %i.csl, align 1
  %i.csm = getelementptr inbounds nuw i8, ptr %1, i64 2588
  %i.csn = getelementptr inbounds nuw i8, ptr %1, i64 2570
  store i8 0, ptr %i.csn, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.csj, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.csm, i8 0, i64 5, i1 false)
  store i8 2, ptr %i.jt, align 8
  resume { ptr, i32 } %.pn217

bb.aqm:                                           ; preds = %bb.aql
  %i.cso = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqn:                                           ; preds = %.body761
  %i.csp = getelementptr inbounds nuw i8, ptr %1, i64 712
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.csp) #19
          to label %.body764 unwind label %bb.bk

bb.aqo:                                           ; preds = %.body764
  %i.csq = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3691)
  %i.csr = load ptr, ptr %i.csq, align 8, !alias.scope !3691, !noundef !6 ; 2 uses
  %i.css = icmp eq ptr %i.csr, null
  br i1 %i.css, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.cst = atomicrmw sub ptr %i.csr, i64 1 release, align 8, !noalias !3694
  %i.csu = icmp eq i64 %i.cst, 1
  br i1 %i.csu, label %bb.aqq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqq:                                           ; preds = %bb.aqp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.csq) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770 unwind label %bb.bk

bb.aqr:                                           ; preds = %bb.app, %bb.apn, %bb.apl, %bb.apj
  %.pn187.ph = phi { ptr, i32 } [ %i.cpe, %bb.apn ], [ %i.cpl, %bb.app ], [ %i.cow, %bb.apj ], [ %i.cpa, %bb.apl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.hm) #19
          to label %bb.amy unwind label %bb.bk

.body743:                                         ; preds = %bb.apf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717
  %i.csv = phi ptr [ %i.ckj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 ], [ %i.cju, %bb.apf ]
  %.pn183 = phi { ptr, i32 } [ %.pn12.i718, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 ], [ %i.coi, %bb.apf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.csv) #19
          to label %bb.amy unwind label %bb.bk

bb.aqs:                                           ; preds = %bb.aif
  %i.csw = getelementptr inbounds nuw i8, ptr %1, i64 2544 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  %i.csx = load ptr, ptr %i.csw, align 8, !alias.scope !3701, !noundef !6 ; 2 uses
  %i.csy = icmp eq ptr %i.csx, null
  br i1 %i.csy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs
  %i.csz = atomicrmw sub ptr %i.csx, i64 1 release, align 8, !noalias !3704
  %i.cta = icmp eq i64 %i.csz, 1
  br i1 %i.cta, label %bb.aqu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aqu:                                           ; preds = %bb.aqt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.csw) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.aqv:                                           ; preds = %bb.afz
  %i.ctb = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  %i.ctc = load ptr, ptr %i.ctb, align 8, !alias.scope !3711, !noundef !6 ; 2 uses
  %i.ctd = icmp eq ptr %i.ctc, null
  br i1 %i.ctd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqw

bb.aqw:                                           ; preds = %bb.aqv
  %i.cte = atomicrmw sub ptr %i.ctc, i64 1 release, align 8, !noalias !3714
  %i.ctf = icmp eq i64 %i.cte, 1
  br i1 %i.ctf, label %bb.aqx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aqx:                                           ; preds = %bb.aqw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ctb) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.aqy:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ctg = getelementptr inbounds nuw i8, ptr %1, i64 2600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ctg) #19
          to label %bb.acs unwind label %bb.bk

bb.aqz:                                           ; preds = %bb.acs
  %i.cth = getelementptr inbounds nuw i8, ptr %1, i64 2104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.cth) #19
          to label %bb.wm unwind label %bb.bk

bb.ara:                                           ; preds = %bb.wm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18env_service_config16EnvServiceConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(176) %i.io) #19
          to label %bb.wn unwind label %bb.bk

bb.arb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit481
  %i.cti = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  %i.ctj = load ptr, ptr %i.cti, align 8, !alias.scope !3721, !noundef !6 ; 2 uses
  %i.ctk = icmp eq ptr %i.ctj, null
  br i1 %i.ctk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.arc

bb.arc:                                           ; preds = %bb.arb
  %i.ctl = atomicrmw sub ptr %i.ctj, i64 1 release, align 8, !noalias !3724
  %i.ctm = icmp eq i64 %i.ctl, 1
  br i1 %i.ctm, label %bb.ard, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ard:                                           ; preds = %bb.arc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cti) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.are:                                           ; preds = %.body456
  %i.ctn = getelementptr inbounds nuw i8, ptr %1, i64 1920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ctn) #19
          to label %bb.pc unwind label %bb.bk

bb.arf:                                           ; preds = %bb.il
  %i.cto = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.cto) #19
          to label %.body323 unwind label %bb.bk

bb.arg:                                           ; preds = %.body323
  %i.ctp = getelementptr inbounds nuw i8, ptr %1, i64 1472
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.ctp) #19
          to label %bb.gy unwind label %bb.bk

bb.arh:                                           ; preds = %bb.ed
  %i.ctq = getelementptr inbounds nuw i8, ptr %1, i64 1280
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.ctq) #19
          to label %bb.bq unwind label %bb.bk

bb.ari:                                           ; preds = %bb.bq
  %i.ctr = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  %i.cts = load ptr, ptr %i.ctr, align 8, !alias.scope !3731, !noundef !6 ; 2 uses
  %i.ctt = icmp eq ptr %i.cts, null
  br i1 %i.ctt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775, label %bb.arj

bb.arj:                                           ; preds = %bb.ari
  %i.ctu = atomicrmw sub ptr %i.cts, i64 1 release, align 8, !noalias !3734
  %i.ctv = icmp eq i64 %i.ctu, 1
  br i1 %i.ctv, label %bb.ark, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.ark:                                           ; preds = %bb.arj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ctr) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775 unwind label %bb.bk

bb.arl:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775
  %i.ctw = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3741)
  call void @llvm.experimental.noalias.scope.decl(metadata !3744)
  call void @llvm.experimental.noalias.scope.decl(metadata !3747)
  %i.ctx = load ptr, ptr %i.ctw, align 8, !alias.scope !3750, !nonnull !6, !noundef !6
  %i.cty = atomicrmw sub ptr %i.ctx, i64 1 release, align 8, !noalias !3750
  %i.ctz = icmp eq i64 %i.cty, 1
  br i1 %i.ctz, label %bb.arm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit

bb.arm:                                           ; preds = %bb.arl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ctw) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.arn:                                           ; preds = %bb.aro, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cua = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.cub = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.cuc = load i64, ptr %i.cub, align 8, !range !7, !noundef !6
  %.not211 = icmp eq i64 %i.cuc, -9223372036854775808
  br i1 %.not211, label %bb.arq, label %bb.arp

bb.aro:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cud = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.cud) #19
end_hunk_2
