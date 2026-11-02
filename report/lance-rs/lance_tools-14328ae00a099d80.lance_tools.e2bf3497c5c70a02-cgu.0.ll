Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit.peel: ; preds = %bb.e, %_RNvXsb_NtCs9ZJqkc64Jh8_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsjsY2yM364a4_11lance_tools.exit.peel
  %i.o = add i64 %.promoted20, 1
  store i64 %i.o, ptr %i.h, align 8
  %.not.peel = icmp eq i64 %.sroa.01.0, 1
  %.not11 = icmp eq ptr %i.l, null
  %or.cond = or i1 %.not.peel, %.not11
  br i1 %or.cond, label %.loopexit, label %.loopexit26

bb.f:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %.val, %i.e
  br label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit.peel, %bb.c, %bb.b
  ret void

.loopexit26:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit.peel
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noundef !24
  store ptr %i.r, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit26, %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #40, !noalias !123
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 3 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.c                     ; 2 uses
  %.not15 = icmp eq i64 %i.e, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted17 = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit
  %i.g = phi ptr [ %.promoted17, %.lr.ph ], [ %i.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit ] ; 6 uses
  %.sroa.01.116 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit ]
  %i.h = phi i64 [ %i.c, %.lr.ph ], [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit ]
  %i.i = add i64 %.sroa.01.116, -1                ; 2 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noundef !24 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 8
  store i8 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %i.l = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %i.l, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.e, %bb.d
  %i.n = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noundef !24 ; 2 uses
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = and i64 %i.j, -4                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 21 uses
  %i.m = and i64 %i.j, 3
  %i.n = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call noundef i8 @_RNvXNtCskTBvlRM5ILY_4moka6commonNtB2_11CacheRegionINtNtCscI6d9CVNmLh_4core7convert4FromjE4from(i64 noundef %i.m)
  switch i8 %i.o, label %default.unreachable22 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ], !prof !27

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.al, %bb.aj, %bb.ai, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.t, %bb.r, %bb.p, %bb.o, %bb.j, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  ret void

default.unreachable22:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noundef !24 ; 3 uses
  %.not6 = icmp ne ptr %i.q, null                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %i.l
  %or.cond = select i1 %.not6, i1 true, i1 %i.t, !prof !130
  br i1 %or.cond, label %bb.j, label %bb.i, !prof !130

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !24 ; 3 uses
  %.not4 = icmp ne ptr %i.v, null                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %i.l
  %or.cond5 = select i1 %.not4, i1 true, i1 %i.y, !prof !130
  br i1 %or.cond5, label %bb.t, label %bb.i, !prof !130

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !24 ; 3 uses
  %.not2 = icmp ne ptr %i.aa, null                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, %i.l
  %or.cond8 = select i1 %.not2, i1 true, i1 %i.ad, !prof !130
  br i1 %or.cond8, label %bb.ad, label %bb.i, !prof !130

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !131, !noundef !24 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %0, align 8, !range !28, !alias.scope !131, !noundef !24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !131, !noundef !24 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !131, !noundef !24 ; 5 uses
  br i1 %.not6, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !131, !noundef !24
  store i64 1, ptr %0, align 8, !alias.scope !131
  store ptr %i.ap, ptr %i.ai, align 8, !alias.scope !131
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %cond.i = icmp eq ptr %i.an, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %.thread.i

bb.p:                                             ; preds = %bb.m
  store ptr %i.an, ptr %i.r, align 8, !alias.scope !131
  %.not14.i = icmp eq ptr %i.an, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !noalias !131
  br label %bb.q

bb.q:                                             ; preds = %.thread.i, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.q, ptr %i.ar, align 8, !noalias !131
  store ptr %i.af, ptr %i.p, align 8, !noalias !131
  store ptr null, ptr %i.am, align 8, !noalias !131
  %.not15.i = icmp eq ptr %i.af, null
  br i1 %.not15.i, label %bb.s, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.l, ptr %i.as, align 8, !noalias !131
  store ptr %i.l, ptr %i.ae, align 8, !alias.scope !131
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !131
  unreachable

bb.t:                                             ; preds = %bb.g
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !132, !noundef !24 ; 4 uses
  %i.av = icmp eq ptr %i.au, %i.l
  br i1 %i.av, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %1, align 8, !range !28, !alias.scope !132, !noundef !24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.ax, align 8, !alias.scope !132, !noundef !24 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.l
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !132, !noundef !24 ; 5 uses
  br i1 %.not4, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !132, !noundef !24
  store i64 1, ptr %1, align 8, !alias.scope !132
  store ptr %i.be, ptr %i.ax, align 8, !alias.scope !132
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %cond.i11 = icmp eq ptr %i.bc, null
  br i1 %cond.i11, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %.thread.i12

bb.z:                                             ; preds = %bb.w
  store ptr %i.bc, ptr %i.w, align 8, !alias.scope !132
  %.not14.i14 = icmp eq ptr %i.bc, null
  br i1 %.not14.i14, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.aa

.thread.i12:                                      ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bc, ptr %i.bf, align 8, !noalias !132
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i12, %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.v, ptr %i.bg, align 8, !noalias !132
  store ptr %i.au, ptr %i.u, align 8, !noalias !132
  store ptr null, ptr %i.bb, align 8, !noalias !132
  %.not15.i13 = icmp eq ptr %i.au, null
  br i1 %.not15.i13, label %bb.ac, label %bb.ab, !prof !29

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.l, ptr %i.bh, align 8, !noalias !132
  store ptr %i.l, ptr %i.at, align 8, !alias.scope !132
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

bb.ac:                                            ; preds = %bb.aa
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !132
  unreachable

bb.ad:                                            ; preds = %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !133, !noundef !24 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, %i.l
  br i1 %i.bk, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load i64, ptr %2, align 8, !range !28, !alias.scope !133, !noundef !24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bn = trunc nuw i64 %i.bl to i1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load ptr, ptr %i.bm, align 8, !alias.scope !133, !noundef !24 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.l
  br i1 %i.bp, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !133, !noundef !24 ; 5 uses
  br i1 %.not2, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !133, !noundef !24
  store i64 1, ptr %2, align 8, !alias.scope !133
  store ptr %i.bt, ptr %i.bm, align 8, !alias.scope !133
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %cond.i17 = icmp eq ptr %i.br, null
  br i1 %cond.i17, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %.thread.i18

bb.aj:                                            ; preds = %bb.ag
  store ptr %i.br, ptr %i.ab, align 8, !alias.scope !133
  %.not14.i20 = icmp eq ptr %i.br, null
  br i1 %.not14.i20, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.ak

.thread.i18:                                      ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.br, ptr %i.bu, align 8, !noalias !133
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i18, %bb.aj
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.aa, ptr %i.bv, align 8, !noalias !133
  store ptr %i.bj, ptr %i.z, align 8, !noalias !133
  store ptr null, ptr %i.bq, align 8, !noalias !133
  %.not15.i19 = icmp eq ptr %i.bj, null
  br i1 %.not15.i19, label %bb.am, label %bb.al, !prof !29

bb.al:                                            ; preds = %bb.ak
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.l, ptr %i.bw, align 8, !noalias !133
  store ptr %i.l, ptr %i.bi, align 8, !alias.scope !133
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !133
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_woNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !24 ; 8 uses
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !24 ; 3 uses
  %.not2 = icmp ne ptr %i.k, null                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %i.g
  %or.cond = select i1 %.not2, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.f, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.e, %bb.n, %bb.l, %bb.k, %bb.f, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  ret void

bb.f:                                             ; preds = %bb.e
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !136, !noundef !24 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %1, align 8, !range !28, !alias.scope !136, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !136, !noundef !24 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !136, !noundef !24 ; 5 uses
  br i1 %.not2, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !136, !noundef !24
  store i64 1, ptr %1, align 8, !alias.scope !136
  store ptr %i.z, ptr %i.s, align 8, !alias.scope !136
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %cond.i = icmp eq ptr %i.x, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %.thread.i

bb.l:                                             ; preds = %bb.i
  store ptr %i.x, ptr %i.l, align 8, !alias.scope !136
  %.not14.i = icmp eq ptr %i.x, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.m

.thread.i:                                        ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !noalias !136
  br label %bb.m

bb.m:                                             ; preds = %.thread.i, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.k, ptr %i.ab, align 8, !noalias !136
  store ptr %i.p, ptr %i.j, align 8, !noalias !136
  store ptr null, ptr %i.w, align 8, !noalias !136
  %.not15.i = icmp eq ptr %i.p, null
  br i1 %.not15.i, label %bb.o, label %bb.n, !prof !29

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.g, ptr %i.ac, align 8, !noalias !136
  store ptr %i.g, ptr %i.o, align 8, !alias.scope !136
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !136
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_woNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !24 ; 8 uses
  store ptr null, ptr %i.f, align 8
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsjsY2yM364a4_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !151, !noundef !24 ; 2 uses
  %.not.i = icmp ne ptr %i.k, null                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !151
  %i.n = icmp eq ptr %i.m, %i.g
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.n
  br i1 %or.cond.i, label %bb.f, label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsjsY2yM364a4_11lance_tools.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.o = load i64, ptr %0, align 8, !range !28, !alias.scope !153, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !153, !noundef !24 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !153, !noundef !24 ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !153, !noundef !24
  store i64 1, ptr %0, align 8, !alias.scope !153
  store ptr %i.w, ptr %i.p, align 8, !alias.scope !153
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.u, ptr %i.x, align 8, !noalias !153
  %.pre.i = load ptr, ptr %i.j, align 8, !noalias !153
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store ptr %i.u, ptr %i.l, align 8, !alias.scope !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi ptr [ null, %bb.k ], [ %.pre.i, %bb.j ] ; 2 uses
  %.not4.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.z, align 8, !noalias !153
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !153
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !153
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !153, !noundef !24
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !153
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !151, !nonnull !24, !noundef !24 ; 4 uses
  %i.ae = atomicrmw add ptr %.val.i.i, i32 -1 release, align 4, !noalias !151
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit.i
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !159, !noalias !151, !nonnull !24, !noundef !24
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !160
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i unwind label %bb.q, !noalias !151

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #36, !noalias !151
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #36, !noalias !151
  resume { ptr, i32 } %i.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #36, !noalias !151
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #36, !noalias !151
  br label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i, %bb.e, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellINtNtB1j_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !noundef !24
  switch i8 %i.c, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.c
  ]

default.unreachable7:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !28, !noundef !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull ptr @_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context3new()
  %.pre = load i8, ptr %i.b, align 8, !range !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %i.a, align 8
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable7 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.j
  ], !prof !173

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazy7destroyINtNtCscI6d9CVNmLh_4core4cell4CellINtNtB19_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !174
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #40
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsjsY2yM364a4_11lance_tools.exit ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !30, !noundef !24
  switch i8 %i.b, label %default.unreachable6 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleECsjsY2yM364a4_11lance_tools.exit
    i8 2, label %bb.c
  ]

default.unreachable6:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !range !28, !noundef !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = tail call noundef nonnull align 8 ptr @_RNvNtCskfeRsqx2rfd_15crossbeam_epoch7default9collector()
  %i.h = tail call noundef ptr @_RNvMs1_NtCskfeRsqx2rfd_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  %.pre = load i8, ptr %i.a, align 8, !range !30
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  switch i8 %.pre, label %default.unreachable6 [
    i8 0, label %bb.f
end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent12OldEntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1A_16CachedReaderDataEECsjsY2yM364a4_11lance_tools:bb.a
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.32.val, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(i8 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %.0.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = atomicrmw add ptr %.8.val, i32 -1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %.8.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #36
  resume { ptr, i32 } %i.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2137, !nonnull !24, !noundef !24
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !2137
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val1) #41
          to label %common.resume unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.g = atomicrmw add ptr %.val, i32 -1 release, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.e

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !57, !noundef !24
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2147, !nonnull !24, !noundef !24
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !2147
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val1) #41
          to label %common.resume unwind label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.j, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.k = atomicrmw add ptr %.val, i32 -1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.g

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit, %bb.d
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2152, !noundef !24 ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.e = phi ptr [ %i.b, %.lr.ph.i ], [ %i.r, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  %i.f = load i64, ptr %0, align 8, !range !28, !alias.scope !2154, !noundef !24
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !2154, !noundef !24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %bb.d, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2154, !noundef !24
  store i64 1, ptr %0, align 8, !alias.scope !2154
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !2154
  br label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i

_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !2154, !noundef !24 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !2154
  %.not3.i.i = icmp eq ptr %i.m, null
  %..i.i = select i1 %.not3.i.i, ptr %0, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !2154, !noundef !24
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !2154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !2154
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.e unwind label %.body.i, !noalias !2152

.body.i:                                          ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #36, !noalias !2152
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr nonnull align 8 dereferenceable(48) %0) #41
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #36, !noalias !2152
  %i.r = load ptr, ptr %i.a, align 8, !alias.scope !2152, !noundef !24 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.f:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !2152
  unreachable

bb.g:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.q

_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = atomicrmw add ptr %.0.val, i32 -1 release, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2170, !nonnull !24, !noundef !24
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !2170
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #36
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  %i.a = load i8, ptr %0, align 8, !range !25, !alias.scope !2183, !noundef !24
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !2183, !nonnull !24, !noundef !24 ; 4 uses
  %i.d = atomicrmw add ptr %.val.i, i32 -1 release, align 4, !noalias !2183
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2189, !noalias !2183, !nonnull !24, !noundef !24
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !2190
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %.body.i, !noalias !2183

.body.i:                                          ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #36, !noalias !2183
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.k, align 8, !alias.scope !2183, !nonnull !24, !noundef !24 ; 2 uses
  %i.l = atomicrmw add ptr %.val2.i, i32 -1 release, align 4, !noalias !2183
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #36, !noalias !2183
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i

