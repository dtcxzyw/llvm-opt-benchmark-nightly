Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/distributed_key_value_store_example.distributed_key_value_store_example.32415d2ae8513850-cgu.12?download=true
inline.NumInlined: 1261
inline.NumDeleted: 546
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !13, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.i = load i64, ptr %i.b, align 8, !range !17, !alias.scope !2095, !noalias !2096, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2097
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2095, !noalias !2096, !nonnull !13, !align !19, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !14, !alias.scope !2095, !noalias !2096, !noundef !13
  store ptr %i.l, ptr %i.a, align 8, !noalias !2097
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !2097
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #30
          to label %bb.e unwind label %bb.d, !noalias !2095

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %common.resume unwind label %bb.f, !noalias !2095

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2095
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2095, !noalias !2096, !nonnull !13, !align !19, !noundef !13 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !14, !alias.scope !2095, !noalias !2096, !noundef !13 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !14, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !18

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !13, !align !19, !noundef !13 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !13, !align !19, !noundef !13
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !13, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !13
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !19, !noundef !13 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !13, !noundef !13
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit unwind label %bb.r, !inline_history !2

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.s, i8 %i.u) #28
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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !18

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [200 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 6 uses
  %i.f = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.b unwind label %bb.aj

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 192, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 192, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !2133, !noalias !2134, !nonnull !13, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8, !noalias !2135
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.05.0.i.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.h ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.j = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not11.i.i = icmp eq i64 %i.j, 9223372036854775807
  br i1 %.not11.i.i, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
          to label %.noexc.i unwind label %.body.thread22.i, !noalias !2136

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = add nsw i64 %.sroa.05.0.i.i, 1
  %3 = or i64 %i.k, -9223372036854775808
  %i.l = cmpxchg ptr %i.h, i64 %.sroa.05.0.i.i, i64 %3 seq_cst seq_cst, align 8, !noalias !2135 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.l, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.l, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.i, label %bb.e

.body.thread22.i:                                 ; preds = %bb.z, %bb.x, %bb.p, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %1, align 8, !alias.scope !2130, !noalias !2134, !nonnull !13, !noundef !13 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i64, ptr %i.n, align 8, !noalias !2136, !noundef !13
  %.not.i = icmp ult i64 %i.j, %i.o
  br i1 %.not.i, label %bb.k, label %bb.p

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 192, i1 false), !alias.scope !2134, !noalias !2130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2129, !noalias !2137
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.k:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i
  %.val.i = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ], [ %i.m, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 192, i1 false), !noalias !2139
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store ptr null, ptr %i.p, align 8, !noalias !2138
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2140
  %i.q = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 200, i64 noundef 8) #21, !noalias !2140 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #30
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !2138

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !range !32, !alias.scope !2141, !noalias !2138, !noundef !13
  %i.u = icmp eq i64 %i.t, -2
  br i1 %i.u, label %.body.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %.body.thread unwind label %bb.o, !noalias !2138

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2138
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.q, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false), !noalias !2138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2138
  %i.x = atomicrmw xchg ptr %i.w, ptr %i.q acq_rel, align 8, !noalias !2138
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  store atomic ptr %i.q, ptr %i.y release, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.z)
  store i64 -2, ptr %0, align 8, !alias.scope !2129, !noalias !2137
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.p:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2143
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2144, !noalias !2134, !nonnull !13, !noundef !13 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ac)
          to label %.noexc9.i unwind label %.body.thread22.i, !noalias !2136

.noexc9.i:                                        ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %i.ad = load i64, ptr %i.c, align 8, !range !17, !alias.scope !2145, !noalias !2146, !noundef !13
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.q:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2147
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2145, !noalias !2146, !nonnull !13, !align !19, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !14, !alias.scope !2145, !noalias !2146, !noundef !13
  store ptr %i.ag, ptr %i.b, align 8, !noalias !2147
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ai, ptr %i.aj, align 8, !noalias !2147
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #30
          to label %bb.s unwind label %bb.r, !noalias !2148

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i unwind label %bb.t, !noalias !2148

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2148
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %.noexc9.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2145, !noalias !2146, !nonnull !13, !align !19, !noundef !13 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !range !14, !alias.scope !2145, !noalias !2146, !noundef !13 ; 2 uses
  %i.aq = trunc nuw i8 %i.ap to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2143
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ar, align 8, !noalias !2143, !align !19, !noundef !13 ; 2 uses
  %i.as = icmp eq ptr %.val.i.i, null
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.at = getelementptr i8, ptr %i.an, i64 16
  %.val1.i.i = load ptr, ptr %i.at, align 8, !noalias !2143
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !noalias !2143, !nonnull !13, !noundef !13
  invoke void %i.av(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i unwind label %bb.v, !noalias !2143, !inline_history !2

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ar, align 8, !noalias !2143
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.an, i8 %i.ap) #28
          to label %.body.thread.i unwind label %bb.ag, !noalias !2143

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.u, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  store ptr null, ptr %i.ar, align 8, !noalias !2143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i8 1, ptr %i.ax, align 8, !noalias !2143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.az = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2143
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.bc = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13.i unwind label %.body.thread22.i, !noalias !2136

