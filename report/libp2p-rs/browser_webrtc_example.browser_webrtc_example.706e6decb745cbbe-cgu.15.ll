Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.15?download=true
inline.NumInlined: 1265
inline.NumDeleted: 506
begin_hunk_0_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
  %i.c = load i8, ptr %i.b, align 8, !range !32, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !18, !noundef !18 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 acquire monotonic, align 4, !noalias !1450
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.g), !noalias !1450
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1450
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !1450
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.q = load atomic i8, ptr %i.p monotonic, align 1, !noalias !1450
  %.not.i.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.not, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1451
  store ptr %i.g, ptr %i.a, align 8, !noalias !1451
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.r, align 8, !noalias !1451
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #31
          to label %bb.h unwind label %bb.g, !noalias !1452

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %common.resume unwind label %bb.i, !noalias !1452

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1452
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.u = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.w = load i8, ptr %i.v, align 8, !range !32, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  br i1 %i.x, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit
  store i8 0, ptr %i.b, align 8
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ab, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.p monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ac = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit, !prof !22

bb.n:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.p, label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %1, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !18, !align !26, !noundef !18
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !18, !noundef !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !18
  %i.aj = invoke { ptr, ptr } %i.ag(ptr noundef %i.ai)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.t
  %.sroa.6.0 = phi ptr [ %i.ar, %bb.t ], [ undef, %bb.n ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.aq, %bb.t ], [ null, %bb.n ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.ak, align 8, !align !26, !noundef !18 ; 2 uses
  %i.al = icmp eq ptr %.val, null
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %.val9 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !18, !noundef !18
  invoke void %i.ao(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.u, !inline_history !4

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.ap, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example(ptr nonnull %i.g, i8 %.sroa.01.0.i.i) #28
          to label %common.resume unwind label %bb.y

bb.s:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.o
  %i.aq = extractvalue { ptr, ptr } %i.aj, 0
  %i.ar = extractvalue { ptr, ptr } %i.aj, 1
  br label %bb.p

bb.u:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  store ptr %.sroa.6.0, ptr %i.am, align 8
  br label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.p, %bb.q
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.6.0, ptr %i.at, align 8
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.au = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.av = and i64 %i.au, 9223372036854775807
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.w, !prof !27

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ax, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.x

bb.x:                                             ; preds = %bb.w
  store atomic i8 1, ptr %i.p monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.x, %bb.w, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.ay = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit, !prof !22

bb.y:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
  br i1 %i.c, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1478, !nonnull !18, !noundef !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8, !noalias !1478
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i.i = phi i64 [ %i.f, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.f ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.g = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11.i.i = icmp eq i64 %i.g, 9223372036854775807
  br i1 %.not11.i.i, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #32, !noalias !1478
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = add nsw i64 %.sroa.05.0.i.i, 1
  %1 = or i64 %i.h, -9223372036854775808
  %i.i = cmpxchg ptr %i.e, i64 %.sroa.05.0.i.i, i64 %1 seq_cst seq_cst, align 8, !noalias !1478 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %0, align 8, !alias.scope !1476, !nonnull !18, !noundef !18 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noalias !1476, !noundef !18
  %.not.i = icmp ult i64 %i.g, %i.l
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.g
  %.val.i = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ], [ %i.j, %bb.g ] ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1479
  %i.m = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 16, i64 noundef 8) #29, !noalias !1479 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE21queue_push_and_signalCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31, !noalias !1479
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE21queue_push_and_signalCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store ptr null, ptr %i.m, align 8, !noalias !1476
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1476
  %i.p = atomicrmw xchg ptr %i.o, ptr %i.m acq_rel, align 8, !noalias !1476
  store atomic ptr %i.m, ptr %i.p release, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.q), !noalias !1476
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE9do_send_bCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1481, !nonnull !18, !noundef !18 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  %i.u = cmpxchg ptr %i.t, i32 0, i32 1 acquire monotonic, align 4, !noalias !1482
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.t), !noalias !1482
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1482
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.z = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !1482
  %i.aa = xor i1 %i.z, true
  %i.ab = zext i1 %i.aa to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ab, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.ad = load atomic i8, ptr %i.ac monotonic, align 1, !noalias !1482
  %.not.i.i.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, label %bb.n, !prof !27

