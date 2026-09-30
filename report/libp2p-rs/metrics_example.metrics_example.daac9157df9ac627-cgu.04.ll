Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.04?download=true
inline.NumInlined: 1603
inline.NumDeleted: 644
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !3592)
  %i.i = load i64, ptr %i.b, align 8, !range !19, !alias.scope !3592, !noalias !3593, !noundef !17
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3594
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3592, !noalias !3593, !nonnull !17, !align !24, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !20, !alias.scope !3592, !noalias !3593, !noundef !17
  store ptr %i.l, ptr %i.a, align 8, !noalias !3594
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !3594
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #32
          to label %bb.e unwind label %bb.d, !noalias !3592

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.f, !noalias !3592

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3592
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3592, !noalias !3593, !nonnull !17, !align !24, !noundef !17 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !alias.scope !3592, !noalias !3593, !noundef !17 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !20, !noundef !17
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !17, !align !24, !noundef !17
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !17, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !17
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !24, !noundef !17 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !17, !noundef !17
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.r, !inline_history !1

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.s, i8 %i.u) #29
          to label %common.resume unwind label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  %i.as = extractvalue { ptr, ptr } %i.al, 0
  %i.at = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.m

bb.r:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.03.0, ptr %i.am, align 8
  store ptr %.sroa.6.0, ptr %i.ao, align 8
  br label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE8try_sendCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !3622, !noalias !3623, !nonnull !17, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8, !noalias !3624
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.05.0.i.i = phi i64 [ %i.g, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.h ] ; 3 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.h = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not11.i.i = icmp eq i64 %i.h, 9223372036854775807
  br i1 %.not11.i.i, label %bb.g, label %bb.h, !prof !26

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
          to label %.noexc.i unwind label %.body.thread18.i, !noalias !3625

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = add nuw nsw i64 %i.h, -9223372036854775807
  %i.j = cmpxchg ptr %i.f, i64 %.sroa.05.0.i.i, i64 %i.i seq_cst seq_cst, align 8, !noalias !3624 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.i, label %bb.e

.body.thread18.i:                                 ; preds = %bb.v, %bb.u, %bb.s, %bb.k, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.i:                                             ; preds = %bb.h
  %i.k = load ptr, ptr %1, align 8, !alias.scope !3619, !noalias !3623, !nonnull !17, !noundef !17 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noalias !3625, !noundef !17
  %.not.i = icmp ult i64 %i.h, %i.m
  br i1 %.not.i, label %.noexc7.i, label %bb.k

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !alias.scope !3623, !noalias !3619
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3618, !noalias !3626
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit

.noexc7.i:                                        ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i, %bb.i
  %.val.i = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i ], [ %i.k, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.o)
  store i64 2, ptr %0, align 8, !alias.scope !3618, !noalias !3626
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3628
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3629, !noalias !3623, !nonnull !17, !noundef !17 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.r)
          to label %.noexc9.i unwind label %.body.thread18.i, !noalias !3625

.noexc9.i:                                        ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !3630)
  %i.s = load i64, ptr %i.b, align 8, !range !19, !alias.scope !3630, !noalias !3631, !noundef !17
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.l, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i, !prof !26

bb.l:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3632
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3630, !noalias !3631, !nonnull !17, !align !24, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !20, !alias.scope !3630, !noalias !3631, !noundef !17
  store ptr %i.v, ptr %i.a, align 8, !noalias !3632
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !3632
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #32
          to label %bb.n unwind label %bb.m, !noalias !3633

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread.i unwind label %bb.o, !noalias !3633

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3633
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %.noexc9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3630, !noalias !3631, !nonnull !17, !align !24, !noundef !17 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !20, !alias.scope !3630, !noalias !3631, !noundef !17 ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3628
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ag, align 8, !noalias !3628, !align !24, !noundef !17 ; 2 uses
  %i.ah = icmp eq ptr %.val.i.i, null
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %.val1.i.i = load ptr, ptr %i.ai, align 8, !noalias !3628
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !3628, !nonnull !17, !noundef !17
  invoke void %i.ak(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i unwind label %bb.q, !noalias !3628, !inline_history !1

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ag, align 8, !noalias !3628
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.ac, i8 %i.ae) #29
          to label %.body.thread.i unwind label %bb.x, !noalias !3628

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %bb.p, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i
  store ptr null, ptr %i.ag, align 8, !noalias !3628
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 1, ptr %i.am, align 8, !noalias !3628
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br i1 %i.af, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i
  %i.ao = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3628
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.s, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i unwind label %.body.thread18.i, !noalias !3625