.noexc13.i:                                       ; preds = %bb.x
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc13.i
  store atomic i8 1, ptr %i.ay monotonic, align 4, !noalias !2143
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc13.i, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.bd = atomicrmw xchg ptr %i.an, i32 0 release, align 4, !noalias !2143
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.z:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i unwind label %.body.thread22.i, !noalias !2136

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.z, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.bf = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !2143
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2143
  store ptr null, ptr %i.a, align 8, !noalias !2143
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.bh, align 8, !noalias !2143
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2149
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 16, i64 noundef 8) #21, !noalias !2149 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ab, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, !prof !18

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #30
          to label %.noexc.i.i8.i unwind label %bb.ac, !noalias !2143

.noexc.i.i8.i:                                    ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !2150
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ad, label %.body.thread.i

end_hunk_0
begin_hunk_1_@_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2160, !noalias !2161, !nonnull !13, !align !19, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !14, !alias.scope !2160, !noalias !2161, !noundef !13
  store ptr %i.l, ptr %i.a, align 8, !noalias !2162
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !2162
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #30
          to label %bb.e unwind label %bb.d, !noalias !2160

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %common.resume unwind label %bb.f, !noalias !2160

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2160
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2160, !noalias !2161, !nonnull !13, !align !19, !noundef !13 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !14, !alias.scope !2160, !noalias !2161, !noundef !13 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !14, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit
  store i8 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.z monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ae = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !18

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  %.sroa.02.0 = phi i1 [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16 ], [ false, %bb.a ], [ false, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split ]
  ret i1 %.sroa.02.0

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %1, align 8, !nonnull !13, !align !19, !noundef !13 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !13, !align !19, !noundef !13
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !13, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !13
  %i.al = invoke { ptr, ptr } %i.ai(ptr noundef %i.ak)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.q
  %.sroa.6.0 = phi ptr [ %i.at, %bb.q ], [ undef, %bb.k ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.as, %bb.q ], [ null, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.am, align 8, !align !19, !noundef !13 ; 2 uses
  %i.an = icmp eq ptr %.val, null
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.val9 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !13, !noundef !13
  invoke void %i.aq(ptr noundef %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit unwind label %bb.r, !inline_history !2

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ar, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.s, i8 %i.u) #28
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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.m, %bb.n
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.6.0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i16: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.bb = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !18

bb.v:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [88 x i8], align 8           ; 4 uses
  %i.d = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.b unwind label %bb.aj

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12.0..sroa_idx, i64 88, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !2222, !noalias !2223, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8, !noalias !2224
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.05.0.i.i = phi i64 [ %i.g, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.h ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.h = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not11.i.i = icmp eq i64 %i.h, 9223372036854775807
  br i1 %.not11.i.i, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
          to label %.noexc.i unwind label %.body.thread24.i, !noalias !2225

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = add nsw i64 %.sroa.05.0.i.i, 1
  %3 = or i64 %i.i, -9223372036854775808
  %i.j = cmpxchg ptr %i.f, i64 %.sroa.05.0.i.i, i64 %3 seq_cst seq_cst, align 8, !noalias !2224 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.i, label %bb.e

.body.thread24.i:                                 ; preds = %bb.z, %bb.x, %bb.p, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.i:                                             ; preds = %bb.h
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2219, !noalias !2223, !nonnull !13, !noundef !13 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noalias !2225, !noundef !13
  %.not.i = icmp ult i64 %i.h, %i.m
  br i1 %.not.i, label %bb.k, label %bb.p

bb.j:                                             ; preds = %bb.e
  store ptr %.sroa.05.0.copyload, ptr %0, align 8, !alias.scope !2223, !noalias !2219
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !2223, !noalias !2219
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx9, align 8, !alias.scope !2223, !noalias !2219
  %.sroa.10.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx11, align 8, !alias.scope !2223, !noalias !2219
  %.sroa.12.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12.0..sroa_idx, i64 88, i1 false)
  %.sroa.13.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx14, align 8, !alias.scope !2223, !noalias !2219
  %.sroa.14.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx16, align 4, !alias.scope !2223, !noalias !2219
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2218, !noalias !2226
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.k:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i
  %.val.i = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ], [ %i.k, %bb.i ] ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2227
  %i.n = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 136, i64 noundef 8) #21, !noalias !2227 ; 11 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #30
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !2228

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i32 %.sroa.13.0.copyload, -1
  br i1 %i.q, label %.body.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2229, !nonnull !13, !noundef !13
  invoke void %i.s(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.6.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.body.thread unwind label %bb.o, !noalias !2228, !inline_history !4

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2228
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store ptr null, ptr %i.n, align 8, !noalias !2228
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.05.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2228
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2228
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.8.0.copyload, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2228
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %.sroa.10.0.copyload, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !2228
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12, i64 88, i1 false), !noalias !2230
  %.sroa.92.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store i32 %.sroa.13.0.copyload, ptr %.sroa.92.0..sroa_idx.i.i.i, align 8, !noalias !2228
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 132
  store i32 %.sroa.14.0.copyload, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !2228
  %i.v = atomicrmw xchg ptr %i.u, ptr %i.n acq_rel, align 8, !noalias !2228
  store atomic ptr %i.n, ptr %i.v release, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -1, ptr %i.x, align 8, !alias.scope !2218, !noalias !2226
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.p:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2232
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2233, !noalias !2223, !nonnull !13, !noundef !13 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.aa)
          to label %.noexc9.i unwind label %.body.thread24.i, !noalias !2225

