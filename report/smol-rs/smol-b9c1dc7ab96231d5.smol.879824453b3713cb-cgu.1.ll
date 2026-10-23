Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !85, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !85
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
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !88
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
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !101
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !109, !alias.scope !108, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %bb.b, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !108 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 3 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  tail call void @llvm.assume(i1 %i.j)
  store i64 %i.h, ptr %0, align 8, !alias.scope !108
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !108
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

bb.e:                                             ; preds = %.backedge93, %.preheader
  %i.r = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.i, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.s, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.t = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !110
  br i1 %i.t, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.r)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !110

common.resume:                                    ; preds = %bb.o, %bb.ab, %.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ null, %.loopexit.split-lp.loopexit.split-lp ], [ %i.u, %bb.o ], [ %i.an, %bb.ab ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ag, %bb.o ], [ %i.at, %bb.ab ]
  store ptr %.sink, ptr %i.c, align 8
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.e
  %i.u = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) ; 2 uses
  %.val39 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val39)
          to label %bb.p unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.c, align 8, !alias.scope !110
  %i.v = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.v, 0
  switch i64 %.sroa.01.0.i, label %bb.k [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) #27
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.x = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %3 = trunc nuw i8 %i.x to i1
  %.not.i41 = icmp ne ptr %i.w, null              ; 2 uses
  %or.cond.not.i = and i1 %.not.i41, %3
  br i1 %or.cond.not.i, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l
  br i1 %.not.i41, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.n, !prof !111

bb.m:                                             ; preds = %bb.j
  %i.y = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.z = extractvalue { i64, i32 } %i.y, 0
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.split, label %.loopexit

bb.n:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
  unreachable

.split:                                           ; preds = %bb.m
  %i.ab = extractvalue { i64, i32 } %i.y, 1       ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 1000000000
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ugt i32 %i.ab, 500000
  br i1 %i.ad, label %.loopexit, label %.backedge93

.backedge93:                                      ; preds = %.split, %bb.p
  br label %bb.e

.loopexit:                                        ; preds = %bb.m, %.split, %bb.p, %bb.k
  %i.ae = atomicrmw add ptr %i.n, i64 2 release, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.t, label %bb.s, !prof !11

bb.o:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.p:                                             ; preds = %bb.i
  store ptr %i.u, ptr %i.c, align 8
  %i.ah = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i45 = extractvalue { i64, i1 } %i.ah, 0
  switch i64 %.sroa.01.0.i45, label %.loopexit [
    i64 0, label %bb.q
    i64 1, label %.backedge93
  ]

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.aj = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %4 = trunc nuw i8 %i.aj to i1
  %.not.i46 = icmp ne ptr %i.ai, null             ; 2 uses
  %or.cond.not.i47 = and i1 %.not.i46, %4
  br i1 %or.cond.not.i47, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48: ; preds = %bb.q
  br i1 %.not.i46, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.r, !prof !111

bb.r:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split: ; preds = %bb.q, %bb.l, %bb.ad, %bb.z
  %.sink84 = phi ptr [ %i.ar, %bb.z ], [ %i.aw, %bb.ad ], [ %i.w, %bb.l ], [ %i.ai, %bb.q ] ; 2 uses
  %i.ak = atomicrmw add ptr %.sink84, i64 -2 release, align 8 ; 0 uses
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.g, %bb.v, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53 ], [ %i.ai, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48 ], [ %.sink84, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split ], [ %i.w, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit ], [ null, %bb.v ], [ %i.aw, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60 ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.s:                                             ; preds = %.loopexit
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.t:                                             ; preds = %.loopexit
  call void @_RNvCs1gyvJd0MAV7_10async_lock5abort() #21
  unreachable

bb.u:                                             ; preds = %.backedge, %bb.f
  %i.al = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not33 = icmp eq ptr %i.al, null
  br i1 %.not33, label %bb.x, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.am = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !112
  br i1 %i.am, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.al)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !112

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.h
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.x:                                             ; preds = %bb.u
  %i.an = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val38)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.w
  store ptr null, ptr %i.c, align 8, !alias.scope !112
  %i.ao = atomicrmw or ptr %i.n, i64 1 acquire, align 8
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.z, label %.backedge

bb.z:                                             ; preds = %bb.y
  %i.ar = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.as = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %5 = trunc nuw i8 %i.as to i1
  %.not.i51 = icmp ne ptr %i.ar, null             ; 2 uses
  %or.cond.not.i52 = and i1 %.not.i51, %5
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.z
  br i1 %.not.i51, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.aa, !prof !111

