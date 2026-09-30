Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/stream_example.stream_example.8ac1ec771386a957-cgu.12?download=true
inline.NumInlined: 755
inline.NumDeleted: 328
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example:bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.i = load i64, ptr %i.b, align 8, !range !18, !alias.scope !1009, !noalias !1010, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1011
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1009, !noalias !1010, !nonnull !10, !align !16, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !20, !alias.scope !1009, !noalias !1010, !noundef !10
  store ptr %i.l, ptr %i.a, align 8, !noalias !1011
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !1011
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
          to label %bb.e unwind label %bb.d, !noalias !1009

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.f, !noalias !1009

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1009
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1009, !noalias !1010, !nonnull !10, !align !16, !noundef !10 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !alias.scope !1009, !noalias !1010, !noundef !10 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !20, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit, !prof !14

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !10, !align !16, !noundef !10
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !10
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !16, !noundef !10 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !10, !noundef !10
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit unwind label %bb.r, !inline_history !4

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example(ptr nonnull %i.s, i8 %i.u) #29
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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit, !prof !14

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE8try_sendCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
  br i1 %i.c, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1023, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8, !noalias !1023
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i.i = phi i64 [ %i.f, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.f ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.g = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCsbUBnUbUB9bf_14stream_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11.i.i = icmp eq i64 %i.g, 9223372036854775807
  br i1 %.not11.i.i, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #31, !noalias !1023
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = add nsw i64 %.sroa.05.0.i.i, 1
  %1 = or i64 %i.h, -9223372036854775808
  %i.i = cmpxchg ptr %i.e, i64 %.sroa.05.0.i.i, i64 %1 seq_cst seq_cst, align 8, !noalias !1023 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %0, align 8, !alias.scope !1021, !nonnull !10, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noalias !1021, !noundef !10
  %.not.i = icmp ult i64 %i.g, %i.l
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i, %bb.g
  %.val.i = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i ], [ %i.j, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.m), !noalias !1021
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.n), !noalias !1021
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCsbUBnUbUB9bf_14stream_example.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1025
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1025, !nonnull !10, !noundef !10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.q), !noalias !1025
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.r = load i64, ptr %i.b, align 8, !range !18, !alias.scope !1026, !noalias !1027, !noundef !10
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.j, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i, !prof !14

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1028
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !align !16, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !20, !alias.scope !1026, !noalias !1027, !noundef !10
  store ptr %i.u, ptr %i.a, align 8, !noalias !1028
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.w, ptr %i.x, align 8, !noalias !1028
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30
          to label %bb.l unwind label %bb.k, !noalias !1029

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume.i.i unwind label %bb.m, !noalias !1029

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1029
  unreachable