bb.e:                                             ; preds = %.body.i
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 48, i64 noundef 8) #36, !noalias !2183
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !2183, !nonnull !24, !noundef !24 ; 2 uses
  %i.o = atomicrmw add ptr %.val1.i, i32 -1 release, align 4, !noalias !2183
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 48, i64 noundef 8) #36, !noalias !2183
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %i.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1m_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2209, !noundef !24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !2210
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2214, !nonnull !24, !noundef !24
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !2214
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !2218, !nonnull !24, !noundef !24
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !2218
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit2

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit
end_hunk_1
begin_hunk_2_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtBG_6handle6HandleEEECsjsY2yM364a4_11lance_tools:bb.a
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.i
  %i.p = phi i32 [ %i.ae, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = phi i32 [ %i.ad, %bb.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.011.i.i = phi i64 [ %i.ab, %bb.i ], [ %i.i, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3100
  %i.r = add i32 %i.p, 1                          ; 4 uses
  store i32 %i.r, ptr %i.a, align 4, !noalias !3100
  %i.s = icmp eq i32 %i.q, %i.p
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.g, label %bb.f, !prof !29

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.u = zext i32 %i.r to i64
  %i.v = mul nuw i64 %i.u, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.r to i64
  %i.x = and i64 %.sroa.04.011.i.i, -4294967296
  %i.y = or disjoint i64 %i.x, %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedmmECsgczF5crJ4sT_3std(i8 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #40
          to label %.noexc1 unwind label %bb.l

.noexc1:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i = phi i64 [ %i.v, %bb.e ], [ %i.y, %bb.f ]
  %i.z = cmpxchg weak ptr %i.h, i64 %.sroa.04.011.i.i, i64 %.sroa.01.0.i.i acq_rel acquire, align 8, !noalias !3100 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = extractvalue { i64, i1 } %i.z, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3100
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = trunc i64 %i.ab to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3100
  store i32 %i.ad, ptr %i.b, align 4, !noalias !3100
  %i.af = load i32, ptr %i.j, align 8, !noalias !3100, !noundef !24
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3100
  %i.ah = and i64 %.sroa.04.011.i.i, 255
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !3100, !nonnull !24, !noundef !24
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !3100, !nonnull !24, !noundef !24 ; 2 uses
  %i.am = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.al)
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.j
  br i1 %i.am, label %bb.k, label %.noexc2

bb.k:                                             ; preds = %.noexc6
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.al)
          to label %.noexc2 unwind label %bb.l

.noexc2:                                          ; preds = %.noexc6, %bb.k
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @427, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #40
          to label %.noexc3 unwind label %bb.l

.noexc3:                                          ; preds = %.noexc2
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3100
  br label %_RNvXs3_NtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %.noexc2, %bb.g, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !3103, !nonnull !24, !noundef !24
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !3103
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.o

_RNvXs3_NtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i, %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !3106, !nonnull !24, !noundef !24
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !3106
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit5

bb.n:                                             ; preds = %_RNvXs3_NtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit5: ; preds = %_RNvXs3_NtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit, %bb.n
  ret void

bb.o:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBC_NtNtB1e_6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3109, !nonnull !24, !align !41, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3109, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noalias !3109, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3109, !noundef !24
  %i.h = icmp ult i64 %i.e, %i.g
  %spec.store.select.i = select i1 %i.h, i64 %i.e, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store atomic i64 %spec.store.select.i, ptr %i.i release, align 8, !noalias !3109
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.j, align 8, !range !25, !noundef !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = trunc nuw i8 %.val1 to i1
  br i1 %i.l, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.n = and i64 %i.m, 9223372036854775807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.p, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.e:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsjsY2yM364a4_11lance_tools.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsjsY2yM364a4_11lance_tools.exit.i, %.lr.ph.i
  %i.e = phi ptr [ %i.b, %.lr.ph.i ], [ %i.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsjsY2yM364a4_11lance_tools.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  %i.f = load i64, ptr %.0.val, align 8, !range !28, !alias.scope !3112, !noundef !24
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !3112, !noundef !24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3112, !noundef !24
  store i64 1, ptr %.0.val, align 8, !alias.scope !3112
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !3112
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3112, !noundef !24 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !3112
  %.not3.i.i = icmp eq ptr %i.m, null
  %..i.i = select i1 %.not3.i.i, ptr %.0.val, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !3112, !noundef !24
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !3112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #36
  resume { ptr, i32 } %i.q

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #36
  %i.r = load ptr, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsjsY2yM364a4_11lance_tools.exit, label %bb.b

_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsjsY2yM364a4_11lance_tools.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEENtNtBO_5alloc6GlobalEECsjsY2yM364a4_11lance_tools(ptr nofree readonly captures(none) %.0.val) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !24 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !24 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataENtNtBO_5alloc6GlobalEECsjsY2yM364a4_11lance_tools(ptr nofree readonly captures(none) %.0.val) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !24 ; 4 uses
  %i.g = icmp ult i64 %i.f, 192153584101141163
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !24 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjsY2yM364a4_11lance_tools(ptr nofree readonly captures(none) %.0.val) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !24 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !24 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtBJ_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtBN_4sync3ArcNtNtNtB2r_9scheduler14current_thread6HandleEEEECsjsY2yM364a4_11lance_tools(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXNvXs_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB7_8VecDequeppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_7DropperINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtBb_4sync3ArcNtNtNtB2b_9scheduler14current_thread6HandleEEEB1a_4dropCsjsY2yM364a4_11lance_tools.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %.val7.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3115, !nonnull !24, !noundef !24 ; 2 uses
  %i.d = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %.val7.i.i)
          to label %.noexc.i.i unwind label %bb.c, !noalias !3115

.noexc.i.i:                                       ; preds = %.lr.ph.i.i
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.b:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %.val7.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.c, !noalias !3115

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.b, %.noexc.i.i
  %i.e = icmp eq i64 %i.c, %.8.val
  br i1 %i.e, label %_RNvXNvXs_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB7_8VecDequeppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_7DropperINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtBb_4sync3ArcNtNtNtB2b_9scheduler14current_thread6HandleEEEB1a_4dropCsjsY2yM364a4_11lance_tools.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %._crit_edge16.i.i, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit11.i.i
  %.sroa.0.113.i.i = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit11.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.113.i.i
  %i.i = add nuw nsw i64 %.sroa.0.113.i.i, 1      ; 2 uses
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3115, !nonnull !24, !noundef !24 ; 2 uses
  %i.j = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %.val.i.i)
          to label %.noexc9.i.i unwind label %bb.e, !noalias !3115

.noexc9.i.i:                                      ; preds = %.lr.ph15.i.i
  br i1 %i.j, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECsjsY2yM364a4_11lance_tools.exit11.i.i
end_hunk_2
begin_hunk_3_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8shutdown8ReceiverECsjsY2yM364a4_11lance_tools:bb.a
bb.e:                                             ; preds = %_RNvMs4_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_5InneruE5closeCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  store i8 0, ptr %i.n, align 1, !noalias !5369
  br label %_RNvXs2_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5370)
  %i.p = load ptr, ptr %0, align 8, !alias.scope !5371, !noundef !24 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEEEECsjsY2yM364a4_11lance_tools.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !5372
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEEEECsjsY2yM364a4_11lance_tools.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.k

_RNvXs2_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.e, %_RNvMs4_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_5InneruE5closeCsjsY2yM364a4_11lance_tools.exit.i.i
  %.pr.i = load ptr, ptr %0, align 8, !alias.scope !5373 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5374)
  %i.t = icmp eq ptr %.pr.i, null
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot8ReceiveruEECsjsY2yM364a4_11lance_tools.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXs2_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i
  %i.u = atomicrmw add ptr %.pr.i, i64 -1 release, align 8, !noalias !5375
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot8ReceiveruEECsjsY2yM364a4_11lance_tools.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot8ReceiveruEECsjsY2yM364a4_11lance_tools.exit

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %i.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot8ReceiveruEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RNvXs2_NtNtCseXbohGRa9jr_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i, %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread9CoreGuardECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs8_NtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_threadNtB5_9CoreGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler7ContextECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(64) %0) #41
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler7ContextECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(64) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler5defer5DeferECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5386)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !5387, !nonnull !24, !noundef !24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !5387, !noundef !24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5388)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCscI6d9CVNmLh_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %.val1.i.i.i
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCscI6d9CVNmLh_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i1 = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i1 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i1, 1 ; 4 uses
  %.val8.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !5388, !noalias !5387, !nonnull !24, !align !41, !noundef !24
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5388, !noalias !5387, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !5389, !nonnull !24, !noundef !24
  invoke void %i.j(ptr noundef %.val9.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i unwind label %bb.b, !noalias !5389, !inline_history !12

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit10.i.i.i.i.i: ; preds = %.lr.ph3
  %i.k = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i2, 1 ; 2 uses
  %i.l = icmp eq i64 %i.k, %.val1.i.i.i
  br i1 %i.l, label %.body.i.i.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.g, %.val1.i.i.i
  br i1 %i.n, label %.body.i.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit10.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i2 = phi i64 [ %i.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit10.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i2 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !5388, !noalias !5387, !nonnull !24, !align !41, !noundef !24
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5388, !noalias !5387, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !5389, !nonnull !24, !noundef !24
  invoke void %i.r(ptr noundef %.val7.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit10.i.i.i.i.i unwind label %bb.c, !noalias !5389, !inline_history !12

bb.c:                                             ; preds = %.lr.ph3
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5389
  unreachable

.body.i.i.i:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit10.i.i.i.i.i, %bb.b
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !42, !alias.scope !5387, !noundef !24 ; 2 uses
  %i.t = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.u = shl nuw i64 %.val4.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECsjsY2yM364a4_11lance_tools.exit.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCscI6d9CVNmLh_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !42, !alias.scope !5387, !noundef !24 ; 2 uses
  %i.v = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECsjsY2yM364a4_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCscI6d9CVNmLh_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.w = shl nuw i64 %.val2.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5387
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCscI6d9CVNmLh_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5392)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !5392 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5392, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5392
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1h_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit
  %.sroa.0.019 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.019 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.019, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load i64, ptr %i.d, align 8, !noundef !24 ; 6 uses
  %i.e = icmp eq i64 %.val9, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit
  %.sroa.0.0.i.i18 = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit ], [ 0, %.lr.ph20 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %.val8, i64 %.sroa.0.0.i.i18 ; 7 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i18, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5416)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5417, !noundef !24 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.i, null
  br i1 %.not7.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, %.lr.ph.i.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5418)
  %i.m = load i64, ptr %i.f, align 8, !range !28, !alias.scope !5419, !noundef !24
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !5419, !noundef !24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %bb.d, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !5419, !noundef !24
  store i64 1, ptr %i.f, align 8, !alias.scope !5419
  store ptr %i.r, ptr %i.j, align 8, !alias.scope !5419
  br label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i

_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5419, !noundef !24 ; 3 uses
  store ptr %i.t, ptr %i.h, align 8, !alias.scope !5419
  %.not3.i.i.i = icmp eq ptr %i.t, null
  %..i.i.i = select i1 %.not3.i.i.i, ptr %i.f, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = load i64, ptr %i.k, align 8, !alias.scope !5419, !noundef !24
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.k, align 8, !alias.scope !5419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !5419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5421), !noalias !5417
  %i.x = load i8, ptr %i.l, align 8, !range !25, !alias.scope !5422, !noalias !5417, !noundef !24
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !5422, !noalias !5417, !nonnull !24, !noundef !24 ; 4 uses
  %i.aa = atomicrmw add ptr %.val.i.i, i32 -1 release, align 4, !noalias !5423
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire, !noalias !5417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5424), !noalias !5417
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5425), !noalias !5417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5426), !noalias !5417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5427), !noalias !5417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5428), !noalias !5417
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !5429, !noalias !5423, !nonnull !24, !noundef !24
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !5430
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !5417
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i unwind label %.body.i.i12, !noalias !5423

.body.i.i12:                                      ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #36, !noalias !5423
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !5422, !noalias !5417, !nonnull !24, !noundef !24 ; 2 uses
  %i.ai = atomicrmw add ptr %.val2.i.i, i32 -1 release, align 4, !noalias !5423
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %.body.i.i.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #36, !noalias !5423
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.h:                                             ; preds = %.body.i.i12
  fence acquire, !noalias !5417
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef 48, i64 noundef 8) #36, !noalias !5423
  br label %.body.i.i.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5422, !noalias !5417, !nonnull !24, !noundef !24 ; 2 uses
  %i.al = atomicrmw add ptr %.val1.i.i, i32 -1 release, align 4, !noalias !5423
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i.i
  fence acquire, !noalias !5417
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef 48, i64 noundef 8) #36, !noalias !5423
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit

.body.i.i.body:                                   ; preds = %.body.i.i12, %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #36, !noalias !5417
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr nonnull align 8 dereferenceable(48) %i.f) #41
          to label %.body10.preheader unwind label %bb.j

.body10.preheader:                                ; preds = %.body.i.i.body
  %i.an = icmp eq i64 %i.g, %.val9
  br i1 %i.an, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph54

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0CsjsY2yM364a4_11lance_tools.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #36, !noalias !5417
  %i.ao = load ptr, ptr %i.h, align 8, !alias.scope !5417, !noundef !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.j:                                             ; preds = %.body.i.i.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5417
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit, %.lr.ph
  %i.aq = icmp eq i64 %i.g, %.val9
  br i1 %i.aq, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.body10:                                          ; preds = %.lr.ph54
  %i.ar = add nuw nsw i64 %.sroa.0.1.i.i53, 1     ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.val9
  br i1 %i.as, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph54

.lr.ph54:                                         ; preds = %.body10.preheader, %.body10
  %.sroa.0.1.i.i53 = phi i64 [ %i.ar, %.body10 ], [ %i.g, %.body10.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.val8, i64 %.sroa.0.1.i.i53
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(48) %i.at) #41
          to label %.body10 unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph54
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5431
  unreachable

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %.body10, %.body10.preheader
  %i.av = mul nuw nsw i64 %.val9, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.av, i64 noundef 8) #36
  %i.aw = icmp eq i64 %i.c, %1
  br i1 %i.aw, label %._crit_edge57, label %.lr.ph56

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools.exit
  %i.ax = mul nuw nsw i64 %.val9, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ax, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %.lr.ph20, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.ay = icmp eq i64 %i.c, %1
  br i1 %i.ay, label %._crit_edge, label %.lr.ph20

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph56
  %i.az = add nuw nsw i64 %.sroa.0.155, 1         ; 2 uses
  %i.ba = icmp eq i64 %i.az, %1
  br i1 %i.ba, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.l
  %.sroa.0.155 = phi i64 [ %i.az, %bb.l ], [ %i.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.155 ; 2 uses
  %.val = load ptr, ptr %i.bb, align 8, !nonnull !24, !noundef !24
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val7 = load i64, ptr %i.bc, align 8, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val, i64 %.val7) #41
          to label %bb.l unwind label %bb.m

._crit_edge57:                                    ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  resume { ptr, i32 } %i.ag

bb.m:                                             ; preds = %.lr.ph56
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5434)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !5434 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5434, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5434
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(184) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvNtCsdRkAOB6wJ8u_12clap_builder6derive12format_errorNtNtCsftBYP88YJaE_11lance_tools3cli14LanceToolsArgsECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull returned align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [712 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtCsftBYP88YJaE_11lance_tools3cliNtB5_14LanceToolsArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14CommandFactory7command(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.c)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5442)
  invoke void @_RNvMs3_NtNtCsdRkAOB6wJ8u_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c, i1 noundef zeroext false)
          to label %bb.c unwind label %.thread25.i, !noalias !5442

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5443
  invoke void @_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder7builder7commandNtB2_7Command13render_usage_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c)
          to label %bb.d unwind label %.thread25.i, !noalias !5442
end_hunk_3
begin_hunk_4_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsjsY2yM364a4_11lance_tools:bb.a
  %i.bka = inttoptr i64 %i.bjz to ptr             ; 2 uses
  %i.bkb = atomicrmw add ptr %i.bfy, i64 -1 monotonic, align 8, !noalias !10363 ; 0 uses
  %i.bkc = atomicrmw add ptr %i.bjy, i64 1 monotonic, align 8, !noalias !10363 ; 0 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bka, i64 8
  %.val31.i.i.i.i240 = load ptr, ptr %i.bka, align 8, !noalias !10363, !nonnull !24, !noundef !24 ; 4 uses
  %.val32.i.i.i.i = load ptr, ptr %i.bkd, align 8, !noalias !10363 ; 3 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bff, i64 168
  %i.bkf = atomicrmw add ptr %i.bke, i64 -1 monotonic, align 8, !noalias !10363 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !10362
  %i.bkg = atomicrmw add ptr %.val31.i.i.i.i240, i64 1 monotonic, align 8, !noalias !10363
  %i.bkh = icmp slt i64 %i.bkg, 0
  br i1 %i.bkh, label %bb.qo, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  store ptr %.val31.i.i.i.i240, ptr %i.be, align 8, !noalias !10362
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i.i) ]
  %i.bki = atomicrmw add ptr %.val32.i.i.i.i, i32 1 monotonic, align 4, !noalias !10363
  %i.bkj = icmp slt i32 %i.bki, 0
  br i1 %i.bkj, label %bb.qn, label %bb.qs, !prof !29

bb.qn:                                            ; preds = %bb.qm
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc.i.i.i.i.i.i unwind label %bb.qp, !noalias !10363

.noexc.i.i.i.i.i.i:                               ; preds = %bb.qn
  unreachable

bb.qo:                                            ; preds = %bb.ql
  call void @llvm.trap()
  unreachable

bb.qp:                                            ; preds = %bb.qn
  %i.bkk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkl = atomicrmw add ptr %.val31.i.i.i.i240, i64 -1 release, align 8, !noalias !10370
  %i.bkm = icmp eq i64 %i.bkl, 1
  br i1 %i.bkm, label %bb.qq, label %.body.thread.i.i.i.i

bb.qq:                                            ; preds = %bb.qp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.body.thread.i.i.i.i unwind label %bb.qr, !noalias !10363

bb.qr:                                            ; preds = %bb.qq
  %i.bkn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !10363
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.thread.i.i.i.i226: ; preds = %.noexc34.i.i.i.i237, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread42.i.i.i.i.i, %bb.qg, %bb.qe, %.noexc34.us.i.us.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread42.i.us.i.us.i.i.i, %bb.pv, %bb.pt, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i239
  %.sroa.09.0.i28.i.i.i = phi ptr [ %.sroa.09.0.i.us.i.i.i, %.noexc34.us.i.us.i.i.i ], [ %.sroa.09.0.i29.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i239 ], [ %.sroa.09.0.i.us.i.i.i, %bb.pt ], [ %.sroa.09.0.i.us.i.i.i, %bb.pv ], [ %.sroa.09.0.i.us.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread42.i.us.i.us.i.i.i ], [ %.sroa.09.0.i.i.i.i215, %bb.qe ], [ %.sroa.09.0.i.i.i.i215, %bb.qg ], [ %.sroa.09.0.i.i.i.i215, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread42.i.i.i.i.i ], [ %.sroa.09.0.i.i.i.i215, %.noexc34.i.i.i.i237 ]
  store ptr null, ptr %i.bf, align 8, !noalias !10362
  br label %bb.qt

bb.qs:                                            ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !10362
  store ptr %.val31.i.i.i.i240, ptr %i.bf, align 8, !noalias !10362
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.val32.i.i.i.i, ptr %i.bko, align 8, !noalias !10362
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket23defer_destroy_tombstoneINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2y_10ValueEntryB1D_NtB1F_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, i64 noundef %.us-phi62.i.i.i.i)
          to label %bb.qt unwind label %bb.qy, !noalias !10363

bb.qt:                                            ; preds = %bb.qs, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.thread.i.i.i.i226
  %.sroa.09.0.i27.i.i.i = phi ptr [ %.sroa.09.0.i29.i.i.i, %bb.qs ], [ %.sroa.09.0.i28.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.thread.i.i.i.i226 ]
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools(ptr nonnull %i.bfx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noundef nonnull align 8 %i.bgb, ptr noundef nonnull align 8 %.sroa.09.0.i27.i.i.i)
          to label %bb.qu unwind label %bb.qy, !noalias !10363

bb.qu:                                            ; preds = %bb.qt
  %i.bkp = load ptr, ptr %i.bf, align 8, !noalias !10362, !noundef !24 ; 4 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bkr = load ptr, ptr %i.bkq, align 8, !noalias !10362 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !10362
  %i.bks = icmp eq ptr %i.bga, null
  br i1 %i.bks, label %bb.re, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bga, i64 2072 ; 2 uses
  %i.bku = load i64, ptr %i.bkt, align 8, !noalias !10363, !noundef !24 ; 2 uses
  %i.bkv = add i64 %i.bku, -1
  store i64 %i.bkv, ptr %i.bkt, align 8, !noalias !10363
  %i.bkw = icmp eq i64 %i.bku, 1
  br i1 %i.bkw, label %bb.qw, label %bb.re

bb.qw:                                            ; preds = %bb.qv
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bga, i64 2176
  store atomic i64 0, ptr %i.bkx release, align 8, !noalias !10363
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bga, i64 2080
  %i.bkz = load i64, ptr %i.bky, align 8, !noalias !10363, !noundef !24
  %i.bla = icmp eq i64 %i.bkz, 0
  br i1 %i.bla, label %bb.qx, label %bb.re, !prof !29

bb.qx:                                            ; preds = %bb.qw
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bga)
          to label %bb.re unwind label %bb.rd

.backedge.i.i.i.i219:                             ; preds = %.invoke.i.i.i.i218
  %.not25.i.i.i.i220 = icmp eq ptr %i.bjx, null
  %spec.select.i.i.i.i221 = select i1 %.not25.i.i.i.i220, ptr %.sroa.09.0.i.i.i.i215, ptr %i.bjx
  br label %.split.i.i.i214

bb.qy:                                            ; preds = %bb.qt, %bb.qs
  %lpad.thr_comm.split-lp.i.i.i.i227 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB2r_10ValueEntryB1w_NtB1y_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(16) %i.bf) #41
          to label %.body.thread.i.i.i.i unwind label %bb.qz, !noalias !10363

bb.qz:                                            ; preds = %bb.qy, %.body.thread.i.i.i.i
  %i.blb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !10363
  unreachable

bb.ra:                                            ; preds = %bb.pn
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i.i.i212, i64 noundef %i.bft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40
          to label %.noexc205.i.i unwind label %bb.rd

.noexc205.i.i:                                    ; preds = %bb.ra
  unreachable

bb.rb:                                            ; preds = %.body196.i.i, %bb.pb
  %i.blc = phi ptr [ %i.bed, %.body196.i.i ], [ %i.ast, %bb.pb ] ; 2 uses
  %i.bld = phi ptr [ %i.bee, %.body196.i.i ], [ %i.asu, %bb.pb ] ; 2 uses
  %i.ble = phi ptr [ %i.bef, %.body196.i.i ], [ %i.asv, %bb.pb ] ; 2 uses
  %i.blf = phi ptr [ %i.beg, %.body196.i.i ], [ %i.asw, %bb.pb ] ; 2 uses
  %.pn23.pn.i.i = phi { ptr, i32 } [ %.pn23.i.i, %.body196.i.i ], [ %i.bea, %bb.pb ] ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10371)
  call void @llvm.experimental.noalias.scope.decl(metadata !10372)
  %i.blh = load ptr, ptr %i.blg, align 8, !alias.scope !10373, !noalias !10315, !nonnull !24, !noundef !24
  %i.bli = atomicrmw add ptr %i.blh, i64 -1 release, align 8, !noalias !10373
  %i.blj = icmp eq i64 %i.bli, 1
  br i1 %i.blj, label %bb.rc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i

