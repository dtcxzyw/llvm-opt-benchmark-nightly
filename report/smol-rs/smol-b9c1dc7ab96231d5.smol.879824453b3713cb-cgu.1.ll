Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0_@_RINvXsf_NtCs1gyvJd0MAV7_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCskHQ0D3bTzth_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsbDLrNlwBX3H_4smol:bb.a
._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !110 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 3 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  tail call void @llvm.assume(i1 %i.j)
  store i64 %i.h, ptr %0, align 8, !alias.scope !110
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !110
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit: ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge, %bb.b
  %i.k = phi i32 [ %i.f, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.i, %bb.b ]
  %i.l = phi i64 [ %.pre, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.h, %bb.b ]
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 8 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  %i.o = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
  unreachable

bb.e:                                             ; preds = %.backedge94, %.preheader
  %i.r = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.j, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.t, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.t = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !112
  br i1 %i.t, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.r)
          to label %bb.k unwind label %bb.i, !noalias !112

common.resume:                                    ; preds = %bb.p, %bb.ad, %bb.y, %bb.i
  %.sink = phi ptr [ null, %bb.y ], [ null, %bb.i ], [ %i.v, %bb.p ], [ %i.ar, %bb.ad ]
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %i.u, %bb.i ], [ %i.ai, %bb.p ], [ %i.aw, %bb.ad ]
  store ptr %.sink, ptr %i.c, align 8
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.e
  %i.v = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) ; 2 uses
  %.val39 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val39)
          to label %bb.q unwind label %bb.p

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr %i.c, align 8, !alias.scope !112, !noalias !113
  %i.w = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.w, 0
  switch i64 %.sroa.01.0.i, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) #27
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.y = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  %.not.i41 = icmp ne ptr %i.x, null
  %or.cond.not.i = and i1 %.not.i41, %i.z
  br i1 %or.cond.not.i, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.m
  %.not31 = icmp eq ptr %i.x, null
  br i1 %.not31, label %bb.o, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.n:                                             ; preds = %bb.k
  %i.aa = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.split, label %.loopexit

bb.o:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
  unreachable

.split:                                           ; preds = %bb.n
  %i.ad = extractvalue { i64, i32 } %i.aa, 1      ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 1000000000
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ugt i32 %i.ad, 500000
  br i1 %i.af, label %.loopexit, label %.backedge94

.backedge94:                                      ; preds = %.split, %bb.q
  br label %bb.e

.loopexit:                                        ; preds = %bb.n, %.split, %bb.q, %bb.l
  %i.ag = atomicrmw add ptr %i.n, i64 2 release, align 8
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.u, label %bb.t, !prof !11

bb.p:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.j
  store ptr %i.v, ptr %i.c, align 8
  %i.aj = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i45 = extractvalue { i64, i1 } %i.aj, 0
  switch i64 %.sroa.01.0.i45, label %.loopexit [
    i64 0, label %bb.r
    i64 1, label %.backedge94
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.al = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  %.not.i46 = icmp ne ptr %i.ak, null
  %or.cond.not.i47 = and i1 %.not.i46, %i.am
  br i1 %or.cond.not.i47, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48: ; preds = %bb.r
  %.not32 = icmp eq ptr %i.ak, null
  br i1 %.not32, label %bb.s, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.s:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split: ; preds = %bb.r, %bb.m, %bb.af, %bb.ab
  %.sink87 = phi ptr [ %i.at, %bb.ab ], [ %i.az, %bb.af ], [ %i.x, %bb.m ], [ %i.ak, %bb.r ] ; 2 uses
  %i.an = atomicrmw sub ptr %.sink87, i64 2 release, align 8 ; 0 uses
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.g, %bb.w, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53 ], [ %i.ak, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48 ], [ %.sink87, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split ], [ %i.x, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit ], [ null, %bb.w ], [ %i.az, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60 ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.t:                                             ; preds = %.loopexit
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.u:                                             ; preds = %.loopexit
  call void @_RNvCs1gyvJd0MAV7_10async_lock5abort() #21
  unreachable

bb.v:                                             ; preds = %.backedge, %bb.f
  %i.ao = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not33 = icmp eq ptr %i.ao, null
  br i1 %.not33, label %bb.z, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ap = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !115
  br i1 %i.ap, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.ao)
          to label %bb.aa unwind label %bb.y, !noalias !115

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.z:                                             ; preds = %bb.v
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val38)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.x
  store ptr null, ptr %i.c, align 8, !alias.scope !115, !noalias !116
  %i.as = atomicrmw or ptr %i.n, i64 1 acquire, align 8
  %3 = trunc i64 %i.as to i1
  br i1 %3, label %.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.au = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  %.not.i51 = icmp ne ptr %i.at, null
  %or.cond.not.i52 = and i1 %.not.i51, %i.av
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.ab
  %.not34 = icmp eq ptr %i.at, null
  br i1 %.not34, label %bb.ac, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.ac:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ae:                                            ; preds = %bb.z
  store ptr %i.ar, ptr %i.c, align 8
  %i.ax = cmpxchg ptr %i.n, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.az = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.ba = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  %.not.i58 = icmp ne ptr %i.az, null
  %or.cond.not.i59 = and i1 %.not.i58, %i.bb
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.af
  %.not37 = icmp eq ptr %i.az, null
  br i1 %.not37, label %bb.ah, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.ag:                                            ; preds = %bb.ae
  %.sroa.01.0.i57 = extractvalue { i64, i1 } %i.ax, 0
  %4 = trunc i64 %.sroa.01.0.i57 to i1
  br i1 %4, label %.backedge, label %bb.ai

