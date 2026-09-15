Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0Cs9KQ7US1M400_11lance_table:bb.a
  %i.o = phi ptr [ %i.f, %.thread ], [ %i.j, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acquire acquire, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h, !prof !80

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.m, align 8, !noalias !38768
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !38768
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !38768
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38768
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexuEuEEECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.o)
          to label %bb.e unwind label %bb.g, !noalias !38768

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.u = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.d ]
  %i.v = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = invoke fastcc noundef align 8 ptr @_RINvXsf_NtCsjMQ83FLvXnF_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCs8a8leFYyzqu_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.v, ptr %.0.val)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.thread.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %common.ret, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !68, !align !73, !noundef !68
  br label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.k, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %.noexc
  %storemerge = phi i8 [ 3, %.noexc ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ 1, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ 1, %bb.k ]
  %common.ret.op = phi ptr [ null, %.noexc ], [ %.sroa.0.1.i.i.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %bb.k ]
  store i8 %storemerge, ptr %i.a, align 8
  ret ptr %common.ret.op

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi ptr [ %i.m, %bb.f ], [ %i.t, %bb.i ]
  %.sroa.0.1.i.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.y, %bb.i ] ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !range !98, !noundef !68
  %i.ac = icmp eq i32 %i.ab, -2
  br i1 %i.ac, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !align !73, !noundef !68 ; 2 uses
  store ptr null, ptr %i.ad, align 8
  %i.ag = load i8, ptr %i.ae, align 8, !range !77, !noundef !68
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.af, null
  %or.cond.not.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i, %i.ah
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ai = atomicrmw sub ptr %i.af, i64 2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !align !73, !noundef !68 ; 4 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ak, label %common.ret, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %.val.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #76
  br label %.body11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #76
  br label %common.ret

.body:                                            ; preds = %bb.j, %bb.g
  %i.am = phi ptr [ %i.o, %bb.g ], [ %i.v, %bb.j ]
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex4LockuEECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.am) #81
          to label %.body11 unwind label %bb.p

bb.p:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB6_9PageTable4load0Cs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7.i.sroa.5.i.i.i = alloca [28 x i8], align 4 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i.i.i.i.i = alloca [28 x i8], align 4  ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.43.i.i.i = alloca [28 x i8], align 4     ; 7 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.5209 = alloca [7 x i8], align 1          ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %i.s = alloca [56 x i8], align 8                ; 13 uses
  %i.t = alloca [16 x i8], align 8                ; 13 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 16               ; 6 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 588 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4, !range !96, !noundef !68
  switch i8 %i.z, label %default.unreachable846 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
  ]

default.unreachable846:                           ; preds = %bb.m, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aa = load <2 x ptr>, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !68 ; 4 uses
  store i32 %i.ae, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 564
  %i.ag = load i32, ptr %i.af, align 4, !noundef !68 ; 4 uses
  store i32 %i.ag, ptr %i.w, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 572
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !68 ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ak, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit117, %bb.h
  %.pn31.pn = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.as, %bb.f ], [ %.pn20.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 2, ptr %i.y, align 4
  resume { ptr, i32 } %.pn31.pn

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i32 %i.ae, ptr %i.al, align 8, !alias.scope !39010
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 580
  store i32 %i.ag, ptr %i.am, align 4, !alias.scope !39010
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i8 0, ptr %i.an, align 8, !alias.scope !39010
  %i.ao = sext i32 %i.ag to i64
  %i.ap = sext i32 %i.ae to i64
  %i.aq = sub nsw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.e, label %.thread, !prof !71

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2015, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2016) #80
          to label %.noexc44 unwind label %bb.f