bb.aa:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ac:                                            ; preds = %bb.x
  store ptr %i.an, ptr %i.c, align 8
  %i.au = cmpxchg ptr %i.n, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.aw = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.ax = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %6 = trunc nuw i8 %i.ax to i1
  %.not.i58 = icmp ne ptr %i.aw, null             ; 2 uses
  %or.cond.not.i59 = and i1 %.not.i58, %6
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.ad
  br i1 %.not.i58, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.af, !prof !111

bb.ae:                                            ; preds = %bb.ac
  %.sroa.01.0.i57 = extractvalue { i64, i1 } %i.au, 0
  %i.ay = and i64 %.sroa.01.0.i57, 1
  %.not36 = icmp eq i64 %i.ay, 0
  br i1 %.not36, label %bb.ag, label %.backedge

bb.af:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) #27
  br label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.ae, %bb.y
  br label %bb.u
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
begin_hunk_1_@_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol:bb.a
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBb_7process5ChildEE4lockCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB6_7process5ChildEENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsf_Csl6TgSXZDiW0_4slabINtB5_11VacantEntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE6insertCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !120, !noundef !5
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !120, !noundef !5 ; 3 uses
  %i.f = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %.not32.i = icmp eq i64 %1, %i.e
  br i1 %.not32.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %i.e
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !range !13, !alias.scope !122, !noundef !5
  %i.i = icmp eq i64 %1, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8grow_oneCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit.thread unwind label %bb.e, !noalias !123

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !121, !noalias !124, !nonnull !5, !noundef !5
  invoke void %i.l(ptr noundef %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.f, !noalias !123, !inline_history !119

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !123
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %1 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !125, !noundef !5
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g, %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21
          to label %bb.i unwind label %bb.k, !noalias !125

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !125
  unreachable

_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !122, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %1 ; 2 uses
  store ptr %2, ptr %i.u, align 8, !noalias !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = add nuw nsw i64 %1, 1                    ; 2 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !122
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.v, ptr %i.w, align 8, !alias.scope !120
  br label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.k, %bb.e
  %.pn928.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn928.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !121, !nonnull !5, !noundef !5
  invoke void %i.z(ptr noundef %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.j, !noalias !125, !inline_history !0

_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !125, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !alias.scope !120
  store ptr %2, ptr %i.p, align 8, !noalias !125
  store ptr %3, ptr %i.aa, align 8, !noalias !120
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit, %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !5
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  ret ptr %i.af
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvXs0_NvNtCs1gyvJd0MAV7_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !align !10, !noundef !5 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.d = load i8, ptr %i.b, align 8, !range !8, !noundef !5
  %1 = trunc nuw i8 %i.d to i1
  %.not.i = icmp ne ptr %i.c, null
  %or.cond.not.i = and i1 %.not.i, %1
  br i1 %or.cond.not.i, label %bb.b, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %i.c, i64 -2 release, align 8 ; 0 uses
  br label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1c_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundRjENtNtBa_3fmt5Debug3fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !126, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !131, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol.exit

_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !167, !noalias !166, !noundef !5
  switch i8 %i.n, label %bb.b [
    i8 0, label %bb.f
    i8 2, label %bb.c
    i8 3, label %bb.i
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #26
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = invoke noundef zeroext i1 @_RNvXs2_NtCsitb6zIp059K_12futures_lite6futureNtB5_8YieldNowNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull dereferenceable(1) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.bl

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %_RNCNCINvMsb_Csa9iXSdNszRG_14async_executorNtBa_5State3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE00CsbDLrNlwBX3H_4smol.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !noalias !166
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 200, ptr %i.r, align 4, !noalias !166
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %i.s = phi i32 [ %.pre67.i, %._crit_edge.i ], [ 200, %bb.f ]
  %i.t = phi i32 [ %.pre.i, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.v = icmp slt i32 %i.t, %i.s
  br i1 %i.v, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.u, align 8, !noalias !166
  br label %bb.d

.thread.i:                                        ; preds = %bb.g
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.u, align 8, !alias.scope !170, !noalias !166
  %i.x = load ptr, ptr %0, align 8, !noalias !166, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !166, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.aa, align 8, !noalias !166
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %.sroa.718.0..sroa_idx.i, align 8, !noalias !166
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !166
  %.val83.i = load ptr, ptr %1, align 8, !alias.scope !166
  br label %.thread.i.i

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert69.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.pre70.i = load i8, ptr %.phi.trans.insert69.i, align 8, !range !9, !noalias !166
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !166 ; 3 uses
  switch i8 %.pre70.i, label %default.unreachable [
    i8 0, label %..thread.i.i_crit_edge
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

..thread.i.i_crit_edge:                           ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !166
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !noalias !166
  br label %.thread.i.i

default.unreachable:                              ; preds = %bb.l, %bb.i
  unreachable

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %.thread.i
  %i.ab = phi ptr [ %i.z, %.thread.i ], [ %.pre46, %..thread.i.i_crit_edge ]
  %i.ac = phi ptr [ %i.x, %.thread.i ], [ %.pre, %..thread.i.i_crit_edge ] ; 4 uses
  %i.ad = phi ptr [ %.sroa.9.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert69.i, %..thread.i.i_crit_edge ]
  %.val86.i = phi ptr [ %.val83.i, %.thread.i ], [ %.val.i, %..thread.i.i_crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !166
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !14, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.af, ptr %i.ai, align 8, !noalias !166
  %.sroa.73.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ag, ptr %.sroa.73.0..sroa_idx.i.i, align 8, !noalias !166
  %.sroa.73.sroa.7.0..sroa.73.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %.sroa.73.sroa.7.0..sroa.73.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !166
  %.sroa.73.sroa.8.0..sroa.73.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ab, ptr %.sroa.73.sroa.8.0..sroa.73.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !166
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !166
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %.noexc.i unwind label %bb.bl

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %.noexc15.i unwind label %bb.bl

.noexc15.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !166
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !9, !noalias !166
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge71.i
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %._crit_edge.i.i.i
  ]

._crit_edge71.i:                                  ; preds = %bb.l
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre73.i = load ptr, ptr %.phi.trans.insert72.i, align 8, !noalias !166
  br label %bb.m

._crit_edge.i.i.i:                                ; preds = %bb.l
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !166
  %.phi.trans.insert44.i.i.i = getelementptr i8, ptr %0, i64 120
  %.val7.pre.i.i.i = load ptr, ptr %.phi.trans.insert44.i.i.i, align 8, !noalias !166
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge71.i, %.thread.i.i
  %i.aj = phi ptr [ %i.ad, %.thread.i.i ], [ %.phi.trans.insert69.i, %._crit_edge71.i ]
  %.val85.i = phi ptr [ %.val86.i, %.thread.i.i ], [ %.val.i, %._crit_edge71.i ]
  %i.ak = phi ptr [ %i.af, %.thread.i.i ], [ %.pre73.i, %._crit_edge71.i ] ; 2 uses
  %i.al = phi ptr [ %.sroa.9.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge71.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !166
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.am, ptr %i.ao, align 8, !noalias !166
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ak, ptr %i.ap, align 8, !noalias !166
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #26
          to label %.noexc.i.i unwind label %bb.bg

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #26
          to label %.noexc14.i.i unwind label %bb.bg

.noexc14.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %i.aq = phi ptr [ %.phi.trans.insert69.i, %._crit_edge.i.i.i ], [ %i.aj, %bb.m ] ; 4 uses
  %.val84.i = phi ptr [ %.val.i, %._crit_edge.i.i.i ], [ %.val85.i, %bb.m ] ; 2 uses
  %i.ar = phi ptr [ %.phi.trans.insert.i.i, %._crit_edge.i.i.i ], [ %i.al, %bb.m ] ; 3 uses
  %.val7.i.i.i = phi ptr [ %.val7.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ak, %bb.m ] ; 5 uses
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.am, %bb.m ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.noexc13.i.i.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !172
  %i.az = load ptr, ptr %i.as, align 8, !alias.scope !171, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 128 %i.bb)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %bb.q
  %i.bc = load i8, ptr %i.j, align 8, !range !8, !noalias !172, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !172
  %i.be = load ptr, ptr %.val.i.i.i, align 8, !alias.scope !171, !nonnull !5, !align !14, !noundef !5 ; 3 uses
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull align 128 %i.be)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i:                                    ; preds = %bb.r
  %i.bf = load i8, ptr %i.i, align 8, !range !8, !noalias !172, !noundef !5
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.t, label %bb.w

bb.s:                                             ; preds = %.noexc.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !172, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !172
  br label %bb.ap

bb.t:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !172
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 624 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.bk = load atomic i32, ptr %i.bj monotonic, align 16, !noalias !174
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.t ], [ %i.bo, %bb.v ] ; 3 uses
  %or.cond10.i.i.i.i.i.i.i.i.i = icmp ugt i32 %.sroa.06.0.i.i.i.i.i.i.i.i, 1073741821
  br i1 %or.cond10.i.i.i.i.i.i.i.i.i, label %.thread.i.thread.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw nsw i32 %.sroa.06.0.i.i.i.i.i.i.i.i, 1
  %i.bm = cmpxchg weak ptr %i.bj, i32 %.sroa.06.0.i.i.i.i.i.i.i.i, i32 %i.bl acquire monotonic, align 4, !noalias !174 ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  %i.bo = extractvalue { i32, i1 } %i.bm, 0
  br i1 %i.bn, label %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, label %bb.u

_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !175
  invoke void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE3newCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.bj)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10.i.i.i:                                   ; preds = %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.c, align 8, !range !7, !noalias !175, !noundef !5 ; 2 uses
  %i.bq = load ptr, ptr %i.au, align 8, !noalias !175, !nonnull !5, !noundef !5 ; 3 uses
  %i.br = load ptr, ptr %i.av, align 8, !noalias !175, !nonnull !5, !align !176, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !175
  store ptr %i.bq, ptr %i.at, align 8, !alias.scope !173, !noalias !172
  store ptr %i.br, ptr %i.aw, align 8, !alias.scope !173, !noalias !172
  store i64 %i.bp, ptr %i.g, align 8, !alias.scope !173, !noalias !172
  %i.bs = trunc nuw i64 %i.bp to i1
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, label %bb.ab

bb.w:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !172
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.h, align 8, !noalias !172
  %i.bv = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  invoke void @_RINvCsa9iXSdNszRG_14async_executor5stealNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.be, ptr noundef nonnull align 128 %i.bw)
          to label %bb.y unwind label %bb.x, !noalias !171

bb.x:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body.i.i.i unwind label %bb.z, !noalias !171

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !172
  br label %bb.ap

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !171
  unreachable

bb.aa:                                            ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !172
  %.pre.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !7, !noalias !172
  %2 = trunc nuw i64 %.pre.i.i.i.i.i.i to i1
  %i.bz = load ptr, ptr %i.at, align 8, !noalias !166
  %.not.i.i23.i.i.i.i.i.i = icmp ne ptr %i.bz, null
  %or.cond.not.i.i.i.i.i = select i1 %2, i1 %.not.i.i23.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, label %.thread.i.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !172
  store ptr %i.bq, ptr %i.f, align 8, !noalias !172
  store ptr %i.br, ptr %i.ax, align 8, !noalias !172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !171, !noundef !5 ; 10 uses
  %i.cc = icmp ult i64 %i.cb, 1152921504606846976
  call void @llvm.assume(i1 %i.cc)
  %i.cd = load ptr, ptr %i.ay, align 8, !alias.scope !171, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  store i64 %i.cb, ptr %i.b, align 8, !noalias !178
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RNCINvMs0_Cs8NKWGp8lJEP_8fastrandNtB8_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEE0CsbDLrNlwBX3H_4smol(ptr nonnull readonly align 8 dereferenceable(8) %i.b) #27
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cf = load i64, ptr %i.cd, align 8, !alias.scope !179, !noalias !171, !noundef !5
  %i.cg = add i64 %i.cf, 3257665815644502181      ; 4 uses
  store i64 %i.cg, ptr %i.cd, align 8, !alias.scope !179, !noalias !171
  %i.ch = zext i64 %i.cg to i128
  %i.ci = xor i64 %i.cg, -8378864009470890807
  %i.cj = zext i64 %i.ci to i128
  %i.ck = mul nuw i128 %i.cj, %i.ch               ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = xor i128 %i.cl, %i.ck                   ; 2 uses
  %i.cn = trunc i128 %i.cm to i64
  %i.co = and i128 %i.cm, 18446744073709551615
  %i.cp = zext nneg i64 %i.cb to i128             ; 2 uses
  %i.cq = mul nuw nsw i128 %i.co, %i.cp
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = trunc nuw nsw i128 %i.cr to i64         ; 2 uses
  %i.ct = mul i64 %i.cb, %i.cn                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cb
  br i1 %i.cu, label %bb.ae, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cv = sub nsw i64 0, %i.cb
  %i.cw = urem i64 %i.cv, %i.cb                   ; 2 uses
  %i.cx = icmp samesign ult i64 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

..loopexit_crit_edge.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i64 %i.dd, ptr %i.cd, align 8, !alias.scope !179, !noalias !171
  %i.cy = and i128 %i.dj, 18446744073709551615
  %i.cz = mul nuw nsw i128 %i.cy, %i.cp
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw nsw i128 %i.da to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dc = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cg, %bb.ae ]
  %i.dd = add i64 %i.dc, 3257665815644502181      ; 4 uses
  %i.de = zext i64 %i.dd to i128
  %i.df = xor i64 %i.dd, -8378864009470890807
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw i128 %i.dg, %i.de               ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = xor i128 %i.di, %i.dh                   ; 2 uses
  %i.dk = trunc i128 %i.dj to i64
  %i.dl = mul i64 %i.cb, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.cw
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ak, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, %bb.ac
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.z, !noalias !171