bb.rc:                                            ; preds = %bb.rb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.blg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i unwind label %bb.mz

bb.rd:                                            ; preds = %bb.ra, %bb.qx, %bb.po
  %i.blk = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i.i

.body203.i.i:                                     ; preds = %bb.rd, %.body.thread.i.i.i.i
  %eh.lpad-body204.i.i = phi { ptr, i32 } [ %i.blk, %bb.rd ], [ %.pn.i.i.i.i213, %.body.thread.i.i.i.i ] ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val105.i.i = load ptr, ptr %i.bll, align 8, !noalias !10315, !align !41, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val105.i.i) #41
          to label %bb.ry unwind label %bb.mz

bb.re:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !10362
  store ptr %i.bkp, ptr %i.bfk, align 8, !noalias !10315
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %i.bkr, ptr %i.blm, align 8, !noalias !10315
  %.not26.i.i = icmp eq ptr %i.bkp, null
  br i1 %.not26.i.i, label %bb.ri, label %bb.rg

bb.rf:                                            ; preds = %bb.oa, %bb.oe
  %i.bln = phi ptr [ %i.bab, %bb.oe ], [ %i.azl, %bb.oa ]
  %i.blo = phi ptr [ %i.bac, %bb.oe ], [ %i.azm, %bb.oa ]
  %i.blp = phi ptr [ %i.bad, %bb.oe ], [ %i.azn, %bb.oa ]
  %i.blq = phi ptr [ %i.bae, %bb.oe ], [ %i.azo, %bb.oa ]
  %i.blr = landingpad { ptr, i32 }
          cleanup
  br label %.body662

bb.rg:                                            ; preds = %bb.re
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !10315
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  store i8 1, ptr %i.bls, align 8, !noalias !10315
  store ptr %i.bkp, ptr %i.bi, align 8, !noalias !10315
  %i.blt = getelementptr inbounds nuw i8, ptr %0, i64 1194
  store i8 1, ptr %i.blt, align 2, !noalias !10315
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  store ptr %i.bkr, ptr %i.blu, align 8, !noalias !10315
  %i.blv = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.blw = load ptr, ptr %i.blv, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24 ; 3 uses
  %i.blx = getelementptr i8, ptr %i.blw, i64 24
  %.val120.i.i = load ptr, ptr %i.blx, align 8, !align !41, !noundef !24
  %.not374.i.i = icmp eq ptr %.val120.i.i, null
  br i1 %.not374.i.i, label %bb.oe, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i8 0, ptr %i.bls, align 8, !noalias !10315
  %.sroa.7330.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store ptr %i.blw, ptr %.sroa.7330.0..sroa_idx.i.i, align 8, !noalias !10315
  %.sroa.8331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store ptr %i.bkp, ptr %.sroa.8331.0..sroa_idx.i.i, align 8, !noalias !10315
  %.sroa.9332.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.blu, ptr %.sroa.9332.0..sroa_idx.i.i, align 8, !noalias !10315
  %.sroa.11334.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1321
  store i8 3, ptr %.sroa.11334.0..sroa_idx.i.i, align 1, !noalias !10315
  %.sroa.12335.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1322
  store i8 0, ptr %.sroa.12335.0..sroa_idx.i.i, align 2, !noalias !10315
  br label %bb.nu

bb.ri:                                            ; preds = %bb.re
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.blz = load ptr, ptr %i.bly, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24 ; 4 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 48 ; 2 uses
  %i.bmb = getelementptr i8, ptr %i.blz, i64 72   ; 2 uses
  %.val115.i.i = load ptr, ptr %i.bmb, align 8, !noundef !24 ; 8 uses
  %.not27.i.i = icmp eq ptr %.val115.i.i, null
  br i1 %.not27.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %.val144.i.i = load ptr, ptr %.val115.i.i, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.val144.i.i, i64 8
  %.val.i.i45.i = load ptr, ptr %i.bmc, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %.val1.i.i.i = load ptr, ptr %i.bfi, align 8, !noalias !10315, !nonnull !24, !noundef !24 ; 4 uses
  %i.bmd = icmp eq ptr %.val.i.i45.i, %.val1.i.i.i
  br i1 %i.bmd, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  call void @llvm.experimental.noalias.scope.decl(metadata !10374)
  call void @llvm.experimental.noalias.scope.decl(metadata !10375)
  %i.bme = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 32
  %i.bmf = load i64, ptr %i.bme, align 8, !alias.scope !10374, !noundef !24 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 32
  %i.bmh = load i64, ptr %i.bmg, align 8, !alias.scope !10375, !noundef !24
  %i.bmi = icmp eq i64 %i.bmf, %i.bmh
  br i1 %i.bmi, label %bb.rl, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

bb.rl:                                            ; preds = %bb.rk
  %i.bmj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.bmk = load ptr, ptr %i.bmj, align 8, !alias.scope !10375, !nonnull !24, !noundef !24
  %i.bml = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 24
  %i.bmm = load ptr, ptr %i.bml, align 8, !alias.scope !10374, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bmm, ptr nonnull %i.bmk, i64 %i.bmf), !noalias !10376
  %i.bmn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bmn, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.rl
  %i.bmo = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 40
  %i.bmp = load i64, ptr %i.bmo, align 8, !alias.scope !10374, !noundef !24
  %i.bmq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 40
  %i.bmr = load i64, ptr %i.bmq, align 8, !alias.scope !10375, !noundef !24
  %i.bms = icmp eq i64 %i.bmp, %i.bmr
  br i1 %i.bms, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i: ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i, %bb.rj
  %i.bmt = getelementptr inbounds nuw i8, ptr %.val144.i.i, i64 16
  %i.bmu = load i64, ptr %i.bmt, align 8, !noundef !24
  %i.bmv = load i64, ptr %i.bfg, align 8, !noalias !10315, !noundef !24
  %i.bmw = icmp eq i64 %i.bmu, %i.bmv
  br i1 %i.bmw, label %bb.rm, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

bb.rm:                                            ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blz, i64 80 ; 2 uses
  %i.bmy = load ptr, ptr %i.bmx, align 8, !alias.scope !10379, !noundef !24 ; 4 uses
  %i.bmz = icmp eq ptr %i.bmy, %.val115.i.i
  br i1 %i.bmz, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bna = load i64, ptr %i.bma, align 8, !range !28, !alias.scope !10379, !noundef !24
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.blz, i64 56 ; 2 uses
  %i.bnc = trunc nuw i64 %i.bna to i1
  br i1 %i.bnc, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.bnd = load ptr, ptr %i.bnb, align 8, !alias.scope !10379, !noundef !24 ; 2 uses
  %i.bne = icmp eq ptr %i.bnd, %.val115.i.i
  br i1 %i.bne, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.rq, %bb.ro, %bb.rn
  %i.bnf = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 16 ; 2 uses
  %i.bng = load ptr, ptr %i.bnf, align 8, !noalias !10379, !noundef !24 ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 8 ; 2 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !noalias !10379, !noundef !24 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bng, null
  br i1 %.not12.i.i.i.i, label %bb.rs, label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %i.bnk = load ptr, ptr %i.bnj, align 8, !noalias !10379, !noundef !24
  store i64 1, ptr %i.bma, align 8, !alias.scope !10379
  store ptr %i.bnk, ptr %i.bnb, align 8, !alias.scope !10379
  br label %bb.rp

bb.rr:                                            ; preds = %bb.rp
  %cond.i.i.i.i = icmp eq ptr %i.bni, null
  br i1 %cond.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i, label %.thread.i.i.i.i228

bb.rs:                                            ; preds = %bb.rp
  store ptr %i.bni, ptr %i.bmb, align 8, !alias.scope !10379
  %.not14.i.i.i.i = icmp eq ptr %i.bni, null
  br i1 %.not14.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.rt

.thread.i.i.i.i228:                               ; preds = %bb.rr
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bng, i64 8
  store ptr %i.bni, ptr %i.bnl, align 8, !noalias !10379
  br label %bb.rt

bb.rt:                                            ; preds = %.thread.i.i.i.i228, %bb.rs
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bni, i64 16
  store ptr %i.bng, ptr %i.bnm, align 8, !noalias !10379
  store ptr %i.bmy, ptr %i.bnf, align 8, !noalias !10379
  store ptr null, ptr %i.bnh, align 8, !noalias !10379
  %.not15.i.i.i.i = icmp eq ptr %i.bmy, null
  br i1 %.not15.i.i.i.i, label %bb.rv, label %bb.ru, !prof !29

bb.ru:                                            ; preds = %bb.rt
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bmy, i64 8
  store ptr %.val115.i.i, ptr %i.bnn, align 8, !noalias !10379
  store ptr %.val115.i.i, ptr %i.bmx, align 8, !alias.scope !10379
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

bb.rv:                                            ; preds = %bb.rt
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40
          to label %.noexc209.i.i unwind label %bb.rw

.noexc209.i.i:                                    ; preds = %bb.rv
  unreachable

bb.rw:                                            ; preds = %bb.rv
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i
  %i.bnp = phi ptr [ %i.baz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i ], [ %i.bfa, %bb.rw ]
  %i.bnq = phi ptr [ %i.bba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i ], [ %i.bfb, %bb.rw ]
  %i.bnr = phi ptr [ %i.bbb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i ], [ %i.bfc, %bb.rw ]
  %i.bns = phi ptr [ %i.bbc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i ], [ %i.bfd, %bb.rw ]
  %.pn40.pn.i.i = phi { ptr, i32 } [ %.pn40.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i ], [ %i.bno, %bb.rw ]
  %i.bnt = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val104.i.i = load ptr, ptr %i.bnt, align 8, !noalias !10315, !align !41, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val104.i.i) #41
          to label %bb.oj unwind label %bb.mz

bb.ry:                                            ; preds = %.body203.i.i
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.bnu) #41
          to label %bb.rz unwind label %bb.mz

bb.rz:                                            ; preds = %bb.ry
  call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  %i.bnv = load ptr, ptr %i.bfi, align 8, !alias.scope !10382, !noalias !10315, !nonnull !24, !noundef !24
  %i.bnw = atomicrmw add ptr %i.bnv, i64 -1 release, align 8, !noalias !10382
  %i.bnx = icmp eq i64 %i.bnw, 1
  br i1 %i.bnx, label %bb.sa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i

bb.sa:                                            ; preds = %bb.rz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bfi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i unwind label %bb.mz

.body662:                                         ; preds = %bb.rf, %bb.oc, %bb.nv
  %i.bny = phi ptr [ %i.azl, %bb.nv ], [ %i.bln, %bb.rf ], [ %i.azl, %bb.oc ] ; 3 uses
  %i.bnz = phi ptr [ %i.azm, %bb.nv ], [ %i.blo, %bb.rf ], [ %i.azm, %bb.oc ] ; 3 uses
  %i.boa = phi ptr [ %i.azn, %bb.nv ], [ %i.blp, %bb.rf ], [ %i.azn, %bb.oc ] ; 3 uses
  %i.bob = phi ptr [ %i.azo, %bb.nv ], [ %i.blq, %bb.rf ], [ %i.azo, %bb.oc ] ; 3 uses
  %.pn38.i.i = phi { ptr, i32 } [ %i.azr, %bb.nv ], [ %i.blr, %bb.rf ], [ %i.azy, %bb.oc ] ; 3 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %0, i64 1194 ; 2 uses
  %i.bod = load i8, ptr %i.boc, align 2, !range !25, !noalias !10315, !noundef !24
  %i.boe = trunc nuw i8 %i.bod to i1
  br i1 %i.boe, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sc, %.body662
  store i8 0, ptr %i.boc, align 2, !noalias !10315
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bog = load i8, ptr %i.bof, align 8, !range !25, !noalias !10315, !noundef !24
  %i.boh = trunc nuw i8 %i.bog to i1
  br i1 %i.boh, label %bb.sd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i

bb.sc:                                            ; preds = %.body662
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.val96.i.i = load ptr, ptr %i.boi, align 8, !noalias !10315, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %.val96.i.i) #41
          to label %bb.sb unwind label %bb.mz

bb.sd:                                            ; preds = %bb.sb
  call void @llvm.experimental.noalias.scope.decl(metadata !10383)
  call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  %i.boj = load ptr, ptr %i.bi, align 8, !alias.scope !10385, !noalias !10315, !nonnull !24, !noundef !24
  %i.bok = atomicrmw add ptr %i.boj, i64 -1 release, align 8, !noalias !10385
  %i.bol = icmp eq i64 %i.bok, 1
  br i1 %i.bol, label %bb.se, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i

bb.se:                                            ; preds = %bb.sd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i unwind label %bb.mz

bb.sf:                                            ; preds = %bb.lv, %bb.jx
  %i.bom = phi ptr [ %i.ami, %bb.lv ], [ %i.ajc, %bb.jx ] ; 4 uses
  %i.bon = phi ptr [ %i.amj, %bb.lv ], [ %i.ajb, %bb.jx ] ; 3 uses
  %i.boo = phi ptr [ %i.amv, %bb.lv ], [ %.phi.trans.insert365.i, %bb.jx ] ; 4 uses
  %i.bop = phi ptr [ %i.amw, %bb.lv ], [ %i.amh, %bb.jx ] ; 3 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %.val116.i.i = load ptr, ptr %1, align 8, !alias.scope !10315
  %i.bor = invoke fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.boq, ptr %.val116.i.i)
          to label %bb.sh unwind label %bb.sg     ; 2 uses

bb.sg:                                            ; preds = %bb.sf
  %i.bos = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.boq) #41
          to label %.body220.i.i unwind label %bb.mz

bb.sh:                                            ; preds = %bb.sf
  %i.bot = icmp eq ptr %i.bor, null
  br i1 %i.bot, label %bb.up, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.bou = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bov = load i8, ptr %i.bou, align 8, !range !40, !noalias !10315, !noundef !24
  %cond.i214.i.i = icmp eq i8 %i.bov, 3
  br i1 %cond.i214.i.i, label %bb.sj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit222.i.i

bb.sj:                                            ; preds = %bb.si
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.box = load i32, ptr %i.bow, align 8, !range !45, !noalias !10315, !noundef !24
  %i.boy = icmp eq i32 %i.box, -2
  br i1 %i.boy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit222.i.i, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.boz = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bpb = load ptr, ptr %i.boz, align 8, !noalias !10315, !align !41, !noundef !24 ; 2 uses
  store ptr null, ptr %i.boz, align 8, !noalias !10315
  %i.bpc = load i8, ptr %i.bpa, align 8, !range !25, !noalias !10315, !noundef !24
  %i.bpd = trunc nuw i8 %i.bpc to i1
  %.not.i.i.i.i.i.i.i.i215.i.i = icmp ne ptr %i.bpb, null
  %or.cond.not.i.i.i.i.i.i.i.i216.i.i = and i1 %.not.i.i.i.i.i.i.i.i215.i.i, %i.bpd
  br i1 %or.cond.not.i.i.i.i.i.i.i.i216.i.i, label %bb.sl, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i217.i.i

bb.sl:                                            ; preds = %bb.sk
  %i.bpe = atomicrmw add ptr %i.bpb, i64 -2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i217.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i217.i.i: ; preds = %bb.sl, %bb.sk
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.val.i.i.i.i.i.i218.i.i = load ptr, ptr %i.bpf, align 8, !noalias !10315, !align !41, !noundef !24 ; 4 uses
  %i.bpg = icmp eq ptr %.val.i.i.i.i.i.i218.i.i, null
  br i1 %i.bpg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit222.i.i, label %bb.sm

bb.sm:                                            ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i217.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i218.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i219.i.i unwind label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bph = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i218.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %.body220.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i219.i.i: ; preds = %bb.sm
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i218.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit222.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit222.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i219.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i217.i.i, %bb.sj, %bb.si
  store ptr %i.bor, ptr %i.boq, align 8, !noalias !10315
  br label %bb.lw

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.lw
  store ptr %.val137.i.i, ptr %i.ats, align 8, !noalias !10315
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 1193 ; 2 uses
  store i8 1, ptr %i.bpi, align 1, !noalias !10315
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bpk = load ptr, ptr %i.bpj, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bpm = load i64, ptr %i.bpl, align 8, !noalias !10315, !noundef !24 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 1190 ; 2 uses
  %.val149.i.i = load ptr, ptr %i.bpn, align 8, !noalias !10315
  %.val150.i.i = load i16, ptr %i.bpo, align 2, !noalias !10315
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 176
  %i.bpq = load i32, ptr %i.bpp, align 8, !noundef !24 ; 2 uses
  %i.bpr = icmp eq i32 %i.bpq, 64
  %i.bps = and i32 %i.bpq, 63
  %i.bpt = zext nneg i32 %i.bps to i64
  %i.bpu = lshr i64 %i.bpm, %i.bpt
  %.sroa.03.0.i.i223.i.i = select i1 %i.bpr, i64 0, i64 %i.bpu ; 3 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpk, i64 144
end_hunk_4
begin_hunk_5_@_RNvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB5_5InneruE6removeCsjsY2yM364a4_11lance_tools:bb.a
  br i1 %3, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit.critedge

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12550)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !12551, !noundef !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !12551, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !12551, !nonnull !24, !noundef !24
  call void %i.aa(ptr noundef %.val1.i.i.i.i.i), !noalias !12551, !inline_history !12533
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !12552)
  call void @llvm.experimental.noalias.scope.decl(metadata !12553)
  call void @llvm.experimental.noalias.scope.decl(metadata !12554)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !12555, !nonnull !24, !noundef !24
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !12555
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit.critedge: ; preds = %bb.o, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !24
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12559)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit.critedge, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 3, ptr %i.c, align 8
  %i.ah = load i8, ptr %i.b, align 8, !range !40, !noundef !24 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !25, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.am, align 1
  invoke fastcc void @_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.x, %bb.t
  %i.an = phi i8 [ %.pr, %bb.x ], [ %i.ah, %bb.t ] ; 2 uses
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit, label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !40, !noundef !24
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.y:                                             ; preds = %bb.ag, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.ap, %bb.w ], [ %i.ap, %bb.z ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.c) #41
          to label %bb.ah unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.ae, %bb.ab, %bb.ad, %bb.af, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !40, !alias.scope !12560
  %i.at = icmp eq i8 %.pre, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !24
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  call void @llvm.experimental.noalias.scope.decl(metadata !12558)
  call void @llvm.experimental.noalias.scope.decl(metadata !12559)
  br i1 %i.at, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools.exit