.noexc44:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.thread:                                          ; preds = %bb.d
  %i.at = add nsw i64 %i.aq, 1
  %i.au = sext i32 %i.aj to i64
  %i.av = shl nsw i64 %i.au, 1
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store <2 x ptr> %i.aa, ptr %i.ax, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @723, ptr %.sroa.5147.0..sroa_idx, align 8
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ac, ptr %.sroa.6148.0..sroa_idx, align 8
  %.sroa.7149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.aw, ptr %.sroa.7149.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ax, ptr %i.ay, align 8
  %.sroa.9167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i8 0, ptr %.sroa.9167.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 552
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.w, ptr %i.u, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.5120.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.x, ptr %i.ba, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.5122.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @725, ptr noundef nonnull %i.u)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bc = load <2 x ptr>, ptr %i.v, align 16, !alias.scope !39011
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 16, !alias.scope !39011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bd = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.6.0.copyload, i64 0
  br label %bb.aj

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @727) #80
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @727) #80
  unreachable

.body:                                            ; preds = %bb.o, %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit117

bb.l:                                             ; preds = %.body
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtBK_12PlainDecoder3getINtNtNtB4_3ops5range5RangejEE0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit117 unwind label %bb.fl

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !96, !noalias !39012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39013)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 3 uses
  switch i8 %.pre, label %default.unreachable846 [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.r
  ]

bb.n:                                             ; preds = %.thread, %bb.m
  %i.bh = phi ptr [ %i.az, %.thread ], [ %i.bg, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !39012, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !39012, !noundef !68
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.bj, ptr %i.bm, align 8, !noalias !39012
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !39012
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.bl, ptr %.sroa.87.0..sroa_idx.i, align 8, !noalias !39012
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !39012
  br label %bb.r

.body.thread:                                     ; preds = %bb.q, %bb.u
  %.pn2.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.bn, %bb.q ]
  store i8 2, ptr %i.bo, align 8, !noalias !39012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9KQ7US1M400_11lance_table.exit117

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #80
          to label %.noexc52 unwind label %.body

.noexc52:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #80
          to label %.noexc53 unwind label %.body

.noexc53:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtBK_12PlainDecoder3getINtNtNtB4_3ops5range5RangejEE0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.bp) #81
          to label %.body.thread unwind label %bb.v, !noalias !39013

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.bo = phi ptr [ %i.bh, %bb.n ], [ %i.bg, %bb.m ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke fastcc void @_RNCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB8_12PlainDecoder3getINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEE0Cs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.s, ptr noundef nonnull align 8 %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %i.s, align 8, !range !106, !alias.scope !39013, !noalias !39014, !noundef !68 ; 3 uses
  %i.br = icmp eq i8 %i.bq, -2
  br i1 %i.br, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtBK_12PlainDecoder3getINtNtNtB4_3ops5range5RangejEE0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %bb.u, !noalias !39013

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !39013
  unreachable

common.ret:                                       ; preds = %bb.aj, %bb.w
  %storemerge = phi i8 [ 3, %bb.w ], [ 1, %bb.aj ]
  store i8 %storemerge, ptr %i.y, align 4
  ret void

bb.w:                                             ; preds = %bb.s
  store i8 3, ptr %i.bo, align 8, !noalias !39012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.x:                                             ; preds = %bb.t
  store i8 1, ptr %i.bo, align 8, !noalias !39012
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4170.0.copyload = load ptr, ptr %.sroa.4170.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %.sroa.6171.0..sroa_idx, align 8
  %.sroa.6171.0.copyload = load ptr, ptr %.sroa.6171.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8172.sroa.2.0..sroa.8172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bv = load <2 x i64>, ptr %.sroa.8172.sroa.2.0..sroa.8172.0..sroa_idx.sroa_idx, align 8
  %.sroa.8172.sroa.4.0..sroa.8172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.8172.sroa.4.0.copyload = load i64, ptr %.sroa.8172.sroa.4.0..sroa.8172.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not.i57 = icmp eq i8 %i.bq, -1
  br i1 %.not.i57, label %bb.y, label %bb.fo

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4170.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6171.0.copyload) ]
  store ptr %.sroa.4170.0.copyload, ptr %i.t, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.6171.0.copyload, ptr %i.bw, align 8
  %i.bx = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.aa:                                            ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit26make_staging_manifest_path:bb.a