.noexc9.i:                                        ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  %i.ab = load i64, ptr %i.c, align 8, !range !17, !alias.scope !2234, !noalias !2235, !noundef !13
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.q:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2236
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2234, !noalias !2235, !nonnull !13, !align !19, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !14, !alias.scope !2234, !noalias !2235, !noundef !13
  store ptr %i.ae, ptr %i.b, align 8, !noalias !2236
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ag, ptr %i.ah, align 8, !noalias !2236
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #30
          to label %bb.s unwind label %bb.r, !noalias !2237

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i unwind label %bb.t, !noalias !2237

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2237
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %.noexc9.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2234, !noalias !2235, !nonnull !13, !align !19, !noundef !13 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !14, !alias.scope !2234, !noalias !2235, !noundef !13 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2232
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ap, align 8, !noalias !2232, !align !19, !noundef !13 ; 2 uses
  %i.aq = icmp eq ptr %.val.i.i, null
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.ar = getelementptr i8, ptr %i.al, i64 16
  %.val1.i.i = load ptr, ptr %i.ar, align 8, !noalias !2232
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !noalias !2232, !nonnull !13, !noundef !13
  invoke void %i.at(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i unwind label %bb.v, !noalias !2232, !inline_history !2

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !noalias !2232
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.al, i8 %i.an) #28
          to label %.body.thread.i unwind label %bb.ag, !noalias !2232

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.u, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  store ptr null, ptr %i.ap, align 8, !noalias !2232
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 1, ptr %i.av, align 8, !noalias !2232
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.ax = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2232
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.ba = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13.i unwind label %.body.thread24.i, !noalias !2225

.noexc13.i:                                       ; preds = %bb.x
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc13.i
  store atomic i8 1, ptr %i.aw monotonic, align 4, !noalias !2232
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc13.i, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  %i.bb = atomicrmw xchg ptr %i.al, i32 0 release, align 4, !noalias !2232
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, !prof !18

bb.z:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i unwind label %.body.thread24.i, !noalias !2225

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %bb.z, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.bd = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !2232
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2232
  store ptr null, ptr %i.a, align 8, !noalias !2232
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.bf, align 8, !noalias !2232
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2238
  %i.bg = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 16, i64 noundef 8) #21, !noalias !2238 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ab, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, !prof !18

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #30
          to label %.noexc.i.i8.i unwind label %bb.ac, !noalias !2232

.noexc.i.i8.i:                                    ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2239
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %.body.thread.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #31
          to label %.body.thread.i unwind label %bb.ae, !noalias !2232

bb.ae:                                            ; preds = %bb.ad
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2232
  unreachable

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2232
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !2232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2232
  %i.bo = atomicrmw xchg ptr %i.bn, ptr %i.bg acq_rel, align 8, !noalias !2232
  store atomic ptr %i.bg, ptr %i.bo release, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bq = load atomic i64, ptr %i.bp seq_cst, align 8, !noalias !2232
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.lobit.i.i = lshr i64 %i.bq, 63
  %i.bs = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.bs, ptr %i.br, align 8, !alias.scope !2233, !noalias !2223
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !2219, !noalias !2223
  br label %bb.k