bb.n:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1483
  store ptr %i.t, ptr %i.b, align 8, !noalias !1483
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.ae, align 8, !noalias !1483
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #31
          to label %bb.p unwind label %bb.o, !noalias !1484

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %common.resume.i.i unwind label %bb.q, !noalias !1484

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1484
  unreachable

common.resume.i.i:                                ; preds = %bb.aa, %bb.z, %bb.s, %bb.o
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ba, %bb.z ], [ %i.af, %bb.o ], [ %i.ba, %bb.aa ], [ %i.an, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.ah = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ai, align 8, !noalias !1481, !align !26, !noundef !18 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i, null
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.ak = getelementptr i8, ptr %i.s, i64 32
  %.val1.i.i = load ptr, ptr %i.ak, align 8, !noalias !1481
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1481, !nonnull !18, !noundef !18
  invoke void %i.am(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i unwind label %bb.s, !noalias !1481, !inline_history !4

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ai, align 8, !noalias !1481
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example(ptr nonnull %i.t, i8 %.sroa.01.0.i.i.i.i) #28
          to label %common.resume.i.i unwind label %bb.ad, !noalias !1481

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %bb.r, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  store ptr null, ptr %i.ai, align 8, !noalias !1481
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 1, ptr %i.ao, align 8, !noalias !1481
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.ap = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1481
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.u, !prof !27

bb.u:                                             ; preds = %bb.t
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33, !noalias !1481
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.ac monotonic, align 4, !noalias !1481
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.at = atomicrmw xchg ptr %i.t, i32 0 release, align 4, !noalias !1481
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, !prof !22

bb.w:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.t), !noalias !1481
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.av = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !1481
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1481
  store ptr null, ptr %i.a, align 8, !noalias !1481
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.ax, align 8, !noalias !1481
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1485
  %i.ay = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 16, i64 noundef 8) #29, !noalias !1485 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.y, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, !prof !22

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !1481

.noexc.i.i.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !1486
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.aa, label %common.resume.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #33
          to label %common.resume.i.i unwind label %bb.ab, !noalias !1481

bb.ab:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1481
  unreachable

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1481
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandzEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1481
  %i.bg = atomicrmw xchg ptr %i.bf, ptr %i.ay acq_rel, align 8, !noalias !1481
  store atomic ptr %i.ay, ptr %i.bg release, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 56
end_hunk_0
begin_hunk_1_@_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE12next_messageCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
          to label %.noexc10.i unwind label %bb.r

.noexc10.i:                                       ; preds = %bb.ab
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.ao monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ac, %.noexc10.i, %bb.aa, %bb.z
  %i.ba = atomicrmw xchg ptr %i.ab, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, !prof !22

bb.ad:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.ad, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.bc = load ptr, ptr %i.b, align 8, !alias.scope !1667, !nonnull !18, !noundef !18
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !1667
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ae, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #33
          to label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.am

bb.af:                                            ; preds = %bb.y, %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ag:                                            ; preds = %.lr.ph
  %i.bg = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load atomic i64, ptr %i.bh seq_cst, align 8
  %or.cond = icmp eq i64 %i.bi, 0
  br i1 %or.cond, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -4, ptr %i.bj, align 8
  br label %bb.k

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.bk = load ptr, ptr %1, align 8, !alias.scope !1668, !noundef !18 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bm = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !1669
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEE9drop_slowCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEEEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  store ptr null, ptr %1, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -3, ptr %.sroa.33.0..sroa_idx, align 8
  br label %bb.k