common.resume.i.i:                                ; preds = %bb.o, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.ak, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i: ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !align !16, !noundef !10 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !20, !alias.scope !1026, !noalias !1027, !noundef !10 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1025
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.af, align 8, !noalias !1025, !align !16, !noundef !10 ; 2 uses
  %i.ag = icmp eq ptr %.val.i.i, null
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  %.val1.i.i = load ptr, ptr %i.ah, align 8, !noalias !1025
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1025, !nonnull !10, !noundef !10
  invoke void %i.aj(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i unwind label %bb.o, !noalias !1025, !inline_history !4

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.af, align 8, !noalias !1025
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example(ptr nonnull %i.ab, i8 %i.ad) #29
          to label %common.resume.i.i unwind label %bb.u, !noalias !1025

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i: ; preds = %bb.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i
  store ptr null, ptr %i.af, align 8, !noalias !1025
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.al, align 8, !noalias !1025
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ae, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i
  %i.an = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1025
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.aq = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32, !noalias !1025
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store atomic i8 1, ptr %i.am monotonic, align 4, !noalias !1025
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i
  %i.ar = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1025
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i, !prof !14

bb.s:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab), !noalias !1025
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i: ; preds = %bb.s, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.at = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !1025
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.t, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1025
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull %i.p), !noalias !1025
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ay = load atomic i64, ptr %i.ax seq_cst, align 8, !noalias !1025
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.lobit.i.i = lshr i64 %i.ay, 63
  %i.ba = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.ba, ptr %i.az, align 8, !alias.scope !1025
  %.val.pre.i = load ptr, ptr %0, align 8, !alias.scope !1021
  br label %bb.h

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.c, %bb.h, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 2, %bb.h ], [ 1, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.i = load i64, ptr %i.b, align 8, !range !18, !alias.scope !1033, !noalias !1034, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1035
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1033, !noalias !1034, !nonnull !10, !align !16, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !20, !alias.scope !1033, !noalias !1034, !noundef !10
  store ptr %i.l, ptr %i.a, align 8, !noalias !1035
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !1035
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
          to label %bb.e unwind label %bb.d, !noalias !1033

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.f, !noalias !1033

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1033
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
end_hunk_0
begin_hunk_1_@_RNvMst_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsbUBnUbUB9bf_14stream_example:bb.a
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i, %.preheader.i
  %.pn19.i = phi { i64, i1 } [ %i.o, %_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i ], [ %i.k, %.preheader.i ]
  %.sroa.01.0.i.pn.i = extractvalue { i64, i1 } %.pn19.i, 0 ; 2 uses
  %i.m = and i64 %.sroa.01.0.i.pn.i, 3
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.d, label %_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i, !prof !26

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1154
  store i64 2, ptr %i.b, align 8, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1154
  store ptr %i.b, ptr %i.a, align 8, !noalias !1154
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1154
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #31, !noalias !1154
  unreachable

_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i: ; preds = %bb.c
  %i.o = cmpxchg ptr %i.j, i64 %.sroa.01.0.i.pn.i, i64 %i.l acq_rel acquire, align 8, !noalias !1154 ; 2 uses
  %.sroa.18.0.in.i12.i = extractvalue { i64, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i12.i, label %_RNvMst_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerE8release2CsbUBnUbUB9bf_14stream_example.exit, label %bb.c

_RNvMst_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerE8release2CsbUBnUbUB9bf_14stream_example.exit: ; preds = %_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_RNvXsf_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsbUBnUbUB9bf_14stream_example.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXCscu2bAJ62uie_6eitherINtB2_6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbUBnUbUB9bf_14stream_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !10
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.d, align 8
  br i1 %i.b, label %bb.b, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbUBnUbUB9bf_14stream_example.exit

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbUBnUbUB9bf_14stream_example.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %i.h, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrINtB2_10EquivalentBq_E10equivalentCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.a = load i8, ptr %0, align 1, !range !20, !alias.scope !1158, !noalias !1159, !noundef !10 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !range !20, !alias.scope !1159, !noalias !1158, !noundef !10 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i8 %i.a, %i.b
  br i1 %i.d, label %bb.b, label %_RNvXsG_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.a to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i128, ptr %i.f, align 1, !alias.scope !1158, !noalias !1159, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i128, ptr %i.h, align 1, !alias.scope !1159, !noalias !1158, !noundef !10
  %i.j = icmp eq i128 %i.g, %i.i
  br label %_RNvXsG_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i32, ptr %i.k, align 1, !alias.scope !1158, !noalias !1159, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i32, ptr %i.m, align 1, !alias.scope !1159, !noalias !1158, !noundef !10
  %i.o = icmp eq i32 %i.l, %i.n
  br label %_RNvXsG_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3cmp9PartialEq2eq.exit

_RNvXsG_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCscK5W4trzgIe_6anyhow7wrapperINtB2_12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !10
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCscK5W4trzgIe_6anyhow7wrapperINtB2_12MessageErrorReENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1166, !noalias !1167, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1169, !noalias !1170, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1171
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1178, !noalias !1179, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1181, !noalias !1182, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1183
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !27, !alias.scope !1217, !noalias !1218, !noundef !10
  %.not.i = icmp eq i8 %i.e, 2
  br i1 %.not.i, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.f = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.y, !noalias !1222

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1225, !noalias !1226, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8, !noalias !1227
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.01.0.i.i.i.i.i, %bb.h ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.j = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not11.i.i.i.i = icmp eq i64 %i.j, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #31
          to label %.noexc.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1228

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.k, -9223372036854775808
  %i.l = cmpxchg ptr %i.h, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !1227 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.l, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.l, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.i, label %bb.e

.body.thread17.i.i.i:                             ; preds = %bb.u, %bb.t, %bb.r, %bb.j, %bb.g
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %0, align 8, !alias.scope !1229, !noalias !1226, !nonnull !10, !noundef !10 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i64, ptr %i.n, align 8, !noalias !1228, !noundef !10
  %.not.i.i.i = icmp ult i64 %i.j, %i.o
  br i1 %.not.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.thread.i, label %bb.j

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.thread.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i, %bb.i
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i ], [ %i.m, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1), !noalias !1230
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.q), !noalias !1231
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1233
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1234, !noalias !1226, !nonnull !10, !noundef !10 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.t)
          to label %.noexc9.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1228

