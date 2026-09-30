Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsh_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_11NotifyGuard14notify_waiters:bb.a
bb.u:                                             ; preds = %.noexc32.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = cmpxchg ptr %i.at, i8 1, i8 0 release monotonic, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %.body.i, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.at, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.aa

bb.w:                                             ; preds = %.noexc32.i
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store atomic i64 2, ptr %i.bb release, align 8
  br label %.noexc32.i

bb.y:                                             ; preds = %bb.w
  %i.bc = cmpxchg ptr %i.at, i8 1, i8 0 release monotonic, align 1
  %i.bd = extractvalue { i8, i1 } %i.bc, 1
  br i1 %i.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify17NotifyWaitersListEBH_.exit.i, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.at, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify17NotifyWaitersListEBH_.exit.i unwind label %bb.f

bb.aa:                                            ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify17NotifyWaitersListEBH_.exit.i: ; preds = %bb.z, %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val20.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !align !9, !noundef !7 ; 2 uses
  %i.bf = icmp eq ptr %.val20.i, null
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify6WaiterEBH_.exit35.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify17NotifyWaitersListEBH_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val21.i = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val20.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !7, !noundef !7
  call void %i.bi(ptr noundef %.val21.i), !inline_history !581
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify6WaiterEBH_.exit35.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify6WaiterEBH_.exit35.i: ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify17NotifyWaitersListEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify20inner_notify_waiters.exit

bb.ac:                                            ; preds = %_RNvMs0_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_17NotifyWaitersList15pop_back_locked.exit.i
  %i.bj = load i64, ptr %i.aa, align 8, !noundef !7 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 32
  br i1 %i.bk, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ae, %_RNvMs0_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_17NotifyWaitersList15pop_back_locked.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store atomic i64 2, ptr %i.bl release, align 8
  br label %thread-pre-split.i

bb.ae:                                            ; preds = %bb.ac
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bj
  store <2 x ptr> %i.al, ptr %i.bm, align 8
  %i.bn = load i64, ptr %i.aa, align 8, !noundef !7
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.aa, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %bb.ag unwind label %.loopexit.split-lp.i

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit.i, %bb.l, %bb.e
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit37.i: ; preds = %bb.aj, %bb.ai, %.noexc.i
  resume { ptr, i32 } %.pn.pn.i

bb.ai:                                            ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  %i.bq = cmpxchg ptr %.sroa.0.1.i, i8 1, i8 0 release monotonic, align 1
  %i.br = extractvalue { i8, i1 } %i.bq, 1
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit37.i, label %bb.aj, !prof !10

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.1.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit37.i unwind label %bb.ah