.lr.ph.i.i.i.i.i.i:                               ; preds = %..loopexit_crit_edge.i.i.i.i.i.i.i.i, %bb.ae, %bb.ad
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.ad ], [ %i.db, %..loopexit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.cs, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %i.dn = load ptr, ptr %i.f, align 8, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !171, !nonnull !5, !noundef !5 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !171, !noundef !5
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !172
  store ptr %i.az, ptr %i.e, align 8, !noalias !172
  store ptr %i.dp, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.ds, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.dp, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.ds, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store i64 %i.cb, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  br label %bb.af

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.an
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !180, !noalias !172
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dt = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !180, !noalias !172
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = add i64 %i.dt, -1                       ; 3 uses
  %i.dv = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !182, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub nuw i64 %i.dx, %i.dy
  %i.ea = lshr exact i64 %i.dz, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.du, i64 range(i64 0, 2305843009213693952) %i.ea) ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ec = sub nuw i64 %i.du, %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ec, 0
  %i.ed = icmp eq ptr %i.eb, %i.dw
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ed
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.du, %bb.ag ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172, !noundef !5 ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ef, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !183, !noalias !172
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  store ptr null, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172
  br label %bb.ai

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load ptr, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !184, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub nuw i64 %i.eh, %i.ei
  %i.ek = lshr exact i64 %i.ej, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.ek ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.em, ptr %i.eg
  store ptr %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !184, !noalias !172
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %i.en = invoke { i64, ptr } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4A_4TakepEB3I_8try_fold5checkRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowB5h_ENCINvNvB3I_4find5checkB5h_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB6K_6Runner8runnable000E0E0IB5o_B5n_EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.54.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171 ; 2 uses