.noexc9.i.i.i:                                    ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.u = load i64, ptr %i.c, align 8, !range !18, !alias.scope !1235, !noalias !1236, !noundef !10
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.k, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.k:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1237
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1235, !noalias !1236, !nonnull !10, !align !16, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !20, !alias.scope !1235, !noalias !1236, !noundef !10
  store ptr %i.x, ptr %i.b, align 8, !noalias !1237
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.z, ptr %i.aa, align 8, !noalias !1237
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30
          to label %bb.m unwind label %bb.l, !noalias !1238

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %.body.thread.i.i.i unwind label %bb.n, !noalias !1238

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1238
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1235, !noalias !1236, !nonnull !10, !align !16, !noundef !10 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !20, !alias.scope !1235, !noalias !1236, !noundef !10 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1233
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !1233, !align !16, !noundef !10 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.ak = getelementptr i8, ptr %i.ae, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !1233
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1233, !nonnull !10, !noundef !10
  invoke void %i.am(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %bb.p, !noalias !1233, !inline_history !4

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ai, align 8, !noalias !1233
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example(ptr nonnull %i.ae, i8 %i.ag) #29
          to label %.body.thread.i.i.i unwind label %bb.w, !noalias !1233

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  store ptr null, ptr %i.ai, align 8, !noalias !1233
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 1, ptr %i.ao, align 8, !noalias !1233
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.aq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1233
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.r, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.at = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
          to label %.noexc10.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1228

.noexc10.i.i.i:                                   ; preds = %bb.r
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc10.i.i.i
  store atomic i8 1, ptr %i.ap monotonic, align 4, !noalias !1233
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.s, %.noexc10.i.i.i, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.au = atomicrmw xchg ptr %i.ae, i32 0 release, align 4, !noalias !1233
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1228

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.t, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.aw = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !1233
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull %i.s)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1228

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1233
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i: ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bb = load atomic i64, ptr %i.ba seq_cst, align 8, !noalias !1233
  %.lobit.i.i.i.i = lshr i64 %i.bb, 63
  %i.bc = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.bc, ptr %i.d, align 8, !alias.scope !1234, !noalias !1226
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1229, !noalias !1226
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.thread.i

.body.thread.i.i.i:                               ; preds = %bb.p, %bb.l, %.body.thread17.i.i.i
  %eh.lpad-body16.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread17.i.i.i ], [ %i.ab, %bb.l ], [ %i.an, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %1) #29
          to label %.body.thread.i.i unwind label %bb.x, !noalias !1239

bb.x:                                             ; preds = %.body.thread.i.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1228
  unreachable

.body.thread.i.i:                                 ; preds = %bb.y, %.body.thread.i.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i.i, %.body.thread.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.y ]
  resume { ptr, i32 } %eh.lpad-body7.i.i

bb.y:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %1) #29
          to label %.body.thread.i.i unwind label %bb.z, !noalias !1230

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1231
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.89.1.i = phi i8 [ 0, %bb.c ], [ 1, %bb.e ]
  %.sroa.0.1.i = load i64, ptr %1, align 8, !alias.scope !1222, !noalias !1240 ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.0.1.i, -1
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.a
  %.sroa.01.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1218, !noalias !1217
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i
  %.sroa.89.0.i = phi i8 [ 1, %bb.aa ], [ %.sroa.89.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ] ; 4 uses
  %.sroa.0.023.i = phi i64 [ %.sroa.01.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.0.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ]
  %.sroa.8.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.8.sroa.6.0.i = load i64, ptr %.sroa.8.sroa.6.0.in.i, align 8, !alias.scope !1218, !noalias !1217 ; 2 uses
  %.sroa.8.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.8.sroa.7.0.i = load ptr, ptr %.sroa.8.sroa.7.0.in.i, align 8, !alias.scope !1218, !noalias !1217 ; 5 uses
  switch i64 %.sroa.0.023.i, label %bb.ac [
    i64 0, label %bb.ag
    i64 1, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bf = icmp eq i64 %.sroa.8.sroa.6.0.i, 0
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.sroa.7.0.i, null
  %or.cond.i.i.i.i = select i1 %i.bf, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1241
  %i.bg = ptrtoint ptr %.sroa.8.sroa.7.0.i to i64 ; 2 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i
    i64 1, label %bb.af
  ], !prof !13

