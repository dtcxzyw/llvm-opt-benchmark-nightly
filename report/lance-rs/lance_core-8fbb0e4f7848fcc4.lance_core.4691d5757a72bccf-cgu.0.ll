Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNCNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1X_4moka14MokaCacheEntryEE4send0B1Z_:bb.a
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = zext i1 %i.ea to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit.i
  %.sroa.0.0.i13 = phi i8 [ %i.eb, %bb.ao ], [ 0, %.loopexit.i ]
  store atomic i8 %.sroa.0.0.i13, ptr %i.av seq_cst, align 8, !noalias !9916
  br i1 %i.cy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9916
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.ar, !prof !29

bb.ar:                                            ; preds = %bb.aq
  %i.ef = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !9916
  br i1 %i.ef, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store atomic i8 1, ptr %i.r monotonic, align 4, !noalias !9916
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.eg = atomicrmw xchg ptr %i.i, i32 0 release, align 4, !noalias !9916
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.at, label %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit, !prof !27

bb.at:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.i), !noalias !9916
  br label %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit

bb.au:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !9916
  unreachable

_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, %bb.at
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.ax, label %bb.av, !prof !27

_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4: ; preds = %.split.i, %.split.us.i, %_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit
  ret void

bb.av:                                            ; preds = %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %storemerge.i.i, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %i.ej = atomicrmw sub ptr %storemerge.i.i, i64 1 release, align 8, !noalias !9917
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4

bb.ax:                                            ; preds = %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #68
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB6_16MokaCacheBackend13with_capacity0Ba_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !24  ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache4moka12entry_weight.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #68
  unreachable

_RNvNtNtCs63DIHKhvmTb_10lance_core5cache4moka12entry_weight.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !24
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = udiv i64 %i.e, %i.a
  %i.g = urem i64 %i.e, %i.a
  %.not.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i to i64
  %.sroa.03.0.i = add i64 %i.f, %i.h
  %.sroa.0.01.i = tail call i64 @llvm.umin.i64(i64 %.sroa.03.0.i, i64 4294967295)
  %.sroa.0.0.i = trunc nuw i64 %.sroa.0.01.i to i32
  ret i32 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0B13_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !52, !noundef !24
  switch i8 %i.b, label %default.unreachable5 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !24, !align !51, !noundef !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

.body11:                                          ; preds = %bb.o, %.body
  %.pn8 = phi { ptr, i32 } [ %i.al, %bb.o ], [ %.pn6, %.body ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #68
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #68
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !55
  %i.i = icmp eq i32 %.pre, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %.thread.i.i

bb.e:                                             ; preds = %bb.h
  store i32 -1, ptr %i.m, align 8, !noalias !9920
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !noalias !9920
  %.sroa.6.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx25.i.i, align 8, !noalias !9920
  %.sroa.7.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx27.i.i, align 8, !noalias !9920
  br label %.thread.i.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.m = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.d ] ; 4 uses
  %i.n = phi ptr [ %i.g, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %i.o = phi ptr [ %i.f, %.thread ], [ %i.j, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acquire acquire, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.m, align 8, !noalias !9920
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !9920
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !9920
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9920
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexuEuEEECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.e unwind label %bb.g, !noalias !9920

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.u = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.d ]
  %i.v = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = invoke fastcc noundef align 8 ptr @_RINvXsf_NtCsjMQ83FLvXnF_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCs8a8leFYyzqu_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %i.v, ptr %.0.val)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.thread.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %common.ret, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !24, !align !51, !noundef !24
  br label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.k, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %.noexc
  %storemerge = phi i8 [ 3, %.noexc ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ], [ 1, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i ], [ 1, %bb.k ]
  %common.ret.op = phi ptr [ null, %.noexc ], [ %.sroa.0.1.i.i.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %bb.k ]
  store i8 %storemerge, ptr %i.a, align 8
  ret ptr %common.ret.op

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi ptr [ %i.m, %bb.f ], [ %i.t, %bb.i ]
  %.sroa.0.1.i.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.y, %bb.i ] ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !range !55, !noundef !24
  %i.ac = icmp eq i32 %i.ab, -2
  br i1 %i.ac, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !align !51, !noundef !24 ; 2 uses
  store ptr null, ptr %i.ad, align 8
  %i.ag = load i8, ptr %i.ae, align 8, !range !30, !noundef !24
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.af, null
  %or.cond.not.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i, %i.ah
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ai = atomicrmw sub ptr %i.af, i64 2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !align !51, !noundef !24 ; 4 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ak, label %common.ret, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %.val.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #65
  br label %.body11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #65
  br label %common.ret