.body.thread.i:                                   ; preds = %bb.ad, %bb.ac, %bb.v, %bb.r, %.body.thread24.i
  %eh.lpad-body20.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread24.i ], [ %i.bi, %bb.ac ], [ %i.ai, %bb.r ], [ %i.bi, %bb.ad ], [ %i.au, %bb.v ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !2240, !nonnull !13, !noundef !13
  invoke void %i.bu(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.6.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.body.thread unwind label %bb.ah, !noalias !2225, !inline_history !6

bb.ah:                                            ; preds = %.body.thread.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2225
  unreachable

bb.ai:                                            ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit, %bb.c
  ret void

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.ai

.body.thread:                                     ; preds = %bb.aj, %.body.thread.i, %bb.n, %bb.m
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bw, %bb.aj ], [ %i.p, %bb.m ], [ %i.p, %bb.n ], [ %eh.lpad-body20.i, %.body.thread.i ]
  resume { ptr, i32 } %eh.lpad-body20

bb.aj:                                            ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2245, !noundef !13
  %i.bz = load ptr, ptr %2, align 8, !alias.scope !2245, !nonnull !13, !align !19, !noundef !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !2245, !nonnull !13, !noundef !13
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2245, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2245, !noundef !13
  invoke void %i.cb(ptr noundef %i.by, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %.body.thread unwind label %bb.ak, !inline_history !6

bb.ak:                                            ; preds = %bb.aj
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !13
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2249, !noalias !2250, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2251
  %.not.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task7CommandINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !13
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2255, !noalias !2256, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2257
  %.not.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtCsG258MDvU3F_3std4time7InstantEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE10do_send_nbCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !13  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8, !noalias !2270
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i = phi i64 [ %i.d, %bb.b ], [ %.sroa.01.0.i.i, %bb.f ] ; 4 uses
  %.not.i = icmp sgt i64 %.sroa.05.0.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = and i64 %.sroa.05.0.i, 9223372036854775807
  %.not11.i = icmp eq i64 %3, 9223372036854775807
  br i1 %.not11.i, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = add nsw i64 %.sroa.05.0.i, 1
  %4 = or i64 %i.e, -9223372036854775808
  %i.f = cmpxchg ptr %i.c, i64 %.sroa.05.0.i, i64 %4 seq_cst seq_cst, align 8, !noalias !2270 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.g, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.g, align 8, !noalias !2271
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2272
  %i.h = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 80, i64 noundef 8) #21, !noalias !2272 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #30
          to label %.noexc.i.i unwind label %bb.i, !noalias !2271

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !range !38, !alias.scope !2273, !noalias !2271, !noundef !13
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.body.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.body.thread unwind label %bb.k, !noalias !2271

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2271
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2271
  %i.o = atomicrmw xchg ptr %i.n, ptr %i.h acq_rel, align 8, !noalias !2271
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store atomic ptr %i.h, ptr %i.p release, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.q)
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %.loopexit
  ret void

.body.thread:                                     ; preds = %bb.j, %bb.i, %bb.m
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.r, %bb.m ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body7

bb.m:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(72) %2) #28
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE10do_send_nbCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !13  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8, !noalias !2286
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.05.0.i = phi i64 [ %i.d, %bb.b ], [ %.sroa.01.0.i.i, %bb.f ] ; 4 uses
  %.not.i = icmp sgt i64 %.sroa.05.0.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = and i64 %.sroa.05.0.i, 9223372036854775807
  %.not11.i = icmp eq i64 %3, 9223372036854775807
  br i1 %.not11.i, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = add nsw i64 %.sroa.05.0.i, 1
  %4 = or i64 %i.e, -9223372036854775808
  %i.f = cmpxchg ptr %i.c, i64 %.sroa.05.0.i, i64 %4 seq_cst seq_cst, align 8, !noalias !2286 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.f, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.g, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.g, align 8, !noalias !2287
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2288
  %i.h = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 96, i64 noundef 8) #21, !noalias !2288 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #30
          to label %.noexc.i.i unwind label %bb.i, !noalias !2287

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !range !38, !alias.scope !2289, !noalias !2287, !noundef !13
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.body.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.body.thread unwind label %bb.k, !noalias !2287

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2287
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !2287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2287
  %i.o = atomicrmw xchg ptr %i.n, ptr %i.h acq_rel, align 8, !noalias !2287
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store atomic ptr %i.h, ptr %i.p release, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.q)
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %.loopexit
  ret void

.body.thread:                                     ; preds = %bb.m, %bb.j, %bb.i
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body8

bb.m:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE9is_closedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !13  ; 2 uses
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
define internal fastcc void @_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE12next_messageCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [280 x i8], align 8               ; 5 uses
  %.sroa.8.i = alloca [272 x i8], align 8         ; 6 uses
  %i.e = alloca [280 x i8], align 8               ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !noundef !13  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.i = load ptr, ptr %i.h, align 8, !noalias !2315, !noundef !13 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.k = load atomic ptr, ptr %i.j acquire, align 8, !noalias !2315 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.h, align 8, !noalias !2315
  %i.m = load i64, ptr %i.i, align 8, !range !28, !noalias !2315, !noundef !13
  %.not.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.c
  %i.n = load atomic ptr, ptr %i.g acquire, align 8, !noalias !2315
  %i.o = icmp eq ptr %i.n, %i.i
  %spec.select.i = select i1 %i.o, i64 18, i64 19
  br label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE3popCs4jvuubEK18G_35distributed_key_value_store_example.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #27, !noalias !2315
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.k, align 8, !range !28, !noalias !2315, !noundef !13 ; 3 uses
  %.not6.i.i = icmp eq i64 %i.p, -1
  br i1 %.not6.i.i, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !noalias !2315
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2315
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.0..sroa_idx.i.i, i64 272, i1 false), !noalias !2315
  store i64 -1, ptr %i.k, align 8, !noalias !2315
  store i64 %i.p, ptr %i.d, align 8, !noalias !2315
  %i.q = load i64, ptr %i.i, align 8, !range !28, !alias.scope !2316, !noalias !2315, !noundef !13
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.i)
          to label %bb.k unwind label %.body.i.i, !noalias !2315