default.unreachable:                              ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bi = icmp ult ptr %.sroa.8.sroa.7.0.i, inttoptr (i64 188978561024 to ptr)
  %i.bj = and i64 %i.bg, 1095216660480
  %i.bk = icmp ne i64 %i.bj, 1095216660480
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @llvm.assume(i1 %i.bk)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bl = getelementptr i8, ptr %.sroa.8.sroa.7.0.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !1242, !noalias !1241
  store i8 3, ptr %i.a, align 8, !alias.scope !1242, !noalias !1241
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm), !noalias !1241
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1241
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit

bb.ag:                                            ; preds = %bb.ab
  %.sroa.8.sroa.9.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.8.sroa.9.0.i = load ptr, ptr %.sroa.8.sroa.9.0.in.i, align 8, !alias.scope !1218, !noalias !1217
  %.sroa.8.sroa.8.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.sroa.8.0.i = load i64, ptr %.sroa.8.sroa.8.0.in.i, align 8, !alias.scope !1218, !noalias !1217
  %i.bn = inttoptr i64 %.sroa.8.sroa.6.0.i to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1243, !nonnull !10, !noundef !10
  tail call void %i.bp(ptr noundef %.sroa.8.sroa.9.0.i, ptr noundef %.sroa.8.sroa.7.0.i, i64 noundef %.sroa.8.sroa.8.0.i), !noalias !1243, !inline_history !1216
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE10start_sendCsbUBnUbUB9bf_14stream_example.exit: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.thread.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i, %bb.ab, %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i, %bb.ag
  %.sroa.0.0.i = phi i8 [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.thread.i ], [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventzEE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ], [ %.sroa.89.0.i, %bb.ab ], [ %.sroa.89.0.i, %bb.ac ], [ %.sroa.89.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i.i ], [ %.sroa.89.0.i, %bb.ag ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1250, !noalias !1251, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1253, !noalias !1254, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1255
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1262, !noalias !1263, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1265, !noalias !1266, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1267
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !27, !alias.scope !1286, !noalias !1287, !noundef !10
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.g = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aa, !noalias !1291

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload5.i = load i64, ptr %1, align 8, !alias.scope !1291, !noalias !1292
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx7.i, i64 24, i1 false), !alias.scope !1293, !noalias !1292
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !1295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1300, !noalias !1301, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8, !noalias !1302
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.j, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.k = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.k, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #31
          to label %.noexc.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1303

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.l, -9223372036854775808
  %i.m = cmpxchg ptr %i.i, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !1302 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread17.i.i.i:                             ; preds = %bb.w, %bb.v, %bb.t, %bb.l, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %0, align 8, !alias.scope !1304, !noalias !1301, !nonnull !10, !noundef !10 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noalias !1303, !noundef !10
  %.not.i.i.i = icmp ult i64 %i.k, %i.p
  br i1 %.not.i.i.i, label %.noexc7.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.f
  %.sroa.0.0.copyload4.i = load i64, ptr %i.c, align 8, !alias.scope !1305, !noalias !1306
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6.i, i64 24, i1 false), !alias.scope !1305, !noalias !1306
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i

.noexc7.i.i.i:                                    ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i ], [ %i.n, %bb.j ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !1294
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.r), !noalias !1294
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1308
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1309, !noalias !1301, !nonnull !10, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.u)
          to label %.noexc9.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1303