.noexc12.i.i.i.i.i.i:                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.eo = extractvalue { i64, ptr } %i.en, 0
  %i.ep = extractvalue { i64, ptr } %i.en, 1      ; 2 uses
  %i.eq = trunc nuw i64 %i.eo to i1
  %.not.i.i.i.i.i.i = icmp ne ptr %i.ep, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.eq, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.ak, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

bb.ak:                                            ; preds = %.noexc12.i.i.i.i.i.i
  %i.er = load ptr, ptr %i.ep, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %i.et = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  invoke void @_RINvCsa9iXSdNszRG_14async_executor5stealNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.es, ptr noundef nonnull align 128 %i.eu)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i: ; preds = %bb.an, %.noexc12.i.i.i.i.i.i, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !172
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.aa unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ev = load i64, ptr %i.g, align 8, !range !7, !noalias !172, !noundef !5
  %i.ew = icmp eq i64 %i.ev, 0
  %i.ex = load ptr, ptr %i.at, align 8, !noalias !172
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  %or.cond32.i.i.i.i.i.i = select i1 %i.ew, i1 true, i1 %.not.i.i18.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i, label %.body.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, %bb.ao
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !172
  %i.ey = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.ez)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

bb.am:                                            ; preds = %bb.al
  %i.fa = load i8, ptr %i.d, align 8, !range !8, !noalias !172, !noundef !5
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !172
  %i.fc = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !185, !noalias !172, !noundef !5
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !172, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !172
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !172
  %i.fg = load i64, ptr %i.g, align 8, !range !7, !noalias !172, !noundef !5
  %3 = trunc nuw i64 %i.fg to i1
  %i.fh = load ptr, ptr %i.at, align 8, !noalias !172
  %.not.i.i17.i.i.i.i.i.i = icmp ne ptr %i.fh, null
  %or.cond.not36.i.i.i.i.i.i = select i1 %3, i1 %.not.i.i17.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not36.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !172
  br label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.body.i.i.i unwind label %bb.z, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i: ; preds = %bb.aa, %.noexc10.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.thread.i.thread.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.y, %bb.s
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.bi, %bb.s ], [ %i.bu, %bb.y ], [ %i.ff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !166
  store ptr %.sroa.0.0.i.ph.i.i.i.i.i, ptr %i.k, align 8, !noalias !166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  invoke void @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker4wake(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i)
          to label %bb.ar unwind label %bb.aq

.thread.i.thread.i.i.i.i.i:                       ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !172
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val84.i) ]
  %i.fi = invoke noundef zeroext i1 @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker5sleep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val84.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i.i.i:                                   ; preds = %.thread.i.thread.i.i.i.i.i
  br i1 %i.fi, label %bb.q, label %bb.bm