.body.i.i:                                        ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 288, i64 noundef 8) #21, !noalias !2315
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(280) %i.d) #28
          to label %common.resume unwind label %bb.l, !noalias !2315

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 288, i64 noundef 8) #21, !noalias !2315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.0..sroa_idx2.i.i, i64 272, i1 false), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2315
  br label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE3popCs4jvuubEK18G_35distributed_key_value_store_example.exit.i

bb.l:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2315
  unreachable

common.resume:                                    ; preds = %bb.an, %.body, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %.body.i.i ], [ %eh.lpad-body, %.body ], [ %i.bk, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE3popCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.k, %bb.e
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.e ], [ %i.p, %bb.k ] ; 2 uses
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i, i64 17)
  switch i64 %i.u, label %default.unreachable [
    i64 0, label %bb.p
    i64 1, label %bb.ai
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE3popCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  unreachable

bb.m:                                             ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE3popCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.c

end_hunk_1
begin_hunk_2_@_RNvXNtCsgtKVDLJNbYN_12futures_core6streamQINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3map3MapINtNtBL_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB26_10ConnectionINtNtNtB28_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB28_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB26_4pool4task30new_for_established_connectionB35_E0s0_0ENtB2_6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2564
  call void @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util6stream7poll_fnINtB5_6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1b_10ConnectionINtNtNtB1d_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1d_5dummy17ConnectionHandlerEE5close0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !2563
  %i.g = load i64, ptr %i.c, align 8, !range !29, !noalias !2564, !noundef !13 ; 3 uses
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8, !alias.scope !2563, !noalias !2565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2564
  br label %_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s0_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.0..sroa_idx.i, i64 184, i1 false), !noalias !2564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2564
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2564
  store i64 %i.g, ptr %i.b, align 8, !noalias !2564
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.i, i64 184, i1 false), !noalias !2564
  call void @_RNvXs_NtCsl9hx9jpF0W9_12futures_util3fnsNCNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task30new_for_established_connectionINtNtNtBP_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBP_5dummy17ConnectionHandlerEE0s0_0INtB4_6FnMut1INtCscu2bAJ62uie_6either6EitherNtB2Z_12HandlerEventzEE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %i.b), !noalias !2563
  %.sroa.04.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !2564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2564
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.d ], [ -2, %bb.c ]
  store i64 %.sroa.04.0.i, ptr %0, align 8, !alias.scope !2563, !noalias !2565
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(272) %i.e, i64 272, i1 false), !noalias !2565
  br label %_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s0_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s0_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgtKVDLJNbYN_12futures_core6streamQINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3map3MapINtNtBL_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB26_10ConnectionINtNtNtB28_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB28_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB26_4pool4task30new_for_established_connectionB35_E0s_0ENtB2_6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 5 uses
  %.sroa.3.i = alloca [184 x i8], align 8         ; 4 uses
  %i.c = alloca [192 x i8], align 8               ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !align !19, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2571
  call void @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util6stream7poll_fnINtB5_6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1b_10ConnectionINtNtNtB1d_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1d_5dummy17ConnectionHandlerEE5close0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !2570
  %i.g = load i64, ptr %i.c, align 8, !range !29, !noalias !2571, !noundef !13 ; 3 uses
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8, !alias.scope !2570, !noalias !2572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2571
  br label %_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.0..sroa_idx.i, i64 184, i1 false), !noalias !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2571
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2571
  store i64 %i.g, ptr %i.b, align 8, !noalias !2571
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.i, i64 184, i1 false), !noalias !2571
  call void @_RNvXs_NtCsl9hx9jpF0W9_12futures_util3fnsNCNCINvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task30new_for_established_connectionINtNtNtBP_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBP_5dummy17ConnectionHandlerEE0s_0INtB4_6FnMut1INtCscu2bAJ62uie_6either6EitherNtB2Z_12HandlerEventzEE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %i.b), !noalias !2570
  %.sroa.04.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2571
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.d ], [ -2, %bb.c ]
  store i64 %.sroa.04.0.i, ptr %0, align 8, !alias.scope !2570, !noalias !2572
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(272) %i.e, i64 272, i1 false), !noalias !2572
  br label %_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1A_10ConnectionINtNtNtB1C_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1C_5dummy17ConnectionHandlerEE5close0ENCNCINvNtNtB1A_4pool4task30new_for_established_connectionB2z_E0s_0ENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !2579, !noalias !2580, !noundef !13
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2582, !noalias !2583, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2584
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !2591, !noalias !2592, !noundef !13
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2594, !noalias !2595, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2596
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [288 x i8], align 8               ; 7 uses
  %i.e = alloca [280 x i8], align 8               ; 7 uses
  %i.f = alloca [288 x i8], align 8               ; 6 uses
  %.sroa.8.i = alloca [272 x i8], align 8         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !2635, !noalias !2636, !noundef !13
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  %i.i = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aj, !noalias !2640

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload5.i = load i64, ptr %1, align 8, !alias.scope !2640, !noalias !2641
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx7.i, i64 272, i1 false), !alias.scope !2642, !noalias !2641
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.e, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 280, i1 false), !noalias !2644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !2649, !noalias !2650, !nonnull !13, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8, !noalias !2651
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.m = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.m, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
          to label %.noexc.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2652

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.n, -9223372036854775808
  %i.o = cmpxchg ptr %i.k, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !2651 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.o, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.o, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread22.i.i.i:                             ; preds = %bb.aa, %bb.y, %bb.q, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !2653, !noalias !2650, !nonnull !13, !noundef !13 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noalias !2652, !noundef !13
  %.not.i.i.i = icmp ult i64 %i.m, %i.r
  br i1 %.not.i.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.f
  %.sroa.0.0.copyload4.i = load i64, ptr %i.e, align 8, !alias.scope !2654, !noalias !2655
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx6.i, i64 272, i1 false), !alias.scope !2654, !noalias !2655
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i

