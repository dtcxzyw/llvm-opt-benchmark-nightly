Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0_@_RINvXsf_NtCs1gyvJd0MAV7_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCskHQ0D3bTzth_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsbDLrNlwBX3H_4smol:bb.a
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
  %.sink87 = phi ptr [ %i.av, %bb.ab ], [ %i.bb, %bb.af ], [ %i.x, %bb.m ], [ %i.ak, %bb.r ] ; 2 uses
  %i.an = atomicrmw sub ptr %.sink87, i64 2 release, align 8 ; 0 uses
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.g, %bb.w, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53 ], [ %i.ak, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48 ], [ %.sink87, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split ], [ %i.x, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit ], [ null, %bb.w ], [ %i.bb, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60 ], [ null, %bb.g ]
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
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.ab, label %.backedge

bb.ab:                                            ; preds = %bb.aa
  %i.av = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.aw = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  %.not.i51 = icmp ne ptr %i.av, null
  %or.cond.not.i52 = and i1 %.not.i51, %i.ax
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.ab
  %.not34 = icmp eq ptr %i.av, null
  br i1 %.not34, label %bb.ac, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.ac:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ae:                                            ; preds = %bb.z
  store ptr %i.ar, ptr %i.c, align 8
  %i.az = cmpxchg ptr %i.n, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bb = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.bc = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  %.not.i58 = icmp ne ptr %i.bb, null
  %or.cond.not.i59 = and i1 %.not.i58, %i.bd
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.af
  %.not37 = icmp eq ptr %i.bb, null
  br i1 %.not37, label %bb.ah, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !114

bb.ag:                                            ; preds = %bb.ae
  %.sroa.01.0.i57 = extractvalue { i64, i1 } %i.az, 0
  %i.be = and i64 %.sroa.01.0.i57, 1
  %.not36 = icmp eq i64 %i.be, 0
  br i1 %.not36, label %bb.ai, label %.backedge

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
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
  %.pn = phi { i64, i1 } [ %i.q, %bb.h ], [ %i.a, %bb.a ]
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
  %i.l = and i64 %.sroa.01.0.i14, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

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
  %i.n = and i64 %.sroa.01.0.i14, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.0.1 = phi i64 [ %i.n, %bb.g ], [ %.sroa.01.0.i14, %bb.c ] ; 2 uses
  %i.o = and i64 %.sroa.0.1, -4
  %i.p = or disjoint i64 %i.o, 1
  %i.q = cmpxchg ptr %1, i64 %.sroa.0.1, i64 %i.p seq_cst seq_cst, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %._crit_edge, label %.lr.ph
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

end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol:bb.a
  %i.df = add i64 %i.de, 3257665815644502181      ; 4 uses
  %i.dg = zext i64 %i.df to i128
  %i.dh = xor i64 %i.df, -8378864009470890807
  %i.di = zext i64 %i.dh to i128
  %i.dj = mul nuw i128 %i.di, %i.dg               ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = xor i128 %i.dk, %i.dj                   ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = mul i64 %i.cd, %i.dm
  %i.do = icmp ult i64 %i.dn, %i.cy
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.an, %bb.am, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.ad
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.aa, !noalias !180

.lr.ph.i.i.i.i.i.i:                               ; preds = %..loopexit_crit_edge.i.i.i.i.i.i.i.i, %bb.af, %bb.ae
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.ae ], [ %i.dd, %..loopexit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !181
  %i.dp = load ptr, ptr %i.f, align 8, !noalias !181, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !180, !nonnull !5, !noundef !5 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !180, !noundef !5
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !181
  store ptr %i.ba, ptr %i.e, align 8, !noalias !181
  store ptr %i.dr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !181
  store ptr %i.du, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !181
  store ptr %i.dr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !181
  store ptr %i.du, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !181
  store i64 %i.cd, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !181
  br label %bb.ah

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.ap
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !189, !noalias !190
  br label %bb.ah

bb.ah:                                            ; preds = %thread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dv = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !189, !noalias !190
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = add i64 %i.dv, -1                       ; 3 uses
  %i.dx = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !191, !noalias !190, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !192, !noalias !190, !nonnull !5, !noundef !5 ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.dw, i64 range(i64 0, 2305843009213693952) %i.ec) ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ee = sub nuw i64 %i.dw, %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ee, 0
  %i.ef = icmp eq ptr %i.ed, %i.dy
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ee, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.ai ] ; 2 uses
  %i.eg = load ptr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !191, !noalias !190, !noundef !5 ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %bb.al

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193, !noalias !190
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  store ptr null, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !191, !noalias !190
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194, !noalias !190, !nonnull !5, !noundef !5 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub nuw i64 %i.ej, %i.ek
  %i.em = lshr exact i64 %i.el, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.em ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.eo, ptr %i.ei
  store ptr %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194, !noalias !190
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.al, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.ep = invoke { i64, ptr } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4A_4TakepEB3I_8try_fold5checkRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowB5h_ENCINvNvB3I_4find5checkB5h_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB6K_6Runner8runnable000E0E0IB5o_B5n_EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.54.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !180 ; 2 uses