bb.aq:                                            ; preds = %bb.bc, %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.au, %bb.at, %bb.ap
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bd, %bb.bb, %bb.aq
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.gz, %bb.bd ], [ %i.gz, %bb.bb ]
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i.i.i unwind label %bb.bf

bb.ar:                                            ; preds = %bb.ap
  %i.fk = load ptr, ptr %.val7.i.i.i, align 8, !nonnull !5, !align !14, !noundef !5 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 664
  %i.fm = cmpxchg ptr %i.fl, i8 0, i8 1 acq_rel acquire, align 1
  %i.fn = extractvalue { i8, i1 } %i.fm, 1
  br i1 %i.fn, label %bb.as, label %bb.bh

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 512 ; 3 uses
  %i.fp = cmpxchg ptr %i.fo, i32 0, i32 1 acquire monotonic, align 4, !noalias !186
  %i.fq = extractvalue { i32, i1 } %i.fp, 1
  br i1 %i.fq, label %.noexc.i.i.i.i.i, label %bb.at, !prof !12

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.fo)
          to label %.noexc.i.i.i.i.i unwind label %bb.aq

.noexc.i.i.i.i.i:                                 ; preds = %bb.at, %bb.as
  %i.fr = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !187
  %i.fs = and i64 %i.fr, 9223372036854775807
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, label %bb.au, !prof !12