bb.l:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i ], [ %i.p, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.d, ptr noundef nonnull align 8 dereferenceable(280) %i.e, i64 280, i1 false), !noalias !2657
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store ptr null, ptr %i.s, align 8, !noalias !2656
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2658
  %i.t = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 288, i64 noundef 8) #21, !noalias !2658 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #30
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !2656

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !range !28, !alias.scope !2659, !noalias !2656, !noundef !13
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.body.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.d)
          to label %.body.thread.i.i unwind label %bb.p, !noalias !2656

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2656
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.t, ptr noundef nonnull align 8 dereferenceable(288) %i.d, i64 288, i1 false), !noalias !2656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2656
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.t acq_rel, align 8, !noalias !2656
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  store atomic ptr %i.t, ptr %i.ab release, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ac), !noalias !2643
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i

bb.q:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2661
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2662, !noalias !2650, !nonnull !13, !noundef !13 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.af)
          to label %.noexc9.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2652

.noexc9.i.i.i:                                    ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %i.ag = load i64, ptr %i.c, align 8, !range !17, !alias.scope !2663, !noalias !2664, !noundef !13
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.r:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2665
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2663, !noalias !2664, !nonnull !13, !align !19, !noundef !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !14, !alias.scope !2663, !noalias !2664, !noundef !13
  store ptr %i.aj, ptr %i.b, align 8, !noalias !2665
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.al, ptr %i.am, align 8, !noalias !2665
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #30
          to label %bb.t unwind label %bb.s, !noalias !2666

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i.i.i unwind label %bb.u, !noalias !2666

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2666
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2663, !noalias !2664, !nonnull !13, !align !19, !noundef !13 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !14, !alias.scope !2663, !noalias !2664, !noundef !13 ; 2 uses
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2661
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !2661, !align !19, !noundef !13 ; 2 uses
  %i.av = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.aq, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !2661
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2661, !nonnull !13, !noundef !13
  invoke void %i.ay(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i unwind label %bb.w, !noalias !2661, !inline_history !2

bb.w:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.au, align 8, !noalias !2661
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.aq, i8 %i.as) #28
          to label %.body.thread.i.i.i unwind label %bb.ah, !noalias !2661

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  store ptr null, ptr %i.au, align 8, !noalias !2661
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.ba, align 8, !noalias !2661
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.bc = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2661
  %i.bd = and i64 %i.bc, 9223372036854775807
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.y, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2652

.noexc13.i.i.i:                                   ; preds = %bb.y
  br i1 %i.bf, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc13.i.i.i
  store atomic i8 1, ptr %i.bb monotonic, align 4, !noalias !2661
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.z, %.noexc13.i.i.i, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.bg = atomicrmw xchg ptr %i.aq, i32 0 release, align 4, !noalias !2661
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.aa:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2652

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.aa, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.bi = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !2661
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2661
  store ptr null, ptr %i.a, align 8, !noalias !2661
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.bk, align 8, !noalias !2661
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2667
  %i.bl = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 16, i64 noundef 8) #21, !noalias !2667 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ac, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i, !prof !18

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #30
          to label %.noexc.i.i8.i.i.i unwind label %bb.ad, !noalias !2661