.noexc9.i.i.i:                                    ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.v = load i64, ptr %i.b, align 8, !range !18, !alias.scope !1310, !noalias !1311, !noundef !10
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.m:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1312
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1310, !noalias !1311, !nonnull !10, !align !16, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !20, !alias.scope !1310, !noalias !1311, !noundef !10
  store ptr %i.y, ptr %i.a, align 8, !noalias !1312
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.aa, ptr %i.ab, align 8, !noalias !1312
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30
          to label %bb.o unwind label %bb.n, !noalias !1313

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread.i.i.i unwind label %bb.p, !noalias !1313

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1313
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1310, !noalias !1311, !nonnull !10, !align !16, !noundef !10 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !20, !alias.scope !1310, !noalias !1311, !noundef !10 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !1308, !align !16, !noundef !10 ; 2 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.al = getelementptr i8, ptr %i.af, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !1308
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1308, !nonnull !10, !noundef !10
  invoke void %i.an(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %bb.r, !noalias !1308, !inline_history !4

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aj, align 8, !noalias !1308
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example(ptr nonnull %i.af, i8 %i.ah) #29
          to label %.body.thread.i.i.i unwind label %bb.y, !noalias !1308

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  store ptr null, ptr %i.aj, align 8, !noalias !1308
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i8 1, ptr %i.ap, align 8, !noalias !1308
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.ar = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1308
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.t, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.au = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
          to label %.noexc10.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1303

.noexc10.i.i.i:                                   ; preds = %bb.t
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc10.i.i.i
  store atomic i8 1, ptr %i.aq monotonic, align 4, !noalias !1308
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.u, %.noexc10.i.i.i, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.av = atomicrmw xchg ptr %i.af, i32 0 release, align 4, !noalias !1308
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.v:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1303

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ax = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !1308
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull %i.t)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1303

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1308
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i: ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bc = load atomic i64, ptr %i.bb seq_cst, align 8, !noalias !1308
  %.lobit.i.i.i.i = lshr i64 %i.bc, 63
  %i.bd = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.bd, ptr %i.e, align 8, !alias.scope !1309, !noalias !1301
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1304, !noalias !1301
  br label %.noexc7.i.i.i

.body.thread.i.i.i:                               ; preds = %bb.r, %bb.n, %.body.thread17.i.i.i
  %eh.lpad-body16.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread17.i.i.i ], [ %i.ac, %bb.n ], [ %i.ao, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #29
          to label %.body.thread.i.i unwind label %bb.z, !noalias !1314

bb.z:                                             ; preds = %.body.thread.i.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1314
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i: ; preds = %.noexc7.i.i.i, %bb.k
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload4.i, %bb.k ], [ 2, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1294
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i

.body.thread.i.i:                                 ; preds = %bb.aa, %.body.thread.i.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i.i, %.body.thread.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.aa ]
  resume { ptr, i32 } %eh.lpad-body7.i.i

bb.aa:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #29
          to label %.body.thread.i.i unwind label %bb.ab, !noalias !1295

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1295
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i, %bb.d
  %.sroa.88.2.i = phi i8 [ 0, %bb.d ], [ 1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload5.i, %bb.d ], [ %.sroa.0.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i ] ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.0.2.i, 2
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10start_sendCsbUBnUbUB9bf_14stream_example.exit, label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %.sroa.01.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1287, !noalias !1286
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.sroa.4.0..sroa_idx.i, i64 24, i1 false), !noalias !1286
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i
  %.sroa.88.0.i = phi i8 [ 1, %bb.ac ], [ %.sroa.88.2.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ] ; 2 uses
  %.sroa.0.010.i = phi i64 [ %.sroa.01.sroa.0.0.copyload.i, %bb.ac ], [ %.sroa.0.2.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !1315
  store i64 %.sroa.0.010.i, ptr %i.d, align 8, !noalias !1315
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.88.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1315
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1315
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10start_sendCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE10start_sendCsbUBnUbUB9bf_14stream_example.exit: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i, %bb.ad
  %.sroa.0.0.i = phi i8 [ %.sroa.88.0.i, %bb.ad ], [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1322, !noalias !1323, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1325, !noalias !1326, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1327
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !1334, !noalias !1335, !noundef !10
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1337, !noalias !1338, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1339
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCsbUBnUbUB9bf_14stream_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [160 x i8], align 8               ; 8 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.0.i = alloca [136 x i8], align 8         ; 6 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !27, !alias.scope !1358, !noalias !1359, !noundef !10
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.g = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aa, !noalias !1363

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 136, i1 false), !alias.scope !1364, !noalias !1365
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.6.0.copyload7.i = load i64, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !1363, !noalias !1365
  %.sroa.8.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx9.i, i64 16, i1 false), !alias.scope !1364, !noalias !1365
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !noalias !1367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1372, !noalias !1373, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8, !noalias !1374
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.j, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.k = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.k, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #31
          to label %.noexc.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1375

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.l, -9223372036854775808
  %i.m = cmpxchg ptr %i.i, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !1374 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread17.i.i.i:                             ; preds = %bb.w, %bb.v, %bb.t, %bb.l, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %0, align 8, !alias.scope !1376, !noalias !1373, !nonnull !10, !noundef !10 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noalias !1375, !noundef !10
  %.not.i.i.i = icmp ult i64 %i.k, %i.p
  br i1 %.not.i.i.i, label %.noexc7.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 136, i1 false), !alias.scope !1377, !noalias !1378
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.sroa.6.0.copyload5.i = load i64, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !1377, !noalias !1378
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx8.i, i64 16, i1 false), !alias.scope !1377, !noalias !1378
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i