.noexc10.i:                                       ; preds = %bb.s
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.an monotonic, align 4, !noalias !3628
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.t, %.noexc10.i, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i
  %i.as = atomicrmw xchg ptr %i.ac, i32 0 release, align 4, !noalias !3628
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i, !prof !26

bb.u:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i unwind label %.body.thread18.i, !noalias !3625

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %bb.u, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.au = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !3628
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull %i.q)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i unwind label %.body.thread18.i, !noalias !3625

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3628
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.az = load atomic i64, ptr %i.ay seq_cst, align 8, !noalias !3628
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.lobit.i.i = lshr i64 %i.az, 63
  %i.bb = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.bb, ptr %i.ba, align 8, !alias.scope !3629, !noalias !3623
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !3619, !noalias !3623
  br label %.noexc7.i

.body.thread.i:                                   ; preds = %bb.q, %bb.m, %.body.thread18.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread18.i ], [ %i.z, %bb.m ], [ %i.al, %bb.q ] ; 3 uses
  %i.bc = load i64, ptr %i.c, align 8, !range !19, !alias.scope !3634, !noalias !3635, !noundef !17
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.y, label %.body.thread

bb.y:                                             ; preds = %.body.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !3636, !noalias !3635, !noundef !17
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %.body.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %.body.thread unwind label %bb.aa, !noalias !3635

bb.aa:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3635
  unreachable

bb.ab:                                            ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit, %bb.c
  ret void

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit: ; preds = %.noexc7.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

.body.thread:                                     ; preds = %bb.ad, %bb.ac, %bb.ae, %bb.z, %bb.y, %.body.thread.i
  %eh.lpad-body8 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ad ], [ %eh.lpad-body17.i, %bb.z ], [ %eh.lpad-body17.i, %.body.thread.i ], [ %eh.lpad-body17.i, %bb.y ], [ %lpad.thr_comm.split-lp, %bb.ae ], [ %lpad.thr_comm.split-lp, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body8

bb.ac:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bh = load i64, ptr %2, align 8, !range !19, !alias.scope !3637, !noundef !17
end_hunk_0
begin_hunk_1_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventzEEE8try_sendCsiLZOIpitoQl_15metrics_example:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  %i.i = load i64, ptr %i.b, align 8, !range !19, !alias.scope !3642, !noalias !3643, !noundef !17
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3644
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3642, !noalias !3643, !nonnull !17, !align !24, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !20, !alias.scope !3642, !noalias !3643, !noundef !17
  store ptr %i.l, ptr %i.a, align 8, !noalias !3644
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !3644
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #32
          to label %bb.e unwind label %bb.d, !noalias !3642

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.f, !noalias !3642

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3642
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3642, !noalias !3643, !nonnull !17, !align !24, !noundef !17 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !alias.scope !3642, !noalias !3643, !noundef !17 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !20, !noundef !17
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !17, !align !24, !noundef !17
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !17, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !17
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !24, !noundef !17 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !17, !noundef !17
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.r, !inline_history !1

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.s, i8 %i.u) #29
          to label %common.resume unwind label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  %i.as = extractvalue { ptr, ptr } %i.al, 0
  %i.at = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.m