.noexc.i.i8.i.i.i:                                ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !2668
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ae, label %.body.thread.i.i.i

bb.ae:                                            ; preds = %bb.ad
end_hunk_2
begin_hunk_3_@_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs4jvuubEK18G_35distributed_key_value_store_example:bb.a
          to label %.body.thread.i.i.i unwind label %bb.af, !noalias !2661

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2661
  unreachable

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2661
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i: ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !2661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2661
  %i.bt = atomicrmw xchg ptr %i.bs, ptr %i.bl acq_rel, align 8, !noalias !2661
  store atomic ptr %i.bl, ptr %i.bt release, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.bv = load atomic i64, ptr %i.bu seq_cst, align 8, !noalias !2661
  %.lobit.i.i.i.i = lshr i64 %i.bv, 63
  %i.bw = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.bw, ptr %i.g, align 8, !alias.scope !2662, !noalias !2650
  %.val.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2653, !noalias !2650
  br label %bb.l

.body.thread.i.i.i:                               ; preds = %bb.ae, %bb.ad, %bb.w, %bb.s, %.body.thread22.i.i.i
  %eh.lpad-body18.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread22.i.i.i ], [ %i.bn, %bb.ad ], [ %i.an, %bb.s ], [ %i.bn, %bb.ae ], [ %i.az, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.e) #28
          to label %.body.thread.i.i unwind label %bb.ai, !noalias !2657

bb.ai:                                            ; preds = %.body.thread.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2657
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i: ; preds = %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, %bb.k
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload4.i, %bb.k ], [ -1, %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2643
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i

.body.thread.i.i:                                 ; preds = %bb.aj, %.body.thread.i.i.i, %bb.o, %bb.n
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.by, %bb.aj ], [ %eh.lpad-body18.i.i.i, %.body.thread.i.i.i ], [ %i.v, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body6.i.i

bb.aj:                                            ; preds = %bb.b
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %1) #28
          to label %.body.thread.i.i unwind label %bb.ak, !noalias !2644

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2644
  unreachable

_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i, %bb.d
  %.sroa.88.2.i = phi i8 [ 0, %bb.d ], [ 1, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload5.i, %bb.d ], [ %.sroa.0.1.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i ] ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.0.2.i, -1
  br i1 %.not2.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10start_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.am

bb.al:                                            ; preds = %bb.a
  %.sroa.01.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !2636, !noalias !2635
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.01.sroa.4.0..sroa_idx.i, i64 272, i1 false), !noalias !2635
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %.sroa.88.0.i = phi i8 [ 1, %bb.al ], [ %.sroa.88.2.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  %.sroa.0.010.i = phi i64 [ %.sroa.01.sroa.0.0.copyload.i, %bb.al ], [ %.sroa.0.2.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !noalias !2669
  store i64 %.sroa.0.010.i, ptr %i.f, align 8, !noalias !2669
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  store i8 %.sroa.88.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2669
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.f), !noalias !2669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2669
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10start_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE10start_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.am
  %.sroa.0.0.i = phi i8 [ %.sroa.88.0.i, %bb.am ], [ 2, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventzEEE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !2676, !noalias !2677, !noundef !13
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2679, !noalias !2680, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2681
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i8 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !2688, !noalias !2689, !noundef !13
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2691, !noalias !2692, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8, !noalias !2693
  %.not.i.i = icmp sgt i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) dereferenceable_or_null(32) %1)
  %spec.select.i.i = select i1 %i.f, i8 -1, i8 2
  br label %_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE10poll_readyCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select.i.i, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [168 x i8], align 8               ; 6 uses
  %i.e = alloca [160 x i8], align 8               ; 8 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.0.i = alloca [136 x i8], align 8         ; 6 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !2732, !noalias !2733, !noundef !13
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  %i.i = invoke fastcc noundef zeroext i1 @_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE13poll_unparkedCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null)
          to label %bb.c unwind label %bb.aj, !noalias !2737

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 136, i1 false), !alias.scope !2738, !noalias !2739
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.6.0.copyload7.i = load i64, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !2737, !noalias !2739
  %.sroa.8.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx9.i, i64 16, i1 false), !alias.scope !2738, !noalias !2739
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE8try_sendCs4jvuubEK18G_35distributed_key_value_store_example.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !noalias !2741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !2746, !noalias !2747, !nonnull !13, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8, !noalias !2748
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.01.0.i.i.i.i.i, %bb.i ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.m = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not11.i.i.i.i = icmp eq i64 %i.m, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
          to label %.noexc.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2749

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %2 = or i64 %i.n, -9223372036854775808
  %i.o = cmpxchg ptr %i.k, i64 %.sroa.05.0.i.i.i.i, i64 %2 seq_cst seq_cst, align 8, !noalias !2748 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.o, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.o, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %bb.f