bb.am:                                            ; preds = %bb.ae, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.q, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.am ], [ %.pn.i, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(160) %i.d) #28
          to label %common.resume unwind label %bb.an

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %.not8 = icmp eq ptr %.pr.pre, null
  br i1 %.not8, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread, label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread27

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread27: ; preds = %.noexc, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit
  %.pr30 = phi ptr [ %.pr.pre, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit ], [ %.val, %.noexc ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr30, i64 56
  %i.br = atomicrmw add ptr %i.bq, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread

_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread: ; preds = %bb.l, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread27, %_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10unpark_oneCs9Et6OYOsIUY_22browser_webrtc_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.an:                                            ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !48, !alias.scope !1676, !noundef !18
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1678, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1679
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !48, !alias.scope !1686, !noundef !18
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1688, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1689
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.8.i = alloca [120 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !48, !alias.scope !1730, !noundef !18
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.g = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aj, !noalias !1735

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1738, !nonnull !18, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8, !noalias !1739
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %.sroa.01.0.i.i.i.i.i, %bb.h ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.k = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not11.i.i.i.i = icmp eq i64 %i.k, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #32
          to label %.noexc.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1740

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.l, -9223372036854775808
  %i.m = cmpxchg ptr %i.i, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !1739 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.m, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.i, label %bb.e

.body.thread23.i.i.i:                             ; preds = %bb.aa, %bb.y, %bb.q, %bb.p, %bb.g
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %0, align 8, !alias.scope !1741, !nonnull !18, !noundef !18 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noalias !1740, !noundef !18
  %.not.i.i.i = icmp ult i64 %i.k, %i.p
  br i1 %.not.i.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i, %bb.i
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i ], [ %i.n, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1742
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.q, align 8, !noalias !1742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i64 128, i1 false), !noalias !1743
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1744
  %i.r = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 136, i64 noundef 8) #29, !noalias !1744 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i, !prof !22

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.l, !noalias !1742

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !24, !alias.scope !1745, !noalias !1742, !noundef !18
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.body.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.c)
          to label %.body.thread.i.i unwind label %bb.n, !noalias !1742

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1742
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 136, i1 false), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1742
  %i.y = atomicrmw xchg ptr %i.x, ptr %i.r acq_rel, align 8, !noalias !1742
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store atomic ptr %i.r, ptr %i.z release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.aa), !noalias !1746
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10start_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.o:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1748, !nonnull !18, !noundef !18 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  %i.ae = cmpxchg ptr %i.ad, i32 0, i32 1 acquire monotonic, align 4, !noalias !1749
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %.noexc9.i.i.i, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ad)
          to label %.noexc9.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1740

.noexc9.i.i.i:                                    ; preds = %bb.p, %bb.o
  %i.ag = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1749
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.q, !prof !27

bb.q:                                             ; preds = %.noexc9.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1740

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.ak = xor i1 %i.aj, true
  %i.al = zext i1 %i.ak to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %.noexc10.i.i.i, %.noexc9.i.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.al, %.noexc10.i.i.i ], [ 0, %.noexc9.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.an = load atomic i8, ptr %i.am monotonic, align 1, !noalias !1749
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.r, !prof !27

bb.r:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1750
  store ptr %i.ad, ptr %i.b, align 8, !noalias !1750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.ao, align 8, !noalias !1750
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #31
          to label %bb.t unwind label %bb.s, !noalias !1751

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i.i.i unwind label %bb.u, !noalias !1751

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1751
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.ar = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !1752, !align !26, !noundef !18 ; 2 uses
  %i.at = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.au = getelementptr i8, ptr %i.ac, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !1752
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1752, !nonnull !18, !noundef !18
  invoke void %i.aw(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i unwind label %bb.w, !noalias !1752, !inline_history !4

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.as, align 8, !noalias !1752
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example(ptr nonnull %i.ad, i8 %.sroa.01.0.i.i.i.i.i.i) #28
          to label %.body.thread.i.i.i unwind label %bb.ah, !noalias !1752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  store ptr null, ptr %i.as, align 8, !noalias !1752
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i8 1, ptr %i.ay, align 8, !noalias !1752
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.az = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1752
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.y, !prof !27

bb.y:                                             ; preds = %bb.x
  %i.bc = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc14.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1740

.noexc14.i.i.i:                                   ; preds = %bb.y
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc14.i.i.i
  store atomic i8 1, ptr %i.am monotonic, align 4, !noalias !1752
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.z, %.noexc14.i.i.i, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.bd = atomicrmw xchg ptr %i.ad, i32 0 release, align 4, !noalias !1752
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, !prof !22

bb.aa:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1740

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.aa, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.bf = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !1752
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1752
  store ptr null, ptr %i.a, align 8, !noalias !1752
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.bh, align 8, !noalias !1752
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1753
  %i.bi = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 16, i64 noundef 8) #29, !noalias !1753 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ac, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i, !prof !22

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31
          to label %.noexc.i.i8.i.i.i unwind label %bb.ad, !noalias !1752

.noexc.i.i8.i.i.i:                                ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !1754
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs9Et6OYOsIUY_22browser_webrtc_example:bb.a

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #33
          to label %.body.thread.i.i.i unwind label %bb.af, !noalias !1752

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1752
  unreachable

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1752
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i: ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1752
  %i.bq = atomicrmw xchg ptr %i.bp, ptr %i.bi acq_rel, align 8, !noalias !1752
  store atomic ptr %i.bi, ptr %i.bq release, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bs = load atomic i64, ptr %i.br seq_cst, align 8, !noalias !1752
  %.lobit.i.i.i.i = lshr i64 %i.bs, 63
  %i.bt = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.bt, ptr %i.e, align 8, !alias.scope !1748
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1741
  br label %bb.j

.body.thread.i.i.i:                               ; preds = %bb.ae, %bb.ad, %bb.w, %bb.s, %.body.thread23.i.i.i
  %eh.lpad-body19.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread23.i.i.i ], [ %i.bk, %bb.ad ], [ %i.ap, %bb.s ], [ %i.bk, %bb.ae ], [ %i.ax, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %1) #28
          to label %.body.thread.i.i unwind label %bb.ai, !noalias !1743