bb.au:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fu = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc7.i.i.i.i.i unwind label %bb.aq

.noexc7.i.i.i.i.i:                                ; preds = %bb.au
  %i.fv = xor i1 %i.fu, true
  %i.fw = zext i1 %i.fv to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i8 [ %i.fw, %.noexc7.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 516
  %i.fy = load atomic i8, ptr %i.fx monotonic, align 4, !noalias !186
  %.not.i.i.i4.i.i.i.i.i = icmp ne i8 %i.fy, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i.i4.i.i.i.i.i, i8 noundef %.sroa.01.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.fo)
          to label %.noexc8.i.i.i.i.i unwind label %bb.aq

.noexc8.i.i.i.i.i:                                ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !166, !nonnull !5, !align !10 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gc = load i8, ptr %i.gb, align 8, !range !8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !188, !noundef !5 ; 4 uses
  %i.gf = icmp ult i64 %i.ge, 384307168202282326
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !188, !noundef !5
  %i.gi = icmp ne i64 %i.ge, %i.gh
  %i.gj = icmp eq i64 %i.ge, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.gj, %i.gi
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc8.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gl = add nsw i64 %i.ge, -1                   ; 3 uses
  store i64 %i.gl, ptr %i.gd, align 8, !alias.scope !188
  %i.gm = load i64, ptr %i.gk, align 8, !range !13, !alias.scope !188, !noundef !5
  %i.gn = icmp samesign ult i64 %i.gl, %i.gm
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !188, !nonnull !5, !noundef !5
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %i.gl ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !188, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !188
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.noexc8.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ undef, %.noexc8.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.av ] ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i.i = phi ptr [ null, %.noexc8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.i.i.i.i.i.i, %bb.av ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gs = trunc nuw i8 %i.gc to i1
  br i1 %i.gs, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !166
  %i.gu = and i64 %i.gt, 9223372036854775807
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ay, !prof !12

bb.ay:                                            ; preds = %bb.ax
  %i.gw = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc.i5.i.i.i.i.i unwind label %bb.bb

.noexc.i5.i.i.i.i.i:                              ; preds = %bb.ay
  br i1 %i.gw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.noexc.i5.i.i.i.i.i
  store atomic i8 1, ptr %i.gr monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az, %.noexc.i5.i.i.i.i.i, %bb.ax, %bb.aw
  %i.gx = atomicrmw xchg ptr %i.ga, i32 0 release, align 4
  %i.gy = icmp eq i32 %i.gx, 2
  br i1 %i.gy, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, !prof !11

bb.ba:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ga)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
  br i1 %.not17.i.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.bd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.ba, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  %.not.i6.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
  br i1 %.not.i6.i.i.i.i.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i.i.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !5, !noundef !5
  invoke void %i.hb(ptr noundef %.sroa.4.0.i.i.i.i.i.i.i)
          to label %bb.bh unwind label %bb.aq, !inline_history !165