bb.ab:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12561)
  %i.ax = icmp eq i8 %i.an, 2
  br i1 %i.ax, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12562)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !12563, !noundef !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !12563, !noundef !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !12563, !nonnull !24, !noundef !24
  invoke void %i.bc(ptr noundef %.val1.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.ag, !inline_history !82

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12566)
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !12567, !nonnull !24, !noundef !24
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !12567
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ah:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(40) %i.d) #41
          to label %bb.ai unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE12unlink_timerCsjsY2yM364a4_11lance_tools(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsjsY2yM364a4_11lance_tools.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.c, align 1, !alias.scope !12572
  %i.d = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.d, label %bb.c, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !12572
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 2, !alias.scope !12572
  %i.e = zext i8 %.sroa.4.0.copyload.i to i64     ; 3 uses
  %i.f = zext i8 %.sroa.5.0.copyload.i to i64     ; 3 uses
  %i.g = icmp ugt i64 %.8.val, %i.e
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !24 ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.f
  br i1 %i.k, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.8.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #40
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !nonnull !24, !noundef !24
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.f ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12573)
  %i.n = load i64, ptr %i.m, align 8, !range !28, !alias.scope !12573, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %bb.g, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !12573, !noundef !24 ; 2 uses
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.h, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !12573, !noundef !24
  store i64 1, ptr %i.m, align 8, !alias.scope !12573
  store ptr %i.t, ptr %i.o, align 8, !alias.scope !12573
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !12573, !noundef !24 ; 2 uses
  %.not3.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !12573, !noundef !24 ; 3 uses
  %..i = select i1 %.not3.i, ptr %i.m, ptr %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %..i, i64 24
  store ptr %i.x, ptr %i.y, align 8
  %.not4.i = icmp eq ptr %i.x, null
  %.sink9.i = select i1 %.not4.i, ptr %i.m, ptr %i.x
  %i.z = load ptr, ptr %i.u, align 8, !noalias !12573, !noundef !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink9.i, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !12573
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !12573, !noundef !24
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !12573
  %i.ae = load i8, ptr %0, align 8, !range !25, !noundef !24
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.k, !prof !26

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #40
  unreachable

bb.j:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit
  store i8 0, ptr %i.c, align 1
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsjsY2yM364a4_11lance_tools.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #40
  unreachable

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.j, %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE22schedule_existing_nodeCsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !25, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp ugt i64 %i.f, -4097
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 8, !range !25, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.n, !prof !26

bb.e:                                             ; preds = %bb.c
  %i.j = and i64 %i.f, -4096                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.k, align 8, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.l, align 8, !noundef !24
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -4096) %i.j, i64 %.val14) ; 4 uses
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -4096) %i.j, i64 %.val13)
  %i.o = icmp ult i64 %i.m, 68719476736
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ult i64 %i.m, 4398046511104
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ult i64 %i.m, 140737488355328
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ult i64 %i.m, 562949953421312
  br i1 %i.r, label %bb.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsjsY2yM364a4_11lance_tools.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.01.i.lcssa23 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @314, i64 %.sroa.0.01.i.lcssa23
  %i.t = load i64, ptr %i.s, align 8, !noundef !24
  %i.u = and i64 %i.t, 63
  %i.v = lshr i64 %i.n, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @315, i64 %.sroa.0.01.i.lcssa23
  %i.x = load i64, ptr %i.w, align 8, !noundef !24
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.v, %i.y
  br label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.h, %bb.i
  %.sroa.3.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.01.i.lcssa23, %bb.i ], [ 4, %bb.h ] ; 4 uses
  %i.aa = load i8, ptr %1, align 8, !range !25, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !26

bb.j:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %1, i64 16
  %.val16 = load ptr, ptr %i.ad, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val16, i64 8 ; 4 uses
  %i.af = cmpxchg weak ptr %i.ae, i8 0, i8 1 acquire monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ae, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.val16, i64 32
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val16, i64 40
  store i32 0, ptr %i.aj, align 8
  %i.ak = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit

bb.n:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #40
  unreachable

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.m, %bb.l, %bb.r
  %.sroa.0.0 = phi ptr [ null, %bb.r ], [ %1, %bb.l ], [ %1, %bb.m ]
  ret ptr %.sroa.0.0

bb.o:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsjsY2yM364a4_11lance_tools.exit
  %i.am = trunc nuw nsw i64 %.sroa.0.0.i to i8
  %i.an = trunc i64 %.sroa.3.0.i to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ao, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.am, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.an, ptr %.sroa.5.0..sroa_idx, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !24 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0.0.i, %i.aq
  br i1 %i.ar, label %bb.q, label %.invoke

bb.p:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsjsY2yM364a4_11lance_tools.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #40
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.0.0.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !24 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.3.0.i, %i.av
  br i1 %i.aw, label %bb.r, label %.invoke

.invoke:                                          ; preds = %bb.q, %bb.o
  %i.ax = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.3.0.i, %bb.q ]
  %i.ay = phi i64 [ %i.aq, %bb.o ], [ %i.av, %bb.q ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #40
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.at, align 8, !nonnull !24, !noundef !24
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.sroa.3.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.bb, align 8, !alias.scope !12578
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !12577, !noundef !24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !12578
  %.not.i = icmp eq ptr %i.bd, null
  %..i = select i1 %.not.i, ptr %i.ba, ptr %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %..i, i64 24
  store ptr %1, ptr %i.bf, align 8, !noalias !12578
  store ptr %1, ptr %i.bc, align 8, !alias.scope !12577
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !12577, !noundef !24
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !alias.scope !12577
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit

end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE8completeCsjsY2yM364a4_11lance_tools:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12670
  store i32 2, ptr %i.a, align 8, !noalias !12670
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12670
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke void @_RNvMs6_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.g)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.d
  %i.h = invoke noundef i64 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc5
  %i.i = and i64 %i.h, 8
  %.not2.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %.noexc6
  invoke void @_RNvMs6_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc5, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #36
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.w, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2e_24UringCurrentThreadReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE25unlink_node_ao_from_dequeCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.h = and i64 %i.g, -4                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 8 uses
  %i.j = and i64 %i.g, 3                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.k)
  store ptr %i.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !40, !noundef !24 ; 2 uses
  store i8 %i.m, ptr %i.b, align 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.42.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtB6_5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCskTBvlRM5ILY_4moka6common11CacheRegionjECsDbzj4lZ5l5_11goosefs_sdk(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @332, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !24 ; 2 uses
  %.not = icmp ne ptr %i.r, null                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12683)
  %i.v = load i64, ptr %2, align 8, !range !28, !alias.scope !12683, !noundef !24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !12683, !noundef !24 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !12683, !noundef !24 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !12683, !noundef !24
  store i64 1, ptr %2, align 8, !alias.scope !12683
  store ptr %i.ad, ptr %i.w, align 8, !alias.scope !12683
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !12683
  %.pre = load ptr, ptr %i.q, align 8, !noalias !12683
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.s, align 8, !alias.scope !12683
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ null, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !noalias !12683
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !alias.scope !12683
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.k, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !12683
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !12683, !noundef !24
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 8, !alias.scope !12683
  %.val.i = load ptr, ptr %i.i, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.al = atomicrmw add ptr %.val.i, i32 -1 release, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit

bb.m:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12684)
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12688)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !12689, !nonnull !24, !noundef !24
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !12689
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #36
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #36
  resume { ptr, i32 } %i.ar

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsjsY2yM364a4_11lance_tools.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCskTBvlRM5ILY_4moka6future11invalidatorINtB5_11InvalidatorNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB17_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_predicatesCsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [72 x i8], align 16               ; 12 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %.idx = mul nuw nsw i64 %2, 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit
  %.sroa.0.072 = phi ptr [ %1, %.lr.ph ], [ %i.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12767
  %i.w = load <2 x i64>, ptr %i.j, align 8        ; 3 uses
  %i.x = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.y = xor <2 x i64> %i.x, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.y, ptr %i.f, align 16, !alias.scope !12768, !noalias !12767
  %i.z = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = xor <2 x i64> %i.z, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.aa, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !12768, !noalias !12767
  store <2 x i64> %i.w, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !12768, !noalias !12767
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !12768, !noalias !12767
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12769
  store i8 -1, ptr %i.e, align 1, !noalias !12769
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !12770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12769
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !12771, !noalias !12767
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !12771, !noalias !12767
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !12771, !noalias !12767 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !12771, !noalias !12767
  %i.ab = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !12771, !noalias !12767, !noundef !24
  %i.ac = shl i64 %i.ab, 56
  %i.ad = load i64, ptr %i.k, align 8, !alias.scope !12771, !noalias !12767, !noundef !24
  %i.ae = or i64 %i.ac, %i.ad                     ; 2 uses
  %i.af = xor i64 %i.ae, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.ag = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.ah = add i64 %i.af, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.aj = xor i64 %i.ai, %i.ag                    ; 3 uses
  %i.ak = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 16)
  %i.al = xor i64 %i.ak, %i.ah                    ; 3 uses
  %i.am = call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  %i.an = add i64 %i.ah, %i.aj                    ; 3 uses
  %i.ao = add i64 %i.al, %i.am                    ; 2 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 17)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 21)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = xor i64 %i.ao, %i.ae
  %i.av = xor i64 %i.at, 255
  %i.aw = add i64 %i.au, %i.aq                    ; 3 uses
  %i.ax = add i64 %i.as, %i.av                    ; 2 uses
  %i.ay = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.az = xor i64 %i.aw, %i.ay                    ; 3 uses
  %i.ba = call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 16)
  %i.bb = xor i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.bd = add i64 %i.az, %i.ax                    ; 3 uses
  %i.be = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 17)
  %i.bg = xor i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 21)
  %i.bi = xor i64 %i.bh, %i.be                    ; 3 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  %i.bk = add i64 %i.bg, %i.be                    ; 3 uses
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 13)
  %i.bn = xor i64 %i.bm, %i.bk                    ; 3 uses
  %i.bo = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bp = xor i64 %i.bo, %i.bl                    ; 3 uses
  %i.bq = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.br = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bs = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bt = call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 17)
  %i.bu = xor i64 %i.bt, %i.br                    ; 3 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 21)
  %i.bw = xor i64 %i.bv, %i.bs                    ; 3 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.by = add i64 %i.bu, %i.bs
  %i.bz = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.ca = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 13)
  %i.cb = xor i64 %i.ca, %i.by                    ; 3 uses
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 16)
  %i.cd = xor i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = add i64 %i.cb, %i.bz                    ; 3 uses
  %i.cf = call noundef i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 17)
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 21)
  %i.ch = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = xor i64 %i.cj, %i.ce                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12767
end_hunk_6
begin_hunk_7_@_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsjsY2yM364a4_11lance_tools:bb.a
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !13384

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.j, %._crit_edge.i.i, %bb.b
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.bp = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, i8 noundef 0)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13398 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.be, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.am, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.bb, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.aj, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %i.bq = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %bb.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i

bb.i:                                             ; preds = %.loopexit17.i.i
  %i.br = inttoptr i64 %.pre-phi.i.i to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val21.i.i = load ptr, ptr %i.bs, align 8, !noalias !13398, !nonnull !24, !noundef !24 ; 2 uses
  %i.bt = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !13398
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, !prof !29

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13398

.noexc22.i.i:                                     ; preds = %bb.j
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i, %bb.c, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i, %bb.f, %bb.i, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.i ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i ] ; 9 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools(ptr nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.k unwind label %bb.p, !noalias !13398

bb.k:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bv = icmp eq ptr %i.t, null
  br i1 %i.bv, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !13398, !noundef !24 ; 2 uses
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8, !noalias !13398
  %i.bz = icmp eq i64 %i.bx, 1
  br i1 %i.bz, label %bb.m, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  store atomic i64 0, ptr %i.ca release, align 8, !noalias !13398
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !13398, !noundef !24
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.n, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.t), !noalias !13398
  br label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit

bb.o:                                             ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.bp, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.bp ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !13399, !noundef !24 ; 2 uses
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  %i.ch = and i64 %i.cg, %2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.p:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools(ptr %storemerge.i.i) #41
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.q, !noalias !13398

bb.q:                                             ; preds = %bb.p, %.thread.loopexit.split-lp.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !13398
  unreachable

common.resume:                                    ; preds = %bb.ai, %.thread.loopexit.split-lp.i.i, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %i.fk, %bb.ay ], [ %i.dz, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40
  unreachable

_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13398
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !13405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %3, ptr %i.e, align 8, !noalias !13406
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %4, ptr %i.cj, align 8, !noalias !13406
  %i.ck = getelementptr i8, ptr %storemerge.i.i, i64 32 ; 2 uses
  %.val.i = load ptr, ptr %i.ck, align 8, !noalias !13406, !nonnull !24, !noundef !24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.cm = cmpxchg weak ptr %i.cl, i8 0, i8 1 acquire monotonic, align 1, !noalias !13405
  %i.cn = extractvalue { i8, i1 } %i.cm, 1
  br i1 %i.cn, label %.noexc, label %bb.t, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.co = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.cl, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.ai    ; 0 uses

.noexc:                                           ; preds = %bb.t, %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !13405, !noundef !24 ; 2 uses
  %i.cr = cmpxchg ptr %i.cl, i8 1, i8 0 release monotonic, align 1, !noalias !13405
  %i.cs = extractvalue { i8, i1 } %i.cr, 1
  br i1 %i.cs, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i, label %bb.u, !prof !26

bb.u:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.cl, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.ai

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.u, %.noexc
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i
  %i.ct = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 8 uses
  %i.cw = and i64 %i.ct, 3                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13406
  store i64 %i.cw, ptr %i.d, align 8, !noalias !13406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13406
  %i.cx = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %i.cx)
  store ptr %i.cv, ptr %i.c, align 8, !noalias !13406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13406
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cz = load i8, ptr %i.cy, align 8, !range !40, !alias.scope !13405, !noundef !24 ; 2 uses
  store i8 %i.cz, ptr %i.b, align 1, !noalias !13406
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = icmp eq i64 %i.cw, %i.da
  br i1 %i.db, label %bb.x, label %bb.w, !prof !26

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13406
  store ptr %i.e, ptr %i.a, align 8, !noalias !13406
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !13406
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.dc, align 8, !noalias !13406
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtB6_5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !13406
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCskTBvlRM5ILY_4moka6common11CacheRegionjECsDbzj4lZ5l5_11goosefs_sdk(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @42, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #40
          to label %.noexc10 unwind label %bb.ai

.noexc10:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13406
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !13405, !noundef !24 ; 3 uses
  %.not9.i = icmp ne ptr %i.de, null              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !13405
  %i.dh = icmp eq ptr %i.dg, %i.cv
  %or.cond.i = select i1 %.not9.i, i1 true, i1 %i.dh
  br i1 %or.cond.i, label %bb.y, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !13407)
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !13408, !noundef !24 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv
  br i1 %i.dk, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load i64, ptr %5, align 8, !range !28, !alias.scope !13408, !noundef !24
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dn = trunc nuw i64 %i.dl to i1
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.dm, align 8, !alias.scope !13408, !noundef !24 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cv
  br i1 %i.dp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !13408, !noundef !24 ; 5 uses
  br i1 %.not9.i, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !13408, !noundef !24
  store i64 1, ptr %5, align 8, !alias.scope !13408
  store ptr %i.dt, ptr %i.dm, align 8, !alias.scope !13408
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %cond.i.i = icmp eq ptr %i.dr, null
  br i1 %cond.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i, label %.thread.i.i

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.dr, ptr %i.df, align 8, !alias.scope !13408
  %.not14.i.i = icmp eq ptr %i.dr, null
  br i1 %.not14.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i, label %bb.af

.thread.i.i:                                      ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dr, ptr %i.du, align 8, !noalias !13408
  br label %bb.af

bb.af:                                            ; preds = %.thread.i.i, %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.de, ptr %i.dv, align 8, !noalias !13408
  store ptr %i.dj, ptr %i.dd, align 8, !noalias !13408
  store ptr null, ptr %i.dq, align 8, !noalias !13408
  %.not15.i.i8 = icmp eq ptr %i.dj, null
  br i1 %.not15.i.i8, label %.invoke, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.cv, ptr %i.dw, align 8, !noalias !13408
  store ptr %i.cv, ptr %i.di, align 8, !alias.scope !13408
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13406
  br label %bb.aj

bb.ah:                                            ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !noundef !24 ; 7 uses
  %.not3 = icmp eq ptr %i.dy, null
  br i1 %.not3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.ba

bb.ai:                                            ; preds = %.invoke, %bb.am, %bb.al, %bb.w, %bb.u, %bb.t
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %storemerge.i.i) #41
          to label %common.resume unwind label %bb.az

bb.aj:                                            ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !13409)
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !13409, !nonnull !24, !noundef !24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 52
  %i.ed = load atomic i16, ptr %i.ec monotonic, align 2, !noalias !13409
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 54
  %i.ef = load atomic i16, ptr %i.ee monotonic, align 2, !noalias !13409
  %.not24 = icmp eq i16 %i.ed, %i.ef
  fence acquire
  br i1 %.not24, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !13410)
  %.val.i12 = load ptr, ptr %i.ck, align 8, !noalias !13410, !nonnull !24, !noundef !24 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i12, i64 8 ; 4 uses
  %i.eh = cmpxchg weak ptr %i.eg, i8 0, i8 1 acquire monotonic, align 1, !noalias !13410
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %.noexc20, label %bb.al, !prof !26

bb.al:                                            ; preds = %bb.ak
  %i.ej = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eg, i64 undef, i32 noundef -1)
          to label %.noexc20 unwind label %bb.ai  ; 0 uses

.noexc20:                                         ; preds = %bb.al, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i12, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !13410, !noundef !24 ; 8 uses
  %i.em = cmpxchg ptr %i.eg, i8 1, i8 0 release monotonic, align 1, !noalias !13410
  %i.en = extractvalue { i8, i1 } %i.em, 1
  br i1 %i.en, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i, label %bb.am, !prof !26

bb.am:                                            ; preds = %.noexc20
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.ai

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.am, %.noexc20
  %.not.i13 = icmp eq ptr %i.el, null
  br i1 %.not.i13, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %bb.an