bb.r:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.03.0, ptr %i.am, align 8
  store ptr %.sroa.6.0, ptr %i.ao, align 8
  br label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit, !prof !26

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE10do_send_nbCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !17  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8, !noalias !3647
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.i.i, %bb.f ] ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.05.0.i, -1
  %3 = and i64 %.sroa.05.0.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i64 %3, 9223372036854775807
  br i1 %.not11.i, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = add nuw nsw i64 %3, -9223372036854775807
  %i.e = cmpxchg ptr %i.b, i64 %.sroa.05.0.i, i64 %i.d seq_cst seq_cst, align 8, !noalias !3647 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.e, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.e, 0
  br i1 %.sroa.18.0.in.i.i, label %.noexc4, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

.noexc4:                                          ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc4, %.loopexit
  ret void

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.i:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(72) %2) #29
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE10do_send_nbCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !17  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8, !noalias !3650
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.i.i, %bb.f ] ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.05.0.i, -1
  %3 = and i64 %.sroa.05.0.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i64 %3, 9223372036854775807
  br i1 %.not11.i, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = add nuw nsw i64 %3, -9223372036854775807
  %i.e = cmpxchg ptr %i.b, i64 %.sroa.05.0.i, i64 %i.d seq_cst seq_cst, align 8, !noalias !3650 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.e, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.e, 0
  br i1 %.sroa.18.0.in.i.i, label %.noexc4, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

.noexc4:                                          ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc4, %.loopexit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE9is_closedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !17  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %.not3 = icmp sgt i64 %i.c, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %.not3, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE12next_messageCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !noundef !17  ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE8pop_spinCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !17 ; 3 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.w, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.ac, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = invoke noundef ptr @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE8pop_spinCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.ad    ; 3 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE10unpark_oneCsiLZOIpitoQl_15metrics_example.exit.thread27, label %bb.f

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.k)
          to label %bb.i unwind label %bb.h

.body.i:                                          ; preds = %bb.o, %bb.k, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.o, %bb.h ], [ %i.w, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !3670, !nonnull !17, !noundef !17
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !3670
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %.body

bb.g:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.t, %bb.r, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  %i.p = load i64, ptr %i.b, align 8, !range !19, !alias.scope !3671, !noalias !3672, !noundef !17
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.j, label %bb.n, !prof !26

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3673
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3671, !noalias !3672, !nonnull !17, !align !24, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !alias.scope !3671, !noalias !3672, !noundef !17
  store ptr %i.s, ptr %i.a, align 8, !noalias !3673
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.u, ptr %i.v, align 8, !noalias !3673
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #32
          to label %bb.l unwind label %bb.k, !noalias !3671

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.i unwind label %bb.m, !noalias !3671

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3671
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3671, !noalias !3672, !nonnull !17, !align !24, !noundef !17 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !20, !alias.scope !3671, !noalias !3672, !noundef !17 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMse_NtCsgV0iE8Xkxiy_15futures_channel4mpscNtB5_10SenderTask6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.z, i8 %i.ab) #29
          to label %.body.i unwind label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ae = trunc nuw i8 %i.ab to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br i1 %i.ae, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.r, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc8.i unwind label %bb.h

.noexc8.i:                                        ; preds = %bb.r
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc8.i
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.s, %.noexc8.i, %bb.q, %bb.p
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i, !prof !26

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i unwind label %bb.h

end_hunk_1
begin_hunk_2_@_RNvXNtCsl9hx9jpF0W9_12futures_util3fnsNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBL_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0INtB2_7FnOnce1INtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB3c_2io5error5ErrorEE9call_onceB1r_:bb.a
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3858, !noalias !3859
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.7.i)
  %i.c = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  br label %_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0BQ_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = extractelement <2 x ptr> %i.a, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = shufflevector <2 x ptr> %i.a, <2 x ptr> <ptr null, ptr poison>, <2 x i32> <i32 2, i32 0>
  br label %_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0BQ_.exit