.body.thread22.i.i.i:                             ; preds = %bb.aa, %bb.y, %bb.q, %bb.h
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !2750, !noalias !2747, !nonnull !13, !noundef !13 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noalias !2749, !noundef !13
  %.not.i.i.i = icmp ult i64 %i.m, %i.r
  br i1 %.not.i.i.i, label %bb.l, label %bb.q

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !alias.scope !2751, !noalias !2752
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %.sroa.6.0.copyload5.i = load i64, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !2751, !noalias !2752
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx8.i, i64 16, i1 false), !alias.scope !2751, !noalias !2752
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i

bb.l:                                             ; preds = %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i, %bb.j
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i ], [ %i.p, %bb.j ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !2754
  store ptr null, ptr %i.d, align 8, !noalias !2753
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2755
  %i.t = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 168, i64 noundef 8) #21, !noalias !2755 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #30
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !2753

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.x = load i64, ptr %i.w, align 8, !range !31, !alias.scope !2756, !noalias !2753, !noundef !13
  %i.y = icmp eq i64 %i.x, -3
  br i1 %i.y, label %.body.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.s)
          to label %.body.thread.i.i unwind label %bb.p, !noalias !2753

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2753
  unreachable

_RNvMs1_NtNtCsgV0iE8Xkxiy_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4pushCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.t, ptr noundef nonnull align 8 dereferenceable(168) %i.d, i64 168, i1 false), !noalias !2753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2753
  %i.ab = atomicrmw xchg ptr %i.aa, ptr %i.t acq_rel, align 8, !noalias !2753
  store atomic ptr %i.t, ptr %i.ab release, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  call void @_RNvMNtNtNtCsgtKVDLJNbYN_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ac), !noalias !2740
  br label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE9do_send_bCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i

bb.q:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2758
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2759, !noalias !2747, !nonnull !13, !noundef !13 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskE4lockCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.af)
          to label %.noexc9.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2749

.noexc9.i.i.i:                                    ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  %i.ag = load i64, ptr %i.c, align 8, !range !17, !alias.scope !2760, !noalias !2761, !noundef !13
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.r:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2762
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2760, !noalias !2761, !nonnull !13, !align !19, !noundef !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !14, !alias.scope !2760, !noalias !2761, !noundef !13
  store ptr %i.aj, ptr %i.b, align 8, !noalias !2762
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.al, ptr %i.am, align 8, !noalias !2762
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #30
          to label %bb.t unwind label %bb.s, !noalias !2763

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %.body.thread.i.i.i unwind label %bb.u, !noalias !2763

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2763
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %.noexc9.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2760, !noalias !2761, !nonnull !13, !align !19, !noundef !13 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !14, !alias.scope !2760, !noalias !2761, !noundef !13 ; 2 uses
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2758
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !2758, !align !19, !noundef !13 ; 2 uses
  %i.av = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.aq, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !2758
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2758, !nonnull !13, !noundef !13
  invoke void %i.ay(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i unwind label %bb.w, !noalias !2758, !inline_history !2

bb.w:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.au, align 8, !noalias !2758
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example(ptr nonnull %i.aq, i8 %i.as) #28
          to label %.body.thread.i.i.i unwind label %bb.ah, !noalias !2758

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  store ptr null, ptr %i.au, align 8, !noalias !2758
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.ba, align 8, !noalias !2758
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.bc = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2758
  %i.bd = and i64 %i.bc, 9223372036854775807
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.y, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2749

.noexc13.i.i.i:                                   ; preds = %bb.y
  br i1 %i.bf, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc13.i.i.i
  store atomic i8 1, ptr %i.bb monotonic, align 4, !noalias !2758
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.z, %.noexc13.i.i.i, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  %i.bg = atomicrmw xchg ptr %i.aq, i32 0 release, align 4, !noalias !2758
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i, !prof !18

bb.aa:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i unwind label %.body.thread22.i.i.i, !noalias !2749

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i: ; preds = %bb.aa, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.bi = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !2758
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEECs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2758
  store ptr null, ptr %i.a, align 8, !noalias !2758
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.bk, align 8, !noalias !2758
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2764
  %i.bl = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3009) 16, i64 noundef 8) #21, !noalias !2764 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ac, label %_RNvMsg_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventE4parkCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i, !prof !18

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #30
          to label %.noexc.i.i8.i.i.i unwind label %bb.ad, !noalias !2758

.noexc.i.i8.i.i.i:                                ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !2765
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ae, label %.body.thread.i.i.i
end_hunk_3