bb.an:                                            ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !13410, !noundef !24 ; 3 uses
  %.not2.i = icmp ne ptr %i.ep, null              ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !13410
  %i.es = icmp eq ptr %i.er, %i.el
  %or.cond.i14 = select i1 %.not2.i, i1 true, i1 %i.es
  br i1 %or.cond.i14, label %bb.ao, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !13411)
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !13412, !noundef !24 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, %i.el
  br i1 %i.ev, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %6, align 8, !range !28, !alias.scope !13412, !noundef !24
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ey = trunc nuw i64 %i.ew to i1
  br i1 %i.ey, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ez = load ptr, ptr %i.ex, align 8, !alias.scope !13412, !noundef !24 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.el
  br i1 %i.fa, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !13412, !noundef !24 ; 5 uses
  br i1 %.not2.i, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !13412, !noundef !24
  store i64 1, ptr %6, align 8, !alias.scope !13412
  store ptr %i.fe, ptr %i.ex, align 8, !alias.scope !13412
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %cond.i.i18 = icmp eq ptr %i.fc, null
  br i1 %cond.i.i18, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %.thread.i.i19

bb.au:                                            ; preds = %bb.ar
  store ptr %i.fc, ptr %i.eq, align 8, !alias.scope !13412
  %.not14.i.i16 = icmp eq ptr %i.fc, null
  br i1 %.not14.i.i16, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %bb.av

.thread.i.i19:                                    ; preds = %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !noalias !13412
  br label %bb.av

bb.av:                                            ; preds = %.thread.i.i19, %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ep, ptr %i.fg, align 8, !noalias !13412
  store ptr %i.eu, ptr %i.eo, align 8, !noalias !13412
  store ptr null, ptr %i.fb, align 8, !noalias !13412
  %.not15.i.i17 = icmp eq ptr %i.eu, null
  br i1 %.not15.i.i17, label %.invoke, label %bb.aw, !prof !29

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.el, ptr %i.fh, align 8, !noalias !13412
  store ptr %i.el, ptr %i.et, align 8, !alias.scope !13412
  br label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

.invoke:                                          ; preds = %bb.af, %bb.av
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40
          to label %.cont unwind label %bb.ai

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.aw, %bb.au, %bb.at, %bb.ao, %bb.an, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i, %bb.aj
  %i.fi = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.ax:                                            ; preds = %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.ax
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.ba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, %bb.ah
  ret void

bb.az:                                            ; preds = %bb.ai
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ba:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !13413)
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !13413, !noundef !24 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, %i.dy
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load i64, ptr %5, align 8, !range !28, !alias.scope !13413, !noundef !24
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fr = trunc nuw i64 %i.fp to i1
  br i1 %i.fr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fs = load ptr, ptr %i.fq, align 8, !alias.scope !13413, !noundef !24 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dy
  br i1 %i.ft, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc, %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !13413, !noundef !24 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !13413, !noundef !24 ; 5 uses
  %.not12.i = icmp eq ptr %i.fv, null
  br i1 %.not12.i, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !13413, !noundef !24
  store i64 1, ptr %5, align 8, !alias.scope !13413
  store ptr %i.fz, ptr %i.fq, align 8, !alias.scope !13413
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  %cond.i = icmp eq ptr %i.fx, null
  br i1 %cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %.thread.i

bb.bg:                                            ; preds = %bb.bd
  store ptr %i.fx, ptr %i.dx, align 8, !alias.scope !13413
  %.not14.i = icmp eq ptr %i.fx, null
  br i1 %.not14.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.bh

.thread.i:                                        ; preds = %bb.bf
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fx, ptr %i.ga, align 8, !noalias !13413
  br label %bb.bh

bb.bh:                                            ; preds = %.thread.i, %bb.bg
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %i.fv, ptr %i.gb, align 8, !noalias !13413
  store ptr %i.fn, ptr %i.fu, align 8, !noalias !13413
  store ptr null, ptr %i.fw, align 8, !noalias !13413
  %.not15.i = icmp eq ptr %i.fn, null
  br i1 %.not15.i, label %bb.bj, label %bb.bi, !prof !29

bb.bi:                                            ; preds = %bb.bh
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.dy, ptr %i.gc, align 8, !noalias !13413
  store ptr %i.dy, ptr %i.fm, align 8, !alias.scope !13413
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.bj:                                            ; preds = %bb.bh
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !13413
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_woCsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 8, !noundef !24 ; 2 uses
  %i.d = icmp eq i32 %i.c, 64
  %i.e = and i32 %i.c, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 %2, %i.f
  %.sroa.02.0.i = select i1 %i.d, i64 0, i64 %i.g ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !noundef !24 ; 2 uses
  %i.j = icmp ult i64 %.sroa.02.0.i, %i.i
  br i1 %i.j, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !24, !noundef !24
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.02.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13430
  %i.o = tail call fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsjsY2yM364a4_11lance_tools(), !noalias !13430 ; 7 uses
  store ptr %i.o, ptr %i.a, align 8, !noalias !13430
  %i.p = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getCsjsY2yM364a4_11lance_tools(ptr nonnull %i.m)
          to label %.preheader.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13430 ; 3 uses

.preheader.i.i:                                   ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !13431, !noundef !24 ; 2 uses
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = and i64 %i.s, %2                         ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i43.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.lr.ph.i.i

._crit_edge.i.peel.i.lr.ph.i.i:                   ; preds = %.preheader.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.u, align 8              ; 4 uses
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !24 ; 2 uses
  %i.z = load i64, ptr %i.w, align 8              ; 2 uses
  br label %._crit_edge.i.peel.i.i.i

.thread.loopexit.split-lp.i.i:                    ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.p ], [ %lpad.loopexit.split-lp115, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECsjsY2yM364a4_11lance_tools(ptr %i.o) #41
          to label %common.resume unwind label %bb.q, !noalias !13430

._crit_edge.i.peel.i.i.i:                         ; preds = %bb.o, %._crit_edge.i.peel.i.lr.ph.i.i
  %i.aa = phi i64 [ %i.t, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ab = phi i64 [ %i.s, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.sroa.07.044.i.i = phi ptr [ %i.p, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %spec.select.i.i, %bb.o ] ; 4 uses
  %i.ac = load ptr, ptr %.sroa.07.044.i.i, align 8, !noalias !13431, !nonnull !24, !noundef !24 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !13432 ; 3 uses
  %i.af = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %.loopexit.i.i

bb.c:                                             ; preds = %._crit_edge.i.peel.i.i.i
  %i.ah = and i64 %i.ae, -8                       ; 3 uses
  %.not15.peel.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not15.peel.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = inttoptr i64 %i.ah to ptr
  %.val17.peel.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !13431, !nonnull !24, !noundef !24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13433)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13433, !noalias !13431, !noundef !24
  %i.al = icmp eq i64 %i.ak, %i.x
  br i1 %i.al, label %bb.e, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !13433, !noalias !13431, !nonnull !24, !noundef !24
  %bcmp.i.i.i.peel.i.i.i = call i32 @bcmp(ptr nonnull %i.an, ptr nonnull %i.y, i64 %i.x), !noalias !13434
  %i.ao = icmp eq i32 %bcmp.i.i.i.peel.i.i.i, 0
  br i1 %i.ao, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !13433, !noalias !13431, !noundef !24
  %i.ar = icmp eq i64 %i.aq, %i.z
  br i1 %i.ar, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, %bb.e, %bb.d
  %.not.i.i38.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i38.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %.preheader.i.i
  %.lcssa.i.i = phi i64 [ %i.t, %.preheader.i.i ], [ %i.cc, %bb.o ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
          to label %.noexc.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13430

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i
  %.sroa.17.0.i39.i.i = phi i64 [ %i.as, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i ]
  %i.as = add nuw i64 %.sroa.17.0.i39.i.i, 1      ; 3 uses
  %i.at = add i64 %i.as, %i.aa
  %i.au = and i64 %i.at, %i.ab
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.au
  %i.aw = load atomic i64, ptr %i.av acquire, align 8, !noalias !13432 ; 3 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %.loopexit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = and i64 %i.aw, -8                       ; 3 uses
  %.not15.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not15.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = inttoptr i64 %i.az to ptr
  %.val17.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !13431, !nonnull !24, !noundef !24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13435)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !13435, !noalias !13431, !noundef !24
  %i.bd = icmp eq i64 %i.bc, %i.x
  br i1 %i.bd, label %bb.h, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !13435, !noalias !13431, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.y, i64 %i.x), !noalias !13436
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !13435, !noalias !13431, !noundef !24
  %i.bj = icmp eq i64 %i.bi, %i.z
  br i1 %i.bj, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.h, %bb.g
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.ab
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !13427

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.j, %._crit_edge.i.i, %bb.b
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.bk = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i8 noundef 0)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13430 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.az, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.ah, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.aw, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.ae, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %i.bl = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i

bb.i:                                             ; preds = %.loopexit17.i.i
  %i.bm = inttoptr i64 %.pre-phi.i.i to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val21.i.i = load ptr, ptr %i.bn, align 8, !noalias !13430, !nonnull !24, !noundef !24 ; 2 uses
  %i.bo = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !13430
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, !prof !29

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13430

.noexc22.i.i:                                     ; preds = %bb.j
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i, %bb.c, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i, %bb.f, %bb.i, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.i ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i ] ; 9 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools(ptr nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.k unwind label %bb.p, !noalias !13430

bb.k:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bq = icmp eq ptr %i.o, null
  br i1 %i.bq, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 2072 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noalias !13430, !noundef !24 ; 2 uses
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !noalias !13430
  %i.bu = icmp eq i64 %i.bs, 1
  br i1 %i.bu, label %bb.m, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  store atomic i64 0, ptr %i.bv release, align 8, !noalias !13430
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 2080
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !13430, !noundef !24
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.n, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.o), !noalias !13430
  br label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit

bb.o:                                             ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.bk, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.bk ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !13431, !noundef !24 ; 2 uses
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  %i.cc = and i64 %i.cb, %2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.p:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools(ptr %storemerge.i.i) #41
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.q, !noalias !13430

bb.q:                                             ; preds = %bb.p, %.thread.loopexit.split-lp.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !13430
  unreachable

common.resume:                                    ; preds = %bb.u, %.thread.loopexit.split-lp.i.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %i.cj, %bb.y ], [ %i.cg, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40
  unreachable

_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13430
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(192) %3, ptr nonnull %storemerge.i.i)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsjsY2yM364a4_11lance_tools.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noundef !24 ; 7 uses
  %.not3 = icmp eq ptr %i.cf, null
  br i1 %.not3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.aa

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %storemerge.i.i) #41
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_woNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(192) %3, ptr nonnull %storemerge.i.i)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.ch = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.x
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.ai, %bb.ag, %bb.af, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.w, %bb.t
  ret void

bb.z:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.aa:                                            ; preds = %bb.t
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13437)
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !13437, !noundef !24 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = load i64, ptr %4, align 8, !range !28, !alias.scope !13437, !noundef !24
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.cq = trunc nuw i64 %i.co to i1
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.cp, align 8, !alias.scope !13437, !noundef !24 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !13437, !noundef !24 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !13437, !noundef !24 ; 5 uses
  %.not12.i = icmp eq ptr %i.cu, null
  br i1 %.not12.i, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !13437, !noundef !24
  store i64 1, ptr %4, align 8, !alias.scope !13437
  store ptr %i.cy, ptr %i.cp, align 8, !alias.scope !13437
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %cond.i = icmp eq ptr %i.cw, null
  br i1 %cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %.thread.i

bb.ag:                                            ; preds = %bb.ad
  store ptr %i.cw, ptr %i.ce, align 8, !alias.scope !13437
  %.not14.i = icmp eq ptr %i.cw, null
  br i1 %.not14.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit, label %bb.ah

.thread.i:                                        ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cz, align 8, !noalias !13437
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i, %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cu, ptr %i.da, align 8, !noalias !13437
  store ptr %i.cm, ptr %i.ct, align 8, !noalias !13437
  store ptr null, ptr %i.cv, align 8, !noalias !13437
  %.not15.i = icmp eq ptr %i.cm, null
  br i1 %.not15.i, label %bb.aj, label %bb.ai, !prof !29

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cf, ptr %i.db, align 8, !noalias !13437
  store ptr %i.cf, ptr %i.cl, align 8, !alias.scope !13437
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40, !noalias !13437
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE25handle_remove_with_dequesCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %3, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 32         ; 3 uses
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %.noexc, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !noundef !24
  store i32 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !24 ; 7 uses
  store ptr null, ptr %i.h, align 8
  %i.j = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.c, !prof !26

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.i, %bb.c, %bb.b, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE20unlink_ao_from_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.k ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %4) #41
          to label %common.resume unwind label %bb.v

bb.e:                                             ; preds = %.noexc, %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.i, align 8, !range !25, !noundef !24
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.01.0.i = phi i32 [ %i.p, %bb.g ], [ 0, %bb.f ]
  %.not.i = icmp eq i32 %.sroa.01.0.i, %i.g
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE12unlink_timerCsjsY2yM364a4_11lance_tools(ptr readonly %.0.val, i64 %.8.val, ptr noundef nonnull %i.i)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %bb.i
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc12
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #36
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.h, %.noexc12, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load atomic i8, ptr %i.u acquire, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val8, i64 8 ; 4 uses
  %i.y = cmpxchg weak ptr %i.x, i8 0, i8 1 acquire monotonic, align 1
  %i.z = extractvalue { i8, i1 } %i.y, 1
  br i1 %i.z, label %.noexc14, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.aa = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.x, i64 undef, i32 noundef -1)
          to label %.noexc14 unwind label %bb.d   ; 0 uses

.noexc14:                                         ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = cmpxchg ptr %i.x, i8 1, i8 0 release monotonic, align 1
  %i.ad = extractvalue { i8, i1 } %i.ac, 1
  br i1 %i.ad, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit, label %bb.o, !prof !26

bb.o:                                             ; preds = %.noexc14
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.x, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit unwind label %bb.d

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit: ; preds = %.noexc14, %bb.o, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE20unlink_ao_from_dequeNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit
  %i.ae = atomicrmw add ptr %4, i32 -1 release, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.p:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %4)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.q

common.resume:                                    ; preds = %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i
  ret void

bb.r:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store atomic i8 0, ptr %i.ai release, align 1
  %i.aj = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load atomic i32, ptr %i.ak acquire, align 4
  %i.am = load i64, ptr %5, align 8, !noundef !24
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !24
  %i.aq = zext i32 %i.al to i64
  %i.ar = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.aq)
  store i64 %i.ar, ptr %i.ao, align 8
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !13441, !nonnull !24, !noundef !24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.at = cmpxchg weak ptr %i.as, i8 0, i8 1 acquire monotonic, align 1, !noalias !13441
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %.noexc18, label %bb.s, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.as, i64 undef, i32 noundef -1)
          to label %.noexc18 unwind label %bb.d   ; 0 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !13441, !noundef !24 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE25handle_remove_with_dequesCsjsY2yM364a4_11lance_tools:bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE33handle_remove_without_timer_wheelCsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull %1, i16 noundef range(i16 0, 2) %2, i16 %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load atomic i8, ptr %i.c acquire, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.b:                                             ; preds = %.invoke, %bb.l, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %1) #41
          to label %common.resume unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 32
  %.val5 = load ptr, ptr %i.g, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 4 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %.noexc, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit, label %bb.e, !prof !26

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit unwind label %bb.b

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit: ; preds = %.noexc, %bb.e, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit
  %i.o = trunc nuw i16 %2 to i1
  br i1 %i.o, label %bb.m, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store atomic i8 0, ptr %i.q release, align 1
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load atomic i32, ptr %i.s acquire, align 4
  %i.u = load i64, ptr %4, align 8, !noundef !24
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !24
  %i.y = zext i32 %i.t to i64
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.y)
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !13444, !nonnull !24, !noundef !24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.ac = cmpxchg weak ptr %i.ab, i8 0, i8 1 acquire monotonic, align 1, !noalias !13444
  %i.ad = extractvalue { i8, i1 } %i.ac, 1
  br i1 %i.ad, label %.noexc9, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ab, i64 undef, i32 noundef -1)
          to label %.noexc9 unwind label %bb.b    ; 0 uses

.noexc9:                                          ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !13444, !noundef !24 ; 3 uses
  store ptr null, ptr %i.af, align 8, !noalias !13444
  %i.ah = cmpxchg ptr %i.ab, i8 1, i8 0 release monotonic, align 1, !noalias !13444
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %.noexc9
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.b

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.h, %.noexc9
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = and i64 %i.aj, 3
  %i.al = invoke noundef i8 @_RNvXNtCskTBvlRM5ILY_4moka6commonNtB2_11CacheRegionINtNtCscI6d9CVNmLh_4core7convert4FromjE4from(i64 noundef %i.ak)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %bb.i
  switch i8 %i.al, label %default.unreachable [
    i8 0, label %.invoke
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ], !prof !27

default.unreachable:                              ; preds = %.noexc11
  unreachable

bb.j:                                             ; preds = %.noexc11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.invoke

bb.k:                                             ; preds = %.noexc11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.invoke

.invoke:                                          ; preds = %.noexc11, %bb.j, %bb.k
  %i.ao = phi ptr [ @330, %bb.k ], [ @329, %bb.j ], [ @328, %.noexc11 ]
  %i.ap = phi i64 [ 9, %bb.k ], [ 9, %bb.j ], [ 6, %.noexc11 ]
  %i.aq = phi ptr [ %i.an, %bb.k ], [ %i.am, %bb.j ], [ %0, %.noexc11 ]
  invoke fastcc void @_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE25unlink_node_ao_from_dequeCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap, ptr noalias noundef align 8 dereferenceable(48) %i.aq, ptr noundef nonnull %i.ag)
          to label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit unwind label %bb.b

bb.l:                                             ; preds = %.noexc11
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @331) #40
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %bb.l
  unreachable

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit: ; preds = %.invoke, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsjsY2yM364a4_11lance_tools.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_woNtB1a_16CachedReaderDataECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(48) %i.ar, ptr nonnull %1)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit unwind label %bb.b

bb.m:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit
  %i.as = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 54 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.au = load atomic i16, ptr %i.at acquire, align 2 ; 3 uses
  %i.av = icmp uge i16 %i.au, %3
  %i.aw = sub i16 %3, %i.au
  %i.ax = icmp slt i16 %i.aw, 0
  %or.cond.i = or i1 %i.av, %i.ax
  br i1 %or.cond.i, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = cmpxchg weak ptr %i.at, i16 %i.au, i16 %3 acq_rel acquire, align 2
  %i.az = extractvalue { i16, i1 } %i.ay, 1
  br i1 %i.az, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit, label %bb.n

_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.o, %bb.n, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsjsY2yM364a4_11lance_tools.exit
  %i.ba = atomicrmw add ptr %1, i32 -1 release, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

bb.p:                                             ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.q

