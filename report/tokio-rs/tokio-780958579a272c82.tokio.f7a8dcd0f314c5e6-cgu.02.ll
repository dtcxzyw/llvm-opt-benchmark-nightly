Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.02?download=true
inline.NumInlined: 301
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs3oUPovFnLWP_4core6future6futureQINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruENtB2_6Future4pollBL_:bb.a
  store ptr null, ptr %i.c, align 8, !alias.scope !266, !noalias !267
  br label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  store ptr null, ptr %i.c, align 8, !alias.scope !266, !noalias !267
  br label %_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit

_RNvXs3_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_.exit: ; preds = %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.5.ph.i.ph.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i ], [ 2, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.i ], [ 2, %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE9poll_recvB9_.exit.thread.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.02.0.i.i = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.d ] ; 4 uses
  %i.d = and i64 %.sroa.02.0.i.i, 4
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = or i64 %.sroa.02.0.i.i, 2
  %i.f = cmpxchg weak ptr %i.b, i64 %.sroa.02.0.i.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i, label %bb.c

_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i: ; preds = %bb.d
  %i.g = and i64 %.sroa.02.0.i.i, 1
  %.not1.i = icmp eq i64 %i.g, 0
  br i1 %.not1.i, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !7, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4
  tail call void %i.k(ptr noundef %i.m), !inline_history !282
  br label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit

_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE8completeB9_.exit: ; preds = %bb.c, %bb.e, %_RNvMs9_NtNtCslghKHtsL3a4_5tokio4sync7oneshotNtB5_5State12set_complete.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_5StateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i64, ptr %0 acquire, align 8
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_8SnapshotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !9, !noalias !297, !noundef !4
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !5

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.k = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.g), !noalias !297 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.k, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.n = load i8, ptr %i.m, align 1, !range !10, !noalias !298, !noundef !4 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !noalias !298 ; 4 uses
  br i1 %i.o, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.s = add i8 %i.q, -1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.q, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.p, align 1, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %.sroa.03.011.i22.off8 = phi i8 [ %i.n, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %.sroa.03.011.i22.off16 = phi i8 [ %i.q, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 %.sroa.03.011.i22.off8, ptr %i.b, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i22.off16, ptr %i.v, align 1
  %i.w = load i8, ptr %i.f, align 8, !range !10, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load atomic i64, ptr %i.y acquire, align 8
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i: ; preds = %bb.ae, %bb.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %.split.i, %bb.q, %.loopexit.split-lp.i
  %.sroa.0.09.i = phi ptr [ %.sroa.0.340.i, %bb.ad ], [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.0.340.i, %bb.q ], [ %.sroa.0.340.i, %.split.i ], [ %.sroa.0.340.i, %bb.ae ], [ %.sroa.0.110.ph.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn32.i = phi { ptr, i32 } [ %.pn63.i, %bb.ad ], [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm.split-lp.i, %bb.q ], [ %i.ba, %.split.i ], [ %.pn63.i, %bb.ae ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.020.0.i = phi i8 [ %.sroa.020.5.i, %bb.ad ], [ %.sroa.020.5.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.020.5.i, %bb.q ], [ %.sroa.020.5.i, %.split.i ], [ %.sroa.020.5.i, %bb.ae ], [ %.sroa.020.1.ph.i, %.loopexit.split-lp.i ]
  %i.aa = trunc nuw i8 %.sroa.020.0.i to i1
  %i.ab = icmp ne ptr %.sroa.0.09.i, null
  %or.cond85.not.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond85.not.i, label %bb.ag, label %.body

.loopexit.split-lp.i:                             ; preds = %bb.p, %bb.l
  %.sroa.0.110.ph.i = phi ptr [ %.sroa.0.340.i, %bb.p ], [ null, %bb.l ]
  %.sroa.020.1.ph.i = phi i8 [ %.sroa.020.5.i, %bb.p ], [ 1, %bb.l ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.e:                                             ; preds = %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %.sroa.01.0.in.i = phi i64 [ %i.z, %bb.d ], [ %i.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ] ; 2 uses
  %.sroa.01.0.i = shl i64 %.sroa.01.0.in.i, 1     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %.not94.i = icmp eq i64 %i.ae, 0
  br i1 %.not94.i, label %.lr.ph.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread: ; preds = %bb.e
  store i8 0, ptr %i.b, align 1
  br label %bb.ai

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.014.096.i = phi i64 [ %.sroa.01.0.i42.i, %bb.i ], [ %i.ad, %bb.e ] ; 5 uses
  %.sroa.0.295.i = phi ptr [ %.sroa.0.338.i, %bb.i ], [ null, %bb.e ] ; 7 uses
  %.not26.i = icmp ult i64 %.sroa.014.096.i, %.sroa.01.0.i
  br i1 %.not26.i, label %bb.f, label %.thread27.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not28.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not28.i, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %.noexc, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.ah = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.3.i = phi ptr [ %i.c, %bb.g ], [ %.sroa.0.295.i, %bb.f ], [ %i.c, %bb.h ] ; 3 uses
  %i.ai = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 0 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ai, 1
  br i1 %.sroa.18.0.in.i.i, label %.thread.loopexit.i, label %bb.i

.thread27.i:                                      ; preds = %.lr.ph.i
  %i.aj = sub nuw i64 %.sroa.014.096.i, %.sroa.01.0.i
  %i.ak = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 %i.aj acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i32.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i32.i, label %.thread43.i, label %bb.i

.thread43.i:                                      ; preds = %.thread27.i
  %2 = and i64 %.sroa.01.0.in.i, 9223372036854775807 ; 3 uses
  br i1 %i.x, label %bb.j, label %.thread52.i

bb.i:                                             ; preds = %.thread27.i, %.noexc
  %.pn.i = phi { i64, i1 } [ %i.ak, %.thread27.i ], [ %i.ai, %.noexc ]
  %.sroa.0.338.i = phi ptr [ %.sroa.0.295.i, %.thread27.i ], [ %.sroa.0.3.i, %.noexc ] ; 2 uses
  %.sroa.01.0.i42.i = extractvalue { i64, i1 } %.pn.i, 0 ; 2 uses
  %i.al = and i64 %.sroa.01.0.i42.i, 1
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.lr.ph.i, label %.thread52.i

bb.j:                                             ; preds = %.thread43.i
  %.not29.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not29.i, label %bb.k, label %.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i: ; preds = %bb.s, %bb.p, %bb.o
  %.sroa.0.0.i18 = phi i8 [ 0, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.am = trunc nuw i8 %.sroa.020.5.i to i1
  br i1 %i.am, label %.thread52.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.an = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.ao = extractvalue { i8, i1 } %i.an, 1
  br i1 %i.ao, label %.thread.i, label %bb.l, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.ap = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.thread.i unwind label %.loopexit.split-lp.i ; 0 uses

.thread.loopexit.i:                               ; preds = %.noexc
  %i.aq = lshr exact i64 %.sroa.014.096.i, 1
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.l, %bb.k, %bb.j
  %.sroa.09.0243749.i = phi i64 [ %2, %bb.k ], [ %2, %bb.l ], [ %2, %bb.j ], [ %i.aq, %.thread.loopexit.i ] ; 3 uses
  %.sroa.0.340.i = phi ptr [ null, %bb.k ], [ null, %bb.l ], [ %.sroa.0.295.i, %bb.j ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 10 uses
  %storemerge.i = phi ptr [ %i.c, %bb.k ], [ %i.c, %bb.l ], [ %.sroa.0.295.i, %bb.j ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 12 uses
  %.sroa.020.5.i = phi i8 [ 1, %bb.k ], [ 1, %bb.l ], [ 0, %bb.j ], [ 0, %.thread.loopexit.i ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !range !10, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !299
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.02.0.i.i = phi i64 [ %i.av, %bb.m ], [ %.sroa.01.0.i.i.i, %bb.n ] ; 4 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.09.0243749.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.aw = sub nuw i64 %.sroa.02.0.i.i, %..i.i.i
  %i.ax = cmpxchg ptr %i.au, i64 %.sroa.02.0.i.i, i64 %i.aw acq_rel acquire, align 8, !noalias !299 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ax, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ax, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.r, label %bb.n

bb.o:                                             ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ay = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.az = extractvalue { i8, i1 } %i.ay, 1
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.loopexit.split-lp.i

bb.q:                                             ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

.split.i:                                         ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.r:                                             ; preds = %bb.n
  %.not86.i = icmp ugt i64 %.sroa.02.0.i.i, %.sroa.09.0243749.i
  br i1 %.not86.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = sub nuw nsw i64 %.sroa.09.0243749.i, %..i.i.i
  invoke fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bb, ptr noundef nonnull align 8 %storemerge.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.split.i

bb.t:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.u, align 8, !noalias !300, !align !7, !noundef !4 ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  br i1 %.not.i.i, label %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i, label %bb.u

._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i: ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %.val, align 8, !noalias !300
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !300
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %.val5.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !301, !noalias !300, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !302, !noundef !4 ; 2 uses
  %i.bg = icmp eq ptr %.val5.i.i.i, %i.bf
  %.pre3.i.i = load ptr, ptr %.val, align 8, !noalias !300 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bc, %.pre3.i.i
  %or.cond.i.i = select i1 %i.bg, i1 %.not2.i.i, i1 false
  br i1 %or.cond.i.i, label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i: ; preds = %bb.u, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i
  %i.bh = phi ptr [ %.pre4.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %i.bf, %bb.u ]
  %i.bi = phi ptr [ %.pre.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %.pre3.i.i, %bb.u ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !300, !nonnull !4, !noundef !4
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i, !inline_history !295 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %lpad.thr_comm78.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bn = load ptr, ptr %i.u, align 8, !noalias !300, !align !7, !noundef !4
  %i.bo = load ptr, ptr %i.bd, align 8, !noalias !300
  store ptr %i.bl, ptr %i.u, align 8, !noalias !300
  store ptr %i.bm, ptr %i.bd, align 8, !noalias !300
  br label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i

_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i, %bb.u
  %.sroa.8.0.i = phi ptr [ %i.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ undef, %bb.u ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ null, %bb.u ] ; 4 uses
  br i1 %i.x, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  invoke void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE10push_frontB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 %i.u)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v, %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.bq = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.br = extractvalue { i8, i1 } %i.bq, 1
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i unwind label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i: ; preds = %bb.x, %bb.w
  %i.bs = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  invoke void %i.bu(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.q, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bv = trunc nuw i8 %.sroa.020.5.i to i1
  %i.bw = icmp ne ptr %.sroa.0.340.i, null
  %or.cond.not.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.not.i, label %bb.z, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i
  %i.bx = cmpxchg ptr %.sroa.0.340.i, i8 1, i8 0 release monotonic, align 1
  %i.by = extractvalue { i8, i1 } %i.bx, 1
  br i1 %i.by, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i: ; preds = %bb.af, %bb.z
  %.sroa.0.456.sink.i = phi ptr [ %.sroa.0.456.i, %bb.af ], [ %.sroa.0.340.i, %bb.z ]
  %.sroa.0.1.ph.i = phi i8 [ %.sroa.0.058.i, %bb.af ], [ 2, %bb.z ] ; 2 uses
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.456.sink.i, i1 noundef zeroext false)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x, %bb.v
  %.sroa.023.3.ph.i = phi i1 [ false, %bb.x ], [ true, %bb.v ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4
  invoke void %i.cb(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i unwind label %bb.ac, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i: ; preds = %bb.ab, %bb.aa
  br i1 %.sroa.023.3.ph.i, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.ac:                                            ; preds = %bb.ah, %bb.ae, %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i
  %.pn63.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm78.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cd = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.ce = extractvalue { i8, i1 } %i.cd, 1
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, label %bb.ae, !prof !5

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i unwind label %bb.ac

.thread52.i:                                      ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %.thread43.i
  %.sroa.0.058.i = phi i8 [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ 0, %.thread43.i ], [ 1, %bb.i ] ; 3 uses
  %.sroa.0.456.i = phi ptr [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ %.sroa.0.295.i, %.thread43.i ], [ %.sroa.0.338.i, %bb.i ] ; 3 uses
  %i.cf = icmp eq ptr %.sroa.0.456.i, null
  br i1 %i.cf, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %bb.af

bb.af:                                            ; preds = %.thread52.i
  %i.cg = cmpxchg ptr %.sroa.0.456.i, i8 1, i8 0 release monotonic, align 1
  %i.ch = extractvalue { i8, i1 } %i.cg, 1
  br i1 %i.ch, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i
  %i.ci = cmpxchg ptr %.sroa.0.09.i, i8 1, i8 0 release monotonic, align 1
  %i.cj = extractvalue { i8, i1 } %i.ci, 1
  br i1 %i.cj, label %.body, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.09.i, i1 noundef zeroext false)
          to label %.body unwind label %bb.ac

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, %bb.ag, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %.pn32.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i ], [ %.pn32.i, %bb.ah ], [ %.pn32.i, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit unwind label %bb.ak

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %i.ck = icmp eq i8 %.sroa.0.1.ph.i, 2
  br i1 %i.ck, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread: ; preds = %bb.af, %.thread52.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %.sroa.0.1.i24 = phi i8 [ %.sroa.0.1.ph.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ %.sroa.0.058.i, %bb.af ], [ %.sroa.0.058.i, %.thread52.i ], [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ]
  %i.cl = trunc nuw i8 %.sroa.0.1.i24 to i1
  store i8 0, ptr %i.b, align 1
  br i1 %i.cl, label %bb.ai, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26: ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %storemerge = phi i8 [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 1, %bb.z ]
  %.sroa.0.0 = phi i8 [ 2, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 2, %bb.z ]
  store i8 %storemerge, ptr %i.f, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26 ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread ]
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge, %bb.ai
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.ai ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.2

bb.ak:                                            ; preds = %.body
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6ShareduENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = tail call noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 6)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = and i64 %i.e, -2
  store i64 %i.h, ptr %i.b, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = trunc i64 %i.e to i8
  %i.k = and i8 %i.j, 1
  store i8 %i.k, ptr %i.a, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_8SnapshotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.j = trunc i64 %i.i to i8                     ; 6 uses
  %i.k = and i8 %i.j, 1
  store i8 %i.k, ptr %i.g, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 10, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = lshr i8 %i.j, 1
  %i.n = and i8 %i.m, 1
  store i8 %i.n, ptr %i.f, align 1
  %i.o = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.p = lshr i8 %i.j, 2
  %i.q = and i8 %i.p, 1
  store i8 %i.q, ptr %i.e, align 1
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = lshr i8 %i.j, 5
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.d, align 1
  %i.u = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 12, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = lshr i8 %i.j, 3
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.c, align 1
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 18, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = lshr i8 %i.j, 4
  %i.z = and i8 %i.y, 1
  store i8 %i.z, ptr %i.b, align 1
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = lshr i64 %i.i, 6
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  %i.ad = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !306
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = atomicrmw or ptr %i.b, i64 4 acquire, align 8 ; 3 uses
  %i.d = and i64 %i.c, 10
  %or.cond.not.i = icmp eq i64 %i.d, 8
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = and i64 %i.c, 3
  %or.cond3.not.i = icmp eq i64 %i.e, 1
  br i1 %or.cond3.not.i, label %bb.e, label %_RNvMs4_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_5InneruE5closeB9_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !7, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  tail call void %i.i(ptr noundef %i.k), !inline_history !307
  br label %bb.c

end_hunk_0