.body:                                            ; preds = %bb.j, %bb.g
  %i.am = phi ptr [ %i.o, %bb.g ], [ %i.v, %bb.j ]
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex4LockuEECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %i.am) #69
          to label %.body11 unwind label %bb.p

bb.p:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0B15_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.8.i.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [64 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [64 x i8], align 8                ; 14 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [72 x i8], align 8               ; 15 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 12 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 10 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [48 x i8], align 8               ; 13 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.6.i.i.i.i.i191 = alloca [16 x i8], align 8 ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.739.i.i.i = alloca [38 x i8], align 2    ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.419.i.i.i = alloca [38 x i8], align 2    ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.66.i.i.i = alloca [38 x i8], align 2     ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 2 uses
  %i.bb = alloca [16 x i8], align 8               ; 2 uses
  %i.bc = alloca [8 x i8], align 8                ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [8 x i8], align 8                ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 6 uses
  %i.bh = alloca [8 x i8], align 8                ; 8 uses
  %i.bi = alloca [16 x i8], align 8               ; 8 uses
  %i.bj = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.740.i.i.i = alloca [7 x i8], align 1     ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5.i.i1.i.i = alloca [7 x i8], align 1    ; 4 uses
  %.sroa.5.i.i.i.i = alloca [7 x i8], align 1     ; 4 uses
  %.sroa.65.i.i.i = alloca [7 x i8], align 1      ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 17 uses
  %i.bo = alloca [8 x i8], align 8                ; 6 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 6 uses
  %i.br = alloca [8 x i8], align 8                ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 4, !range !74, !noundef !24
  switch i8 %i.bt, label %default.unreachable1816 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.r
    i8 5, label %bb.ez
    i8 6, label %bb.je
    i8 7, label %bb.xy
    i8 8, label %bb.zh
    i8 9, label %bb.adg
    i8 10, label %bb.aij
    i8 11, label %bb.aj
  ]

default.unreachable1816:                          ; preds = %bb.fi, %bb.apx, %bb.aoa, %bb.amd, %bb.aij, %bb.adm, %bb.adg, %bb.zh, %bb.ye, %bb.xy, %bb.uc, %bb.jq, %bb.je, %bb.ez, %bb.aj, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 0, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  store ptr %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load i64, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !range !66, !noundef !24
  store i64 %i.bz, ptr %i.by, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cf = load <2 x i32>, ptr %i.ce, align 8
  store <2 x i32> %i.cf, ptr %i.cd, align 8
  %.val100 = load i64, ptr %i.bx, align 8, !range !32, !noundef !24
  %i.cg = getelementptr i8, ptr %i.bx, i64 8
  %.val101 = load i64, ptr %i.cg, align 8
  %i.ch = trunc nuw i64 %.val100 to i1
  %i.ci = icmp eq i64 %.val101, 0
  %spec.select.i = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %spec.select.i, label %common.ret, label %.thread

.thread:                                          ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 -2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cj, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1021818 = load ptr, ptr %1, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.g

common.ret:                                       ; preds = %.noexc154, %.noexc, %bb.eu, %bb.b, %bb.avf, %bb.aif, %bb.ada, %bb.yv, %bb.xl, %.thread811, %bb.ds
end_hunk_0
begin_hunk_1_@_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBZ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCs63DIHKhvmTb_10lance_core:bb.a