common.resume:                                    ; preds = %bb.b, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #36
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i
  ret void

bb.r:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admitCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(272) %0, i64 %.0.val, i32 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [272 x i8], align 8               ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 3 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !13480
  store i64 0, ptr %i.c, align 8, !alias.scope !13480
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %.not182 = icmp eq i64 %.0.val, 0
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.086 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 3 uses
  %.sroa.06.085 = phi ptr [ %i.i, %.lr.ph ], [ %i.x, %.backedge ] ; 14 uses
  %i.t = load i32, ptr %i.e, align 8, !noundef !24
  %i.u = icmp ugt i32 %i.t, %.8.val
  %i.v = icmp ugt i64 %.sroa.0.086, 5
  %or.cond.not3 = select i1 %i.u, i1 true, i1 %i.v
  %.not11 = icmp eq ptr %.sroa.06.085, null
  %or.cond15 = or i1 %.not11, %or.cond.not3
  br i1 %or.cond15, label %.thread, label %bb.c

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.loopexit.split-lp.i.i, %bb.be, %.body28
  %.pn = phi { ptr, i32 } [ %eh.lpad-body29, %.body28 ], [ %i.fy, %bb.be ], [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(272) %i.c) #41
          to label %bb.bg unwind label %bb.bf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.o, %bb.d, %.invoke, %bb.ag
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !24
  call void @llvm.experimental.noalias.scope.decl(metadata !13481)
  %i.y = load ptr, ptr %.sroa.06.085, align 8, !alias.scope !13481, !nonnull !24, !noundef !24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.aa = load atomic i16, ptr %i.z monotonic, align 2, !noalias !13481
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.ac = load atomic i16, ptr %i.ab monotonic, align 2, !noalias !13481
  %.not = icmp eq i16 %i.aa, %i.ac
  fence acquire
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %.sroa.06.085, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ah)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  %i.aj = load ptr, ptr %i.j, align 8, !alias.scope !13482, !noundef !24 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.06.085
  br i1 %i.ak, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.g, align 8, !range !28, !alias.scope !13482, !noundef !24
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.k, align 8, !alias.scope !13482, !noundef !24 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %.sroa.06.085
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !13482, !noundef !24 ; 3 uses
  %i.ar = load ptr, ptr %i.w, align 8, !noalias !13482, !noundef !24 ; 5 uses
  %.not12.i = icmp eq ptr %i.aq, null
  br i1 %.not12.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !13482, !noundef !24
  store i64 1, ptr %i.g, align 8, !alias.scope !13482
  store ptr %i.at, ptr %i.k, align 8, !alias.scope !13482
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %cond.i = icmp eq ptr %i.ar, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %.thread.i

bb.k:                                             ; preds = %bb.h
  store ptr %i.ar, ptr %i.h, align 8, !alias.scope !13482
  %.not14.i = icmp eq ptr %i.ar, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit, label %bb.l

.thread.i:                                        ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.au, align 8, !noalias !13482
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.aq, ptr %i.av, align 8, !noalias !13482
  store ptr %i.aj, ptr %i.ap, align 8, !noalias !13482
  store ptr null, ptr %i.w, align 8, !noalias !13482
  %.not15.i = icmp eq ptr %i.aj, null
  br i1 %.not15.i, label %.invoke, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.06.085, ptr %i.aw, align 8, !noalias !13482
  store ptr %.sroa.06.085, ptr %i.j, align 8, !alias.scope !13482
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit

bb.n:                                             ; preds = %bb.d
  %i.ax = extractvalue { i64, i64 } %i.ai, 0
  %i.ay = extractvalue { i64, i64 } %i.ai, 1
  %i.az = load i32, ptr %i.l, align 8, !noundef !24 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 64
  %i.bb = and i32 %i.az, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ag, %i.bc
  %.sroa.02.0.i = select i1 %i.ba, i64 0, i64 %i.bd ; 3 uses
  %i.be = load i64, ptr %i.m, align 8, !noundef !24 ; 2 uses
  %i.bf = icmp ult i64 %.sroa.02.0.i, %i.be
  br i1 %i.bf, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %1, align 8, !nonnull !24, !noundef !24
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.sroa.02.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13483
  %i.bi = invoke fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsjsY2yM364a4_11lance_tools()
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc18:                                         ; preds = %bb.o
  store ptr %i.bi, ptr %i.a, align 8, !noalias !13483
  %i.bj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getCsjsY2yM364a4_11lance_tools(ptr nonnull %i.bh)
          to label %.preheader.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13483 ; 3 uses

.preheader.i.i:                                   ; preds = %.noexc18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !13484, !noundef !24 ; 2 uses
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  %i.bn = and i64 %i.bm, %i.ag                    ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i43.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

.thread.loopexit.split-lp.i.i:                    ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.ae ], [ %lpad.loopexit.split-lp336, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECsjsY2yM364a4_11lance_tools(ptr %i.bi) #41
          to label %.body unwind label %bb.af, !noalias !13483

._crit_edge.i.peel.i.i.i:                         ; preds = %.preheader.i.i, %bb.ad
  %i.bo = phi i64 [ %i.eg, %bb.ad ], [ %i.bn, %.preheader.i.i ] ; 2 uses
  %i.bp = phi i64 [ %i.ef, %bb.ad ], [ %i.bm, %.preheader.i.i ] ; 3 uses
  %.sroa.07.044.i.i = phi ptr [ %spec.select.i.i, %bb.ad ], [ %i.bj, %.preheader.i.i ] ; 4 uses
  %i.bq = load ptr, ptr %.sroa.07.044.i.i, align 8, !noalias !13484, !nonnull !24, !noundef !24 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !13485 ; 4 uses
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %._crit_edge.i.peel.i.i.i
  %i.bv = and i64 %i.bs, -8                       ; 4 uses
  %.not15.peel.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not15.peel.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = inttoptr i64 %i.bv to ptr
  %.val17.peel.i.i.i = load ptr, ptr %i.bw, align 8, !noalias !13484, !nonnull !24, !noundef !24 ; 4 uses
  %i.bx = load ptr, ptr %i.ae, align 8, !noalias !13484, !nonnull !24, !noundef !24 ; 4 uses
  %i.by = icmp eq ptr %.val17.peel.i.i.i, %i.bx
  br i1 %i.by, label %.loopexit17.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !13486)
  call void @llvm.experimental.noalias.scope.decl(metadata !13487)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !13486, !noalias !13484, !noundef !24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !13487, !noalias !13484, !noundef !24
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !13487, !noalias !13484, !nonnull !24, !noundef !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !13486, !noalias !13484, !nonnull !24, !noundef !24
  %bcmp.i.i.i.peel.i.i.i = call i32 @bcmp(ptr nonnull %i.ch, ptr nonnull %i.cf, i64 %i.ca), !noalias !13488
  %i.ci = icmp eq i32 %bcmp.i.i.i.peel.i.i.i, 0
  br i1 %i.ci, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i: ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !13486, !noalias !13484, !noundef !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !13487, !noalias !13484, !noundef !24
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, %bb.s, %bb.r
  %.not.i.i38.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i38.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i:                                  ; preds = %.preheader.i.i, %bb.ad
  %.lcssa.i.i = phi i64 [ %i.eg, %bb.ad ], [ %i.bn, %.preheader.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
          to label %.noexc.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13483

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i
  %.sroa.17.0.i39.i.i = phi i64 [ %i.co, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i ]
  %i.co = add nuw i64 %.sroa.17.0.i39.i.i, 1      ; 3 uses
  %i.cp = add i64 %i.co, %i.bo
  %i.cq = and i64 %i.cp, %i.bp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cq
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !noalias !13485 ; 4 uses
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %.loopexit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cv = and i64 %i.cs, -8                       ; 4 uses
  %.not15.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not15.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = inttoptr i64 %i.cv to ptr
  %.val17.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !13484, !nonnull !24, !noundef !24 ; 4 uses
  %i.cx = load ptr, ptr %i.ae, align 8, !noalias !13484, !nonnull !24, !noundef !24 ; 4 uses
  %i.cy = icmp eq ptr %.val17.i.i.i, %i.cx
  br i1 %i.cy, label %.loopexit17.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !13489)
  call void @llvm.experimental.noalias.scope.decl(metadata !13490)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !13489, !noalias !13484, !noundef !24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !13490, !noalias !13484, !noundef !24
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.w, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !13490, !noalias !13484, !nonnull !24, !noundef !24
  %i.dg = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !13489, !noalias !13484, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dh, ptr nonnull %i.df, i64 %i.da), !noalias !13491
  %i.di = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.di, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !13489, !noalias !13484, !noundef !24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !13490, !noalias !13484, !noundef !24
  %i.dn = icmp eq i64 %i.dk, %i.dm
  br i1 %i.dn, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.w, %bb.v
  %exitcond.not.i.i = icmp eq i64 %i.co, %i.bp
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !13464

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %.noexc18, %bb.y, %._crit_edge.i.i
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.do = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i8 noundef 0)
          to label %bb.ad unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13483 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i, %bb.q, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.u
  %.pre-phi.i.i = phi i64 [ %i.cv, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.cv, %bb.u ], [ %i.bv, %bb.q ], [ %i.bv, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.cs, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.cs, %bb.u ], [ %i.bs, %bb.q ], [ %i.bs, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.peel.i.i.i ]
  %i.dp = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %bb.x, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i

bb.x:                                             ; preds = %.loopexit17.i.i
  %i.dq = inttoptr i64 %.pre-phi.i.i to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val21.i.i = load ptr, ptr %i.dr, align 8, !noalias !13483, !nonnull !24, !noundef !24 ; 2 uses
  %i.ds = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !13483
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i, !prof !29

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13483

.noexc22.i.i:                                     ; preds = %bb.y
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i, %bb.p, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i, %bb.t, %bb.x, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.x ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i ], [ null, %bb.t ], [ null, %bb.p ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i ] ; 8 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools(ptr nonnull %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.z unwind label %bb.ae, !noalias !13483

bb.z:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %i.du = icmp eq ptr %i.bi, null
  br i1 %i.du, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2072 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !13483, !noundef !24 ; 2 uses
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr %i.dv, align 8, !noalias !13483
  %i.dy = icmp eq i64 %i.dw, 1
  br i1 %i.dy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 2176
  store atomic i64 0, ptr %i.dz release, align 8, !noalias !13483
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 2080
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !13483, !noundef !24
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ac, label %bb.ah, !prof !29

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bi)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.do, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.do ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !13484, !noundef !24 ; 2 uses
  %i.ef = add i64 %i.ee, -1                       ; 2 uses
  %i.eg = and i64 %i.ef, %i.ag                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.ae:                                            ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools(ptr %storemerge.i.i) #41
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.af, !noalias !13483

bb.af:                                            ; preds = %bb.ae, %.thread.loopexit.split-lp.i.i
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !13483
  unreachable

bb.ag:                                            ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13483
  %.not13 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not13, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !13492)
  %i.ei = load ptr, ptr %i.j, align 8, !alias.scope !13492, !noundef !24 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.06.085
  br i1 %i.ej, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load i64, ptr %i.g, align 8, !range !28, !alias.scope !13492, !noundef !24
  %i.el = trunc nuw i64 %i.ek to i1
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = load ptr, ptr %i.k, align 8, !alias.scope !13492, !noundef !24 ; 2 uses
  %i.en = icmp eq ptr %i.em, %.sroa.06.085
  br i1 %i.en, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !13492, !noundef !24 ; 3 uses
  %i.eq = load ptr, ptr %i.w, align 8, !noalias !13492, !noundef !24 ; 5 uses
  %.not12.i21 = icmp eq ptr %i.ep, null
  br i1 %.not12.i21, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !13492, !noundef !24
  store i64 1, ptr %i.g, align 8, !alias.scope !13492
  store ptr %i.es, ptr %i.k, align 8, !alias.scope !13492
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %cond.i22 = icmp eq ptr %i.eq, null
  br i1 %cond.i22, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27, label %.thread.i23

bb.ao:                                            ; preds = %bb.al
  store ptr %i.eq, ptr %i.h, align 8, !alias.scope !13492
  %.not14.i25 = icmp eq ptr %i.eq, null
  br i1 %.not14.i25, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27, label %bb.ap

.thread.i23:                                      ; preds = %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eq, ptr %i.et, align 8, !noalias !13492
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i23, %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.ep, ptr %i.eu, align 8, !noalias !13492
  store ptr %i.ei, ptr %i.eo, align 8, !noalias !13492
  store ptr null, ptr %i.w, align 8, !noalias !13492
  %.not15.i24 = icmp eq ptr %i.ei, null
  br i1 %.not15.i24, label %.invoke, label %bb.aq, !prof !29

bb.aq:                                            ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %.sroa.06.085, ptr %i.ev, align 8, !noalias !13492
  store ptr %.sroa.06.085, ptr %i.j, align 8, !alias.scope !13492
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27

.invoke:                                          ; preds = %bb.ap, %bb.l
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #40
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ar:                                            ; preds = %bb.as
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body28

.body28:                                          ; preds = %bb.aw, %bb.ax, %bb.ar
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.ew, %bb.ar ], [ %i.fl, %bb.ax ], [ %i.fl, %bb.aw ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr nonnull %storemerge.i.i) #41
          to label %.body unwind label %bb.bf

bb.as:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !24, !noundef !24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load atomic i32, ptr %i.ez acquire, align 4
  %i.fb = zext i32 %i.fa to i64
  %i.fc = load i64, ptr %i.d, align 8, !noundef !24
  %i.fd = add i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.d, align 8
  invoke void @_RNvMs8_NtNtCskTBvlRM5ILY_4moka6future10base_cacheNtB5_21EntrySizeAndFrequency13add_frequency(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef %i.ag)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = load ptr, ptr %i.ae, align 8, !nonnull !24, !noundef !24
  %i.ff = atomicrmw add ptr %i.fe, i64 1 monotonic, align 8
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fh = load ptr, ptr %i.ae, align 8, !nonnull !24, !noundef !24 ; 2 uses
  store ptr %i.fh, ptr %i.b, align 8
  store i64 %i.ag, ptr %i.o, align 8
  store i64 %i.ax, ptr %i.p, align 8
  store i64 %i.ay, ptr %i.q, align 8
  %i.fi = load i64, ptr %i.f, align 8, !alias.scope !13493, !noundef !24 ; 3 uses
  %i.fj = icmp ugt i64 %i.fi, 8
  br i1 %i.fj, label %bb.av, label %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fk = load ptr, ptr %i.s, align 8, !alias.scope !13493, !nonnull !24, !noundef !24
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !13494
  br label %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i

bb.aw:                                            ; preds = %bb.ay
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !13495
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.ax, label %.body28

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body28 unwind label %bb.ba

_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.au, %bb.av
  %i.fo = phi i64 [ %.pre.i, %bb.av ], [ %i.fi, %bb.au ] ; 2 uses
  %.sink11.i.i = phi ptr [ %i.fk, %bb.av ], [ %i.r, %bb.au ]
  %.sink10.i.i = phi ptr [ %i.r, %bb.av ], [ %i.f, %bb.au ]
  %.sink.i.i = phi i64 [ %i.fi, %bb.av ], [ 8, %bb.au ]
  %i.fp = icmp eq i64 %i.fo, %.sink.i.i
  br i1 %i.fp, label %bb.ay, label %bb.bc, !prof !29

bb.ay:                                            ; preds = %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i
  invoke fastcc void @_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E21reserve_one_uncheckedCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.c)
          to label %bb.az unwind label %bb.aw, !noalias !13496

bb.az:                                            ; preds = %bb.ay
  %i.fq = load ptr, ptr %i.s, align 8, !alias.scope !13494, !nonnull !24, !noundef !24
  %.pre6.i = load i64, ptr %i.r, align 8, !alias.scope !13494
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bb:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.az, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i
  %i.fs = phi i64 [ %.pre6.i, %bb.az ], [ %i.fo, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.fq, %bb.az ], [ %.sink11.i.i, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.az ], [ %.sink10.i.i, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsjsY2yM364a4_11lance_tools.exit.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %.sroa.04.0.i, i64 %i.fs
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.fu = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !13494, !noundef !24
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %.sroa.0.0.i, align 8, !alias.scope !13494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fw = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.bd, label %.backedge

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bd
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.bc, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit
  %.sroa.0.0.be = phi i64 [ %i.gd, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit ], [ %i.gc, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i ], [ 0, %bb.bc ]
  %i.fz = load i64, ptr %i.d, align 8, !noundef !24
  %i.ga = icmp ult i64 %i.fz, %.0.val
  br i1 %i.ga, label %bb.b, label %._crit_edge.loopexit

bb.bf:                                            ; preds = %.body28, %.body
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit27: ; preds = %bb.aq, %bb.ao, %bb.an, %bb.ai
  %i.gc = add nuw nsw i64 %.sroa.0.086, 1
  br label %.backedge

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.m, %bb.k, %bb.j, %bb.e
  %i.gd = add nuw nsw i64 %.sroa.0.086, 1
  br label %.backedge

bb.bg:                                            ; preds = %.body
  resume { ptr, i32 } %.pn

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i32, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ge = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.gf = icmp ugt i32 %.8.val, %i.ge
  br i1 %i.gf, label %bb.bh, label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(272) %i.c)
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %.thread, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE3newCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_8
begin_hunk_9_@_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE3newCsjsY2yM364a4_11lance_tools:bb.a
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsjsY2yM364a4_11lance_tools.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #40
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !13511
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEE9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE4nextCsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !24 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13527)
  %i.g = load i64, ptr %0, align 8, !range !28, !alias.scope !13527, !noundef !24
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !25, !alias.scope !13528, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !13527 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !13528 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13529)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !13530, !noalias !13531, !noundef !24
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !13532, !noundef !24 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !13532, !noundef !24
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !13532, !noundef !24
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !13532, !noundef !24
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !13527, !noundef !24
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !13527, !nonnull !24, !noundef !24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !13527, !noundef !24 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !13533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13534)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !13530, !noalias !13535, !noundef !24
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !13536, !noundef !24 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !13528
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @568) #40, !noalias !13535
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !13528
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !13528
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i, %bb.q, %bb.h, %bb.p
  %.ph = phi i64 [ %.val1, %bb.p ], [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !13528
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit19
  %1 = phi i64 [ %.val1, %.loopexit19 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !13526
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !13526
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !13526
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !28, !noundef !24
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !24
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !24 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !25, !alias.scope !13537, !noundef !24
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !13537
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !25, !alias.scope !13537, !noundef !24
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !13537
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !13537
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !13537, !noundef !24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !13537, !noundef !24 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !13537, !nonnull !24, !noundef !24
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit

_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10dying_nextCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13572)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !13573
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !13573 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13573 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13573 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !13573
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 408
  %i.g = load ptr, ptr %i.f, align 8, !noalias !13574, !nonnull !24, !noundef !24 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13543

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 408
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.m = load ptr, ptr %i.l, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 408
  %i.q = load ptr, ptr %i.p, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.s = load ptr, ptr %i.r, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  %i.u = load ptr, ptr %i.t, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.w = load ptr, ptr %i.v, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load ptr, ptr %i.x, align 8, !noalias !13574, !nonnull !24, !noundef !24 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !13576, !noundef !24 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i3.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #36, !noalias !13577
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !13576, !noundef !24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i3.i

_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #36, !noalias !13577
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13579)
  %i.aj = load i64, ptr %1, align 8, !range !28, !alias.scope !13580, !noundef !24
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !13580, !noundef !24 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i