.noexc7.i.i.i:                                    ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i ], [ %i.n, %bb.j ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.c), !noalias !1366
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.r), !noalias !1366
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1380
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1381, !noalias !1373, !nonnull !10, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.u)
          to label %.noexc9.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1375

.noexc9.i.i.i:                                    ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.v = load i64, ptr %i.b, align 8, !range !18, !alias.scope !1382, !noalias !1383, !noundef !10
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.m:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1384
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1382, !noalias !1383, !nonnull !10, !align !16, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !20, !alias.scope !1382, !noalias !1383, !noundef !10
  store ptr %i.y, ptr %i.a, align 8, !noalias !1384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.aa, ptr %i.ab, align 8, !noalias !1384
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30
          to label %bb.o unwind label %bb.n, !noalias !1385

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread.i.i.i unwind label %bb.p, !noalias !1385

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1385
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1382, !noalias !1383, !nonnull !10, !align !16, !noundef !10 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !20, !alias.scope !1382, !noalias !1383, !noundef !10 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1380
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !1380, !align !16, !noundef !10 ; 2 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.al = getelementptr i8, ptr %i.af, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !1380
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1380, !nonnull !10, !noundef !10
  invoke void %i.an(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %bb.r, !noalias !1380, !inline_history !4

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aj, align 8, !noalias !1380
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example(ptr nonnull %i.af, i8 %i.ah) #29
          to label %.body.thread.i.i.i unwind label %bb.y, !noalias !1380

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  store ptr null, ptr %i.aj, align 8, !noalias !1380
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i8 1, ptr %i.ap, align 8, !noalias !1380
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.ar = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1380
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.t, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.au = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
          to label %.noexc10.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1375

.noexc10.i.i.i:                                   ; preds = %bb.t
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc10.i.i.i
  store atomic i8 1, ptr %i.aq monotonic, align 4, !noalias !1380
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.u, %.noexc10.i.i.i, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.av = atomicrmw xchg ptr %i.af, i32 0 release, align 4, !noalias !1380
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i, !prof !14

bb.v:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1375

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ax = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !1380
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  invoke void @_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsbUBnUbUB9bf_14stream_example(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull %i.t)
          to label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i unwind label %.body.thread17.i.i.i, !noalias !1375

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECsbUBnUbUB9bf_14stream_example.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1380
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCsbUBnUbUB9bf_14stream_example.exit.i.i.i: ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bc = load atomic i64, ptr %i.bb seq_cst, align 8, !noalias !1380
  %.lobit.i.i.i.i = lshr i64 %i.bc, 63
  %i.bd = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.bd, ptr %i.e, align 8, !alias.scope !1381, !noalias !1373
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1376, !noalias !1373
  br label %.noexc7.i.i.i

.body.thread.i.i.i:                               ; preds = %bb.r, %bb.n, %.body.thread17.i.i.i
  %eh.lpad-body16.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread17.i.i.i ], [ %i.ac, %bb.n ], [ %i.ao, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c) #29
          to label %.body.thread.i.i unwind label %bb.z, !noalias !1386

bb.z:                                             ; preds = %.body.thread.i.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1386
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i: ; preds = %.noexc7.i.i.i, %bb.k
  %.sroa.6.1.i = phi i64 [ %.sroa.6.0.copyload5.i, %bb.k ], [ -3, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1366
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i

.body.thread.i.i:                                 ; preds = %bb.aa, %.body.thread.i.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %eh.lpad-body16.i.i.i, %.body.thread.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.aa ]
  resume { ptr, i32 } %eh.lpad-body7.i.i

bb.aa:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECsbUBnUbUB9bf_14stream_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1) #29
          to label %.body.thread.i.i unwind label %bb.ab, !noalias !1367

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1367
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCsbUBnUbUB9bf_14stream_example.exit.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i, %bb.d
  %.sroa.810.2.i = phi i8 [ 0, %bb.d ], [ 1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i ]
  %.sroa.6.2.i = phi i64 [ %.sroa.6.0.copyload7.i, %bb.d ], [ %.sroa.6.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCsbUBnUbUB9bf_14stream_example.exit.i.i ] ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.6.2.i, -3
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10start_sendCsbUBnUbUB9bf_14stream_example.exit, label %bb.ad
end_hunk_1