bb.ai:                                            ; preds = %.body.thread.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1740
  unreachable

.body.thread.i.i:                                 ; preds = %bb.aj, %.body.thread.i.i.i, %bb.m, %bb.l
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.bv, %bb.aj ], [ %eh.lpad-body19.i.i.i, %.body.thread.i.i.i ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body6.i.i

bb.aj:                                            ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %1) #28
          to label %.body.thread.i.i unwind label %bb.ak, !noalias !1755

bb.ak:                                            ; preds = %bb.aj
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1746
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.88.1.i = phi i8 [ 0, %bb.c ], [ 1, %bb.e ]
  %.sroa.0.0.copyload5.i = load i64, ptr %1, align 8, !alias.scope !1735 ; 2 uses
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %.sroa.8.0..sroa_idx7.i, i64 120, i1 false), !alias.scope !1756, !noalias !1730
  %.not2.i = icmp eq i64 %.sroa.0.0.copyload5.i, -1
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10start_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.am

bb.al:                                            ; preds = %bb.a
  %.sroa.01.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1731
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %.sroa.01.sroa.4.0..sroa_idx.i, i64 120, i1 false), !noalias !1730
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %.sroa.88.0.i = phi i8 [ 1, %bb.al ], [ %.sroa.88.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ] ; 2 uses
  %.sroa.0.010.i = phi i64 [ %.sroa.01.sroa.0.0.copyload.i, %bb.al ], [ %.sroa.0.0.copyload5.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i, i64 120, i1 false), !noalias !1757
  store i64 %.sroa.0.010.i, ptr %i.d, align 8, !noalias !1757
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i8 %.sroa.88.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1757
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtB4_6result6ResultNtNtB4_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.d), !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1757
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10start_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2o_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE10start_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.am
  %.sroa.0.0.i = phi i8 [ %.sroa.88.0.i, %bb.am ], [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ], [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2B_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !48, !alias.scope !1764, !noundef !18
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1766, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1767
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !48, !alias.scope !1774, !noundef !18
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1776, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !1777
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [168 x i8], align 8               ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 8 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.0.i = alloca [136 x i8], align 8         ; 6 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !48, !alias.scope !1818, !noundef !18
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.h = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.al, !noalias !1823

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 136, i1 false), !alias.scope !1824, !noalias !1818
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.6.0.copyload7.i = load i64, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !1823
  %.sroa.8.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx9.i, i64 16, i1 false), !alias.scope !1824, !noalias !1818
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !noalias !1826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.i = load ptr, ptr %0, align 8, !alias.scope !1831, !nonnull !18, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8, !noalias !1832
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.k, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.l = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.l, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #32
          to label %.noexc.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1833

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.m, -9223372036854775808
  %i.n = cmpxchg ptr %i.j, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !1832 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.n, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.n, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread23.i.i.i:                             ; preds = %bb.ac, %bb.aa, %bb.s, %bb.r, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %0, align 8, !alias.scope !1834, !nonnull !18, !noundef !18 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i64, ptr %i.p, align 8, !noalias !1833, !noundef !18
  %.not.i.i.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !alias.scope !1835, !noalias !1836
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %.sroa.6.0.copyload5.i = load i64, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !1835, !noalias !1836
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx8.i, i64 16, i1 false), !alias.scope !1835, !noalias !1836
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.l:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i ], [ %i.o, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false), !noalias !1838
  store ptr null, ptr %i.c, align 8, !noalias !1837
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1839
  %i.s = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 168, i64 noundef 8) #29, !noalias !1839 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, !prof !22

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !1837

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.w = load i64, ptr %i.v, align 8, !range !30, !alias.scope !1840, !noalias !1837, !noundef !18
  %i.x = icmp eq i64 %i.w, -3
  br i1 %i.x, label %.body.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.r)
          to label %.body.thread.i.i unwind label %bb.p, !noalias !1837

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1837
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.s, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false), !noalias !1837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1837
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.s acq_rel, align 8, !noalias !1837
  store atomic ptr %i.s, ptr %i.aa release, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ab), !noalias !1825
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.q:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1842, !nonnull !18, !noundef !18 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 6 uses
  %i.af = cmpxchg ptr %i.ae, i32 0, i32 1 acquire monotonic, align 4, !noalias !1843
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  br i1 %i.ag, label %.noexc9.i.i.i, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ae)
          to label %.noexc9.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1833