_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0BQ_.exit: ; preds = %bb.b, %bb.c
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ %.sroa.9.0.copyload, %bb.b ]
  %i.f = phi <2 x ptr> [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  store <2 x ptr> %i.b, ptr %0, align 8, !alias.scope !3857, !noalias !3860
  %.sroa.6.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx14.i, align 8, !alias.scope !3857, !noalias !3860
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx16.i, align 8, !alias.scope !3857, !noalias !3860
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.f, ptr %i.g, align 8, !alias.scope !3857, !noalias !3860
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.i, i64 16, i1 false), !noalias !3860
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.i, i64 48, i1 false), !noalias !3860
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx1.i, align 8, !alias.scope !3857, !noalias !3860
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !alias.scope !3857, !noalias !3860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.7.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXNtCsl9hx9jpF0W9_12futures_util3fnsNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBL_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtBL_9dial_opts8DialOptsEs_0s_0INtB2_7FnOnce1INtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB32_2io5error5ErrorEE9call_onceB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.sroa.6.i = alloca [16 x i8], align 8   ; 4 uses
  %.sroa.0.sroa.7.i = alloca [48 x i8], align 8   ; 4 uses
  %i.a = load <2 x ptr>, ptr %2, align 8          ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3866)
  %i.b = load <2 x ptr>, ptr %1, align 8, !alias.scope !3866, !noalias !3867
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3866, !noalias !3867
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3866, !noalias !3867
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.7.i)
  %i.c = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  br label %_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtBa_9dial_opts8DialOptsEs_0s_0BQ_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = extractelement <2 x ptr> %i.a, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = shufflevector <2 x ptr> %i.a, <2 x ptr> <ptr null, ptr poison>, <2 x i32> <i32 2, i32 0>
  br label %_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtBa_9dial_opts8DialOptsEs_0s_0BQ_.exit

_RNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtBa_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtBa_9dial_opts8DialOptsEs_0s_0BQ_.exit: ; preds = %bb.b, %bb.c
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ %.sroa.9.0.copyload, %bb.b ]
  %i.f = phi <2 x ptr> [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  store <2 x ptr> %i.b, ptr %0, align 8, !alias.scope !3865, !noalias !3868
  %.sroa.6.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx14.i, align 8, !alias.scope !3865, !noalias !3868
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx16.i, align 8, !alias.scope !3865, !noalias !3868
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.f, ptr %i.g, align 8, !alias.scope !3865, !noalias !3868
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.i, i64 16, i1 false), !noalias !3868
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.7.i, i64 48, i1 false), !noalias !3868
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx1.i, align 8, !alias.scope !3865, !noalias !3868
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !alias.scope !3865, !noalias !3868
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.7.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !35, !alias.scope !3875, !noalias !3876, !noundef !17
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3878, !noalias !3879, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !3880
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !35, !alias.scope !3887, !noalias !3888, !noundef !17
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3890, !noalias !3891, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !3892
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10poll_readyCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(696) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [696 x i8], align 8               ; 7 uses
  %i.e = alloca [704 x i8], align 8               ; 10 uses
  %.sroa.8.i = alloca [688 x i8], align 8         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !35, !alias.scope !3926, !noalias !3927, !noundef !17
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  %i.h = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aa, !noalias !3931

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload6.i = load i64, ptr %1, align 8, !alias.scope !3931, !noalias !3932
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.8.0..sroa_idx8.i, i64 688, i1 false), !alias.scope !3933, !noalias !3932
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.d, ptr noundef nonnull align 8 dereferenceable(696) %1, i64 696, i1 false), !noalias !3935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  %i.i = load ptr, ptr %0, align 8, !alias.scope !3940, !noalias !3941, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8, !noalias !3942
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.k, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 3 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.l = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.l, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
          to label %.noexc.i.i.i unwind label %.body.thread17.i.i.i, !noalias !3943

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = add nuw nsw i64 %i.l, -9223372036854775807
  %i.n = cmpxchg ptr %i.j, i64 %.sroa.05.0.i.i.i.i, i64 %i.m seq_cst seq_cst, align 8, !noalias !3942 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.n, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.n, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread17.i.i.i:                             ; preds = %bb.w, %bb.v, %bb.t, %bb.l, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %0, align 8, !alias.scope !3944, !noalias !3941, !nonnull !17, !noundef !17 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i64, ptr %i.p, align 8, !noalias !3943, !noundef !17
  %.not.i.i.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %.noexc7.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.f
  %.sroa.0.0.copyload5.i = load i64, ptr %i.d, align 8, !alias.scope !3945, !noalias !3946
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.8.0..sroa_idx7.i, i64 688, i1 false), !alias.scope !3945, !noalias !3946
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i