.noexc12.i.i.i.i.i.i:                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.eq = extractvalue { i64, ptr } %i.ep, 0
  %i.er = extractvalue { i64, ptr } %i.ep, 1      ; 2 uses
  %i.es = trunc nuw i64 %i.eq to i1
  %.not.i.i.i.i.i.i = icmp ne ptr %i.er, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.es, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.am, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

bb.am:                                            ; preds = %.noexc12.i.i.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !noalias !180, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.ev = load ptr, ptr %i.ba, align 8, !noalias !180, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  invoke void @_RINvCsa9iXSdNszRG_14async_executor5stealNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.eu, ptr noundef nonnull align 128 %i.ew)
          to label %bb.an unwind label %.loopexit.i.i.i.i.i.i, !noalias !180

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i: ; preds = %bb.ap, %.noexc12.i.i.i.i.i.i, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !181
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.ab unwind label %.loopexit.i.i.i.i.i, !noalias !180

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.ag
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i, %bb.ag ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  %i.ex = load i64, ptr %i.g, align 8, !range !7, !noalias !181, !noundef !5
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = load ptr, ptr %i.au, align 8, !noalias !181
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  %or.cond32.i.i.i.i.i.i = select i1 %i.ey, i1 true, i1 %.not.i.i18.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i, label %.body.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.aq
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !181
  %i.fa = load ptr, ptr %i.ba, align 8, !noalias !180, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.fb)
          to label %bb.ao unwind label %.loopexit.i.i.i.i.i.i, !noalias !180

bb.ao:                                            ; preds = %bb.an
  %i.fc = load i8, ptr %i.d, align 8, !range !8, !noalias !181, !noundef !5
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !181
  %i.fe = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !195, !noalias !196, !noundef !5
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !181, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !181
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !180

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !181
  %i.fi = load i64, ptr %i.g, align 8, !range !7, !noalias !181, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = load ptr, ptr %i.au, align 8, !noalias !181
  %.not.i.i17.i.i.i.i.i.i = icmp ne ptr %i.fk, null
  %or.cond.not36.i.i.i.i.i.i = select i1 %i.fj, i1 %.not.i.i17.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not36.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !181
  br label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.body.i.i.i unwind label %bb.aa, !noalias !180

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i: ; preds = %bb.ab, %.noexc10.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.thread.i.thread.i.i.i.i.i unwind label %.loopexit.i.i.i

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.z, %bb.t
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.bj, %bb.t ], [ %i.bv, %bb.z ], [ %i.fh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !175
  store ptr %.sroa.0.0.i.ph.i.i.i.i.i, ptr %i.k, align 8, !noalias !175
  invoke void @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker4wake(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i)
          to label %bb.at unwind label %bb.as

.thread.i.thread.i.i.i.i.i:                       ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i), "nonnull"(ptr %.val72.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !181
  %i.fl = invoke noundef zeroext i1 @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker5sleep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val72.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i

.noexc13.i.i.i:                                   ; preds = %.thread.i.thread.i.i.i.i.i
  br i1 %i.fl, label %bb.r, label %bb.bo

bb.as:                                            ; preds = %bb.be, %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.aw, %bb.av, %bb.ar
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bf, %bb.bd, %bb.as
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.as ], [ %i.hc, %bb.bf ], [ %i.hc, %bb.bd ]
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i.i.i unwind label %bb.bh

bb.at:                                            ; preds = %bb.ar
  %i.fn = load ptr, ptr %.val7.i.i.i, align 8, !nonnull !5, !align !14, !noundef !5 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 664
  %i.fp = cmpxchg ptr %i.fo, i8 0, i8 1 acq_rel acquire, align 1
  %i.fq = extractvalue { i8, i1 } %i.fp, 1
  br i1 %i.fq, label %bb.au, label %bb.bj

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 512 ; 3 uses
  %i.fs = cmpxchg ptr %i.fr, i32 0, i32 1 acquire monotonic, align 4, !noalias !197
  %i.ft = extractvalue { i32, i1 } %i.fs, 1
  br i1 %i.ft, label %.noexc.i.i.i.i.i, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.fr)
          to label %.noexc.i.i.i.i.i unwind label %bb.as