.noexc9.i.i.i:                                    ; preds = %bb.r, %bb.q
  %i.ah = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1843
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.s, !prof !27

bb.s:                                             ; preds = %.noexc9.i.i.i
  %i.ak = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1833

.noexc10.i.i.i:                                   ; preds = %bb.s
  %i.al = xor i1 %i.ak, true
  %i.am = zext i1 %i.al to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %.noexc10.i.i.i, %.noexc9.i.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.am, %.noexc10.i.i.i ], [ 0, %.noexc9.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %i.ao = load atomic i8, ptr %i.an monotonic, align 1, !noalias !1843
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.t, !prof !27

bb.t:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1844
  store ptr %i.ae, ptr %i.b, align 8, !noalias !1844
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.ap, align 8, !noalias !1844
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #31
          to label %bb.v unwind label %bb.u, !noalias !1845

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i.i.i unwind label %bb.w, !noalias !1845

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1845
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.as = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.at, align 8, !noalias !1846, !align !26, !noundef !18 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.av = getelementptr i8, ptr %i.ad, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !1846
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1846, !nonnull !18, !noundef !18
  invoke void %i.ax(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i unwind label %bb.y, !noalias !1846, !inline_history !4

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.at, align 8, !noalias !1846
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example(ptr nonnull %i.ae, i8 %.sroa.01.0.i.i.i.i.i.i) #28
          to label %.body.thread.i.i.i unwind label %bb.aj, !noalias !1846

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.x, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  store ptr null, ptr %i.at, align 8, !noalias !1846
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 1, ptr %i.az, align 8, !noalias !1846
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.ba = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1846
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.bd = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc14.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1833

.noexc14.i.i.i:                                   ; preds = %bb.aa
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc14.i.i.i
  store atomic i8 1, ptr %i.an monotonic, align 4, !noalias !1846
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.ab, %.noexc14.i.i.i, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  %i.be = atomicrmw xchg ptr %i.ae, i32 0 release, align 4, !noalias !1846
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, !prof !22

bb.ac:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i unwind label %.body.thread23.i.i.i, !noalias !1833

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.ac, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.bg = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !1846
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1846
  store ptr null, ptr %i.a, align 8, !noalias !1846
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.bi, align 8, !noalias !1846
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1847
  %i.bj = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 169) 16, i64 noundef 8) #29, !noalias !1847 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ae, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31
          to label %.noexc.i.i8.i.i.i unwind label %bb.af, !noalias !1846
end_hunk_2