.noexc7.i.i.i:                                    ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i ], [ %i.o, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3N_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(696) %i.d), !noalias !3934
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.s), !noalias !3934
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3948
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3949, !noalias !3941, !nonnull !17, !noundef !17 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.v)
          to label %.noexc9.i.i.i unwind label %.body.thread17.i.i.i, !noalias !3943

.noexc9.i.i.i:                                    ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  %i.w = load i64, ptr %i.c, align 8, !range !19, !alias.scope !3950, !noalias !3951, !noundef !17
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, !prof !26

bb.m:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3952
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3950, !noalias !3951, !nonnull !17, !align !24, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !20, !alias.scope !3950, !noalias !3951, !noundef !17
  store ptr %i.z, ptr %i.b, align 8, !noalias !3952
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ab, ptr %i.ac, align 8, !noalias !3952
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #32
          to label %bb.o unwind label %bb.n, !noalias !3953

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %.body.thread.i.i.i unwind label %bb.p, !noalias !3953

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3953
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !3950, !noalias !3951, !nonnull !17, !align !24, !noundef !17 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !20, !alias.scope !3950, !noalias !3951, !noundef !17 ; 2 uses
  %i.aj = trunc nuw i8 %i.ai to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3948
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !3948, !align !24, !noundef !17 ; 2 uses
  %i.al = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  %i.am = getelementptr i8, ptr %i.ag, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !3948
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !3948, !nonnull !17, !noundef !17
  invoke void %i.ao(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i unwind label %bb.r, !noalias !3948, !inline_history !1

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ak, align 8, !noalias !3948
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.ag, i8 %i.ai) #29
          to label %.body.thread.i.i.i unwind label %bb.y, !noalias !3948

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  store ptr null, ptr %i.ak, align 8, !noalias !3948
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 1, ptr %i.aq, align 8, !noalias !3948
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  %i.as = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3948
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.av = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i.i.i unwind label %.body.thread17.i.i.i, !noalias !3943

.noexc10.i.i.i:                                   ; preds = %bb.t
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc10.i.i.i
  store atomic i8 1, ptr %i.ar monotonic, align 4, !noalias !3948
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.u, %.noexc10.i.i.i, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  %i.aw = atomicrmw xchg ptr %i.ag, i32 0 release, align 4, !noalias !3948
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, !prof !26

bb.v:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i unwind label %.body.thread17.i.i.i, !noalias !3943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ay = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !3948
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.ba, ptr noundef nonnull %i.u)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i unwind label %.body.thread17.i.i.i, !noalias !3943

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3948
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i: ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bd = load atomic i64, ptr %i.bc seq_cst, align 8, !noalias !3948
  %.lobit.i.i.i.i = lshr i64 %i.bd, 63
  %i.be = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.be, ptr %i.f, align 8, !alias.scope !3949, !noalias !3941
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !3944, !noalias !3941
  br label %.noexc7.i.i.i

.body.thread.i.i.i:                               ; preds = %bb.r, %bb.n, %.body.thread17.i.i.i
  %eh.lpad-body16.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread17.i.i.i ], [ %i.ad, %bb.n ], [ %i.ap, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(696) %i.d) #29
          to label %.body.thread.i.i unwind label %bb.z, !noalias !3954