.noexc.i.i.i.i.i:                                 ; preds = %bb.av, %bb.au
  %i.fu = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !198
  %i.fv = and i64 %i.fu, 9223372036854775807
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, label %bb.aw, !prof !12

bb.aw:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fx = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc7.i.i.i.i.i unwind label %bb.as

.noexc7.i.i.i.i.i:                                ; preds = %bb.aw
  %i.fy = xor i1 %i.fx, true
  %i.fz = zext i1 %i.fy to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i8 [ %i.fz, %.noexc7.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 516
  %i.gb = load atomic i8, ptr %i.ga monotonic, align 4, !noalias !197
  %.not.i.i.i4.i.i.i.i.i = icmp ne i8 %i.gb, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i.i4.i.i.i.i.i, i8 noundef %.sroa.01.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.fr)
          to label %.noexc8.i.i.i.i.i unwind label %bb.as

.noexc8.i.i.i.i.i:                                ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !175, !nonnull !5, !align !10 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gf = load i8, ptr %i.ge, align 8, !range !8, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !199, !noundef !5 ; 4 uses
  %i.gi = icmp ult i64 %i.gh, 384307168202282326
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !199, !noundef !5
  %i.gl = icmp ne i64 %i.gh, %i.gk
  %i.gm = icmp eq i64 %i.gh, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.gm, %i.gl
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc8.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.go = add nsw i64 %i.gh, -1                   ; 3 uses
  store i64 %i.go, ptr %i.gg, align 8, !alias.scope !199
  %i.gp = load i64, ptr %i.gn, align 8, !range !13, !alias.scope !199, !noundef !5
  %i.gq = icmp samesign ult i64 %i.go, %i.gp
  call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !199, !nonnull !5, !noundef !5
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.go ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !199, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !199
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc8.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ undef, %.noexc8.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i.i = phi ptr [ null, %.noexc8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.i.i.i.i.i.i, %bb.ax ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gv = trunc nuw i8 %i.gf to i1
  br i1 %i.gv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gw = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !175
  %i.gx = and i64 %i.gw, 9223372036854775807
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ba, !prof !12

bb.ba:                                            ; preds = %bb.az
  %i.gz = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc.i5.i.i.i.i.i unwind label %bb.bd

.noexc.i5.i.i.i.i.i:                              ; preds = %bb.ba
  br i1 %i.gz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc.i5.i.i.i.i.i
  store atomic i8 1, ptr %i.gu monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %.noexc.i5.i.i.i.i.i, %bb.az, %bb.ay
  %i.ha = atomicrmw xchg ptr %i.gd, i32 0 release, align 4
  %i.hb = icmp eq i32 %i.ha, 2
  br i1 %i.hb, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, !prof !11

bb.bc:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
  br i1 %.not17.i.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.bf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.bc, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  %.not.i6.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
  br i1 %.not.i6.i.i.i.i.i, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i.i.i, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !5, !noundef !5
  invoke void %i.he(ptr noundef %.sroa.4.0.i.i.i.i.i.i.i)
          to label %bb.bj unwind label %bb.as, !inline_history !174

bb.bf:                                            ; preds = %bb.bd
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i.i.i, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !nonnull !5, !noundef !5
  invoke void %i.hg(ptr noundef %.sroa.4.0.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.bg, !inline_history !0

bb.bg:                                            ; preds = %bb.bf
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bh:                                            ; preds = %.body.i.i.i.i.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit.i.i.i:                                  ; preds = %.thread.i.thread.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.s, %bb.r
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %.body.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.y
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ], [ %i.by, %bb.y ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  store i8 2, ptr %i.as, align 8, !noalias !175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol.exit.i.i

bb.bi:                                            ; preds = %bb.p, %bb.o
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol.exit.i.i

bb.bj:                                            ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.at
  %i.hk = load ptr, ptr %i.k, align 8, !noalias !175, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !175
  store i8 1, ptr %i.as, align 8, !noalias !175
  store ptr %i.hk, ptr %i.l, align 8, !noalias !175
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !175, !nonnull !5, !align !10, !noundef !5
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !5
  %i.hp = add i64 %i.ho, 1
  store i64 %i.hp, ptr %i.hn, align 8
  %i.hq = load ptr, ptr %i.hl, align 8, !noalias !175, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !5
  %i.ht = and i64 %i.hs, 63
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.bl, label %bb.bp

bb.bk:                                            ; preds = %bb.bl
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
end_hunk_1