bb.bd:                                            ; preds = %bb.bb
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i.i.i, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !5, !noundef !5
  invoke void %i.hd(ptr noundef %.sroa.4.0.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.be, !inline_history !0

bb.be:                                            ; preds = %bb.bd
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bf:                                            ; preds = %.body.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread.i.thread.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.r, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ], [ %i.bx, %bb.x ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i8 2, ptr %i.ar, align 8, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol.exit.i.i

bb.bg:                                            ; preds = %bb.o, %bb.n
  %i.hg = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB6_7process5ChildEENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol
; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

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
!15 = distinct !{!15, i1 true, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol"}
!16 = distinct !{!16, !15, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol: argument 1"}
!17 = distinct !{!17, !15, !"_RNCNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB4_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4push0CsbDLrNlwBX3H_4smol: argument 0"}
!18 = !{!17, !16}
!19 = !{i64 26909018087725444}
!20 = distinct !{!20, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!21 = distinct !{!21, !20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!23 = distinct !{!23, !22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol"}
!25 = distinct !{!25, !24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol: argument 0"}
!32 = distinct !{!32, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol: argument 0"}
!34 = distinct !{null, null, null, null, null, null, null, null, null, null}
!35 = distinct !{!35, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol: argument 0"}
!37 = distinct !{!37, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol: argument 0"}
!39 = distinct !{!39, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
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
!54 = distinct !{!54, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol: argument 0"}
!56 = distinct !{!56, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!57 = distinct !{!57, !56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol"}
!59 = distinct !{!59, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
!61 = distinct !{!61, !60, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol: argument 0"}
!62 = distinct !{!62, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3iPtYnXk70z_14event_listener4sync4cell10UnsafeCellINtNtBI_3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!64 = distinct !{!64, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol"}
!65 = distinct !{!65, !64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEEECsbDLrNlwBX3H_4smol: argument 0"}
!66 = distinct !{!66, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol: argument 0"}
!68 = distinct !{!68, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!69 = distinct !{!69, !68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!70 = distinct !{!70, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol: argument 0"}
!72 = distinct !{!72, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol"}
!73 = distinct !{!73, !72, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol: argument 0"}
!74 = distinct !{!74, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol"}
!75 = distinct !{!75, !74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol: argument 0"}
!76 = distinct !{null}
!77 = distinct !{!77, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol"}
!78 = distinct !{!78, !77, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking8UnparkerECsbDLrNlwBX3H_4smol: argument 0"}
!79 = distinct !{!79, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCs2KJ8IamB81r_7parking5InnerEECsbDLrNlwBX3H_4smol: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol"}
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
!102 = distinct !{!102, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol"}
!103 = distinct !{!103, !102, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol: argument 0"}
!104 = distinct !{!104, i1 true, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol"}
!105 = distinct !{!105, !104, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol"}
!107 = distinct !{!107, !106, !"_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol: argument 0"}
!108 = !{!103}
!109 = !{i32 -1, i32 1000000000}
!110 = !{!105}
!111 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!112 = !{!107}
!113 = distinct !{!113, i1 true, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol"}
!114 = distinct !{!114, !113, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol: argument 0"}
!115 = distinct !{!115, !113, !"_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCskKLDkoKarTP_4core4task4wake5WakerE9insert_atCsbDLrNlwBX3H_4smol: argument 1"}
!116 = distinct !{!116, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol"}
!117 = distinct !{!117, !116, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol: argument 0"}
!118 = distinct !{!118, !116, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8push_mutCsbDLrNlwBX3H_4smol: argument 1"}
!119 = distinct !{null}
!120 = !{!114}
!121 = !{!115}
!122 = !{!117, !114}
!123 = !{!118, !115}
!124 = !{!118}
!125 = !{!114, !115}
!126 = !{i64 0, i64 3}
!127 = distinct !{!127, i1 true, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol"}
!128 = distinct !{!128, !127, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol: argument 0"}
!129 = distinct !{!129, i1 true, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt"}
!130 = distinct !{!130, !129, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!131 = !{!130, !128}
!132 = distinct !{!132, i1 true, !"_RNCNCINvMsb_Csa9iXSdNszRG_14async_executorNtBa_5State3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE00CsbDLrNlwBX3H_4smol"}
!133 = distinct !{!133, !132, !"_RNCNCINvMsb_Csa9iXSdNszRG_14async_executorNtBa_5State3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE00CsbDLrNlwBX3H_4smol: argument 0"}
!134 = distinct !{!134, i1 true, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt"}
!135 = distinct !{!135, !134, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt: argument 0"}
!136 = distinct !{!136, !134, !"_RNvXs1c_NtNtCskKLDkoKarTP_4core3cmp5implslNtB8_10PartialOrd2lt: argument 1"}
!137 = distinct !{!137, i1 true, !"_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol"}
!138 = distinct !{!138, !137, !"_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol: argument 0"}
!139 = distinct !{!139, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsbDLrNlwBX3H_4smol"}
!140 = distinct !{!140, !139, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsbDLrNlwBX3H_4smol: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB9_6Runner8runnable00CsbDLrNlwBX3H_4smol"}
!142 = distinct !{!142, !141, !"_RNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB9_6Runner8runnable00CsbDLrNlwBX3H_4smol: argument 0"}
!143 = distinct !{!143, i1 true, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol"}
!144 = distinct !{!144, !143, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB13_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE8try_readCsbDLrNlwBX3H_4smol: argument 0"}
!145 = distinct !{!145, i1 true, !"_RINvMs0_Cs8NKWGp8lJEP_8fastrandNtB6_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsbDLrNlwBX3H_4smol"}
!146 = distinct !{!146, !145, !"_RINvMs0_Cs8NKWGp8lJEP_8fastrandNtB6_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsbDLrNlwBX3H_4smol: argument 0"}
!147 = distinct !{!147, i1 true, !"_RNvMs_Cs8NKWGp8lJEP_8fastrandNtB4_3Rng11gen_mod_u64"}
!148 = distinct !{!148, !147, !"_RNvMs_Cs8NKWGp8lJEP_8fastrandNtB4_3Rng11gen_mod_u64: argument 0"}
!149 = distinct !{!149, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol"}
!150 = distinct !{!150, !149, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol: argument 0"}
!151 = distinct !{!151, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol"}
!152 = distinct !{!152, !151, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol: argument 0"}
!153 = distinct !{!153, i1 true, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEBZ_ENtNtNtB8_6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol"}
!154 = distinct !{!154, !153, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEBZ_ENtNtNtB8_6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol: argument 0"}
!155 = distinct !{!155, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator10advance_byCsbDLrNlwBX3H_4smol"}
!156 = distinct !{!156, !155, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator10advance_byCsbDLrNlwBX3H_4smol: argument 0"}
!157 = distinct !{!157, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol"}
!158 = distinct !{!158, !157, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol: argument 0"}
!159 = distinct !{!159, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol"}
!160 = distinct !{!160, !159, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsbDLrNlwBX3H_4smol: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol"}
!162 = distinct !{!162, !161, !"_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol: argument 0"}
!163 = distinct !{!163, i1 true, !"_RNvMsc_Csa9iXSdNszRG_14async_executorNtB5_8Sleepers6notify"}
!164 = distinct !{!164, !163, !"_RNvMsc_Csa9iXSdNszRG_14async_executorNtB5_8Sleepers6notify: argument 0"}
!165 = distinct !{null}
!166 = !{!133}
!167 = !{i8 0, i8 5}
!168 = !{!135}
!169 = !{!136}
!170 = !{!140, !138}
!171 = !{!142}
!172 = !{!142, !133}
!173 = !{!144}
!174 = !{!144, !142}
!175 = !{!144, !142, !133}
!176 = !{i64 4}
!177 = !{!146}
!178 = !{!146, !142, !133}
!179 = !{!148, !146}
!180 = !{!152, !150}
!181 = !{!154, !152, !150}
!182 = !{!156, !154, !152, !150}
!183 = !{!158, !154, !152, !150}
!184 = !{!160, !154, !152, !150}
!185 = !{!150}
!186 = !{!162}
!187 = !{!162, !133}
!188 = !{!164}
!189 = !{!135, !140, !138}
!190 = !{!136, !140, !138}
end_hunk_2