bb.z:                                             ; preds = %.body.thread.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3954
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %.noexc7.i.i.i, %bb.k
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload5.i, %bb.k ], [ -2, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3934
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i

.body.thread.i.i:                                 ; preds = %bb.aa, %.body.thread.i.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i.i, %.body.thread.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.aa ]
  resume { ptr, i32 } %eh.lpad-body7.i.i

bb.aa:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(696) %1) #29
          to label %.body.thread.i.i unwind label %bb.ab, !noalias !3935

bb.ab:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3935
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i, %bb.d
  %.sroa.89.2.i = phi i8 [ 0, %bb.d ], [ 1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload6.i, %bb.d ], [ %.sroa.0.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE9do_send_bCsiLZOIpitoQl_15metrics_example.exit.i.i ] ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.0.2.i, -2
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3G_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE10start_sendCsiLZOIpitoQl_15metrics_example.exit, label %bb.ad

bb.ac:                                            ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_RNvXs0_NtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linuxNtB5_13AddressFamilyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 9)
  br label %bb.ay

bb.aj:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 4)
  br label %bb.ay

bb.ak:                                            ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5)
  br label %bb.ay

bb.al:                                            ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4)
  br label %bb.ay

bb.am:                                            ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 6)
  br label %bb.ay

bb.an:                                            ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 10)
  br label %bb.ay

bb.ao:                                            ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 4)
  br label %bb.ay

bb.ap:                                            ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 3)
  br label %bb.ay

bb.aq:                                            ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 3)
  br label %bb.ay

bb.ar:                                            ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 5)
  br label %bb.ay

bb.as:                                            ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 3)
  br label %bb.ay

bb.at:                                            ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 7)
  br label %bb.ay

bb.au:                                            ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 3)
  br label %bb.ay

bb.av:                                            ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 3)
  br label %bb.ay

bb.aw:                                            ; preds = %bb.a
  %i.ax = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 4)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ay, ptr %i.a, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.j, %bb.i ], [ %i.k, %bb.j ], [ %i.l, %bb.k ], [ %i.m, %bb.l ], [ %i.n, %bb.m ], [ %i.o, %bb.n ], [ %i.p, %bb.o ], [ %i.q, %bb.p ], [ %i.r, %bb.q ], [ %i.s, %bb.r ], [ %i.t, %bb.s ], [ %i.u, %bb.t ], [ %i.v, %bb.u ], [ %i.w, %bb.v ], [ %i.x, %bb.w ], [ %i.y, %bb.x ], [ %i.z, %bb.y ], [ %i.aa, %bb.z ], [ %i.ab, %bb.aa ], [ %i.ac, %bb.ab ], [ %i.ad, %bb.ac ], [ %i.ae, %bb.ad ], [ %i.af, %bb.ae ], [ %i.ag, %bb.af ], [ %i.ah, %bb.ag ], [ %i.ai, %bb.ah ], [ %i.aj, %bb.ai ], [ %i.ak, %bb.aj ], [ %i.al, %bb.ak ], [ %i.am, %bb.al ], [ %i.an, %bb.am ], [ %i.ao, %bb.an ], [ %i.ap, %bb.ao ], [ %i.aq, %bb.ap ], [ %i.ar, %bb.aq ], [ %i.as, %bb.ar ], [ %i.at, %bb.as ], [ %i.au, %bb.at ], [ %i.av, %bb.au ], [ %i.aw, %bb.av ], [ %i.ax, %bb.aw ], [ %i.az, %bb.ax ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4u_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEB1I_ENtNtNtB4u_6future6future6Future4pollCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(704) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !17, !align !24, !noundef !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !35, !alias.scope !3990, !noalias !3991, !noundef !17
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3992)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !3993, !noalias !3994, !nonnull !17, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8, !noalias !3995
  %.not.i.i.i = icmp sgt i64 %i.h, -1
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3T_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  br i1 %i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread19, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit

_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.07.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -2, ptr %0, align 8
  %.not15 = icmp eq i64 %.sroa.07.0.copyload, -2
  br i1 %.not15, label %bb.e, label %bb.d, !prof !26

bb.d:                                             ; preds = %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.5.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.5.0..sroa_idx, i64 688, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !nonnull !17, !align !24, !noundef !17
  %i.k = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(696) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread19

bb.e:                                             ; preds = %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #31
  unreachable

_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3P_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread19: ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ %i.k, %bb.d ], [ -1, %bb.c ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEB1I_ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [160 x i8], align 8               ; 9 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.0.i.i = alloca [136 x i8], align 8       ; 5 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.e = alloca [160 x i8], align 8               ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !17, !align !24, !noundef !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4027)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !35, !alias.scope !4028, !noalias !4029, !noundef !17
  %.not.i.i = icmp eq i8 %i.h, 2
  br i1 %.not.i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4030)
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !4031, !noalias !4032, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8, !noalias !4033
  %.not.i.i.i = icmp sgt i64 %i.k, -1
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  br i1 %i.l, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread23, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit

_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i64 -3, ptr %.sroa.4.0..sroa_idx, align 8
  %.not17 = icmp eq i64 %.sroa.4.0.copyload, -3
  br i1 %.not17, label %bb.ad, label %bb.d, !prof !26

bb.d:                                             ; preds = %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(136) %i.m, i64 136, i1 false)
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx8, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !nonnull !17, !align !24, !noundef !17 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !35, !alias.scope !4036, !noalias !4037, !noundef !17
  %.not.i.i19 = icmp eq i8 %i.p, 2
  br i1 %.not.i.i19, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4038)
  %i.q = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.f unwind label %bb.ab, !noalias !4039

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !4041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !4046, !noalias !4047, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8, !noalias !4048
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.sroa.05.0.i.i.i.i.i = phi i64 [ %i.t, %bb.g ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.k ] ; 3 uses
  %.not.i.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i.i, -1
  %i.u = and i64 %.sroa.05.0.i.i.i.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not11.i.i.i.i.i = icmp eq i64 %i.u, 9223372036854775807
  br i1 %.not11.i.i.i.i.i, label %bb.j, label %bb.k, !prof !26

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
          to label %.noexc.i.i.i.i unwind label %.body.thread17.i.i.i.i, !noalias !4049

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = add nuw nsw i64 %i.u, -9223372036854775807
  %i.w = cmpxchg ptr %i.s, i64 %.sroa.05.0.i.i.i.i.i, i64 %i.v seq_cst seq_cst, align 8, !noalias !4048 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.w, 1
  %.sroa.01.0.i.i.i.i.i.i = extractvalue { i64, i1 } %i.w, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.l, label %bb.h

.body.thread17.i.i.i.i:                           ; preds = %bb.x, %bb.w, %bb.u, %bb.m, %bb.j
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.n, align 8, !alias.scope !4050, !noalias !4047, !nonnull !17, !noundef !17 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noalias !4049, !noundef !17
  %.not.i.i.i.i = icmp ult i64 %i.u, %i.z
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i.i.thread28, label %bb.m

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i.i.thread28: ; preds = %bb.l, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i
  %.val.i.i.i.i = phi ptr [ %.val.pre.i.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ %i.x, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.c), !noalias !4040
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ab), !noalias !4040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4040
  br label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread23.sink.split

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4051)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4052
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !4053, !noalias !4047, !nonnull !17, !noundef !17 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.ae)
          to label %.noexc9.i.i.i.i unwind label %.body.thread17.i.i.i.i, !noalias !4049

.noexc9.i.i.i.i:                                  ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  %i.af = load i64, ptr %i.b, align 8, !range !19, !alias.scope !4054, !noalias !4055, !noundef !17
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.n, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i, !prof !26