_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify20inner_notify_waiters.exit: ; preds = %bb.b, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify6WaiterEBH_.exit35.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio2io5stdin5stdin(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio5stdin()
  tail call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinE3newB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvNtNtCslghKHtsL3a4_5tokio4sync6notify13notify_locked(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %2, 3
  switch i64 %i.a, label %default.unreachable17 [
    i64 0, label %bb.c
    i64 2, label %bb.c
    i64 1, label %bb.d
    i64 3, label %bb.b
  ], !prof !16

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #25
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = and i64 %2, -4
  %i.c = or disjoint i64 %i.b, 2
  %i.d = cmpxchg ptr %1, i64 %2, i64 %i.c seq_cst seq_cst, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  br i1 %i.e, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %3 to i1
  br i1 %i.g, label %bb.i, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = and i64 %i.f, 3
  switch i64 %i.h, label %bb.g [
    i64 0, label %bb.f
    i64 2, label %bb.f
  ], !prof !587

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.i = and i64 %i.f, -4
  %i.j = or disjoint i64 %i.i, 2
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #25
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.r
  %.sink = phi i64 [ %i.aa, %bb.r ], [ %i.j, %bb.f ]
  %.sroa.4.1.ph = phi ptr [ %i.v, %bb.r ], [ undef, %bb.f ]
  %.sroa.0.1.ph = phi ptr [ %i.t, %bb.r ], [ null, %bb.f ]
  store atomic i64 %.sink, ptr %1 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.o, %bb.c
  %.sroa.4.1 = phi ptr [ %i.v, %bb.o ], [ undef, %bb.c ], [ %.sroa.4.1.ph, %.sink.split ]
  %.sroa.0.1 = phi ptr [ %i.t, %bb.o ], [ null, %bb.c ], [ %.sroa.0.1.ph, %.sink.split ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.1, 1
  ret { ptr, ptr } %i.l

bb.i:                                             ; preds = %bb.d
  %i.m = tail call noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync6notify6WaiterE9pop_frontB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.l, label %bb.o, !prof !12

bb.j:                                             ; preds = %bb.d
  %i.n = tail call noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync6notify6WaiterE8pop_backB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.o, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
  unreachable

bb.m:                                             ; preds = %bb.q
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq ptr %i.t, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  invoke void %i.r(ptr noundef %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit unwind label %bb.t, !inline_history !1

bb.o:                                             ; preds = %bb.j, %bb.i
  %.sroa.04.0 = phi ptr [ %i.n, %bb.j ], [ %i.m, %bb.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !align !9, !noundef !7 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  store ptr null, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %4 = shl nuw nsw i64 %3, 2
  %..i = or disjoint i64 %4, 1
  store atomic i64 %..i, ptr %i.w release, align 8
  %i.x = load ptr, ptr %0, align 8, !noundef !7
  %.not12 = icmp eq ptr %i.x, null
  br i1 %.not12, label %bb.p, label %bb.h

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noundef !7
  %.not13 = icmp eq ptr %i.z, null
  br i1 %.not13, label %bb.r, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #26
          to label %bb.s unwind label %bb.m

bb.r:                                             ; preds = %bb.p
  %i.aa = and i64 %2, -4
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCslghKHtsL3a4_5tokio4time7timeout10poll_delay(i1 noundef zeroext %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !14, !noundef !7
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !10

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.f = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.b) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit.thread, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit: ; preds = %bb.a, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %.sroa.0.0.i.i2.i = phi ptr [ %i.f, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %.val.i = load i8, ptr %i.h, align 1, !range !8, !noundef !7
  %i.i = getelementptr i8, ptr %.sroa.0.0.i.i2.i, i64 69
  %.val5.i = load i8, ptr %i.i, align 1
  %i.j = trunc nuw i8 %.val.i to i1
  %i.k = tail call noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.j, i8 %.val5.i)
  %.not = xor i1 %0, true
  %or.cond = or i1 %i.k, %.not
  br i1 %or.cond, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit.thread, label %bb.b

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit.thread: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit
  %i.l = tail call noundef zeroext i1 @_RNvXs_NtNtCslghKHtsL3a4_5tokio4time5sleepNtB4_5SleepNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.g

bb.b:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !590
  %i.m = load i8, ptr %i.c, align 8, !range !14, !noundef !7
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8, !prof !10

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8: ; preds = %bb.b
  %i.o = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.b) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4time5error7ElapsedENCNvNtB3I_7timeout10poll_delay0E0E0B27_EB10_.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8, %bb.b
  %.sroa.0.0.i.i2.i10 = phi ptr [ %i.o, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8 ], [ %i.b, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i10, i64 68 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !8, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i10, i64 69
  %i.t = load i8, ptr %i.s, align 1
  store i8 0, ptr %i.q, align 1
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4time5error7ElapsedENCNvNtB3I_7timeout10poll_delay0E0E0B27_EB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4time5error7ElapsedENCNvNtB3I_7timeout10poll_delay0E0E0B27_EB10_.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9
  %.sroa.3.0.i = phi i8 [ %i.t, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9 ], [ undef, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8 ]
  %i.u = phi i8 [ %i.r, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i9 ], [ 2, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i8 ] ; 3 uses
  store i8 %i.u, ptr %i.a, align 1, !noalias !590
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.3.0.i, ptr %i.v, align 1, !noalias !590
  %i.w = invoke noundef zeroext i1 @_RNvXs_NtNtCslghKHtsL3a4_5tokio4time5sleepNtB4_5SleepNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RINvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB6_4time5error7ElapsedENCNvNtB1w_7timeout10poll_delay0EB6_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4time5error7ElapsedENCNvNtB3I_7timeout10poll_delay0E0E0B27_EB10_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq i8 %i.u, 2
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.x

_RINvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB6_4time5error7ElapsedENCNvNtB1w_7timeout10poll_delay0EB6_.exit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4time5error7ElapsedENCNvNtB3I_7timeout10poll_delay0E0E0B27_EB10_.exit
  %.not.i12 = icmp eq i8 %i.u, 2
  br i1 %.not.i12, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit13, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB6_4time5error7ElapsedENCNvNtB1w_7timeout10poll_delay0EB6_.exit
  call void @_RNvXNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit13: ; preds = %_RINvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB6_4time5error7ElapsedENCNvNtB1w_7timeout10poll_delay0EB6_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !590
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit13
  %.sroa.0.0 = phi i1 [ %i.l, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bEB10_.exit.thread ], [ %i.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCslghKHtsL3a4_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorEEB15_.exit13 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker3run(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = invoke noundef align 8 ptr @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapB9_(ptr noundef nonnull align 8 %i.d, ptr noalias noundef align 8 null)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !623, !nonnull !7, !noundef !7
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !623
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit: ; preds = %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
  ret void

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = invoke noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current()
          to label %bb.j unwind label %.thread26  ; 4 uses

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
          to label %bb.i unwind label %.thread26

.thread26:                                        ; preds = %bb.n, %bb.g, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread18

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.r, i64 %i.j
  store ptr %i.s, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !624, !noundef !7
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.t, i64 noundef %i.v)
          to label %bb.m unwind label %bb.k
end_hunk_0