._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !13581
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !13581
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !13580, !noundef !24 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !13580, !nonnull !24, !noundef !24 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 408
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !13582, !nonnull !24, !noundef !24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !13555

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !13580
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 408
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 408
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 408
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 408
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 408
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 408
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 408
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !13582, !nonnull !24, !noundef !24
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 408
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !13582, !nonnull !24, !noundef !24 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13583)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 406
  %i.bf = load i16, ptr %i.be, align 2, !noalias !13584, !noundef !24
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i, %bb.j
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i ] ; 4 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !13585, !noundef !24 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsjsY2yM364a4_11lance_tools.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 416
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !13586, !nonnull !24, !noundef !24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 408 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13570

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 408
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 408
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 408
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 408
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 408
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 408
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !13586, !nonnull !24, !noundef !24
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 408
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !13586, !nonnull !24, !noundef !24 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 408
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 404
  %i.cd = load i16, ptr %i.cc, align 4, !noalias !13585 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #36, !noalias !13587
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 406
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !13584, !noundef !24
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i37.i.i.i.i, i64 noundef 8) #36, !noalias !13587
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #40
          to label %.noexc.i.i unwind label %bb.l, !noalias !13588

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #40, !noalias !13589
  unreachable

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !13581
  store i64 0, ptr %i.an, align 8, !alias.scope !13581
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !13581
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit, %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @15, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs4XDKJNDGLq7_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs40Ppcsylqp4_17crossbeam_channel3errINtB2_9SendErrorINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1H_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @386, i64 noundef 13, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXNtCsjjbR6Jfsbqw_8lance_io5localNtB2_17LocalObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2_24UringCurrentThreadReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  ret i64 0
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop() unnamed_addr #15 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull %i.a)
  store ptr %i.c, ptr %i.b, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs0_NtCsjjbR6Jfsbqw_8lance_io5localNtB5_17LocalObjectReaderNtNtB7_6traits6Reader10block_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !noundef !24
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtCsjjbR6Jfsbqw_8lance_io5localNtB5_17LocalObjectReaderNtNtB7_6traits6Reader14io_parallelism(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i64 8
end_hunk_9
begin_hunk_10_@_RNvXs0_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataEEINtNtB7_4iter11ScanningGetBS_B1u_E4keysCsjsY2yM364a4_11lance_tools:bb.a
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13645

.noexc.i.i:                                       ; preds = %bb.u, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3a_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %.sroa.02.1.i.i.i = phi i64 [ %i.bc, %bb.u ], [ %.sroa.02.04.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3a_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.bh, %bb.u ], [ %.sroa.0.05.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3a_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !noalias !13645, !noundef !24
  %.not.i15.i.i = icmp ult i64 %i.bf, %i.aw
  br i1 %.not.i15.i.i, label %bb.r, label %_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2x_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #40
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13645

.noexc16.i.i:                                     ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bg = and i64 %i.bc, -8
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %.noexc.i.i

_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2x_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %.noexc.i.i, %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13645
  %i.bi = icmp eq ptr %i.k, null
  br i1 %i.bi, label %_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2x_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 2072 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !13645, !noundef !24 ; 2 uses
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !13645
  %i.bm = icmp eq i64 %i.bk, 1
  br i1 %i.bm, label %bb.w, label %_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 2176
  store atomic i64 0, ptr %i.bn release, align 8, !noalias !13645
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 2080
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !13645, !noundef !24
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i, !prof !29

bb.x:                                             ; preds = %bb.w
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.k), !noalias !13645
  br label %_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i

bb.y:                                             ; preds = %bb.q
  %.not.i.i = icmp eq ptr %i.au, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %.sroa.02.0.i15.i, ptr %i.au ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.02.0.val.i.i = load ptr, ptr %spec.select.i.i, align 8, !noalias !13645, !nonnull !24, !noundef !24 ; 2 uses
  %i.br = getelementptr i8, ptr %spec.select.i.i, i64 8
  %.sroa.02.0.val12.i.i = load i64, ptr %i.br, align 8, !noalias !13645, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13646
  store i64 0, ptr %i.b, align 8, !noalias !13646
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !13646
  store i64 0, ptr %i.n, align 8, !noalias !13646
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.02.0.val12.i.i, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.0.val.i.i, i64 %.idx.i.i.i
  %i.bt = icmp eq i64 %.sroa.02.0.val12.i.i, 0
  br i1 %i.bt, label %.loopexit11.thread.i.i, label %.lr.ph.i.i.preheader.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3a_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.c) #41, !noalias !13645
  br label %.body.loopexit.split-lp.i.i

bb.z:                                             ; preds = %.body.loopexit.split-lp.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !13645
  unreachable

_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.x, %bb.w, %bb.v, %_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2x_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataEE4keysBS_NvYBS_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit

_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataEE4keysBS_NvYBS_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %_RINvMNtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2w_16CachedReaderDataENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4keysB1e_NvYB1e_NtNtCscI6d9CVNmLh_4core5clone5Clone5cloneECsjsY2yM364a4_11lance_tools.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENCNCNvMsd_NtNtB1h_6future10base_cacheINtB3b_5InnerB2b_NtB2d_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ENtNtNtB9_6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13686)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !25, !alias.scope !13687, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvYINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_mapTINtNtCs40k4W9msRzi_5alloc4sync3ArcB14_EybEQNCNCNvMsd_NtNtBa_6future10base_cacheINtB3Q_5InnerB14_NtB16_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ECsjsY2yM364a4_11lance_tools.exit, label %.preheader.i.lr.ph.i.i

.preheader.i.lr.ph.i.i:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 43 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerEventNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyETINtNtCs40k4W9msRzi_5alloc4sync3ArcB2c_EybEQNCNCNvMsd_NtNtB1n_6future10base_cacheINtB3U_5InnerB2c_NtB2e_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i, %.preheader.i.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13688)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !range !25, !alias.scope !13689, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pre.i.i.i = load i8, ptr %i.i, align 8, !alias.scope !13689 ; 3 uses
  %.pre199.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !13689
  %.pre200.i.i.i = load i8, ptr %i.k, align 4, !range !25, !alias.scope !13689
  %.pre202.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !13689 ; 2 uses
  %.pre204.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !13689 ; 2 uses
  %i.n = trunc nuw i8 %.pre200.i.i.i to i1
  %i.o = trunc i64 %.pre199.i.i.i to i8
  %i.p = and i8 %.pre.i.i.i, %i.o                 ; 2 uses
  br i1 %i.n, label %bb.t, label %._crit_edge209.i.i.i

._crit_edge209.i.i.i:                             ; preds = %bb.c
  %.pre210.i.i.i = zext i8 %i.p to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !13689, !noundef !24 ; 5 uses
  %i.r = icmp ult i64 %i.q, 5
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.f, align 8, !alias.scope !13689, !noundef !24
  %i.t = load ptr, ptr %i.g, align 8, !alias.scope !13689, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.v)
  %i.x = load i64, ptr %1, align 8, !alias.scope !13689, !noundef !24
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @314, i64 %i.q
  %i.aa = load i64, ptr %i.z, align 8, !noalias !13690, !noundef !24
  %i.ab = and i64 %i.aa, 63                       ; 2 uses
  %i.ac = lshr i64 %i.y, %i.ab                    ; 3 uses
  %i.ad = lshr i64 %i.w, %i.ab                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.ac
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #40, !noalias !13690
  unreachable

.thread.i.i.i:                                    ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @315, i64 %i.q
  %i.af = load i64, ptr %i.ae, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.h, align 8, !alias.scope !13689
  %i.ah = and i64 %i.ag, %i.ac
  %i.ai = trunc i64 %i.ah to i8                   ; 4 uses
  store i8 %i.ai, ptr %i.i, align 8, !alias.scope !13689
  %reass.sub = sub nuw i64 %i.ad, %i.ac
  %i.aj = add i64 %reass.sub, 1
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %i.aj)
  %i.ak = trunc i64 %.sroa.0.0.i.i.i.i to i8
  %i.al = add i8 %i.ai, %i.ak
  store i8 %i.al, ptr %i.j, align 1, !alias.scope !13689
  store i8 0, ptr %i.d, align 1, !alias.scope !13689
  store i8 1, ptr %i.k, align 4, !alias.scope !13689
  br label %bb.t

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i, %._crit_edge209.i.i.i
  %i.am = phi i8 [ %.pre.i.i.i, %._crit_edge209.i.i.i ], [ %i.bs, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %.pre210.i.i.i, %._crit_edge209.i.i.i ], [ %i.bu, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.an = phi i64 [ %.pre204.pre.i.i.i, %._crit_edge209.i.i.i ], [ %.pre203.pre.i.i.i, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 5 uses
  %i.ao = phi ptr [ %.pre202.pre.i.i.i, %._crit_edge209.i.i.i ], [ %.pre201.pre.i.i.i, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val38.i.i.i = load i64, ptr %i.ap, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %.val38.i.i.i
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val37.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !13690, !nonnull !24, !noundef !24
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.val37.i.i.i, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.au = icmp ugt i64 %i.at, %.pre-phi.i.i.i
  br i1 %i.au, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %.val38.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #40, !noalias !13690
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.ar, align 8, !noalias !13690, !nonnull !24, !noundef !24
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %.pre-phi.i.i.i ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !13690, !noundef !24 ; 26 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 256) %.pre-phi.i.i.i, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316) #40, !noalias !13690
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.ay, align 8, !range !25, !noalias !13690, !noundef !24
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13691)
  %i.bb = load i64, ptr %i.aw, align 8, !range !28, !alias.scope !13691, !noalias !13690, !noundef !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = trunc nuw i64 %i.bb to i1
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !13691, !noalias !13690, !noundef !24 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !13692, !noundef !24
  store i64 1, ptr %i.aw, align 8, !alias.scope !13691, !noalias !13690
  store ptr %i.bh, ptr %i.bc, align 8, !alias.scope !13691, !noalias !13690
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !13692, !noundef !24 ; 3 uses
  store ptr %i.bj, ptr %i.ax, align 8, !alias.scope !13691, !noalias !13690
  %.not3.i.i.i.i.i = icmp eq ptr %i.bj, null
  %..i.i.i.i.i = select i1 %.not3.i.i.i.i.i, ptr %i.aw, ptr %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i, i64 32
  store ptr null, ptr %i.bk, align 8, !noalias !13690
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !13691, !noalias !13690, !noundef !24
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !13691, !noalias !13690
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !13692
  %i.bo = load i8, ptr %i.ay, align 8, !range !25, !noalias !13690, !noundef !24
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ah, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #40
          to label %bb.s unwind label %bb.r, !noalias !13690

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %common.resume.sink.split.i.i unwind label %.body9.i.i, !noalias !13690

.body9.i.i:                                       ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 40, i64 noundef 8) #36, !noalias !13690
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !13690
  unreachable

bb.s:                                             ; preds = %bb.q
  unreachable

common.resume.sink.split.i.i:                     ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.thread66.i.i.i, %bb.r
  %.lcssa257.lcssa.sink.i.i = phi ptr [ %i.ek, %.thread66.i.i.i ], [ %i.ay, %bb.r ], [ %i.ay, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ay, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ev, %.thread66.i.i.i ], [ %i.bq, %bb.r ], [ %lpad.loopexit.split-lp265, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa257.lcssa.sink.i.i, i64 noundef 40, i64 noundef 8) #36, !noalias !13693
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.bi, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %common.resume.sink.split.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.fs, %bb.bi ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.t:                                             ; preds = %.thread.i.i.i, %bb.c
  %i.bs = phi i8 [ %i.ai, %.thread.i.i.i ], [ %.pre.i.i.i, %bb.c ]
  %i.bt = phi i8 [ %i.ai, %.thread.i.i.i ], [ %i.p, %bb.c ]
  %.pre201.pre.i.i.i = phi ptr [ %i.t, %.thread.i.i.i ], [ %.pre202.pre.i.i.i, %bb.c ] ; 3 uses
  %.pre203.pre.i.i.i = phi i64 [ %i.q, %.thread.i.i.i ], [ %.pre204.pre.i.i.i, %bb.c ] ; 4 uses
  %i.bu = zext i8 %i.bt to i64                    ; 4 uses
  %i.bv = getelementptr i8, ptr %.pre201.pre.i.i.i, i64 8
  %.val40.i.i.i = load i64, ptr %i.bv, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.bw = icmp ult i64 %.pre203.pre.i.i.i, %.val40.i.i.i
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val39.i.i.i = load ptr, ptr %.pre201.pre.i.i.i, align 8, !noalias !13690, !nonnull !24, !noundef !24
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.val39.i.i.i, i64 %.pre203.pre.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, %i.bu
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.pre203.pre.i.i.i, i64 noundef %.val40.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #40, !noalias !13690
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.bx, align 8, !noalias !13690, !nonnull !24, !noundef !24
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %i.bu ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !13690, !noundef !24 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not1.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !13694

.lr.ph.i.i.i.i:                                   ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load i8, ptr %i.ce, align 8, !range !25, !noalias !13690, !noundef !24
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.cj = load ptr, ptr %i.cf, align 8, !noalias !13690, !noundef !24 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.us.i.i.i, label %.lr.ph.split.i.i.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.us.i.i.i
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.us.i.i.i

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 256) %i.bu, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #40, !noalias !13690
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.w
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #40, !noalias !13690
  unreachable

.lr.ph.splitthread-pre-split.i.i.i:               ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !13690
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i
  %i.cl = phi ptr [ %.pr.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.cj, %.lr.ph.i.i.i ] ; 8 uses
  %i.cm = phi ptr [ %i.db, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.ce, %.lr.ph.i.i.i ] ; 7 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13695)
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i64, ptr %i.cc, align 8, !range !28, !alias.scope !13695, !noalias !13690, !noundef !24
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.cg, align 8, !alias.scope !13695, !noalias !13690, !noundef !24 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cl
  br i1 %i.cr, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !13696, !noundef !24 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !13696, !noundef !24 ; 5 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not12.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !13696, !noundef !24
  store i64 1, ptr %i.cc, align 8, !alias.scope !13695, !noalias !13690
  store ptr %i.cx, ptr %i.cg, align 8, !alias.scope !13695, !noalias !13690
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %cond.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %cond.i.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %.thread.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.cv, ptr %i.cf, align 8, !alias.scope !13695, !noalias !13690
  %.not14.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %bb.af

.thread.i.i.i.i.i:                                ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %i.cv, ptr %i.cy, align 8, !noalias !13696
  br label %bb.af

bb.af:                                            ; preds = %.thread.i.i.i.i.i, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.ct, ptr %i.cz, align 8, !noalias !13696
  store ptr %i.cm, ptr %i.cs, align 8, !noalias !13696
  store ptr null, ptr %i.cu, align 8, !noalias !13696
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.cl, ptr %i.da, align 8, !noalias !13696
  store ptr %i.cl, ptr %i.cd, align 8, !alias.scope !13695, !noalias !13690
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.y, %.lr.ph.split.i.i.i
  %i.db = phi ptr [ %i.cl, %bb.af ], [ %i.cm, %bb.ae ], [ %i.cm, %bb.ad ], [ %i.cm, %bb.y ], [ %i.cm, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !25, !noalias !13690, !noundef !24
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.lr.ph.splitthread-pre-split.i.i.i, !llvm.loop !13675

_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsjsY2yM364a4_11lance_tools.exit.i.i.i.i, %.lr.ph.i.i.i.i
  store i8 0, ptr %i.k, align 4, !alias.scope !13689
  br label %bb.g

bb.ag:                                            ; preds = %bb.l, %bb.j
  %i.de = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.de, ptr %i.i, align 8, !alias.scope !13689
  store i8 1, ptr %i.k, align 4, !alias.scope !13689
  %i.df = load i8, ptr %i.j, align 1, !alias.scope !13689, !noundef !24
  %.not24.i.i.i = icmp ult i8 %i.de, %i.df
  br i1 %.not24.i.i.i, label %.backedge, label %bb.ba

bb.ah:                                            ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 0, ptr %i.dg, align 1, !noalias !13690
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !13690, !nonnull !24, !noundef !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8, !noalias !13690 ; 2 uses
  %i.dl = icmp ugt i64 %i.dk, -4097
  br i1 %i.dl, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %.val35.i.i.i = load i8, ptr %i.ay, align 8, !range !25, !noalias !13690, !noundef !24
  %i.dm = getelementptr i8, ptr %i.ay, i64 16
  %.val36.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !13690 ; 4 uses
  %i.dn = trunc nuw i8 %.val35.i.i.i to i1
  br i1 %i.dn, label %bb.aj, label %.invoke, !prof !26

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36.i.i.i) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 8 ; 4 uses
  %i.dp = cmpxchg weak ptr %i.do, i8 0, i8 1 acquire monotonic, align 1, !noalias !13690
  %i.dq = extractvalue { i8, i1 } %i.dp, 1
  br i1 %i.dq, label %.noexc42.i.i.i, label %bb.ak, !prof !26

.invoke:                                          ; preds = %bb.ai, %bb.an
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #40
          to label %.cont unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dr = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.do, i64 undef, i32 noundef -1)
          to label %.noexc42.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690 ; 0 uses

.noexc42.i.i.i:                                   ; preds = %bb.ak, %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 32
  store ptr null, ptr %i.ds, align 8, !noalias !13690
  %i.dt = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 40
  store i32 0, ptr %i.dt, align 8, !noalias !13690
  %i.du = cmpxchg ptr %i.do, i8 1, i8 0 release monotonic, align 1, !noalias !13690
  %i.dv = extractvalue { i8, i1 } %i.du, 1
  br i1 %i.dv, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.al, !prof !26

bb.al:                                            ; preds = %.noexc42.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.do, i1 noundef zeroext false)
          to label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