bb.n:                                             ; preds = %.noexc9.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4056
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4054, !noalias !4055, !nonnull !17, !align !24, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !20, !alias.scope !4054, !noalias !4055, !noundef !17
  store ptr %i.ai, ptr %i.a, align 8, !noalias !4056
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8, !noalias !4056
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #32
          to label %bb.p unwind label %bb.o, !noalias !4057

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread.i.i.i.i unwind label %bb.q, !noalias !4057

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !4057
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !4054, !noalias !4055, !nonnull !17, !align !24, !noundef !17 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !20, !alias.scope !4054, !noalias !4055, !noundef !17 ; 2 uses
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4052
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.at, align 8, !noalias !4052, !align !24, !noundef !17 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !4052
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !4052, !nonnull !17, !noundef !17
  invoke void %i.ax(ptr noundef %.val1.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i unwind label %bb.s, !noalias !4052, !inline_history !1

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.at, align 8, !noalias !4052
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example(ptr nonnull %i.ap, i8 %i.ar) #29
          to label %.body.thread.i.i.i.i unwind label %bb.z, !noalias !4052

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i: ; preds = %bb.r, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  store ptr null, ptr %i.at, align 8, !noalias !4052
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 1, ptr %i.az, align 8, !noalias !4052
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4052
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.u, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.be = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i.i.i.i unwind label %.body.thread17.i.i.i.i, !noalias !4049

.noexc10.i.i.i.i:                                 ; preds = %bb.u
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc10.i.i.i.i
  store atomic i8 1, ptr %i.ba monotonic, align 4, !noalias !4052
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %.noexc10.i.i.i.i, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  %i.bf = atomicrmw xchg ptr %i.ap, i32 0 release, align 4, !noalias !4052
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i, !prof !26

bb.w:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i unwind label %.body.thread17.i.i.i.i, !noalias !4049

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  %i.bh = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !4052
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull %i.ad)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i unwind label %.body.thread17.i.i.i.i, !noalias !4049

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !4052
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bm = load atomic i64, ptr %i.bl seq_cst, align 8, !noalias !4052
  %.lobit.i.i.i.i.i = lshr i64 %i.bm, 63
  %i.bn = trunc nuw nsw i64 %.lobit.i.i.i.i.i to i8
  store i8 %i.bn, ptr %i.o, align 8, !alias.scope !4053, !noalias !4047
  %.val.pre.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !4050, !noalias !4047
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i.i.thread28

.body.thread.i.i.i.i:                             ; preds = %bb.s, %bb.o, %.body.thread17.i.i.i.i
  %eh.lpad-body16.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %.body.thread17.i.i.i.i ], [ %i.am, %bb.o ], [ %i.ay, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c) #29
          to label %.body.thread.i.i.i unwind label %bb.aa, !noalias !4058

bb.aa:                                            ; preds = %.body.thread.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !4058
  unreachable

.body.thread.i.i.i:                               ; preds = %bb.ab, %.body.thread.i.i.i.i
  %eh.lpad-body7.i.i.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i.i.i, %.body.thread.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ab ]
  resume { ptr, i32 } %eh.lpad-body7.i.i.i

bb.ab:                                            ; preds = %bb.e
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e) #29
          to label %.body.thread.i.i.i unwind label %bb.ac, !noalias !4041

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !4041
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 136, i1 false), !alias.scope !4059, !noalias !4060
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.sroa.6.0.copyload5.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !alias.scope !4059, !noalias !4060 ; 2 uses
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx8.i.i, i64 16, i1 false), !alias.scope !4059, !noalias !4060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4040
  %.not2.i.i = icmp eq i64 %.sroa.6.0.copyload5.i.i, -3
  br i1 %.not2.i.i, label %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit.thread23.sink.split, label %bb.ae

bb.ad:                                            ; preds = %_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsiLZOIpitoQl_15metrics_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #31
  unreachable

.sink.split:                                      ; preds = %bb.d, %bb.f
  %.sroa.810.0.i.i.ph = phi i8 [ 0, %bb.f ], [ 1, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.m, i64 136, i1 false)
end_hunk_3
