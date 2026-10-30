Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_perf-6089bd23d11805c0.libp2p_perf.795efadb00a50636-cgu.5?download=true
inline.NumInlined: 160
inline.NumDeleted: 99
begin_hunk_0_@_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE12next_messageBY_:bb.a

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = tail call noundef ptr @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE8pop_spinCsaq3pFONu668_11libp2p_perf(ptr noundef nonnull align 8 %i.i) ; 3 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsaq3pFONu668_11libp2p_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.k)
          to label %bb.i unwind label %bb.h

.body.i:                                          ; preds = %bb.o, %bb.k, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.o, %bb.h ], [ %i.w, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !82, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !82
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %common.resume

bb.g:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume unwind label %bb.v

bb.h:                                             ; preds = %bb.t, %bb.r, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.p = load i64, ptr %i.b, align 8, !range !9, !alias.scope !83, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.j, label %bb.n, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !83, !nonnull !5, !align !6, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !11, !alias.scope !83, !noundef !5
  store ptr %i.s, ptr %i.a, align 8, !noalias !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.u, ptr %i.v, align 8, !noalias !84
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %bb.l unwind label %bb.k, !noalias !83

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsaq3pFONu668_11libp2p_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.m, !noalias !83

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !83
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !83, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !11, !alias.scope !83, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMse_NtCsgV0iE8Xkxiy_15futures_channel4mpscNtB5_10SenderTask6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf(ptr nonnull %i.z, i8 %i.ab) #18
          to label %.body.i unwind label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ae = trunc nuw i8 %i.ab to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br i1 %i.ae, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc8.i unwind label %bb.h

.noexc8.i:                                        ; preds = %bb.r
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc8.i
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.s, %.noexc8.i, %bb.q, %bb.p
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i, !prof !8

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i: ; preds = %bb.t, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.am = load ptr, ptr %i.c, align 8, !alias.scope !87, !nonnull !5, !noundef !5
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !87
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.u, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
  br label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit

bb.v:                                             ; preds = %bb.o, %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.g, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %.pn.i, %bb.g ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %.not8 = icmp eq ptr %.pr.pre, null
  br i1 %.not8, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread13

bb.w:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8
  %or.cond = icmp eq i64 %i.ar, 0
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -2, ptr %i.as, align 8
  br label %bb.d

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !88, !noundef !5 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateEEEEB2q_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !89
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateEEEEB2q_.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateEEEEB2q_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateEEEEB2q_.exit: ; preds = %bb.z, %bb.y, %bb.aa
  store ptr null, ptr %1, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %.sroa.33.0..sroa_idx, align 8
  br label %bb.d

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread13: ; preds = %bb.e, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit
  %.pr16 = phi ptr [ %.pr.pre, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit ], [ %i.e, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.pr16, i64 56
  %i.az = atomicrmw add ptr %i.ay, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread: ; preds = %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit.thread13, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtCsaq3pFONu668_11libp2p_perf12IntermediateE10unpark_oneBY_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushB15_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !13, !alias.scope !96, !noundef !5
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !98, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !99
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE13poll_unparkedB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.c ] ; 4 uses
  switch i8 %.sroa.0.0.i, label %2 [
    i8 -1, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit.a
    i8 2, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit.a
  ]

2:                                                ; preds = %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit
  %spec.store.select = shl nuw nsw i8 %.sroa.0.0.i, 1
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit.a

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit.a: ; preds = %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, %2
  %.sroa.01.0 = phi i8 [ %.sroa.0.0.i, %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit ], [ %spec.store.select, %2 ], [ %.sroa.0.0.i, %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyB15_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !13, !alias.scope !106, !noundef !5
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !108, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !109
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE13poll_unparkedB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10poll_readyBW_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendB15_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !13, !alias.scope !130, !noundef !5
  %.not.i = icmp eq i8 %i.d, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10start_sendBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.e = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE13poll_unparkedB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !135
  br i1 %i.e, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE8try_sendB19_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !138, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8, !noalias !139
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ %i.n, %bb.g ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.i = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE8try_sendB19_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not11.i.i.i.i = icmp eq i64 %i.i, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16, !noalias !139
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %i.k = or i64 %i.j, -9223372036854775808
  %i.l = cmpxchg ptr %i.g, i64 %.sroa.05.0.i.i.i.i, i64 %i.k seq_cst seq_cst, align 8, !noalias !139 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %0, align 8, !alias.scope !140, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i64, ptr %i.p, align 8, !noalias !141, !noundef !5
  %.not.i.i.i = icmp ult i64 %i.i, %i.q
  br i1 %.not.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE8try_sendB19_.exit.thread.i, label %bb.i

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE8try_sendB19_.exit.thread.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE4parkB19_.exit.i.i.i, %bb.h
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE4parkB19_.exit.i.i.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtCsaq3pFONu668_11libp2p_perf12IntermediateE4pushB13_(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !142
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.s), !noalias !143
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtCsaq3pFONu668_11libp2p_perf12IntermediateE10start_sendBW_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !146, !nonnull !5, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsaq3pFONu668_11libp2p_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.v), !noalias !145
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.w = load i64, ptr %i.b, align 8, !range !9, !alias.scope !147, !noalias !145, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.j, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsaq3pFONu668_11libp2p_perf.exit.i.i.i.i, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !147, !noalias !145, !nonnull !5, !align !6, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !11, !alias.scope !147, !noalias !145, !noundef !5
  store ptr %i.z, ptr %i.a, align 8, !noalias !148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ab, ptr %i.ac, align 8, !noalias !148
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
          to label %bb.l unwind label %bb.k, !noalias !149

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsaq3pFONu668_11libp2p_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #18
          to label %common.resume.i.i.i.i unwind label %bb.m, !noalias !149

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !149
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.o, %bb.k
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ap, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsaq3pFONu668_11libp2p_perf.exit.i.i.i.i: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !147, !noalias !145, !nonnull !5, !align !6, !noundef !5 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !11, !alias.scope !147, !noalias !145, !noundef !5 ; 2 uses
  %i.aj = trunc nuw i8 %i.ai to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !145, !align !6, !noundef !5 ; 2 uses
  %i.al = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsaq3pFONu668_11libp2p_perf.exit.i.i.i.i
  %i.am = getelementptr i8, ptr %i.ag, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !145
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !145, !nonnull !5, !noundef !5
  invoke void %i.ao(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i unwind label %bb.o, !noalias !145, !inline_history !0

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ak, align 8, !noalias !145
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf(ptr nonnull %i.ag, i8 %i.ai) #18
          to label %common.resume.i.i.i.i unwind label %bb.u, !noalias !145

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i: ; preds = %bb.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsaq3pFONu668_11libp2p_perf.exit.i.i.i.i
  store ptr null, ptr %i.ak, align 8, !noalias !145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 1, ptr %i.aq, align 8, !noalias !145
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i
  %i.as = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !145
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.av = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !noalias !145
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store atomic i8 1, ptr %i.ar monotonic, align 4, !noalias !145
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i
  %i.aw = atomicrmw xchg ptr %i.ag, i32 0 release, align 4, !noalias !145
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i, !prof !8

bb.s:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ag), !noalias !145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i: ; preds = %bb.s, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ay = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !145
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.t, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtCsaq3pFONu668_11libp2p_perf12IntermediateE4parkB19_.exit.i.i.i

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsaq3pFONu668_11libp2p_perf.exit.i.i.i.i
end_hunk_0
