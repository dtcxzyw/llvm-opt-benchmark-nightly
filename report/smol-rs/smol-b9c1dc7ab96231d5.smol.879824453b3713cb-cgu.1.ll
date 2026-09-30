Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol:bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !85
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !88, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !88
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.h, %bb.e, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val) #25
          to label %bb.p unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.l = load i64, ptr %.0.val, align 8, !range !7, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.o = load i8, ptr %i.n, align 8, !range !9, !alias.scope !95, !noundef !5
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !97, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !97, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !97, !nonnull !5, !noundef !5
  invoke void %i.u(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o, !inline_history !76

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.v = load ptr, ptr %i.s, align 8, !alias.scope !101, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !101
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.o ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #22
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i, %bb.i, %bb.k, %bb.l, %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #22
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsf_NtCs1gyvJd0MAV7_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCskHQ0D3bTzth_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !111, !alias.scope !110, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %bb.b, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge

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
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %i.u, %bb.i ], [ %i.ai, %bb.p ], [ %i.ay, %bb.ad ]
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
  %i.x = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.y = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  %.not.i41 = icmp ne ptr %i.x, null              ; 2 uses
  %or.cond.not.i = and i1 %.not.i41, %i.z
  br i1 %or.cond.not.i, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.m
  br i1 %.not.i41, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.o, !prof !114

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
  %i.ak = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.al = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  %.not.i46 = icmp ne ptr %i.ak, null             ; 2 uses
  %or.cond.not.i47 = and i1 %.not.i46, %i.am
  br i1 %or.cond.not.i47, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48: ; preds = %bb.r
  br i1 %.not.i46, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.s, !prof !114

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
  %i.av = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.aw = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  %.not.i51 = icmp ne ptr %i.av, null             ; 2 uses
  %or.cond.not.i52 = and i1 %.not.i51, %i.ax
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.ab
  br i1 %.not.i51, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.ac, !prof !114

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
  %i.bb = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.bc = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  %.not.i58 = icmp ne ptr %i.bb, null             ; 2 uses
  %or.cond.not.i59 = and i1 %.not.i58, %i.bd
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.af
  br i1 %.not.i58, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.ah, !prof !114

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
end_hunk_0
begin_hunk_1_@_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE3newCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8grow_oneCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_Csa9iXSdNszRG_14async_executorINtB5_15AsyncCallOnDropNCNvCs6Pq5vOzcA63_13async_process6driver0NCINvMs3_B5_NtB5_8Executor11spawn_innerzBW_E0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtCsITs8jNQ2GE_12async_signal7SignalsNtNtCsitb6zIp059K_12futures_lite6stream9StreamExt9poll_nextCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { noinline }
attributes #25 = { cold }
attributes #26 = { noinline noreturn }
attributes #27 = { inlinehint }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{i64 28708321622359545}
!7 = !{i64 0, i64 2}
!8 = !{i8 0, i8 2}
!9 = !{i8 0, i8 4}
!10 = !{i64 8}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 128}
!15 = distinct !{!15, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol"}
!16 = distinct !{!16, !15, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol: argument 1"}
!17 = distinct !{!17, !15, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol: argument 0"}
!18 = !{!17, !16}
!19 = !{i64 26909018087725444}
!20 = distinct !{!20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!21 = distinct !{!21, !20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!22 = distinct !{!22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!23 = distinct !{!23, !22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!24 = distinct !{!24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol"}
!25 = distinct !{!25, !24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol: argument 0"}
!26 = distinct !{!26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!28 = distinct !{!28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol: argument 0"}
!32 = distinct !{!32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol: argument 0"}
!34 = distinct !{null, null, null, null, null, null, null, null, null, null}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol: argument 0"}
!39 = distinct !{!39, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!40 = distinct !{!40, !39, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!41 = !{!21}
!42 = !{!23}
!43 = !{!25}
!44 = !{!27}
!45 = !{!29}
!46 = !{!31}
!47 = !{!31, !29, !27, !25, !23, !21}
!48 = !{!33}
!49 = !{!33, !31, !29, !27, !25, !23, !21}
!50 = !{!36}
!51 = !{!38}
!52 = !{!40}
!53 = !{!40, !38, !36, !33, !31, !29, !27, !25, !23, !21}
!54 = distinct !{!54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol: argument 0"}
!56 = distinct !{!56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!57 = distinct !{!57, !56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!58 = distinct !{!58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol"}
!59 = distinct !{!59, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol: argument 0"}
!60 = distinct !{!60, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!61 = distinct !{!61, !60, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!62 = distinct !{!62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!64 = distinct !{!64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!65 = distinct !{!65, !64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol: argument 0"}
!68 = distinct !{!68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!69 = distinct !{!69, !68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!72 = distinct !{!72, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol"}
!73 = distinct !{!73, !72, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol: argument 0"}
!74 = distinct !{!74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol"}
!75 = distinct !{!75, !74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol: argument 0"}
!76 = distinct !{null}
!77 = distinct !{!77, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol"}
!78 = distinct !{!78, !77, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol: argument 0"}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol: argument 0"}
!81 = distinct !{!81, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!82 = distinct !{!82, !81, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!83 = !{!55}
!84 = !{!57}
!85 = !{!57, !55}
!86 = !{!59}
!87 = !{!61}
!88 = !{!61, !59}
!89 = !{!63}
!90 = !{!65}
!91 = !{!67}
!92 = !{!69}
!93 = !{!71}
!94 = !{!73}
!95 = !{!73, !71, !69, !67, !65, !63}
!96 = !{!75}
!97 = !{!75, !73, !71, !69, !67, !65, !63}
!98 = !{!78}
!99 = !{!80}
!100 = !{!82}
!101 = !{!82, !80, !78, !75, !73, !71, !69, !67, !65, !63}
!102 = distinct !{!102, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol"}
!103 = distinct !{!103, !102, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol: argument 0"}
!104 = distinct !{!104, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol"}
!105 = distinct !{!105, !104, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 0"}
!106 = distinct !{!106, !104, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 1"}
!107 = distinct !{!107, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol"}
!108 = distinct !{!108, !107, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 0"}
!109 = distinct !{!109, !107, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 1"}
!110 = !{!103}
!111 = !{i32 -1, i32 1000000000}
!112 = !{!105}
!113 = !{!106}
!114 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!115 = !{!108}
!116 = !{!109}
!117 = distinct !{!117, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol"}
!118 = distinct !{!118, !117, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol: argument 0"}
!119 = distinct !{!119, !117, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol: argument 1"}
!120 = distinct !{!120, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol"}
!121 = distinct !{!121, !120, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol: argument 0"}
!122 = distinct !{!122, !120, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol: argument 1"}
!123 = distinct !{null}
!124 = !{!118}
!125 = !{!119}
!126 = !{!121, !118}
!127 = !{!122, !119}
!128 = !{!122, !118}
!129 = !{!118, !119}
!130 = !{i64 0, i64 3}
!131 = distinct !{!131, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol"}
!132 = distinct !{!132, !131, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol: argument 0"}
!133 = distinct !{!133, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt"}
!134 = distinct !{!134, !133, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!135 = distinct !{!135, !133, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!136 = !{!134, !132}
!137 = !{!135}
!138 = distinct !{!138, !"_RNCNCINvMsb_Csa9iXSdNszRG_14async_executorNtBa_5State3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE00CsbDLrNlwBX3H_4smol"}
!139 = distinct !{!139, !138, !"_RNCNCINvMsb_Csa9iXSdNszRG_14async_executorNtBa_5State3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE00CsbDLrNlwBX3H_4smol: argument 0"}
!140 = distinct !{!140, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt"}
!141 = distinct !{!141, !140, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt: argument 0"}
!142 = distinct !{!142, !140, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt: argument 1"}
!143 = distinct !{!143, !"_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol"}
!144 = distinct !{!144, !143, !"_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol: argument 0"}
!145 = distinct !{!145, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsbDLrNlwBX3H_4smol"}
!146 = distinct !{!146, !145, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsbDLrNlwBX3H_4smol: argument 0"}
!147 = distinct !{!147, !"_RNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB9_6Runner8runnable00CsbDLrNlwBX3H_4smol"}
!148 = distinct !{!148, !147, !"_RNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB9_6Runner8runnable00CsbDLrNlwBX3H_4smol: argument 0"}
!149 = distinct !{!149, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol"}
!150 = distinct !{!150, !149, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol: argument 0"}
!151 = distinct !{!151, !"_RINvMs0_Cs8NKWGp8lJEP_8fastrandNtB6_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsbDLrNlwBX3H_4smol"}
!152 = distinct !{!152, !151, !"_RINvMs0_Cs8NKWGp8lJEP_8fastrandNtB6_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsbDLrNlwBX3H_4smol: argument 0"}
!153 = distinct !{!153, !"_RNvMs_Cs8NKWGp8lJEP_8fastrandNtB4_3Rng11gen_mod_u64"}
!154 = distinct !{!154, !153, !"_RNvMs_Cs8NKWGp8lJEP_8fastrandNtB4_3Rng11gen_mod_u64: argument 0"}
!155 = distinct !{!155, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol"}
!156 = distinct !{!156, !155, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol: argument 0"}
!157 = distinct !{!157, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol"}
!158 = distinct !{!158, !157, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol: argument 0"}
!159 = distinct !{!159, !155, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol: argument 1"}
!160 = distinct !{!160, !157, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol: argument 2"}
!161 = distinct !{!161, !157, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol: argument 1"}
!162 = distinct !{!162, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEBZ_ENtNtNtB8_6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol"}
!163 = distinct !{!163, !162, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEBZ_ENtNtNtB8_6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol: argument 0"}
!164 = distinct !{!164, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator10advance_byCsbDLrNlwBX3H_4smol"}
!165 = distinct !{!165, !164, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator10advance_byCsbDLrNlwBX3H_4smol: argument 0"}
!166 = distinct !{!166, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol"}
!167 = distinct !{!167, !166, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol: argument 0"}
!168 = distinct !{!168, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol"}
!169 = distinct !{!169, !168, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol: argument 0"}
!170 = distinct !{!170, !"_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol"}
!171 = distinct !{!171, !170, !"_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol: argument 0"}
!172 = distinct !{!172, !"_RNvMsc_Csa9iXSdNszRG_14async_executorNtB5_8Sleepers6notify"}
!173 = distinct !{!173, !172, !"_RNvMsc_Csa9iXSdNszRG_14async_executorNtB5_8Sleepers6notify: argument 0"}
!174 = distinct !{null}
!175 = !{!139}
!176 = !{i8 0, i8 5}
!177 = !{!141}
!178 = !{!142}
!179 = !{!146, !144}
!180 = !{!148}
!181 = !{!148, !139}
!182 = !{!150}
!183 = !{!150, !148}
!184 = !{!150, !148, !139}
!185 = !{i64 4}
!186 = !{!152}
!187 = !{!152, !148, !139}
!188 = !{!154, !152}
!189 = !{!158, !156}
!190 = !{!161, !160, !159, !148, !139}
!191 = !{!163, !158, !156}
!192 = !{!165, !163, !158, !156}
!193 = !{!167, !163, !158, !156}
!194 = !{!169, !163, !158, !156}
!195 = !{!156}
!196 = !{!159, !148, !139}
!197 = !{!171}
!198 = !{!171, !139}
!199 = !{!173}
!200 = !{!141, !146, !144}
!201 = !{!142, !139}
!202 = !{!142, !146, !144}
!203 = !{!141, !139}
end_hunk_1