bb.ah:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) #27
  br label %.backedge

.backedge:                                        ; preds = %bb.ai, %bb.ag, %bb.aa
  br label %bb.v
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_Cs8NKWGp8lJEP_8fastrandNtB8_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEE0CsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1c_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundRjENtNtBa_3fmt5Debug3fmtCsbDLrNlwBX3H_4smol, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1c_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundRjENtNtBa_3fmt5Debug3fmtCsbDLrNlwBX3H_4smol, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i64 2, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.pn = phi { i64, i1 } [ %i.o, %bb.h ], [ %i.a, %bb.a ]
  %.sroa.01.0.i14 = extractvalue { i64, i1 } %.pn, 0 ; 5 uses
  %i.c = and i64 %.sroa.01.0.i14, 2
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = atomicrmw and ptr %1, i64 -2 release, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.i = and i64 %.sroa.01.0.i14, 4
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %2 = trunc i64 %.sroa.01.0.i14 to i1
  br i1 %2, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %._crit_edge ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.l = and i64 %.sroa.01.0.i14, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.0.1 = phi i64 [ %i.l, %bb.g ], [ %.sroa.01.0.i14, %bb.c ] ; 2 uses
  %i.m = and i64 %.sroa.0.1, -4
  %i.n = or disjoint i64 %i.m, 1
  %i.o = cmpxchg ptr %1, i64 %.sroa.0.1, i64 %i.n seq_cst seq_cst, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, ptr } @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr %0, i64 0, i64 3 seq_cst seq_cst, align 8 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = atomicrmw and ptr %0, i64 -2 release, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.a, 0
  %i.e = lshr i64 %.sroa.01.0.i, 2
  %.lobit = and i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ %.lobit, %bb.c ]
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %1, 1
  ret { i64, ptr } %i.g
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = load atomic i64, ptr %i.a seq_cst, align 128 ; 3 uses
  %i.c = load atomic i64, ptr %0 seq_cst, align 128 ; 2 uses
  %i.d = load atomic i64, ptr %i.a seq_cst, align 128
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = and i64 %i.h, %i.c                       ; 4 uses
  %i.j = and i64 %i.h, %i.b                       ; 4 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.i, %i.j
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw i64 %i.j, %i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = xor i64 %i.g, -1
  %i.o = and i64 %i.b, %i.n
  %i.p = icmp eq i64 %i.o, %i.c
  br i1 %i.p, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = sub i64 %i.j, %i.i
  %i.t = add i64 %i.s, %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ %i.t, %bb.g ], [ %i.v, %bb.h ], [ 0, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic i64, ptr %1 monotonic, align 128 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !5
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, %i.b                       ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 128, !noundef !5
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.b, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.p = phi i64 [ %i.m, %.lr.ph ], [ %i.ao, %bb.h ]
  %i.q = phi i64 [ %i.h, %.lr.ph ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.03.029 = phi i64 [ %i.b, %.lr.ph ], [ %.sroa.03.1, %bb.h ] ; 5 uses
  %i.r = load ptr, ptr %i.n, align 16, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 3 uses
  %i.u = add i64 %.sroa.03.029, 1
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.lcssa22 = phi i64 [ %i.h, %bb.a ], [ %i.al, %bb.h ]
  %.lcssa16 = phi i64 [ %i.i, %bb.a ], [ %i.ap, %bb.h ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa22, i64 noundef %.lcssa16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i64 %i.t, %.sroa.03.029
  br i1 %i.w, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = add nuw i64 %i.q, 1
  %i.y = load i64, ptr %i.e, align 8, !noundef !5
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = load atomic i64, ptr %i.o monotonic, align 128 ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.ac = xor i64 %i.ab, -1
  %i.ad = and i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, %.sroa.03.029
  br i1 %i.ae, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %i.ab, %i.aa
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

.sink.split:                                      ; preds = %bb.f, %bb.e
  %i.ai = load atomic i64, ptr %1 monotonic, align 128
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.m
  %.sroa.03.1 = phi i64 [ %i.av, %bb.m ], [ %i.ai, %.sink.split ] ; 3 uses
  %i.aj = load i64, ptr %i.c, align 8, !noundef !5
  %i.ak = add i64 %i.aj, -1
  %i.al = and i64 %i.ak, %.sroa.03.1              ; 3 uses
  %i.am = load i64, ptr %i.d, align 128, !noundef !5
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.03.1, %i.an
  %i.ap = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.g
end_hunk_0