bb.cw:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.me, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  store i8 17, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.me, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1245, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1246, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cu
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit27write_manifest_file_to_path(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 16 dereferenceable(544) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(424) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2888 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr %1, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %i.e, ptr noundef nonnull align 8 dereferenceable(424) %4, i64 424, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store i8 0, ptr %i.f, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !63484
  %i.g = tail call noundef align 8 dereferenceable_or_null(2888) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 2888, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !63484 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27write_manifest_file_to_path0E3newBM_.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2888) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27write_manifest_file_to_path0EBJ_(ptr noundef nonnull align 8 dereferenceable(2888) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27write_manifest_file_to_path0E3newBM_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2888) %i.g, ptr noundef nonnull align 8 dereferenceable(2888) %i.a, i64 2888, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1247, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table2io8deletion18deletion_file_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load i8, ptr %i.k, align 8, !range !77, !noundef !68
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %spec.select = select i1 %i.m, ptr @1249, ptr @1248
  %spec.select22 = select i1 %i.m, i64 3, i64 5
  store ptr %spec.select, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select22, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1250, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.o, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.p, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.411.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.q, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1251, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit unwind label %bb.b

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !63489)
  call void @llvm.experimental.noalias.scope.decl(metadata !63490)
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !63491 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !63491, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !63491
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table2io8deletion27relative_deletion_file_path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load i8, ptr %i.h, align 8, !range !77, !noundef !68
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %spec.select = select i1 %i.j, ptr @1249, ptr @1248
  %spec.select24 = select i1 %i.j, i64 3, i64 5
  store ptr %spec.select, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %spec.select24, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1252, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.410.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.414.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @1253, ptr noundef nonnull %i.a), !noalias !63494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCs9KQ7US1M400_11lance_table5utils6stream13merge_streams(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !68 ; 10 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtCs9p5Dg9WVwvP_12futures_util6stream5empty5EmptyNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskEE3newB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %i.c, 48                         ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.i.i.i, label %3, label %1, !prof !69

1:                                                ; preds = %bb.b
  %2 = icmp eq i64 %i.f, 0
  br i1 %2, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !63518
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #76, !noalias !63518 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %3, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i

3:                                                ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f) #80
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %3
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i: ; preds = %bb.c, %1
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %1 ], [ %i.g, %bb.c ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %1 ], [ %i.c, %bb.c ] ; 2 uses
  %4 = icmp samesign ule i64 %i.c, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %4)
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.c, 4
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i.new

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i.new: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i
  %unroll_iter = and i64 %i.c, 288230376151711740
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i.new
  %i.j = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i.new ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i ]
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.j
  store i64 -1, ptr %i.k, align 8, !noalias !63519
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 -1, ptr %i.m, align 8, !noalias !63519
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 -1, ptr %i.o, align 8, !noalias !63519
  %i.p = add nuw nsw i64 %i.j, 4                  ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i64 -1, ptr %i.r, align 8, !noalias !63519
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtCs9p5Dg9WVwvP_12futures_util6stream5empty5EmptyNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskEE3newB1C_.exit: ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskNtNtB4_6marker4SendEL_EEEEB2D_(ptr noalias noundef align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtCs9p5Dg9WVwvP_12futures_util6stream5empty5EmptyNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskEE3newB1C_.exit
  %.sroa.3.0 = phi ptr [ @1254, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtCs9p5Dg9WVwvP_12futures_util6stream5empty5EmptyNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskEE3newB1C_.exit ], [ @1255, %bb.h ]
  %.sroa.0.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtCs9p5Dg9WVwvP_12futures_util6stream5empty5EmptyNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskEE3newB1C_.exit ], [ %i.z, %bb.h ]
  %i.s = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.t

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit.unr-lcssa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEE7reserveB1m_.exit.i.i.i ], [ %i.p, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.u
  store i64 -1, ptr %i.w, align 8, !noalias !63519
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !63515

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.4.0.i.i, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.y, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !63520
  %i.z = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !63520 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.h, !prof !75

bb.e:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #80
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table5utils6stream11MergeStreamEBH_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #81
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.h:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvB1H_13merge_streams0EE9from_iterB1L_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ab, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body6

bb.i:                                             ; preds = %3
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtNtCs9KQ7US1M400_11lance_table5utils6stream13ReadBatchTaskNtNtB4_6marker4SendEL_EEEEB2D_(ptr noalias noundef align 8 dereferenceable(24) %0) #81
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 13 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.68.i = alloca [32 x i8], align 8         ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 10 uses
  %.sroa.7.i.sroa.0 = alloca [7 x i8], align 1    ; 5 uses
  %.sroa.7.i.sroa.8 = alloca [16 x i8], align 1   ; 7 uses
  %.sroa.10.i.sroa.0 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.6.i.sroa.8 = alloca [16 x i8], align 1   ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 15 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [144 x i8], align 8              ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [56 x i8], align 8               ; 11 uses
  %i.an = alloca [144 x i8], align 8              ; 17 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [96 x i8], align 8               ; 6 uses
  %i.aq = alloca [48 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [48 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [56 x i8], align 8               ; 10 uses
  %i.aw = alloca [56 x i8], align 8               ; 4 uses
  %i.ax = alloca [56 x i8], align 8               ; 4 uses
  %i.ay = alloca [56 x i8], align 8               ; 4 uses
  %i.az = alloca [56 x i8], align 8               ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [56 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 4 uses
  %i.bd = alloca [112 x i8], align 8              ; 6 uses
  %i.be = alloca [112 x i8], align 8              ; 6 uses
  %i.bf = alloca [56 x i8], align 8               ; 5 uses
  %i.bg = alloca [56 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [112 x i8], align 8              ; 6 uses
  %i.bj = alloca [112 x i8], align 8              ; 6 uses
  %i.bk = alloca [56 x i8], align 8               ; 5 uses
  %i.bl = alloca [56 x i8], align 8               ; 4 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [56 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 4 uses
  %i.bp = alloca [112 x i8], align 8              ; 6 uses
  %i.bq = alloca [112 x i8], align 8              ; 6 uses
  %i.br = alloca [40 x i8], align 8               ; 15 uses
  %.sroa.9658 = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.14662 = alloca [32 x i8], align 8        ; 10 uses
  %.sroa.6130.sroa.7 = alloca [32 x i8], align 8  ; 7 uses
  %i.bs = alloca [88 x i8], align 8               ; 13 uses
  %i.bt = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.6125 = alloca [32 x i8], align 8         ; 6 uses
  %i.bu = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.6111 = alloca [32 x i8], align 8         ; 4 uses
  %i.bv = alloca [112 x i8], align 8              ; 9 uses
  %i.bw = alloca [40 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [96 x i8], align 8               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 2 uses
  %i.ca = alloca [96 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.694 = alloca [32 x i8], align 8          ; 4 uses
  %i.cc = alloca [112 x i8], align 8              ; 9 uses
  %i.cd = alloca [40 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [96 x i8], align 8               ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 2 uses
  %i.ch = alloca [96 x i8], align 8               ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 8 uses
  %i.cj = alloca [40 x i8], align 8               ; 27 uses
  %i.ck = alloca [40 x i8], align 8               ; 15 uses
  %.sroa.578 = alloca [32 x i8], align 8          ; 5 uses
  %i.cl = alloca [112 x i8], align 8              ; 9 uses
  %i.cm = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.672 = alloca [32 x i8], align 8          ; 6 uses
  %i.cn = alloca [8 x i8], align 8                ; 7 uses
  %i.co = alloca [112 x i8], align 8              ; 9 uses
  %i.cp = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.664 = alloca [32 x i8], align 8          ; 6 uses
  %i.cq = alloca [8 x i8], align 8                ; 7 uses
  %i.cr = alloca [40 x i8], align 8               ; 21 uses
  %i.cs = alloca [88 x i8], align 8               ; 13 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [40 x i8], align 8               ; 39 uses
  %i.cv = alloca [96 x i8], align 8               ; 4 uses
  %i.cw = alloca [96 x i8], align 8               ; 6 uses
  %i.cx = alloca [96 x i8], align 8               ; 8 uses
  %i.cy = alloca [56 x i8], align 8               ; 8 uses
  %i.cz = alloca [40 x i8], align 8               ; 8 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
  %i.db = alloca [40 x i8], align 8               ; 5 uses
  %i.dc = alloca [8 x i8], align 8                ; 18 uses
  %i.dd = alloca [24 x i8], align 8               ; 4 uses
  %i.de = alloca [96 x i8], align 8               ; 4 uses
  %i.df = alloca [12 x i8], align 4               ; 7 uses
  %i.dg = alloca [96 x i8], align 8               ; 6 uses
  %i.dh = alloca [96 x i8], align 8               ; 12 uses
  %i.di = alloca [56 x i8], align 8               ; 10 uses
  %i.dj = alloca [24 x i8], align 8               ; 10 uses
  %i.dk = alloca [40 x i8], align 8               ; 8 uses
  %i.dl = alloca [32 x i8], align 8               ; 7 uses
  %i.dm = alloca [40 x i8], align 8               ; 7 uses
  %i.dn = alloca [8 x i8], align 8                ; 21 uses
  %i.do = alloca [40 x i8], align 8               ; 4 uses
  %i.dp = alloca [32 x i8], align 8               ; 7 uses
  %i.dq = alloca [40 x i8], align 8               ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.dr = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ds = icmp ult i64 %i.dr, 2
  br i1 %i.ds, label %bb.d, label %bb.c

.body365:                                         ; preds = %bb.rc, %.thread694, %bb.rd, %bb.ae, %bb.b, %.body362, %.thread685
  %.sroa.0165.0 = phi i8 [ 1, %.thread685 ], [ %.sroa.0165.2, %.body362 ], [ 1, %bb.ae ], [ %.sroa.0165.1, %bb.b ], [ %.sroa.0165.2698, %bb.rd ], [ %.sroa.0165.2698, %.thread694 ], [ %.sroa.0165.2698, %bb.rc ] ; 2 uses
  %.sroa.0160.0 = phi i8 [ %.sroa.0155.2, %.thread685 ], [ %.sroa.0155.2, %.body362 ], [ %.sroa.0155.2, %bb.ae ], [ %.sroa.0160.1, %bb.b ], [ %.sroa.0155.2, %bb.rd ], [ %.sroa.0155.2, %.thread694 ], [ %.sroa.0155.2, %bb.rc ]
  %.sroa.0155.0 = phi i8 [ %.sroa.0155.2, %.thread685 ], [ %.sroa.0155.2, %.body362 ], [ %.sroa.0155.2, %bb.ae ], [ %.sroa.0155.1, %bb.b ], [ %.sroa.0155.2, %bb.rd ], [ %.sroa.0155.2, %.thread694 ], [ %.sroa.0155.2, %bb.rc ]
  %.pn332.pn = phi { ptr, i32 } [ %.pn332, %.thread685 ], [ %.pn326, %.body362 ], [ %i.fo, %bb.ae ], [ %i.dv, %bb.b ], [ %.pn326699, %bb.rd ], [ %.pn326699, %.thread694 ], [ %.pn326699, %bb.rc ] ; 2 uses
  %i.dt = trunc nuw i8 %.sroa.0155.0 to i1
  %i.du = load i64, ptr %i.dq, align 8, !range !97
  %.not.i.i633 = icmp ne i64 %i.du, -1
  %or.cond803.not = select i1 %i.dt, i1 %.not.i.i633, i1 false
  br i1 %or.cond803.not, label %bb.rs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECs9KQ7US1M400_11lance_table.exit635

bb.b:                                             ; preds = %bb.qx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit, %bb.bp, %bb.ab, %bb.y, %bb.x, %bb.n, %bb.k, %bb.h, %bb.g
  %.sroa.0165.1 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.0165.16, %bb.qx ], [ 1, %bb.bp ], [ 1, %bb.g ], [ 1, %bb.ab ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.k ], [ 1, %bb.h ], [ 1, %bb.n ]
  %.sroa.0160.1 = phi i8 [ %.sroa.0155.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.0155.2, %bb.qx ], [ %.sroa.0155.2, %bb.bp ], [ 0, %bb.g ], [ %.sroa.0155.2, %bb.ab ], [ %.sroa.0155.2, %bb.y ], [ %.sroa.0155.2, %bb.x ], [ 0, %bb.k ], [ 0, %bb.h ], [ 1, %bb.n ]
  %.sroa.0155.1 = phi i8 [ %.sroa.0155.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit ], [ %.sroa.0155.2, %bb.qx ], [ %.sroa.0155.2, %bb.bp ], [ 0, %bb.g ], [ %.sroa.0155.2, %bb.ab ], [ %.sroa.0155.2, %bb.y ], [ %.sroa.0155.2, %bb.x ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.n ]
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body365

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.0155.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 28 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !noundef !68 ; 2 uses
  %.not276 = icmp eq ptr %i.dx, null
  br i1 %.not276, label %bb.p, label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.dy = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dz = icmp ult i64 %i.dy, 2
  br i1 %i.dz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 -1, ptr %i.do, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store ptr null, ptr %i.ea, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.eb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table5utils6stream24apply_row_id_and_deletes10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.eb, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !116

end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs9KQ7US1M400_11lance_table:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !73088, !noalias !73089, !nonnull !68, !noundef !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !73088, !noalias !73089, !nonnull !68, !noundef !68 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.0.0.i
  store ptr %i.i, ptr %i.c, align 8
  %i.j = sub nuw i64 %1, %.sroa.0.0.i
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #50 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !68, !noundef !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %i.d, align 8, !noundef !68
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #45 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !68, !noundef !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !68, !noundef !68
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !68, !align !73, !noundef !68
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1687, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !73106)
  call void @llvm.experimental.noalias.scope.decl(metadata !73107)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !73108, !noalias !73109, !noundef !68 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !73110, !noalias !73109, !noundef !68
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !73106, !noalias !73109
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !73106, !noalias !73109
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !73106, !noalias !73109
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !73106, !noalias !73109 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73111)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73106
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73111)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i, !prof !71

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @904, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @906) #80, !noalias !73114
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !73114, !noundef !68
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !68, !noalias !73113, !nonnull !68 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73115
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !73115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73115
  store ptr %i.b, ptr %i.a, align 8, !noalias !73115
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !73115
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @141, ptr noundef nonnull %i.a), !noalias !73113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73115
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !73116, !noalias !73109, !noundef !68
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !73106, !noalias !73109
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !73106, !noalias !73109
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !73106, !noalias !73109
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !73106, !noalias !73109 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73117)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73106
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73117)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i, label %bb.m, !prof !80

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @904, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @906) #80, !noalias !73118
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !73118, !noundef !68
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !68, !noalias !73113, !nonnull !68 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73106
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 8), !noalias !73113, !inline_history !73101
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73106
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !noundef !68
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !73107, !noalias !73112, !nonnull !68, !align !73, !noundef !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !68, !noalias !73113, !nonnull !68
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73113, !inline_history !73101
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 8), !noalias !73113, !inline_history !73101
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !68, !align !73, !noundef !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !68, !nonnull !68
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1354, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !68, !align !73, !noundef !68
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1687, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !73135)
  call void @llvm.experimental.noalias.scope.decl(metadata !73136)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !73137, !noalias !73138, !noundef !68 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !73139, !noalias !73138, !noundef !68
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !73135, !noalias !73138
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !73135, !noalias !73138
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !73135, !noalias !73138
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !73135, !noalias !73138 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73140)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73135
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73140)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i, !prof !71

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @904, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @906) #80, !noalias !73143
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !73143, !noundef !68
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !68, !noalias !73142, !nonnull !68 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73144
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !73144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73144
  store ptr %i.b, ptr %i.a, align 8, !noalias !73144
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !73144
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @141, ptr noundef nonnull %i.a), !noalias !73142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73144
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !73145, !noalias !73138, !noundef !68
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !73135, !noalias !73138
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !73135, !noalias !73138
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !73135, !noalias !73138
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !73135, !noalias !73138 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73146)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73135
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73146)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i, label %bb.m, !prof !80

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @904, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @906) #80, !noalias !73147
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !73147, !noundef !68
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !68, !noalias !73142, !nonnull !68 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73135
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 8), !noalias !73142, !inline_history !73130
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs9KQ7US1M400_11lance_table(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !73135
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !noundef !68
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !73136, !noalias !73141, !nonnull !68, !align !73, !noundef !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !68, !noalias !73142, !nonnull !68
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 2), !noalias !73142, !inline_history !73130
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 8), !noalias !73142, !inline_history !73130
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !68, !align !73, !noundef !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !68, !nonnull !68
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1354, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECs9KQ7US1M400_11lance_table.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9KQ7US1M400_11lance_table.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB7_9operation12RewriteGroupINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtNtNtB9_6format2pb11transaction7rewrite12RewriteGroupE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.06.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8 ; 2 uses
  %i.f = icmp ult i64 %.sroa.58.0.copyload, 41175768021673107
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %.sroa.47.0.copyload, i64 %.sroa.58.0.copyload
  %i.h = icmp sgt i64 %.sroa.06.0.copyload, -1
  tail call void @llvm.assume(i1 %i.h)
  store ptr %.sroa.47.0.copyload, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.47.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.06.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENvYNtNtB1Y_8fragment8FragmentINtNtB6_7convert7TryFromB1U_E8try_fromEB2T_INtNtB6_6result6ResultNtB3m_10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B43_IB41_INtB1b_3VecB2T_EB4E_EINtNtNtB4_6traits7collect12FromIteratorIB41_B2T_B4E_EE9from_iterBQ_E0B5D_EB20_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = load i8, ptr %i.b, align 8, !range !110, !noundef !68 ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534.0..sroa_idx, i64 24, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.433.0..sroa_idx, i64 31, i1 false)
  store i8 %i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73152)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !73152, !nonnull !68, !noundef !68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i = load i64, ptr %i.l, align 8, !alias.scope !73152, !noundef !68 ; 2 uses
  %i.m = icmp eq i64 %.val1.i, 0
  br i1 %i.m, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [224 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.o = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEBH_(ptr noalias noundef readonly align 8 dereferenceable(224) %i.n), !noalias !73152
  %i.p = icmp eq i64 %i.o, %.val1.i
  br i1 %i.p, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.val2.i = load i64, ptr %i.j, align 8, !range !72, !alias.scope !73152, !noundef !68 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEEB1e_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i
  %i.r = mul nuw i64 %.val2.i, 224
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !73152
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEEB1e_.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.022.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.423.0.copyload = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8 ; 2 uses
  %i.u = icmp ult i64 %.sroa.524.0.copyload, 41175768021673107
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [224 x i8], ptr %.sroa.423.0.copyload, i64 %.sroa.524.0.copyload
  %i.w = icmp sgt i64 %.sroa.022.0.copyload, -1
  tail call void @llvm.assume(i1 %i.w)
  store ptr %.sroa.423.0.copyload, ptr %i.c, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.423.0.copyload, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.022.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.v, ptr %.sroa.621.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENvYNtNtB1Y_8fragment8FragmentINtNtB6_7convert7TryFromB1U_E8try_fromEB2T_INtNtB6_6result6ResultNtB3m_10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B43_IB41_INtB1b_3VecB2T_EB4E_EINtNtNtB4_6traits7collect12FromIteratorIB41_B2T_B4E_EE9from_iterBQ_E0B5D_EB20_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.s) #81
          to label %.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i8, ptr %i.a, align 8, !range !110, !noundef !68 ; 2 uses
  %.not50 = icmp eq i8 %i.y, -1
  br i1 %.not50, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
