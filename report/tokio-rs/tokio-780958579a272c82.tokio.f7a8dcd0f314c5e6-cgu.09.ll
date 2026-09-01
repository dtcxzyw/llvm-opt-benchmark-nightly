Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs3_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB8_6handle6HandleINtNtB8_8overflow8OverflowINtNtCs1xwejQucwHj_5alloc4sync3ArcB1b_EE10push_batchINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNvMs0_NtB8_5queueINtB3N_5LocalpE13push_overflow13BatchTaskIterB1W_EINtNtNtB2T_7sources4once4OnceINtNtBc_4task8NotifiedB1W_EEEEBe_:bb.a
  %i.bs = add i64 %i.br, %.sroa.011.1.i
  store atomic i64 %i.bs, ptr %i.b release, align 8, !noalias !333
  %i.bt = cmpxchg ptr %i.be, i8 1, i8 0 release monotonic, align 1, !noalias !333
  %i.bu = extractvalue { i8, i1 } %i.bt, 1
  br i1 %i.bu, label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject15rt_multi_threadINtNtB8_6shared6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEE10push_batchRB28_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNvMs0_NtB2c_5queueINtB43_5LocalpE13push_overflow13BatchTaskIterB1A_EINtNtNtB39_7sources4once4OnceINtNtBc_4task8NotifiedB1A_EEEEBe_.exit, label %bb.m, !prof !130

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.be, i1 noundef zeroext false), !noalias !333
  br label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject15rt_multi_threadINtNtB8_6shared6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEE10push_batchRB28_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNvMs0_NtB2c_5queueINtB43_5LocalpE13push_overflow13BatchTaskIterB1A_EINtNtNtB39_7sources4once4OnceINtNtBc_4task8NotifiedB1A_EEEEBe_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i
  %.sroa.0.017.i.i = phi ptr [ %i.bw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i ], [ %.sroa.0.0.i2.i204250.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !333, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  store ptr %.sroa.0.017.i.i, ptr %i.a, align 8, !noalias !333
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  %.not6.i.i = icmp eq ptr %i.bw, null
  br i1 %.not6.i.i, label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject15rt_multi_threadINtNtB8_6shared6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEE10push_batchRB28_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNvMs0_NtB2c_5queueINtB43_5LocalpE13push_overflow13BatchTaskIterB1A_EINtNtNtB39_7sources4once4OnceINtNtBc_4task8NotifiedB1A_EEEEBe_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i

_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject15rt_multi_threadINtNtB8_6shared6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEE10push_batchRB28_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNvMs0_NtB2c_5queueINtB43_5LocalpE13push_overflow13BatchTaskIterB1A_EINtNtNtB39_7sources4once4OnceINtNtBc_4task8NotifiedB1A_EEEEBe_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit.i.i, %bb.d, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB18_5LocalpE13push_overflow13BatchTaskIterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB1a_6handle6HandleEEINtNtNtB8_7sources4once4OnceINtNtB1e_4task8NotifiedB2V_EEENtNtNtB8_6traits8iterator8Iterator4nextB1g_.exit.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handleNtB2_6Handle8shutdown(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !128, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 8
  %i.h = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle5close.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  tail call void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.p)
  %i.s = icmp eq ptr %i.q, %i.n
  br i1 %i.s, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle5close.exit, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.t = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle5close.exit, label %bb.h, !prof !130

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle5close.exit

_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle5close.exit: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB2_6Launch6launch(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB16_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.m, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6LaunchEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %common.resume unwind label %bb.f

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4join10JoinHandleuEEBK_.exit
  %i.i = phi ptr [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4join10JoinHandleuEEBK_.exit ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = invoke noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMNtNtNtB6_9scheduler12multi_thread6workerNtB19_6Launch6launch0uEB8_(ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.e unwind label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4join10JoinHandleuEEBK_.exit, %bb.c
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit unwind label %bb.b

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3 unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.l, ptr %i.a, align 8
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4join10JoinHandleuEEBK_.exit unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4join10JoinHandleuEEBK_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6LaunchEBL_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6LaunchEBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtBI_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEEB1J_.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle7metricsNtB4_6Handle15num_alive_tasks(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.a, i8 noundef 0)
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RNvMNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle7metricsNtB4_6Handle21injection_queue_depth(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6sharedINtB5_6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB9_14current_thread6HandleEE3popBd_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noalias !378, !noundef !5 ; 2 uses
  %i.c = icmp ne i64 %i.b, 0                      ; 2 uses
  %..i.i = zext i1 %i.c to i64                    ; 2 uses
  %i.d = sub i64 %i.b, %..i.i
  store atomic i64 %i.d, ptr %0 release, align 8, !noalias !378
  store ptr %1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %..i.i, ptr %i.e, align 8
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !381, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !381, !noundef !5 ; 2 uses
  %.not7.i = icmp eq ptr %i.h, null
  store ptr %i.h, ptr %1, align 8, !alias.scope !381
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  store ptr null, ptr %i.g, align 8, !noalias !381
  br label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.i, align 8, !alias.scope !381
  br label %bb.d

bb.f:                                             ; preds = %bb.a, %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_.exit
  %.sroa.0.0 = phi ptr [ %i.f, %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_.exit ], [ null, %bb.a ]
  call void @_RNvXs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject3popINtB5_3PopINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB9_14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBa_14current_thread6HandleEEBe_.exit: ; preds = %bb.d, %bb.b
  store i64 0, ptr %i.e, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6sharedINtB5_6SharedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB9_14current_thread6HandleEE4pushBd_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !128, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr %2, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %2, ptr %i.f, align 8
  %i.i = add i64 %i.e, 1
  store atomic i64 %i.i, ptr %0 release, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle13schedule_task(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = zext i1 %2 to i8
  store i8 %i.c, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCINvNtNtNtB4_9scheduler12multi_thread6worker12with_currentuNCNvMs2_B12_NtNtB14_6handle6Handle13schedule_task0E0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle14schedule_local(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %.not = xor i1 %3, true
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load i8, ptr %i.b, align 8, !range !128
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_EBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %2, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
  %.old = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.old13 = load ptr, ptr %.old, align 8, !noundef !5
  %.not10.old = icmp eq ptr %.old13, null
  br i1 %.not10.old, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit, label %.noexc16

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !noundef !5   ; 2 uses
  store ptr null, ptr %1, align 8
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit.thread, label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit.thread: ; preds = %bb.c
  store ptr %2, ptr %1, align 8
  br label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_EBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !alias.scope !384
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit unwind label %.split

.split:                                           ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %1, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit20

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit: ; preds = %bb.e, %bb.f
  store ptr %2, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %.not10 = icmp eq ptr %i.m, null
  br i1 %.not10, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit, label %.noexc16

_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit: ; preds = %bb.i, %.noexc16, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit.thread, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit
  ret void

bb.g:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.noexc16:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = tail call { i64, i64 } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle16worker_to_notify(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1        ; 3 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit

bb.h:                                             ; preds = %.noexc16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.i, label %.noexc18

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noundef nonnull align 8 %i.ab)
  br label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit

.noexc18:                                         ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit20: ; preds = %.split, %bb.j
  %.pn1126 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.k, %.split ]
  resume { ptr, i32 } %.pn1126

bb.j:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEEBI_.exit20 unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16next_remote_task(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !130

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  %i.j = load i64, ptr %i.b, align 8, !noalias !390, !noundef !5 ; 2 uses
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  %..i.i.i = zext i1 %i.k to i64                  ; 2 uses
  %i.l = sub nuw i64 %i.j, %..i.i.i
  store atomic i64 %i.l, ptr %i.b release, align 8, !noalias !390
  store ptr %i.i, ptr %i.a, align 8, !noalias !387
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %..i.i.i, ptr %i.m, align 8, !noalias !387
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.n = load ptr, ptr %i.i, align 8, !alias.scope !396, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !393, !noundef !5 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.p, null
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !396
  br i1 %.not7.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  store ptr null, ptr %i.o, align 8, !noalias !393
  br label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.q, align 8, !alias.scope !396
  br label %bb.g

bb.i:                                             ; preds = %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i, %bb.d
  %.sroa.0.0.i3 = phi ptr [ %i.n, %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i ], [ null, %bb.d ] ; 2 uses
  invoke void @_RNvXs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject3popINtB5_3PopINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.l unwind label %bb.j

_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i: ; preds = %bb.g, %bb.e
  store i64 0, ptr %i.m, align 8, !noalias !387
  br label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %bb.k, !prof !130

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %i.u = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.v = extractvalue { i8, i1 } %i.u, 1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit4, label %bb.m, !prof !130

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit4: ; preds = %bb.m, %bb.l, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i3, %bb.l ], [ %.sroa.0.0.i3, %bb.m ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16push_remote_task(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.c unwind label %bb.n       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !noalias !397
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i8, ptr %i.j, align 8, !range !128, !alias.scope !397, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.g, align 8, !noalias !397, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !397, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.i, ptr %i.p, align 8, !noalias !397
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.h, align 8, !alias.scope !397
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.i, ptr %i.n, align 8, !alias.scope !397
  %i.q = add i64 %i.m, 1
  store atomic i64 %i.q, ptr %i.g release, align 8, !noalias !397
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %.thread, label %bb.j, !prof !130

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.v = extractvalue { i8, i1 } %i.u, 1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit6, label %bb.l, !prof !130

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit6: ; preds = %bb.l, %bb.k
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread:                                          ; preds = %bb.n, %bb.j, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.r, %bb.j ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.n:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.thread unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle20notify_parked_remote(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = tail call { i64, i64 } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle16worker_to_notify(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull align 8 %i.n)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle34schedule_option_task_without_yield(ptr noundef nonnull align 8 %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
end_hunk_0
