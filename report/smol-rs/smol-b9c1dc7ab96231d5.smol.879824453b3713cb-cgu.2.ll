Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.2?download=true
inline.NumInlined: 170
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4A_4TakepEB3I_8try_fold5checkRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowB5h_ENCINvNvB3I_4find5checkB5h_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB6K_6Runner8runnable000E0E0IB5o_B5n_EECsbDLrNlwBX3H_4smol:bb.a
  %..i.i.i.i = select i1 %i.o, ptr %i.j, ptr null
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.f
  %.sroa.5.0 = phi ptr [ %..i.i.i.i, %bb.f ], [ %..i.i.i, %bb.l ], [ undef, %bb.m ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %bb.e ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.w

bb.i:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.e, align 8, !nonnull !4, !align !145, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8, !noalias !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !181
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !184, !noalias !187, !nonnull !4, !noundef !4
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ab = phi ptr [ %i.ai, %bb.k ], [ %i.s, %bb.i ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %bb.k ], [ %i.u, %bb.i ] ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.t, align 8, !alias.scope !184, !noalias !187
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.af = load i64, ptr %i.ab, align 8, !noalias !191, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ab, align 8, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  store ptr %i.ac, ptr %i.a, align 8, !noalias !194
  %i.ah = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB10_6Runner8runnable000INtB7_5FnMutTRRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8call_mutCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !178 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !188, !noalias !198, !nonnull !4, !align !145, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !178, !noundef !4
  %i.ak = icmp eq i64 %i.aj, 0
  %narrow.i.i = or i1 %i.ah, %i.ak
  br i1 %narrow.i.i, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %..i.i.i = select i1 %i.ah, ptr %i.ac, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXss_CsjKZn5t0aq1H_13async_channelINtB6_9RecvInnerNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableENtCskHQ0D3bTzth_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1E_11NonBlockingECsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !145, !noundef !4
  %.val14 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !199
  %i.e = getelementptr inbounds nuw i8, ptr %.val14, i64 128
  call void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %i.e), !noalias !199
  %i.f = load i8, ptr %i.b, align 8, !range !5, !noalias !199, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noalias !199, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !199
  br i1 %i.j, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.g

._crit_edge:                                      ; preds = %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, %bb.a
  %.val.lcssa = phi ptr [ %.val14, %bb.a ], [ %.val, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !noalias !199
  %i.m = invoke noundef i64 @_RNvXsn_NtCs3iPtYnXk70z_14event_listener6notifyjNtB5_16IntoNotification17into_notification(i64 noundef 1)
          to label %bb.d unwind label %bb.c, !noalias !199

bb.c:                                             ; preds = %bb.d, %._crit_edge
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #22
          to label %common.resume unwind label %bb.e, !noalias !199

bb.d:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.val.lcssa, i64 640
  invoke fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifyINtNtB6_6notify10AdditionalNtBV_6NotifyEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.o, i64 noundef %i.m)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !199
  unreachable

common.resume.sink.split:                         ; preds = %bb.k, %bb.l
  %.lcssa.sink = phi ptr [ %i.u, %bb.l ], [ null, %bb.k ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.w, %bb.k ]
  store ptr %.lcssa.sink, ptr %i.c, align 8
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.c ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !199
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.c, align 8, !align !145, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.i, !prof !152

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %0, align 8, !nonnull !4, !align !145, !noundef !4
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 648
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.t) ; 2 uses
  %.val3 = load ptr, ptr %i.c, align 8, !align !145, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val3)
          to label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !202
  br i1 %i.v, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.q)
          to label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.k, !noalias !202

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.h, %bb.j
  %storemerge = phi ptr [ null, %bb.j ], [ %i.u, %bb.h ]
  store ptr %storemerge, ptr %i.c, align 8
  %i.y = load ptr, ptr %0, align 8, !nonnull !4, !align !145, !noundef !4
  %.val = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !199
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 128
  call void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %i.z), !noalias !199
  %i.aa = load i8, ptr %i.b, align 8, !range !5, !noalias !199, !noundef !4
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %._crit_edge

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.i, %bb.b, %bb.f
  %.sroa.4.1 = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ null, %bb.i ]
  %.sroa.0.1 = phi i64 [ 0, %bb.f ], [ 1, %bb.i ], [ 0, %bb.b ]
  %i.ac = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ad = insertvalue { i64, ptr } %i.ac, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.ad
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0B9_() unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 225
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = invoke noundef nonnull align 8 ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global()
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  store ptr %i.d, ptr %i.b, align 8
  store i8 0, ptr %i.c, align 1
  invoke void @_RINvNtCs13QwXx3ETeK_8async_io6driver8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtBR_8Executor3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %i.a)
          to label %.thread unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23
  unreachable

.thread:                                          ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge

bb.d:                                             ; preds = %bb.b
  %0 = extractvalue { ptr, ptr } %i.g, 0          ; 4 uses
  %1 = extractvalue { ptr, ptr } %i.g, 1          ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = load ptr, ptr %1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.i(ptr noundef nonnull %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !205, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !206, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit.backedge: ; preds = %bb.g, %bb.f, %.thread
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !205, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !206, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #20
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(address) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %2, align 8, !range !30, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.k, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.i, ptr %i.m, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %.not20 = icmp ne ptr %i.p, null
  %i.q = icmp eq ptr %i.p, %i.g
  %or.cond = select i1 %.not20, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8
  store i64 0, ptr %2, align 8
  %i.r = trunc nuw i64 %.sroa.011.0.copyload to i1
  br i1 %i.r, label %bb.m, label %bb.n, !prof !6

bb.l:                                             ; preds = %bb.j
  store ptr %i.k, ptr %i.o, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 0, ptr %i.d, align 8
  %i.s = load i8, ptr %i.c, align 8, !range !15, !noundef !4
  switch i8 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge [
    i8 1, label %bb.o
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8
  br i1 %3, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !210, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !210, !nonnull !4, !noundef !4
  call void %i.aa(ptr noundef %.val1.i.i.i.i.i), !noalias !210, !inline_history !219
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !229, !nonnull !4, !noundef !4
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !229
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge: ; preds = %bb.o, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit.critedge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 3, ptr %i.c, align 8
  %i.ah = load i8, ptr %i.b, align 8, !range !15, !noundef !4 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !152

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.am, align 1
  invoke fastcc void @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.x, %bb.t
  %i.an = phi i8 [ %.pr, %bb.x ], [ %i.ah, %bb.t ] ; 2 uses
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.y:                                             ; preds = %bb.ag, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.ap, %bb.w ], [ %i.ap, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.ah unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.ae, %bb.ab, %bb.ad, %bb.af, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !15, !alias.scope !234
  %i.at = icmp eq i8 %.pre, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_0