bb.f:                                             ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECs63DIHKhvmTb_10lance_core.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val.i6, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !13944
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit8

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !13945, !noalias !13946, !noundef !24
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs3PfUT229lOd_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit unwind label %bb.b ; 0 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit8: ; preds = %bb.f, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECs63DIHKhvmTb_10lance_core.exit, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit
  ret void

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit8

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i16 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !63, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i64 %i.a, label %default.unreachable9 [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13970)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13970, !nonnull !24, !noundef !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13970, !noundef !24 ; 10 uses
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %.thread.i
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i16, ptr %i.g, align 2, !alias.scope !13971, !noalias !13972, !noundef !24 ; 2 uses
  %i.h = icmp eq i16 %.val14.i.i, %1
  br i1 %i.h, label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.sroa.05.018.i.i  ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.f
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.j
  %.val16.i.i = load i16, ptr %i.l, align 2, !alias.scope !13971, !noalias !13972, !noundef !24
  %i.m = icmp ugt i16 %.val16.i.i, %1
  %i.n = select i1 %i.m, i64 %.sroa.05.018.i.i, i64 %i.j, !unpredictable !24 ; 2 uses
  %i.o = sub nuw nsw i64 %.sroa.01.019.i.i, %i.i  ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = icmp ult i16 %.val14.i.i, %1
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.r ; 2 uses
  %i.t = icmp ule i64 %i.s, %i.f
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %i.f, 4611686018427387904
  tail call void @llvm.assume(i1 %i.u)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.ph8.i = phi i64 [ %i.s, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.v = load i64, ptr %i.b, align 8, !range !39, !alias.scope !13973, !noundef !24
  %i.w = icmp eq i64 %i.f, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !13973
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.d, %.thread.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.sroa.4.0.i.ph8.i ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, %i.f
  br i1 %i.z, label %bb.f, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ab = sub nuw nsw i64 %i.f, %.sroa.4.0.i.ph8.i
  %i.ac = shl nuw nsw i64 %i.ab, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr nonnull align 2 %i.y, i64 %i.ac, i1 false)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.f, %bb.e
  store i16 %1, ptr %i.y, align 2
  %i.ad = add nuw nsw i64 %i.f, 1
  store i64 %i.ad, ptr %i.e, align 8, !alias.scope !13973
  br label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13974)
  %i.ae = zext i16 %1 to i64                      ; 2 uses
  %i.af = and i64 %i.ae, 63                       ; 2 uses
  %i.ag = lshr i64 %i.ae, 6
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !13974, !nonnull !24, !noundef !24
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !13974, !noundef !24 ; 2 uses
  %i.ak = shl nuw i64 1, %i.af
  %i.al = or i64 %i.aj, %i.ak                     ; 2 uses
  %i.am = xor i64 %i.al, %i.aj
  %i.an = lshr i64 %i.am, %i.af                   ; 2 uses
  store i64 %i.al, ptr %i.ai, align 8, !noalias !13974
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !13974, !noundef !24
  %i.aq = add i64 %i.an, %i.ap
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !13974
  %i.ar = icmp ne i64 %i.an, 0
  br label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13975)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !13975, !nonnull !24, !noundef !24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !13975, !noundef !24 ; 15 uses
  switch i64 %i.av, label %.lr.ph.i.i.i [
    i64 0, label %.thread.i1
    i64 1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.05.019.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.aw = lshr i64 %.sroa.01.020.i.i.i, 1         ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, %.sroa.05.019.i.i.i ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  %.val16.i.i.i = load i16, ptr %i.ba, align 2, !alias.scope !13976, !noalias !13977, !noundef !24
  %.not.i.i.i = icmp ult i16 %.val16.i.i.i, %1
  %i.bb = select i1 %.not.i.i.i, i64 %i.ax, i64 %.sroa.05.019.i.i.i, !unpredictable !24 ; 2 uses
  %i.bc = sub nuw nsw i64 %.sroa.01.020.i.i.i, %i.aw ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bb, %.lr.ph.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.05.0.lcssa.i.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  %.val14.i.i.i = load i16, ptr %i.bf, align 2, !alias.scope !13976, !noalias !13977, !noundef !24
  %i.bg = icmp ult i16 %.val14.i.i.i, %1
  %i.bh = zext i1 %i.bg to i64
  %i.bi = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.bh ; 8 uses
  %i.bj = icmp ule i64 %i.bi, %i.av
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr [4 x i8], ptr %i.at, i64 %i.bi ; 7 uses
  %i.bl = sub nuw nsw i64 %i.av, %i.bi            ; 2 uses
  %.not.i = icmp eq i64 %i.av, %i.bi
  br i1 %.not.i, label %.thread21.i, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i
  %i.bm = load i16, ptr %i.bk, align 2, !noalias !13975, !noundef !24 ; 3 uses
  %.not7.i = icmp ugt i16 %i.bm, %1
  br i1 %.not7.i, label %bb.k, label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

bb.j:                                             ; preds = %bb.k
  %.not8.i = icmp eq i64 %i.bi, 0
  br i1 %.not8.i, label %.thread.i1, label %.thread21.i

bb.k:                                             ; preds = %bb.i
  %i.bn = add nuw i16 %1, 1
  %i.bo = icmp eq i16 %i.bm, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bp = add i16 %i.bm, -1
  store i16 %i.bp, ptr %i.bk, align 2, !noalias !13975
  %.not9.i = icmp eq i64 %i.bi, 0
  br i1 %.not9.i, label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit, label %bb.q

.thread21.i:                                      ; preds = %bb.j, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i
  %2 = phi i64 [ %i.bl, %bb.j ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCs63DIHKhvmTb_10lance_core.exit.i ]
  %i.bq = getelementptr i8, ptr %i.bk, i64 -2     ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !noalias !13975, !noundef !24
  %i.bs = add i16 %i.br, 1
  %i.bt = icmp eq i16 %i.bs, %1
  br i1 %i.bt, label %bb.p, label %.thread.i1

.thread.i1:                                       ; preds = %.thread21.i, %bb.j, %bb.h
  %.sroa.4.0.i.i1720.i = phi i64 [ %i.bi, %.thread21.i ], [ 0, %bb.j ], [ %i.av, %bb.h ] ; 2 uses
  %i.bu = phi i64 [ %2, %.thread21.i ], [ %i.bl, %bb.j ], [ %i.av, %bb.h ]
  %i.bv = icmp ult i64 %i.av, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = load i64, ptr %i.b, align 8, !range !39, !alias.scope !13978, !noundef !24
  %i.bx = icmp eq i64 %i.av, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i1
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %.pre.i2 = load ptr, ptr %i.as, align 8, !alias.scope !13978
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i1
  %i.by = phi ptr [ %.pre.i2, %bb.m ], [ %i.at, %.thread.i1 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.4.0.i.i1720.i ; 4 uses
  %i.ca = icmp samesign ult i64 %.sroa.4.0.i.i1720.i, %i.av
  br i1 %i.ca, label %bb.o, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = shl nuw nsw i64 %i.bu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cb, ptr nonnull align 2 %i.bz, i64 %i.cc, i1 false)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.o, %bb.n
  store i16 %1, ptr %i.bz, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 %1, ptr %i.cd, align 2
  %i.ce = add nuw nsw i64 %i.av, 1
  store i64 %i.ce, ptr %i.au, align 8, !alias.scope !13978
  br label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

bb.p:                                             ; preds = %.thread21.i
  store i16 %1, ptr %i.bq, align 2, !noalias !13975
  br label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

bb.q:                                             ; preds = %bb.l
  %i.cf = getelementptr i8, ptr %i.bk, i64 -2     ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !13975, !noundef !24
  %i.ch = add i16 %1, -1
  %i.ci = icmp eq i16 %i.cg, %i.ch
  br i1 %i.ci, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCs63DIHKhvmTb_10lance_core.exit.i, label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !13975, !noundef !24
  store i16 %i.ck, ptr %i.cf, align 2, !noalias !13975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13980)
  %i.cl = icmp ult i64 %i.av, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cn = xor i64 %i.bi, -1
  %i.co = add nsw i64 %i.av, %i.cn
  %i.cp = shl nuw nsw i64 %i.co, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bk, ptr nonnull align 2 %i.cm, i64 %i.cp, i1 false), !noalias !13981
  %i.cq = add nsw i64 %i.av, -1
  store i64 %i.cq, ptr %i.au, align 8, !alias.scope !13981
  br label %_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit

_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB2_10ArrayStore6insert.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCs63DIHKhvmTb_10lance_core.exit.i, %bb.q, %bb.p, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i, %bb.l, %bb.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i, %._crit_edge.i.i, %bb.g
  %.sroa.0.0.in = phi i1 [ false, %._crit_edge.i.i ], [ %i.ar, %bb.g ], [ true, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i ], [ true, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i ], [ true, %bb.p ], [ true, %bb.l ], [ true, %bb.q ], [ true, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCs63DIHKhvmTb_10lance_core.exit.i ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0        ; 2 uses
  %i.f = load i64, ptr %1, align 8, !noundef !24  ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.i

.split:                                           ; preds = %bb.b
  %i.h = extractvalue { i64, i32 } %i.d, 1        ; 2 uses
  %i.i = icmp ult i32 %i.h, 1000000000
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !101, !noundef !24
  %i.l = icmp samesign ult i32 %i.h, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.e, %i.f
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %i.n = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.split, %bb.d
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !101, !noundef !24
  store i64 %i.p, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %.sink = phi i32 [ %i.r, %bb.g ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.s, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = urem i64 %i.a, 67
  %i.c = getelementptr inbounds nuw [128 x i8], ptr @_RNvNvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell4lock5LOCKS, i64 %i.b ; 9 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  %i.j = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load volatile { [2 x i64] }, ptr %1, align 8 ; 2 uses
  fence acquire
  %i.m = load atomic i64, ptr %i.c monotonic, align 8
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

bb.e:                                             ; preds = %bb.c
  %.fca.0.1.extract.i = extractvalue { [2 x i64] } %i.l, 0, 1
  %.sroa.45.8.extract.trunc.i = trunc i64 %.fca.0.1.extract.i to i32
  %.fca.0.0.extract.i = extractvalue { [2 x i64] } %i.l, 0, 0
  br label %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECs63DIHKhvmTb_10lance_core.exit

.lr.ph.i:                                         ; preds = %bb.d, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.0910.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.d ] ; 5 uses
  %i.q = icmp ult i32 %.sroa.0.0910.i, 7
  br i1 %i.q, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  %i.r = icmp ult i32 %.sroa.0.0910.i, 11
  br i1 %i.r, label %.loopexit.i.thread.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.s, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.s = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.s, %.sroa.0.0910.i
  %i.t = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.t, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.u = add nuw nsw i32 %.sroa.0.0910.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.u, %.loopexit.i.thread.i ], [ %.sroa.0.0910.i, %.loopexit.i.i ]
  %i.v = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.d
  %.lcssa.i = phi i64 [ %i.o, %bb.d ], [ %i.v, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  fence release
  %i.x = load i64, ptr %1, align 8, !noundef !24
  %i.y = load i32, ptr %i.d, align 8, !range !101, !noundef !24
  store atomic i64 %.lcssa.i, ptr %i.c release, align 8
  br label %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECs63DIHKhvmTb_10lance_core.exit

_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.e, %._crit_edge.i
  %.sroa.3.0.i = phi i32 [ %i.y, %._crit_edge.i ], [ %.sroa.45.8.extract.trunc.i, %bb.e ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.x, %._crit_edge.i ], [ %.fca.0.0.extract.i, %bb.e ] ; 4 uses
  %i.z = icmp eq i64 %i.h, %.sroa.0.0.i
end_hunk_1