bb.am:                                            ; preds = %bb.ah
  %i.dw = and i64 %i.dk, -4096
  %i.dx = load i64, ptr %i.f, align 8, !alias.scope !13689, !noundef !24
  %.not25.i.i.i = icmp ugt i64 %i.dw, %i.dx
  br i1 %.not25.i.i.i, label %bb.ar, label %bb.an

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.al, %.noexc42.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 40, i64 noundef 8) #36, !noalias !13690
  br label %.backedge

bb.an:                                            ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.val33.i.i.i = load i8, ptr %i.ay, align 8, !range !25, !noalias !13690, !noundef !24
  %i.dz = getelementptr i8, ptr %i.ay, i64 16
  %.val34.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !13690 ; 4 uses
  %i.ea = trunc nuw i8 %.val33.i.i.i to i1
  br i1 %i.ea, label %bb.ao, label %.invoke, !prof !26

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i.i.i) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 8 ; 4 uses
  %i.ec = cmpxchg weak ptr %i.eb, i8 0, i8 1 acquire monotonic, align 1, !noalias !13690
  %i.ed = extractvalue { i8, i1 } %i.ec, 1
  br i1 %i.ed, label %.noexc45.i.i.i, label %bb.ap, !prof !26

bb.ap:                                            ; preds = %bb.ao
  %i.ee = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eb, i64 undef, i32 noundef -1)
          to label %.noexc45.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690 ; 0 uses

.noexc45.i.i.i:                                   ; preds = %bb.ap, %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 32
  store ptr null, ptr %i.ef, align 8, !noalias !13690
  %i.eg = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 40
  store i32 0, ptr %i.eg, align 8, !noalias !13690
  %i.eh = cmpxchg ptr %i.eb, i8 1, i8 0 release monotonic, align 1, !noalias !13690
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %bb.bc, label %bb.aq, !prof !26

bb.aq:                                            ; preds = %.noexc45.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eb, i1 noundef zeroext false)
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

bb.ar:                                            ; preds = %bb.am
  %i.ej = load ptr, ptr %i.g, align 8, !alias.scope !13689, !nonnull !24, !align !41, !noundef !24
  %i.ek = tail call fastcc noundef align 8 ptr @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE22schedule_existing_nodeCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.ej, ptr noundef nonnull %i.ay), !noalias !13690 ; 7 uses
  %.not26.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not26.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerEventNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyETINtNtCs40k4W9msRzi_5alloc4sync3ArcB2c_EybEQNCNCNvMsd_NtNtB1n_6future10base_cacheINtB3U_5InnerB2c_NtB2e_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val31.i.i.i = load i8, ptr %i.ek, align 8, !range !25, !noalias !13690, !noundef !24
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val32.i.i.i = load ptr, ptr %i.el, align 8, !noalias !13690 ; 4 uses
  %i.em = trunc nuw i8 %.val31.i.i.i to i1
  br i1 %i.em, label %bb.at, label %bb.au, !prof !26

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i) ]
  %i.en = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 8 ; 4 uses
  %i.eo = cmpxchg weak ptr %i.en, i8 0, i8 1 acquire monotonic, align 1, !noalias !13690
  %i.ep = extractvalue { i8, i1 } %i.eo, 1
  br i1 %i.ep, label %.noexc49.i.i.i, label %bb.av, !prof !26

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #40
          to label %.noexc48.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

.noexc48.i.i.i:                                   ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eq = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.en, i64 undef, i32 noundef -1)
          to label %.noexc49.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690 ; 0 uses

.noexc49.i.i.i:                                   ; preds = %bb.av, %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 32
  store ptr null, ptr %i.er, align 8, !noalias !13690
  %i.es = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 40
  store i32 0, ptr %i.es, align 8, !noalias !13690
  %i.et = cmpxchg ptr %i.en, i8 1, i8 0 release monotonic, align 1, !noalias !13690
  %i.eu = extractvalue { i8, i1 } %i.et, 1
  br i1 %i.eu, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit51.i.i.i, label %bb.aw, !prof !26

bb.aw:                                            ; preds = %.noexc49.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.en, i1 noundef zeroext false)
          to label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit51.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !13690

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.aw, %bb.au
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsjsY2yM364a4_11lance_tools(ptr %i.ek) #41
          to label %common.resume.i.i unwind label %bb.ay, !noalias !13690

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit51.i.i.i: ; preds = %bb.aw, %.noexc49.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ek)
          to label %bb.ax unwind label %.thread66.i.i.i, !noalias !13690

.thread66.i.i.i:                                  ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit51.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.ax:                                            ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsjsY2yM364a4_11lance_tools.exit51.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef 40, i64 noundef 8) #36, !noalias !13690
end_hunk_10
begin_hunk_11_@_RNvXsS_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_5MapOkNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1e_13FileScheduler14submit_request0NCNvB1a_13submit_single0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools:bb.a
  %.sink449.i.i.i.i.i = phi ptr [ %i.e, %bb.ck ], [ %i.g, %bb.cm ]
  %i.jh = phi ptr [ @0, %bb.ck ], [ @1, %bb.cm ]
  store ptr @_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sink452.i.sroa.phi.i.i.i.i, align 8, !noalias !14270
  store ptr %.sink449.i.i.i.i.i, ptr %.sink452.i.sroa.phi2.i.i.i.i, align 8, !noalias !14270
  store ptr @_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sink452.i.sroa.phi5.i.i.i.i, align 8, !noalias !14270
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %i.jh, ptr noundef nonnull %.sink452.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #40
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp167.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14198

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

_RINvCs4XDKJNDGLq7_5bytes5rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjsY2yM364a4_11lance_tools.exit.i119.i.i.i.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14270
  %i.ji = icmp eq i64 %.val56.i.i.i.i.i, %.val55.i.i.i.i.i
  br i1 %i.ji, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RINvCs4XDKJNDGLq7_5bytes5rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjsY2yM364a4_11lance_tools.exit.i119.i.i.i.i.i
  %i.jj = load ptr, ptr %i.jd, align 8, !noalias !14269, !nonnull !24, !align !41, !noundef !24
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !14269, !nonnull !24, !noundef !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !14269, !noundef !24
  invoke void %i.jk(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %i.jl, ptr noundef %i.jn, i64 noundef %i.jg)
          to label %.noexc127.i.i.i.i.i unwind label %.loopexit.split-lp167.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14198, !inline_history !16

.noexc127.i.i.i.i.i:                              ; preds = %bb.cn
  %i.jo = sub nuw i64 %i.je, %i.en
  %i.jp = load ptr, ptr %i.dc, align 8, !alias.scope !14268, !noalias !14197, !noundef !24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.en ; 2 uses
  store ptr %i.jq, ptr %i.dc, align 8, !alias.scope !14268, !noalias !14197
  br label %bb.cp

bb.co:                                            ; preds = %_RINvCs4XDKJNDGLq7_5bytes5rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjsY2yM364a4_11lance_tools.exit.i119.i.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !14269, !noundef !24
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.en
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = getelementptr i8, ptr null, i64 %i.ju   ; 2 uses
  store ptr %i.jv, ptr %i.dc, align 8, !alias.scope !14268, !noalias !14197
  store ptr null, ptr %i.dd, align 8, !alias.scope !14268, !noalias !14197
  store ptr @15, ptr %i.u, align 8, !alias.scope !14268, !noalias !14197
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.noexc127.i.i.i.i.i
  %i.jw = phi ptr [ %i.jv, %bb.co ], [ %i.jq, %.noexc127.i.i.i.i.i ]
  %.sink.i120.i.i.i.i.i = phi i64 [ 0, %bb.co ], [ %i.jo, %.noexc127.i.i.i.i.i ] ; 2 uses
  store i64 %.sink.i120.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !14268, !noalias !14197
  call void @llvm.experimental.noalias.scope.decl(metadata !14271)
  call void @llvm.experimental.noalias.scope.decl(metadata !14272)
  call void @llvm.experimental.noalias.scope.decl(metadata !14273)
  call void @llvm.experimental.noalias.scope.decl(metadata !14274)
  %i.jx = load i64, ptr %i.df, align 8, !alias.scope !14275, !noalias !14197, !noundef !24 ; 3 uses
  %i.jy = load i64, ptr %i.cz, align 8, !range !42, !alias.scope !14275, !noalias !14197, !noundef !24
  %i.jz = icmp eq i64 %i.jx, %i.jy
  br i1 %i.jz, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %bb.ct unwind label %bb.cr, !noalias !14276

bb.cr:                                            ; preds = %bb.cq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14277)
  call void @llvm.experimental.noalias.scope.decl(metadata !14278)
  %i.kb = load ptr, ptr %i.dd, align 8, !alias.scope !14279, !noalias !14197, !noundef !24
  %i.kc = load ptr, ptr %i.u, align 8, !alias.scope !14279, !noalias !14197, !nonnull !24, !align !41, !noundef !24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !14280, !nonnull !24, !noundef !24
  invoke void %i.ke(ptr noundef %i.kb, ptr noundef %i.jw, i64 noundef %.sink.i120.i.i.i.i.i)
          to label %.body130.i.i.i.i.i unwind label %bb.cs, !noalias !14276, !inline_history !1

bb.cs:                                            ; preds = %bb.cr
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !14276
  unreachable

.loopexit.split-lp167.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cn, %.invoke.i.i.i.i.i, %bb.bf
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i.i.i.i.i

.body130.i.i.i.i.i:                               ; preds = %.loopexit.split-lp167.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cr
  %eh.lpad-body131.i.i.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.cr ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp167.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14197
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.kg = load ptr, ptr %i.dg, align 8, !alias.scope !14275, !noalias !14197, !nonnull !24, !noundef !24
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.kg, i64 %i.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !14198
  %i.ki = add i64 %i.jx, 1
  store i64 %i.ki, ptr %i.df, align 8, !alias.scope !14275, !noalias !14197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14197
  br label %bb.bw

bb.cu:                                            ; preds = %.body130.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.pn18.pn.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body131.i.i.i.i.i, %.body130.i.i.i.i.i ], [ %.pn13.pn.pn.pn.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.w) #41
          to label %.body74.i.i.i.i.i unwind label %bb.ax, !noalias !14198

bb.cv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBG_6future3MapINtNtCs6LHU0WyJj3k_15futures_channel7oneshot8ReceiverNtNtCsjjbR6Jfsbqw_8lance_io9scheduler8ResponseENCNvMsi_B2H_NtB2H_13ScanScheduler23submit_request_standard0EINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4J_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false), !noalias !14197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3145.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.i.i.i.i.i, i64 31, i1 false), !noalias !14197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14197
  %.val35.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !14197 ; 2 uses
  %i.kj = icmp eq i64 %.val35.i.i.i.i.i, 0
  br i1 %i.kj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit133.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kk = getelementptr i8, ptr %1, i64 16
  %.val36.i.i.i.i.i = load ptr, ptr %i.kk, align 8, !noalias !14197, !nonnull !24, !noundef !24
  %i.kl = shl nuw i64 %.val35.i.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i.i.i.i, i64 noundef %i.kl, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14198
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit133.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit133.i.i.i.i.i: ; preds = %bb.cw, %bb.cv
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val31.i.i.i.i.i = load i64, ptr %i.km, align 8, !noalias !14197 ; 2 uses
  %i.kn = icmp eq i64 %.val31.i.i.i.i.i, 0
  br i1 %i.kn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit135.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit133.i.i.i.i.i
  %i.ko = getelementptr i8, ptr %1, i64 40
  %.val32.i.i.i.i.i = load ptr, ptr %i.ko, align 8, !noalias !14197, !nonnull !24, !noundef !24
  %i.kp = shl nuw i64 %.val31.i.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i.i.i.i, i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14198
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit135.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit135.i.i.i.i.i: ; preds = %bb.cx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit133.i.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.kq)
          to label %bb.db unwind label %bb.aw, !noalias !14198

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.aq, %.body74.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val29.i.i.i.i.i = load i64, ptr %i.kr, align 8, !noalias !14197 ; 2 uses
  %i.ks = icmp eq i64 %.val29.i.i.i.i.i, 0
  br i1 %i.ks, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %i.kt = getelementptr i8, ptr %1, i64 40
  %.val30.i.i.i.i.i = load ptr, ptr %i.kt, align 8, !noalias !14197, !nonnull !24, !noundef !24
  %i.ku = shl nuw i64 %.val29.i.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i.i.i.i, i64 noundef %i.ku, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14198
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i.i.i: ; preds = %bb.cy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.kw = load i8, ptr %i.kv, align 1, !range !25, !noalias !14197, !noundef !24
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.cz, label %bb.av

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.ky) #41
          to label %bb.av unwind label %bb.ax, !noalias !14198

bb.da:                                            ; preds = %_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapINtNtCs6LHU0WyJj3k_15futures_channel7oneshot8ReceiverNtNtCsjjbR6Jfsbqw_8lance_io9scheduler8ResponseENCNvMsi_B2e_NtB2e_13ScanScheduler23submit_request_standard0EINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB40_6future6future6Futurep6OutputINtNtB40_6result6ResultINtNtB4w_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB40_6marker4SendEL_EEEB51_4pollCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14197
  store i8 3, ptr %i.ab, align 8, !noalias !14197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  store i8 -2, ptr %0, align 8, !alias.scope !14193
  br label %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1S_13FileScheduler14submit_request0EINtNtB9_3fns7MapOkFnNCNvB1O_13submit_single0EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools.exit

bb.db:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit135.i.i.i.i.i, %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit78.i.i.i.i.i
  %.sroa.0144.0.i.i.i.i.i = phi i8 [ %i.ca, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit135.i.i.i.i.i ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjsY2yM364a4_11lance_tools.exit78.i.i.i.i.i ], [ -1, %bb.au ]
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3145.i.i.i.i.i, i64 31, i1 false), !noalias !14192
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146.i.i.i.i.i, i64 24, i1 false), !noalias !14192
  store i8 1, ptr %i.ab, align 8, !noalias !14197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  store i8 %.sroa.0144.0.i.i.i.i.i, ptr %i.x, align 8, !noalias !14192
  %i.kz = load i64, ptr %1, align 8, !range !28, !noalias !14281, !noundef !24
  %i.la = trunc nuw i64 %i.kz to i1
  br i1 %i.la, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future11into_future10IntoFutureNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB22_13FileScheduler14submit_request0EECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.aa)
          to label %bb.de unwind label %.body.i.i, !noalias !14282

.body.i.i:                                        ; preds = %bb.dc
  %i.lb = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %1, align 8, !noalias !14192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.x) #41
          to label %common.resume.i.i unwind label %bb.dm, !noalias !14193

bb.dd:                                            ; preds = %bb.db
  store i64 1, ptr %1, align 8, !noalias !14192
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #40
          to label %bb.dk unwind label %bb.dl, !noalias !14193

bb.de:                                            ; preds = %bb.dc
  store i64 1, ptr %1, align 8, !noalias !14192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.514.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.720.i.i)
  %.sroa.022.0.copyload.i.i = load i8, ptr %i.x, align 8, !noalias !14192 ; 2 uses
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.624.0.copyload.i.i = load i64, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !noalias !14192 ; 2 uses
  %.sroa.825.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.825.0.copyload.i.i = load ptr, ptr %.sroa.825.0..sroa_idx.i.i, align 8, !noalias !14192 ; 9 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.022.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.lc = load <2 x i64>, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !14192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i, i64 7, i1 false), !noalias !14192
  %i.ld = inttoptr i64 %.sroa.624.0.copyload.i.i to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !14192
  br label %_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i

bb.dg:                                            ; preds = %bb.de
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !14192 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.825.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14283
  %i.le = icmp ult i64 %.sroa.10.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.le)
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.sroa.10.0.copyload.i.i, 5
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 %.idx.i.i.i.i.i
  store ptr %.sroa.825.0.copyload.i.i, ptr %i.b, align 8, !noalias !14283
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.624.0.copyload.i.i, ptr %i.lg, align 8, !noalias !14283
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.825.0.copyload.i.i, ptr %i.lh, align 8, !noalias !14283
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.lf, ptr %i.li, align 8, !noalias !14283
  call void @llvm.experimental.noalias.scope.decl(metadata !14284)
  %i.lj = icmp eq i64 %.sroa.10.0.copyload.i.i, 0
  br i1 %i.lj, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.dh:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.b) #41
          to label %common.resume.i.i unwind label %bb.dj, !noalias !14285

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.dg
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 32
  store ptr %i.ll, ptr %i.lh, align 8, !alias.scope !14284, !noalias !14283
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %.sroa.825.0.copyload.i.i, align 8, !noalias !14286 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i, label %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i, !prof !54

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, %bb.dg
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #40
          to label %bb.di unwind label %bb.dh, !noalias !14285

bb.di:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !14285
  unreachable

_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload26.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !14287
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 16
  %i.ln = load <2 x i64>, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i, align 8, !noalias !14287
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.b), !noalias !14193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14283
  br label %_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i

_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.df
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.6.sroa.0.0.copyload26.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.825.0.copyload.i.i, %bb.df ]
  %.sroa.516.0.i.i = phi ptr [ %.sroa.0.0.copyload1.i.i.i.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.ld, %bb.df ]
  %i.lo = phi <2 x i64> [ %i.ln, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.lc, %bb.df ]
  store i8 %.sroa.022.0.copyload.i.i, ptr %0, align 8, !alias.scope !14193
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.i.i, i64 7, i1 false), !noalias !14288
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.516.0.i.i, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.lo, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.i.i, i64 16, i1 false), !noalias !14288
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.720.i.i)
  br label %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1S_13FileScheduler14submit_request0EINtNtB9_3fns7MapOkFnNCNvB1O_13submit_single0EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools.exit

bb.dk:                                            ; preds = %bb.dd
  unreachable

bb.dl:                                            ; preds = %bb.dd
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.x) #41
          to label %common.resume.i.i unwind label %bb.dm, !noalias !14193

bb.dm:                                            ; preds = %bb.dl, %.body.i.i
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !14193
  unreachable

_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1S_13FileScheduler14submit_request0EINtNtB9_3fns7MapOkFnNCNvB1O_13submit_single0EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.da, %_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14192
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !43, !invariant.load !24
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !24, !nonnull !24
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsgczF5crJ4sT_3std2fs4FileENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs6_NtCsgczF5crJ4sT_3std2fsNtB5_4FileNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14292
  store ptr %i.c, ptr %i.a, align 8, !noalias !14292
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @404, ptr noalias noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 2, ptr noundef nonnull readonly %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @552, ptr noalias noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @553)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14292
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_CsfnXyRYRFu3h_8smallvecNtB5_18CollectionAllocErrNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !74, !noundef !24
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_11
