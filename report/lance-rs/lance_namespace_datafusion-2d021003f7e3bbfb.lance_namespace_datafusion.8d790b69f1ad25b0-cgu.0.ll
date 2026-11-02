Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15008
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel: ; preds = %bb.e, %_RNvXsb_NtCs9ZJqkc64Jh8_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel
  %i.o = add i64 %.promoted20, 1
  store i64 %i.o, ptr %i.h, align 8
  %.not.peel = icmp eq i64 %.sroa.01.0, 1
  %.not11 = icmp eq ptr %i.l, null
  %or.cond = or i1 %.not.peel, %.not11
  br i1 %or.cond, label %.loopexit, label %.loopexit26

bb.f:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %.val, %i.e
  br label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel, %bb.c, %bb.b
  ret void

.loopexit26:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noundef !109
  store ptr %i.r, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit26, %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @397, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #48, !noalias !317
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !109 ; 3 uses
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

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.g = phi ptr [ %.promoted17, %.lr.ph ], [ %i.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 6 uses
  %.sroa.01.116 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %i.h = phi i64 [ %i.c, %.lr.ph ], [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %i.i = add i64 %.sroa.01.116, -1                ; 2 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noundef !109 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 8
  store i8 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %i.l = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %i.l, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.e, %bb.d
  %i.n = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noundef !109 ; 2 uses
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
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
  ], !prof !115

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.al, %bb.aj, %bb.ai, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.t, %bb.r, %bb.p, %bb.o, %bb.j, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void

default.unreachable22:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noundef !109 ; 3 uses
  %.not6 = icmp ne ptr %i.q, null                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %i.l
  %or.cond = select i1 %.not6, i1 true, i1 %i.t, !prof !324
  br i1 %or.cond, label %bb.j, label %bb.i, !prof !324

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !109 ; 3 uses
  %.not4 = icmp ne ptr %i.v, null                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %i.l
  %or.cond5 = select i1 %.not4, i1 true, i1 %i.y, !prof !324
  br i1 %or.cond5, label %bb.t, label %bb.i, !prof !324

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !109 ; 3 uses
  %.not2 = icmp ne ptr %i.aa, null                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, %i.l
  %or.cond8 = select i1 %.not2, i1 true, i1 %i.ad, !prof !324
  br i1 %or.cond8, label %bb.ad, label %bb.i, !prof !324

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #48
  unreachable

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !325, !noundef !109 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %0, align 8, !range !116, !alias.scope !325, !noundef !109
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !325, !noundef !109 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !325, !noundef !109 ; 5 uses
  br i1 %.not6, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !325, !noundef !109
  store i64 1, ptr %0, align 8, !alias.scope !325
  store ptr %i.ap, ptr %i.ai, align 8, !alias.scope !325
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %cond.i = icmp eq ptr %i.an, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i

bb.p:                                             ; preds = %bb.m
  store ptr %i.an, ptr %i.r, align 8, !alias.scope !325
  %.not14.i = icmp eq ptr %i.an, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !noalias !325
  br label %bb.q

bb.q:                                             ; preds = %.thread.i, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.q, ptr %i.ar, align 8, !noalias !325
  store ptr %i.af, ptr %i.p, align 8, !noalias !325
  store ptr null, ptr %i.am, align 8, !noalias !325
  %.not15.i = icmp eq ptr %i.af, null
  br i1 %.not15.i, label %bb.s, label %bb.r, !prof !112

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.l, ptr %i.as, align 8, !noalias !325
  store ptr %i.l, ptr %i.ae, align 8, !alias.scope !325
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !325
  unreachable

bb.t:                                             ; preds = %bb.g
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !326, !noundef !109 ; 4 uses
  %i.av = icmp eq ptr %i.au, %i.l
  br i1 %i.av, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %1, align 8, !range !116, !alias.scope !326, !noundef !109
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.ax, align 8, !alias.scope !326, !noundef !109 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.l
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !326, !noundef !109 ; 5 uses
  br i1 %.not4, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !326, !noundef !109
  store i64 1, ptr %1, align 8, !alias.scope !326
  store ptr %i.be, ptr %i.ax, align 8, !alias.scope !326
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %cond.i11 = icmp eq ptr %i.bc, null
  br i1 %cond.i11, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i12

bb.z:                                             ; preds = %bb.w
  store ptr %i.bc, ptr %i.w, align 8, !alias.scope !326
  %.not14.i14 = icmp eq ptr %i.bc, null
  br i1 %.not14.i14, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.aa

.thread.i12:                                      ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bc, ptr %i.bf, align 8, !noalias !326
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i12, %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.v, ptr %i.bg, align 8, !noalias !326
  store ptr %i.au, ptr %i.u, align 8, !noalias !326
  store ptr null, ptr %i.bb, align 8, !noalias !326
  %.not15.i13 = icmp eq ptr %i.au, null
  br i1 %.not15.i13, label %bb.ac, label %bb.ab, !prof !112

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.l, ptr %i.bh, align 8, !noalias !326
  store ptr %i.l, ptr %i.at, align 8, !alias.scope !326
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ac:                                            ; preds = %bb.aa
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !326
  unreachable

bb.ad:                                            ; preds = %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !327, !noundef !109 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, %i.l
  br i1 %i.bk, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load i64, ptr %2, align 8, !range !116, !alias.scope !327, !noundef !109
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bn = trunc nuw i64 %i.bl to i1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load ptr, ptr %i.bm, align 8, !alias.scope !327, !noundef !109 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.l
  br i1 %i.bp, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !327, !noundef !109 ; 5 uses
  br i1 %.not2, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !327, !noundef !109
  store i64 1, ptr %2, align 8, !alias.scope !327
  store ptr %i.bt, ptr %i.bm, align 8, !alias.scope !327
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %cond.i17 = icmp eq ptr %i.br, null
  br i1 %cond.i17, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i18

bb.aj:                                            ; preds = %bb.ag
  store ptr %i.br, ptr %i.ab, align 8, !alias.scope !327
  %.not14.i20 = icmp eq ptr %i.br, null
  br i1 %.not14.i20, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ak

.thread.i18:                                      ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.br, ptr %i.bu, align 8, !noalias !327
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i18, %bb.aj
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.aa, ptr %i.bv, align 8, !noalias !327
  store ptr %i.bj, ptr %i.z, align 8, !noalias !327
  store ptr null, ptr %i.bq, align 8, !noalias !327
  %.not15.i19 = icmp eq ptr %i.bj, null
  br i1 %.not15.i19, label %bb.am, label %bb.al, !prof !112

bb.al:                                            ; preds = %bb.ak
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.l, ptr %i.bw, align 8, !noalias !327
  store ptr %i.l, ptr %i.bi, align 8, !alias.scope !327
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !327
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_woNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !109 ; 8 uses
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !109 ; 3 uses
  %.not2 = icmp ne ptr %i.k, null                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %i.g
  %or.cond = select i1 %.not2, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.f, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.e, %bb.n, %bb.l, %bb.k, %bb.f, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void

bb.f:                                             ; preds = %bb.e
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !330, !noundef !109 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %1, align 8, !range !116, !alias.scope !330, !noundef !109
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !330, !noundef !109 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !330, !noundef !109 ; 5 uses
  br i1 %.not2, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !330, !noundef !109
  store i64 1, ptr %1, align 8, !alias.scope !330
  store ptr %i.z, ptr %i.s, align 8, !alias.scope !330
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %cond.i = icmp eq ptr %i.x, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i

bb.l:                                             ; preds = %bb.i
  store ptr %i.x, ptr %i.l, align 8, !alias.scope !330
  %.not14.i = icmp eq ptr %i.x, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.m

.thread.i:                                        ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !noalias !330
  br label %bb.m

bb.m:                                             ; preds = %.thread.i, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.k, ptr %i.ab, align 8, !noalias !330
  store ptr %i.p, ptr %i.j, align 8, !noalias !330
  store ptr null, ptr %i.w, align 8, !noalias !330
  %.not15.i = icmp eq ptr %i.p, null
  br i1 %.not15.i, label %bb.o, label %bb.n, !prof !112

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.g, ptr %i.ac, align 8, !noalias !330
  store ptr %i.g, ptr %i.o, align 8, !alias.scope !330
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !330
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_woNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !109 ; 8 uses
  store ptr null, ptr %i.f, align 8
  %i.h = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !345, !noundef !109 ; 2 uses
  %.not.i = icmp ne ptr %i.k, null                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !345
  %i.n = icmp eq ptr %i.m, %i.g
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.n
  br i1 %or.cond.i, label %bb.f, label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.o = load i64, ptr %0, align 8, !range !116, !alias.scope !347, !noundef !109
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !347, !noundef !109 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !347, !noundef !109 ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !347, !noundef !109
  store i64 1, ptr %0, align 8, !alias.scope !347
  store ptr %i.w, ptr %i.p, align 8, !alias.scope !347
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.u, ptr %i.x, align 8, !noalias !347
  %.pre.i = load ptr, ptr %i.j, align 8, !noalias !347
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store ptr %i.u, ptr %i.l, align 8, !alias.scope !347
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi ptr [ null, %bb.k ], [ %.pre.i, %bb.j ] ; 2 uses
  %.not4.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.z, align 8, !noalias !347
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !347
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !347
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !347, !noundef !109
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !347
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !345, !nonnull !109, !noundef !109 ; 4 uses
  %i.ae = atomicrmw add ptr %.val.i.i, i32 -1 release, align 4, !noalias !345
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !353, !noalias !345, !nonnull !109, !noundef !109
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !354
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i unwind label %bb.q, !noalias !345

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #44, !noalias !345
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #44, !noalias !345
  resume { ptr, i32 } %i.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #44, !noalias !345
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #44, !noalias !345
  br label %_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14unlink_node_woCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.e, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE23take_write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellINtNtB1j_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !117, !noundef !109
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
  %i.d = load i64, ptr %1, align 8, !range !116, !noundef !109
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
  %.pre = load i8, ptr %i.b, align 8, !range !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %i.a, align 8
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable7 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.j
  ], !prof !367

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazy7destroyINtNtCscI6d9CVNmLh_4core4cell4CellINtNtB19_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !368
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #48
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCs40Ppcsylqp4_17crossbeam_channel7context7ContextEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !117, !noundef !109
  switch i8 %i.b, label %default.unreachable6 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleECsc93vp1BCDlY_26lance_namespace_datafusion.exit
    i8 2, label %bb.c
  ]

default.unreachable6:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !range !116, !noundef !109
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
  %.pre = load i8, ptr %i.a, align 8, !range !117
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  switch i8 %.pre, label %default.unreachable6 [
    i8 0, label %bb.f
end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent12OldEntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1A_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.32.val, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(i8 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %.0.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = atomicrmw add ptr %.8.val, i32 -1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.8.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #44
  resume { ptr, i32 } %i.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4961, !nonnull !109, !noundef !109
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !4961
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !109, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val1) #49
          to label %common.resume unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !109, !noundef !109 ; 4 uses
  %i.g = atomicrmw add ptr %.val, i32 -1 release, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.e

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !173, !noundef !109
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4970)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4971, !nonnull !109, !noundef !109
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !4971
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !109, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val1) #49
          to label %common.resume unwind label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.j, align 8, !nonnull !109, !noundef !109 ; 4 uses
  %i.k = atomicrmw add ptr %.val, i32 -1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.g

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.d
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4976)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4976, !noundef !109 ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.e = phi ptr [ %i.b, %.lr.ph.i ], [ %i.r, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4977)
  %i.f = load i64, ptr %0, align 8, !range !116, !alias.scope !4978, !noundef !109
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !4978, !noundef !109 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %bb.d, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !4978, !noundef !109
  store i64 1, ptr %0, align 8, !alias.scope !4978
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !4978
  br label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !4978, !noundef !109 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !4978
  %.not3.i.i = icmp eq ptr %i.m, null
  %..i.i = select i1 %.not3.i.i, ptr %0, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !4978, !noundef !109
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !4978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !4978
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.e unwind label %.body.i, !noalias !4976

.body.i:                                          ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #44, !noalias !4976
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull align 8 dereferenceable(48) %0) #49
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #44, !noalias !4976
  %i.r = load ptr, ptr %i.a, align 8, !alias.scope !4976, !noundef !109 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.f:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !4976
  unreachable

bb.g:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.q

_RNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = atomicrmw add ptr %.0.val, i32 -1 release, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4989)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4993)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4994, !nonnull !109, !noundef !109
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !4994
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #44
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5007)
  %i.a = load i8, ptr %0, align 8, !range !113, !alias.scope !5007, !noundef !109
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !5007, !nonnull !109, !noundef !109 ; 4 uses
  %i.d = atomicrmw add ptr %.val.i, i32 -1 release, align 4, !noalias !5007
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5008)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5012)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5013, !noalias !5007, !nonnull !109, !noundef !109
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !5014
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %.body.i, !noalias !5007

.body.i:                                          ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #44, !noalias !5007
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.k, align 8, !alias.scope !5007, !nonnull !109, !noundef !109 ; 2 uses
  %i.l = atomicrmw add ptr %.val2.i, i32 -1 release, align 4, !noalias !5007
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #44, !noalias !5007
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.e:                                             ; preds = %.body.i
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 48, i64 noundef 8) #44, !noalias !5007
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !5007, !nonnull !109, !noundef !109 ; 2 uses
  %i.o = atomicrmw add ptr %.val1.i, i32 -1 release, align 4, !noalias !5007
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 48, i64 noundef 8) #44, !noalias !5007
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %i.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1m_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5033)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5033, !noundef !109 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !5034
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5037)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5038, !nonnull !109, !noundef !109
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !5038
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5041)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !5042, !nonnull !109, !noundef !109
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !5042
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit2

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
end_hunk_1
begin_hunk_2_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsiVTOiHjdfhE_8lock_api5mutex5MutexNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtBG_8DeqNodesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1y_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = atomicrmw add ptr %.0.val, i32 -1 release, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #44
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #44
  br label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = atomicrmw add ptr %.0.val, i32 -1 release, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6810)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6814)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6815, !nonnull !109, !noundef !109
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !6815
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #44
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #44
  br label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = atomicrmw add ptr %.0.val, i32 -1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = getelementptr i8, ptr %.0.val, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !noundef !109 ; 2 uses
  %i.e = icmp eq ptr %.val.i.i, null
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !6820
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEE9drop_slowCsjMQ83FLvXnF_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #44
  resume { ptr, i32 } %i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, %bb.b
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #44
  br label %_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXs4_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6823)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6823, !nonnull !109, !align !125, !noundef !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6823, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noalias !6823, !noundef !109 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !6823, !noundef !109
  %i.h = icmp ult i64 %i.e, %i.g
  %spec.store.select.i = select i1 %i.h, i64 %i.e, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store atomic i64 %spec.store.select.i, ptr %i.i release, align 8, !noalias !6823
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.j, align 8, !range !113, !noundef !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = trunc nuw i8 %.val1 to i1
  br i1 %i.l, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.n = and i64 %i.m, 9223372036854775807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !114

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.p, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !112

bb.e:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !109 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %.lr.ph.i
  %i.e = phi ptr [ %i.b, %.lr.ph.i ], [ %i.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6826)
  %i.f = load i64, ptr %.0.val, align 8, !range !116, !alias.scope !6826, !noundef !109
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !6826, !noundef !109 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !6826, !noundef !109
  store i64 1, ptr %.0.val, align 8, !alias.scope !6826
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !6826
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !6826, !noundef !109 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !6826
  %.not3.i.i = icmp eq ptr %i.m, null
  %..i.i = select i1 %.not3.i.i, ptr %.0.val, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !6826, !noundef !109
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !6826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !6826
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #44
  resume { ptr, i32 } %i.q

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 40, i64 noundef 8) #44
  %i.r = load ptr, ptr %i.a, align 8, !noundef !109 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

_RNvXNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB8_5DequepENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBa_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEBW_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1B_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEENtNtBO_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree readonly captures(none) %.0.val) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !109 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !109 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !109 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCsdWqgeKPIYK7_4slab5EntryINtNtB11_6option6OptionNtNtNtB11_4task4wake5WakerEENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataENtNtBO_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree readonly captures(none) %.0.val) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !109 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !109 ; 4 uses
  %i.g = icmp ult i64 %i.f, 192153584101141163
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !109 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2P_16CachedReaderDataENtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree readonly captures(none) %.0.val) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !109 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !109 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !109 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB8_5DrainppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next4BombNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6849, !noundef !109 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !6849
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit2, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6849
  store ptr %i.c, ptr %i.a, align 8, !noalias !6849
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = atomicrmw xchg ptr %i.d, i8 1 seq_cst, align 1, !noalias !6849
  %i.f = icmp eq i8 %i.e, 0                       ; 2 uses
  %.sroa.0.0.sroa.speculate.load.1.i.i = load ptr, ptr %i.a, align 8, !noalias !6849 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1.i.i, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.c, !noalias !6849

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.g, align 8, !noalias !6849
  br i1 %i.f, label %bb.g, label %.body

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !noalias !6849
  br i1 %i.f, label %bb.e, label %_RNvXNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextINtB2_4BombNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw add ptr %.sroa.0.0.sroa.speculate.load.1.i.i, i64 -1 release, align 8, !noalias !6850
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RNvXNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextINtB2_4BombNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RNvXNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextINtB2_4BombNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.f, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction7rewrite12RewriteGroupECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19474)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !19474, !nonnull !109, !noundef !109 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !19474, !noundef !109 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [224 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 dereferenceable(224) %i.d), !noalias !19474
  %i.f = icmp eq i64 %i.e, %.val1.i
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !127, !alias.scope !19474, !noundef !109 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.h = mul nuw i64 %.val2.i, 224
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !19474
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19475)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i1 = load ptr, ptr %i.j, align 8, !alias.scope !19475, !nonnull !109, !noundef !109 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i2 = load i64, ptr %i.k, align 8, !alias.scope !19475, !noundef !109 ; 2 uses
  %i.l = icmp eq i64 %.val1.i2, 0
  br i1 %i.l, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i5, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph.i.i.i3
  %.sroa.0.07.i.i.i4 = phi i64 [ %i.n, %.lr.ph.i.i.i3 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [224 x i8], ptr %.val.i1, i64 %.sroa.0.07.i.i.i4
  %i.n = add nuw nsw i64 %.sroa.0.07.i.i.i4, 1    ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 dereferenceable(224) %i.m), !noalias !19475
  %i.o = icmp eq i64 %i.n, %.val1.i2
  br i1 %i.o, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i5, label %.lr.ph.i.i.i3

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i5: ; preds = %.lr.ph.i.i.i3, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.val2.i6 = load i64, ptr %i.i, align 8, !range !127, !alias.scope !19475, !noundef !109 ; 2 uses
  %i.p = icmp eq i64 %.val2.i6, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit7, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i5
  %i.q = mul nuw i64 %.val2.i6, 224
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !19475
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEECsc93vp1BCDlY_26lance_namespace_datafusion.exit7: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i5, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction7rewrite14RewrittenIndexECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.a, align 8, !range !111, !noundef !109 ; 2 uses
  %i.b = icmp sgt i64 %.val7, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8 = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %.val7, i64 noundef range(i64 1, -9223372036854775807) 1) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.d, align 8, !range !111, !noundef !109 ; 2 uses
  %i.e = icmp sgt i64 %.val, 0
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit14

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit14

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit14: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19490)
  %i.h = load i64, ptr %i.g, align 8, !range !111, !alias.scope !19490, !noundef !109 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19492)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !19493, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19493
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !19494 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !19494, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19494
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEECsc93vp1BCDlY_26lance_namespace_datafusion.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19495)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !19495, !nonnull !109, !noundef !109 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.p, align 8, !alias.scope !19495, !noundef !109 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19496)
  %i.q = icmp eq i64 %.val1.i, 0
  br i1 %i.q, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !19497, !noalias !19495 ; 2 uses
  %i.t = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val9.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !19496, !noalias !19495, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19498
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.v = icmp eq i64 %i.s, %.val1.i
  br i1 %i.v, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.val2.i = load i64, ptr %0, align 8, !range !127, !alias.scope !19495, !noundef !109 ; 2 uses
  %i.w = icmp eq i64 %.val2.i, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.x = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !19495
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19501)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !19501 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !19501, !nonnull !109, !noundef !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19501
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1h_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.0.019 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.019 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.019, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8, !nonnull !109, !noundef !109 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load i64, ptr %i.d, align 8, !noundef !109 ; 6 uses
  %i.e = icmp eq i64 %.val9, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.0.0.i.i18 = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ 0, %.lr.ph20 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %.val8, i64 %.sroa.0.0.i.i18 ; 7 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i18, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19525)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !19526, !noundef !109 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.i, null
  br i1 %.not7.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph.i.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19527)
  %i.m = load i64, ptr %i.f, align 8, !range !116, !alias.scope !19528, !noundef !109
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !19528, !noundef !109 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %bb.d, label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !19528, !noundef !109
  store i64 1, ptr %i.f, align 8, !alias.scope !19528
  store ptr %i.r, ptr %i.j, align 8, !alias.scope !19528
  br label %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !19528, !noundef !109 ; 3 uses
  store ptr %i.t, ptr %i.h, align 8, !alias.scope !19528
  %.not3.i.i.i = icmp eq ptr %i.t, null
  %..i.i.i = select i1 %.not3.i.i.i, ptr %i.f, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = load i64, ptr %i.k, align 8, !alias.scope !19528, !noundef !109
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.k, align 8, !alias.scope !19528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !19528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19530), !noalias !19526
  %i.x = load i8, ptr %i.l, align 8, !range !113, !alias.scope !19531, !noalias !19526, !noundef !109
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !19531, !noalias !19526, !nonnull !109, !noundef !109 ; 4 uses
  %i.aa = atomicrmw add ptr %.val.i.i, i32 -1 release, align 4, !noalias !19532
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire, !noalias !19526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19533), !noalias !19526
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19534), !noalias !19526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19535), !noalias !19526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19536), !noalias !19526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19537), !noalias !19526
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !19538, !noalias !19532, !nonnull !109, !noundef !109
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !19539
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !19526
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i unwind label %.body.i.i12, !noalias !19532

.body.i.i12:                                      ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #44, !noalias !19532
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !19531, !noalias !19526, !nonnull !109, !noundef !109 ; 2 uses
  %i.ai = atomicrmw add ptr %.val2.i.i, i32 -1 release, align 4, !noalias !19532
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %.body.i.i.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 64, i64 noundef 8) #44, !noalias !19532
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.h:                                             ; preds = %.body.i.i12
  fence acquire, !noalias !19526
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef 48, i64 noundef 8) #44, !noalias !19532
  br label %.body.i.i.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !19531, !noalias !19526, !nonnull !109, !noundef !109 ; 2 uses
  %i.al = atomicrmw add ptr %.val1.i.i, i32 -1 release, align 4, !noalias !19532
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  fence acquire, !noalias !19526
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef 48, i64 noundef 8) #44, !noalias !19532
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.body.i.i.body:                                   ; preds = %.body.i.i12, %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #44, !noalias !19526
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs0_NtNtCskTBvlRM5ILY_4moka6common5dequeINtBK_5DequepENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBM_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull align 8 dereferenceable(48) %i.f) #49
          to label %.body10.preheader unwind label %bb.j

.body10.preheader:                                ; preds = %.body.i.i.body
  %i.an = icmp eq i64 %i.g, %.val9
  br i1 %i.an, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph54

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtBG_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RNCNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB7_5DequeINtNtB9_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE9pop_front0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #44, !noalias !19526
  %i.ao = load ptr, ptr %i.h, align 8, !alias.scope !19526, !noundef !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.b

bb.j:                                             ; preds = %.body.i.i.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !19526
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph
  %i.aq = icmp eq i64 %i.g, %.val9
  br i1 %i.aq, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.body10:                                          ; preds = %.lr.ph54
  %i.ar = add nuw nsw i64 %.sroa.0.1.i.i53, 1     ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.val9
  br i1 %i.as, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph54

.lr.ph54:                                         ; preds = %.body10.preheader, %.body10
  %.sroa.0.1.i.i53 = phi i64 [ %i.ar, %.body10 ], [ %i.g, %.body10.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.val8, i64 %.sroa.0.1.i.i53
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.at) #49
          to label %.body10 unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph54
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !19540
  unreachable

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %.body10, %.body10.preheader
  %i.av = mul nuw nsw i64 %.val9, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.av, i64 noundef 8) #44
  %i.aw = icmp eq i64 %i.c, %1
  br i1 %i.aw, label %._crit_edge57, label %.lr.ph56

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ax = mul nuw nsw i64 %.val9, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ax, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph20, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.ay = icmp eq i64 %i.c, %1
  br i1 %i.ay, label %._crit_edge, label %.lr.ph20

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph56
  %i.az = add nuw nsw i64 %.sroa.0.155, 1         ; 2 uses
  %i.ba = icmp eq i64 %i.az, %1
  br i1 %i.ba, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.l
  %.sroa.0.155 = phi i64 [ %i.az, %bb.l ], [ %i.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.155 ; 2 uses
  %.val = load ptr, ptr %i.bb, align 8, !nonnull !109, !noundef !109
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val7 = load i64, ptr %i.bc, align 8, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCskTBvlRM5ILY_4moka6common5deque5DequeINtNtB1g_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val, i64 %.val7) #49
          to label %bb.l unwind label %bb.m

._crit_edge57:                                    ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  resume { ptr, i32 } %i.ag

bb.m:                                             ; preds = %.lr.ph56
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.0.09 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.09 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.09, 1           ; 4 uses
  invoke fastcc void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b, !inline_history !2

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.b, align 8, !range !127, !alias.scope !19545, !noundef !109 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19545, !nonnull !109, !noundef !109
  %i.g = mul nuw i64 %.val2.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph
  %.val.i.i = load i64, ptr %i.b, align 8, !range !127, !alias.scope !19545, !noundef !109 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !19545, !nonnull !109, !noundef !109
  %i.j = mul nuw i64 %.val.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

end_hunk_3
begin_hunk_4_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.bka = inttoptr i64 %i.bjz to ptr             ; 2 uses
  %i.bkb = atomicrmw add ptr %i.bfy, i64 -1 monotonic, align 8, !noalias !32703 ; 0 uses
  %i.bkc = atomicrmw add ptr %i.bjy, i64 1 monotonic, align 8, !noalias !32703 ; 0 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bka, i64 8
  %.val31.i.i.i.i240 = load ptr, ptr %i.bka, align 8, !noalias !32703, !nonnull !109, !noundef !109 ; 4 uses
  %.val32.i.i.i.i = load ptr, ptr %i.bkd, align 8, !noalias !32703 ; 3 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bff, i64 168
  %i.bkf = atomicrmw add ptr %i.bke, i64 -1 monotonic, align 8, !noalias !32703 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !32702
  %i.bkg = atomicrmw add ptr %.val31.i.i.i.i240, i64 1 monotonic, align 8, !noalias !32703
  %i.bkh = icmp slt i64 %i.bkg, 0
  br i1 %i.bkh, label %bb.qo, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  store ptr %.val31.i.i.i.i240, ptr %i.be, align 8, !noalias !32702
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i.i) ]
  %i.bki = atomicrmw add ptr %.val32.i.i.i.i, i32 1 monotonic, align 4, !noalias !32703
  %i.bkj = icmp slt i32 %i.bki, 0
  br i1 %i.bkj, label %bb.qn, label %bb.qs, !prof !112

bb.qn:                                            ; preds = %bb.qm
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #48
          to label %.noexc.i.i.i.i.i.i unwind label %bb.qp, !noalias !32703

.noexc.i.i.i.i.i.i:                               ; preds = %bb.qn
  unreachable

bb.qo:                                            ; preds = %bb.ql
  call void @llvm.trap()
  unreachable

bb.qp:                                            ; preds = %bb.qn
  %i.bkk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkl = atomicrmw add ptr %.val31.i.i.i.i240, i64 -1 release, align 8, !noalias !32710
  %i.bkm = icmp eq i64 %i.bkl, 1
  br i1 %i.bkm, label %bb.qq, label %.body.thread.i.i.i.i

bb.qq:                                            ; preds = %bb.qp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.body.thread.i.i.i.i unwind label %bb.qr, !noalias !32703

bb.qr:                                            ; preds = %bb.qq
  %i.bkn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !32703
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.thread.i.i.i.i226: ; preds = %.noexc34.i.i.i.i237, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread42.i.i.i.i.i, %bb.qg, %bb.qe, %.noexc34.us.i.us.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread42.i.us.i.us.i.i.i, %bb.pv, %bb.pt, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i239
  %.sroa.09.0.i28.i.i.i = phi ptr [ %.sroa.09.0.i.us.i.i.i, %.noexc34.us.i.us.i.i.i ], [ %.sroa.09.0.i29.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i239 ], [ %.sroa.09.0.i.us.i.i.i, %bb.pt ], [ %.sroa.09.0.i.us.i.i.i, %bb.pv ], [ %.sroa.09.0.i.us.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread42.i.us.i.us.i.i.i ], [ %.sroa.09.0.i.i.i.i215, %bb.qe ], [ %.sroa.09.0.i.i.i.i215, %bb.qg ], [ %.sroa.09.0.i.i.i.i215, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBY_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_upsert0s0_0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1Q_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread42.i.i.i.i.i ], [ %.sroa.09.0.i.i.i.i215, %.noexc34.i.i.i.i237 ]
  store ptr null, ptr %i.bf, align 8, !noalias !32702
  br label %bb.qt

bb.qs:                                            ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !32702
  store ptr %.val31.i.i.i.i240, ptr %i.bf, align 8, !noalias !32702
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.val32.i.i.i.i, ptr %i.bko, align 8, !noalias !32702
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket23defer_destroy_tombstoneINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2y_10ValueEntryB1D_NtB1F_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, i64 noundef %.us-phi62.i.i.i.i)
          to label %bb.qt unwind label %bb.qy, !noalias !32703

bb.qt:                                            ; preds = %bb.qs, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.thread.i.i.i.i226
  %.sroa.09.0.i27.i.i.i = phi ptr [ %.sroa.09.0.i29.i.i.i, %bb.qs ], [ %.sroa.09.0.i28.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.thread.i.i.i.i226 ]
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.bfx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noundef nonnull align 8 %i.bgb, ptr noundef nonnull align 8 %.sroa.09.0.i27.i.i.i)
          to label %bb.qu unwind label %bb.qy, !noalias !32703

bb.qu:                                            ; preds = %bb.qt
  %i.bkp = load ptr, ptr %i.bf, align 8, !noalias !32702, !noundef !109 ; 4 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bkr = load ptr, ptr %i.bkq, align 8, !noalias !32702 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !32702
  %i.bks = icmp eq ptr %i.bga, null
  br i1 %i.bks, label %bb.re, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bga, i64 2072 ; 2 uses
  %i.bku = load i64, ptr %i.bkt, align 8, !noalias !32703, !noundef !109 ; 2 uses
  %i.bkv = add i64 %i.bku, -1
  store i64 %i.bkv, ptr %i.bkt, align 8, !noalias !32703
  %i.bkw = icmp eq i64 %i.bku, 1
  br i1 %i.bkw, label %bb.qw, label %bb.re

bb.qw:                                            ; preds = %bb.qv
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bga, i64 2176
  store atomic i64 0, ptr %i.bkx release, align 8, !noalias !32703
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bga, i64 2080
  %i.bkz = load i64, ptr %i.bky, align 8, !noalias !32703, !noundef !109
  %i.bla = icmp eq i64 %i.bkz, 0
  br i1 %i.bla, label %bb.qx, label %bb.re, !prof !112

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB2r_10ValueEntryB1w_NtB1y_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(16) %i.bf) #49
          to label %.body.thread.i.i.i.i unwind label %bb.qz, !noalias !32703

bb.qz:                                            ; preds = %bb.qy, %.body.thread.i.i.i.i
  %i.blb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !32703
  unreachable

bb.ra:                                            ; preds = %bb.pn
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i.i.i212, i64 noundef %i.bft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #48
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
  call void @llvm.experimental.noalias.scope.decl(metadata !32711)
  call void @llvm.experimental.noalias.scope.decl(metadata !32712)
  %i.blh = load ptr, ptr %i.blg, align 8, !alias.scope !32713, !noalias !32655, !nonnull !109, !noundef !109
  %i.bli = atomicrmw add ptr %i.blh, i64 -1 release, align 8, !noalias !32713
  %i.blj = icmp eq i64 %i.bli, 1
  br i1 %i.blj, label %bb.rc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit178.i.i

bb.rc:                                            ; preds = %bb.rb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.blg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit178.i.i unwind label %bb.mz

bb.rd:                                            ; preds = %bb.ra, %bb.qx, %bb.po
  %i.blk = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i.i

.body203.i.i:                                     ; preds = %bb.rd, %.body.thread.i.i.i.i
  %eh.lpad-body204.i.i = phi { ptr, i32 } [ %i.blk, %bb.rd ], [ %.pn.i.i.i.i213, %.body.thread.i.i.i.i ] ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val105.i.i = load ptr, ptr %i.bll, align 8, !noalias !32655, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val105.i.i) #49
          to label %bb.ry unwind label %bb.mz

bb.re:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !32702
  store ptr %i.bkp, ptr %i.bfk, align 8, !noalias !32655
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %i.bkr, ptr %i.blm, align 8, !noalias !32655
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !32655
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  store i8 1, ptr %i.bls, align 8, !noalias !32655
  store ptr %i.bkp, ptr %i.bi, align 8, !noalias !32655
  %i.blt = getelementptr inbounds nuw i8, ptr %0, i64 1194
  store i8 1, ptr %i.blt, align 2, !noalias !32655
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  store ptr %i.bkr, ptr %i.blu, align 8, !noalias !32655
  %i.blv = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.blw = load ptr, ptr %i.blv, align 8, !noalias !32655, !nonnull !109, !align !125, !noundef !109 ; 3 uses
  %i.blx = getelementptr i8, ptr %i.blw, i64 24
  %.val120.i.i = load ptr, ptr %i.blx, align 8, !align !125, !noundef !109
  %.not374.i.i = icmp eq ptr %.val120.i.i, null
  br i1 %.not374.i.i, label %bb.oe, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i8 0, ptr %i.bls, align 8, !noalias !32655
  %.sroa.7330.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store ptr %i.blw, ptr %.sroa.7330.0..sroa_idx.i.i, align 8, !noalias !32655
  %.sroa.8331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store ptr %i.bkp, ptr %.sroa.8331.0..sroa_idx.i.i, align 8, !noalias !32655
  %.sroa.9332.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.blu, ptr %.sroa.9332.0..sroa_idx.i.i, align 8, !noalias !32655
  %.sroa.11334.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1321
  store i8 3, ptr %.sroa.11334.0..sroa_idx.i.i, align 1, !noalias !32655
  %.sroa.12335.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1322
  store i8 0, ptr %.sroa.12335.0..sroa_idx.i.i, align 2, !noalias !32655
  br label %bb.nu

bb.ri:                                            ; preds = %bb.re
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.blz = load ptr, ptr %i.bly, align 8, !noalias !32655, !nonnull !109, !align !125, !noundef !109 ; 4 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 48 ; 2 uses
  %i.bmb = getelementptr i8, ptr %i.blz, i64 72   ; 2 uses
  %.val115.i.i = load ptr, ptr %i.bmb, align 8, !noundef !109 ; 8 uses
  %.not27.i.i = icmp eq ptr %.val115.i.i, null
  br i1 %.not27.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %.val144.i.i = load ptr, ptr %.val115.i.i, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.val144.i.i, i64 8
  %.val.i.i45.i = load ptr, ptr %i.bmc, align 8, !nonnull !109, !noundef !109 ; 4 uses
  %.val1.i.i.i = load ptr, ptr %i.bfi, align 8, !noalias !32655, !nonnull !109, !noundef !109 ; 4 uses
  %i.bmd = icmp eq ptr %.val.i.i45.i, %.val1.i.i.i
  br i1 %i.bmd, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread369.i.i, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  call void @llvm.experimental.noalias.scope.decl(metadata !32714)
  call void @llvm.experimental.noalias.scope.decl(metadata !32715)
  %i.bme = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 32
  %i.bmf = load i64, ptr %i.bme, align 8, !alias.scope !32714, !noundef !109 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 32
  %i.bmh = load i64, ptr %i.bmg, align 8, !alias.scope !32715, !noundef !109
  %i.bmi = icmp eq i64 %i.bmf, %i.bmh
  br i1 %i.bmi, label %bb.rl, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.rl:                                            ; preds = %bb.rk
  %i.bmj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.bmk = load ptr, ptr %i.bmj, align 8, !alias.scope !32715, !nonnull !109, !noundef !109
  %i.bml = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 24
  %i.bmm = load ptr, ptr %i.bml, align 8, !alias.scope !32714, !nonnull !109, !noundef !109
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bmm, ptr nonnull %i.bmk, i64 %i.bmf), !noalias !32716
  %i.bmn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bmn, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.rl
  %i.bmo = getelementptr inbounds nuw i8, ptr %.val.i.i45.i, i64 40
  %i.bmp = load i64, ptr %i.bmo, align 8, !alias.scope !32714, !noundef !109
  %i.bmq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 40
  %i.bmr = load i64, ptr %i.bmq, align 8, !alias.scope !32715, !noundef !109
  %i.bms = icmp eq i64 %i.bmp, %i.bmr
  br i1 %i.bms, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread369.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread369.i.i: ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.rj
  %i.bmt = getelementptr inbounds nuw i8, ptr %.val144.i.i, i64 16
  %i.bmu = load i64, ptr %i.bmt, align 8, !noundef !109
  %i.bmv = load i64, ptr %i.bfg, align 8, !noalias !32655, !noundef !109
  %i.bmw = icmp eq i64 %i.bmu, %i.bmv
  br i1 %i.bmw, label %bb.rm, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.rm:                                            ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread369.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32717)
  call void @llvm.experimental.noalias.scope.decl(metadata !32718)
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blz, i64 80 ; 2 uses
  %i.bmy = load ptr, ptr %i.bmx, align 8, !alias.scope !32719, !noundef !109 ; 4 uses
  %i.bmz = icmp eq ptr %i.bmy, %.val115.i.i
  br i1 %i.bmz, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bna = load i64, ptr %i.bma, align 8, !range !116, !alias.scope !32719, !noundef !109
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.blz, i64 56 ; 2 uses
  %i.bnc = trunc nuw i64 %i.bna to i1
  br i1 %i.bnc, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.bnd = load ptr, ptr %i.bnb, align 8, !alias.scope !32719, !noundef !109 ; 2 uses
  %i.bne = icmp eq ptr %i.bnd, %.val115.i.i
  br i1 %i.bne, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.rq, %bb.ro, %bb.rn
  %i.bnf = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 16 ; 2 uses
  %i.bng = load ptr, ptr %i.bnf, align 8, !noalias !32719, !noundef !109 ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 8 ; 2 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !noalias !32719, !noundef !109 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bng, null
  br i1 %.not12.i.i.i.i, label %bb.rs, label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %i.bnk = load ptr, ptr %i.bnj, align 8, !noalias !32719, !noundef !109
  store i64 1, ptr %i.bma, align 8, !alias.scope !32719
  store ptr %i.bnk, ptr %i.bnb, align 8, !alias.scope !32719
  br label %bb.rp

bb.rr:                                            ; preds = %bb.rp
  %cond.i.i.i.i = icmp eq ptr %i.bni, null
  br i1 %cond.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %.thread.i.i.i.i228

bb.rs:                                            ; preds = %bb.rp
  store ptr %i.bni, ptr %i.bmb, align 8, !alias.scope !32719
  %.not14.i.i.i.i = icmp eq ptr %i.bni, null
  br i1 %.not14.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.rt

.thread.i.i.i.i228:                               ; preds = %bb.rr
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bng, i64 8
  store ptr %i.bni, ptr %i.bnl, align 8, !noalias !32719
  br label %bb.rt

bb.rt:                                            ; preds = %.thread.i.i.i.i228, %bb.rs
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bni, i64 16
  store ptr %i.bng, ptr %i.bnm, align 8, !noalias !32719
  store ptr %i.bmy, ptr %i.bnf, align 8, !noalias !32719
  store ptr null, ptr %i.bnh, align 8, !noalias !32719
  %.not15.i.i.i.i = icmp eq ptr %i.bmy, null
  br i1 %.not15.i.i.i.i, label %bb.rv, label %bb.ru, !prof !112

bb.ru:                                            ; preds = %bb.rt
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bmy, i64 8
  store ptr %.val115.i.i, ptr %i.bnn, align 8, !noalias !32719
  store ptr %.val115.i.i, ptr %i.bmx, align 8, !alias.scope !32719
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.rv:                                            ; preds = %bb.rt
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48
          to label %.noexc209.i.i unwind label %bb.rw

.noexc209.i.i:                                    ; preds = %bb.rv
  unreachable

bb.rw:                                            ; preds = %bb.rv
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i
  %i.bnp = phi ptr [ %i.baz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i ], [ %i.bfa, %bb.rw ]
  %i.bnq = phi ptr [ %i.bba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i ], [ %i.bfb, %bb.rw ]
  %i.bnr = phi ptr [ %i.bbb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i ], [ %i.bfc, %bb.rw ]
  %i.bns = phi ptr [ %i.bbc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i ], [ %i.bfd, %bb.rw ]
  %.pn40.pn.i.i = phi { ptr, i32 } [ %.pn40.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i ], [ %i.bno, %bb.rw ]
  %i.bnt = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val104.i.i = load ptr, ptr %i.bnt, align 8, !noalias !32655, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val104.i.i) #49
          to label %bb.oj unwind label %bb.mz

bb.ry:                                            ; preds = %.body203.i.i
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.bnu) #49
          to label %bb.rz unwind label %bb.mz

bb.rz:                                            ; preds = %bb.ry
  call void @llvm.experimental.noalias.scope.decl(metadata !32720)
  call void @llvm.experimental.noalias.scope.decl(metadata !32721)
  %i.bnv = load ptr, ptr %i.bfi, align 8, !alias.scope !32722, !noalias !32655, !nonnull !109, !noundef !109
  %i.bnw = atomicrmw add ptr %i.bnv, i64 -1 release, align 8, !noalias !32722
  %i.bnx = icmp eq i64 %i.bnw, 1
  br i1 %i.bnx, label %bb.sa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit178.i.i

bb.sa:                                            ; preds = %bb.rz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bfi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit178.i.i unwind label %bb.mz

.body662:                                         ; preds = %bb.rf, %bb.oc, %bb.nv
  %i.bny = phi ptr [ %i.azl, %bb.nv ], [ %i.bln, %bb.rf ], [ %i.azl, %bb.oc ] ; 3 uses
  %i.bnz = phi ptr [ %i.azm, %bb.nv ], [ %i.blo, %bb.rf ], [ %i.azm, %bb.oc ] ; 3 uses
  %i.boa = phi ptr [ %i.azn, %bb.nv ], [ %i.blp, %bb.rf ], [ %i.azn, %bb.oc ] ; 3 uses
  %i.bob = phi ptr [ %i.azo, %bb.nv ], [ %i.blq, %bb.rf ], [ %i.azo, %bb.oc ] ; 3 uses
  %.pn38.i.i = phi { ptr, i32 } [ %i.azr, %bb.nv ], [ %i.blr, %bb.rf ], [ %i.azy, %bb.oc ] ; 3 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %0, i64 1194 ; 2 uses
  %i.bod = load i8, ptr %i.boc, align 2, !range !113, !noalias !32655, !noundef !109
  %i.boe = trunc nuw i8 %i.bod to i1
  br i1 %i.boe, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sc, %.body662
  store i8 0, ptr %i.boc, align 2, !noalias !32655
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bog = load i8, ptr %i.bof, align 8, !range !113, !noalias !32655, !noundef !109
  %i.boh = trunc nuw i8 %i.bog to i1
  br i1 %i.boh, label %bb.sd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i

bb.sc:                                            ; preds = %.body662
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.val96.i.i = load ptr, ptr %i.boi, align 8, !noalias !32655, !nonnull !109, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val96.i.i) #49
          to label %bb.sb unwind label %bb.mz

bb.sd:                                            ; preds = %bb.sb
  call void @llvm.experimental.noalias.scope.decl(metadata !32723)
  call void @llvm.experimental.noalias.scope.decl(metadata !32724)
  %i.boj = load ptr, ptr %i.bi, align 8, !alias.scope !32725, !noalias !32655, !nonnull !109, !noundef !109
  %i.bok = atomicrmw add ptr %i.boj, i64 -1 release, align 8, !noalias !32725
  %i.bol = icmp eq i64 %i.bok, 1
  br i1 %i.bol, label %bb.se, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i

bb.se:                                            ; preds = %bb.sd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit213.i.i unwind label %bb.mz

bb.sf:                                            ; preds = %bb.lv, %bb.jx
  %i.bom = phi ptr [ %i.ami, %bb.lv ], [ %i.ajc, %bb.jx ] ; 4 uses
  %i.bon = phi ptr [ %i.amj, %bb.lv ], [ %i.ajb, %bb.jx ] ; 3 uses
  %i.boo = phi ptr [ %i.amv, %bb.lv ], [ %.phi.trans.insert365.i, %bb.jx ] ; 4 uses
  %i.bop = phi ptr [ %i.amw, %bb.lv ], [ %i.amh, %bb.jx ] ; 3 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %.val116.i.i = load ptr, ptr %1, align 8, !alias.scope !32655
  %i.bor = invoke fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.boq, ptr %.val116.i.i)
          to label %bb.sh unwind label %bb.sg     ; 2 uses

bb.sg:                                            ; preds = %bb.sf
  %i.bos = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.boq) #49
          to label %.body220.i.i unwind label %bb.mz

bb.sh:                                            ; preds = %bb.sf
  %i.bot = icmp eq ptr %i.bor, null
  br i1 %i.bot, label %bb.up, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.bou = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bov = load i8, ptr %i.bou, align 8, !range !129, !noalias !32655, !noundef !109
  %cond.i214.i.i = icmp eq i8 %i.bov, 3
  br i1 %cond.i214.i.i, label %bb.sj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit222.i.i

bb.sj:                                            ; preds = %bb.si
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.box = load i32, ptr %i.bow, align 8, !range !135, !noalias !32655, !noundef !109
  %i.boy = icmp eq i32 %i.box, -2
  br i1 %i.boy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit222.i.i, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.boz = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bpb = load ptr, ptr %i.boz, align 8, !noalias !32655, !align !125, !noundef !109 ; 2 uses
  store ptr null, ptr %i.boz, align 8, !noalias !32655
  %i.bpc = load i8, ptr %i.bpa, align 8, !range !113, !noalias !32655, !noundef !109
  %i.bpd = trunc nuw i8 %i.bpc to i1
  %.not.i.i.i.i.i.i.i.i215.i.i = icmp ne ptr %i.bpb, null
  %or.cond.not.i.i.i.i.i.i.i.i216.i.i = and i1 %.not.i.i.i.i.i.i.i.i215.i.i, %i.bpd
  br i1 %or.cond.not.i.i.i.i.i.i.i.i216.i.i, label %bb.sl, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i217.i.i

bb.sl:                                            ; preds = %bb.sk
  %i.bpe = atomicrmw add ptr %i.bpb, i64 -2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i217.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i217.i.i: ; preds = %bb.sl, %bb.sk
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.val.i.i.i.i.i.i218.i.i = load ptr, ptr %i.bpf, align 8, !noalias !32655, !align !125, !noundef !109 ; 4 uses
  %i.bpg = icmp eq ptr %.val.i.i.i.i.i.i218.i.i, null
  br i1 %i.bpg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit222.i.i, label %bb.sm

bb.sm:                                            ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i217.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i218.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i219.i.i unwind label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bph = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i218.i.i, i64 noundef 56, i64 noundef 8) #44
  br label %.body220.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i219.i.i: ; preds = %bb.sm
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i218.i.i, i64 noundef 56, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit222.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit222.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i219.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i217.i.i, %bb.sj, %bb.si
  store ptr %i.bor, ptr %i.boq, align 8, !noalias !32655
  br label %bb.lw

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.lw
  store ptr %.val137.i.i, ptr %i.ats, align 8, !noalias !32655
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 1193 ; 2 uses
  store i8 1, ptr %i.bpi, align 1, !noalias !32655
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bpk = load ptr, ptr %i.bpj, align 8, !noalias !32655, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bpm = load i64, ptr %i.bpl, align 8, !noalias !32655, !noundef !109 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 1190 ; 2 uses
  %.val149.i.i = load ptr, ptr %i.bpn, align 8, !noalias !32655
  %.val150.i.i = load i16, ptr %i.bpo, align 2, !noalias !32655
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 176
  %i.bpq = load i32, ptr %i.bpp, align 8, !noundef !109 ; 2 uses
  %i.bpr = icmp eq i32 %i.bpq, 64
  %i.bps = and i32 %i.bpq, 63
  %i.bpt = zext nneg i32 %i.bps to i64
  %i.bpu = lshr i64 %i.bpm, %i.bpt
  %.sroa.03.0.i.i223.i.i = select i1 %i.bpr, i64 0, i64 %i.bpu ; 3 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpk, i64 144
end_hunk_4
begin_hunk_5_@_RNvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB5_5InneruE6removeCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  br i1 %3, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.critedge

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !36018)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !36019, !noundef !109 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !36019, !noundef !109
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !36019, !nonnull !109, !noundef !109
  call void %i.aa(ptr noundef %.val1.i.i.i.i.i), !noalias !36019, !inline_history !36001
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !36020)
  call void @llvm.experimental.noalias.scope.decl(metadata !36021)
  call void @llvm.experimental.noalias.scope.decl(metadata !36022)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !36023, !nonnull !109, !noundef !109
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !36023
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.critedge: ; preds = %bb.o, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !109
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36027)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.critedge, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 3, ptr %i.c, align 8
  %i.ah = load i8, ptr %i.b, align 8, !range !129, !noundef !109 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !112

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !113, !noundef !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.am, align 1
  invoke fastcc void @_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.x, %bb.t
  %i.an = phi i8 [ %.pr, %bb.x ], [ %i.ah, %bb.t ] ; 2 uses
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !129, !noundef !109
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.y:                                             ; preds = %bb.ag, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.ap, %bb.w ], [ %i.ap, %bb.z ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.c) #49
          to label %bb.ah unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.b) #49
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.ae, %bb.ab, %bb.ad, %bb.af, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !129, !alias.scope !36028
  %i.at = icmp eq i8 %.pre, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !109
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !36024)
  call void @llvm.experimental.noalias.scope.decl(metadata !36025)
  call void @llvm.experimental.noalias.scope.decl(metadata !36026)
  call void @llvm.experimental.noalias.scope.decl(metadata !36027)
  br i1 %i.at, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ab:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36029)
  %i.ax = icmp eq i8 %i.an, 2
  br i1 %i.ax, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36030)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !36031, !noundef !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !36031, !noundef !109
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !36031, !nonnull !109, !noundef !109
  invoke void %i.bc(ptr noundef %.val1.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.ag, !inline_history !252

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36034)
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !36035, !nonnull !109, !noundef !109
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !36035
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ah:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.d) #49
          to label %bb.ai unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE12unlink_timerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !113, !noundef !109
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.c, align 1, !alias.scope !36040
  %i.d = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.d, label %bb.c, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !36040
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 2, !alias.scope !36040
  %i.e = zext i8 %.sroa.4.0.copyload.i to i64     ; 3 uses
  %i.f = zext i8 %.sroa.5.0.copyload.i to i64     ; 3 uses
  %i.g = icmp ugt i64 %.8.val, %i.e
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !109 ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.f
  br i1 %i.k, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.8.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !nonnull !109, !noundef !109
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.f ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36041)
  %i.n = load i64, ptr %i.m, align 8, !range !116, !alias.scope !36041, !noundef !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %bb.g, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !36041, !noundef !109 ; 2 uses
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.h, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !36041, !noundef !109
  store i64 1, ptr %i.m, align 8, !alias.scope !36041
  store ptr %i.t, ptr %i.o, align 8, !alias.scope !36041
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !36041, !noundef !109 ; 2 uses
  %.not3.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !36041, !noundef !109 ; 3 uses
  %..i = select i1 %.not3.i, ptr %i.m, ptr %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %..i, i64 24
  store ptr %i.x, ptr %i.y, align 8
  %.not4.i = icmp eq ptr %i.x, null
  %.sink9.i = select i1 %.not4.i, ptr %i.m, ptr %i.x
  %i.z = load ptr, ptr %i.u, align 8, !noalias !36041, !noundef !109
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink9.i, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !36041
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !36041, !noundef !109
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !36041
  %i.ae = load i8, ptr %0, align 8, !range !113, !noundef !109
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.k, !prof !114

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #48
  unreachable

bb.j:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  store i8 0, ptr %i.c, align 1
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #48
  unreachable

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE8positionCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.j, %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE22schedule_existing_nodeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !113, !noundef !109
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp ugt i64 %i.f, -4097
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 8, !range !113, !noundef !109
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.n, !prof !114

bb.e:                                             ; preds = %bb.c
  %i.j = and i64 %i.f, -4096                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.k, align 8, !noundef !109
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.l, align 8, !noundef !109
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
  br i1 %i.r, label %bb.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.01.i.lcssa23 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @621, i64 %.sroa.0.01.i.lcssa23
  %i.t = load i64, ptr %i.s, align 8, !noundef !109
  %i.u = and i64 %i.t, 63
  %i.v = lshr i64 %i.n, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @622, i64 %.sroa.0.01.i.lcssa23
  %i.x = load i64, ptr %i.w, align 8, !noundef !109
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.v, %i.y
  br label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.h, %bb.i
  %.sroa.3.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.01.i.lcssa23, %bb.i ], [ 4, %bb.h ] ; 4 uses
  %i.aa = load i8, ptr %1, align 8, !range !113, !noundef !109
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !114

bb.j:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %1, i64 16
  %.val16 = load ptr, ptr %i.ad, align 8, !nonnull !109, !noundef !109 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val16, i64 8 ; 4 uses
  %i.af = cmpxchg weak ptr %i.ae, i8 0, i8 1 acquire monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.k, !prof !114

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
  br i1 %i.al, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.m, !prof !114

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.n:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #48
  unreachable

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.m, %bb.l, %bb.r
  %.sroa.0.0 = phi ptr [ null, %bb.r ], [ %1, %bb.l ], [ %1, %bb.m ]
  ret ptr %.sroa.0.0

bb.o:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.am = trunc nuw nsw i64 %.sroa.0.0.i to i8
  %i.an = trunc i64 %.sroa.3.0.i to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ao, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.am, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.an, ptr %.sroa.5.0..sroa_idx, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !109 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0.0.i, %i.aq
  br i1 %i.ar, label %bb.q, label %.invoke

bb.p:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14bucket_indicesCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #48
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %0, align 8, !nonnull !109, !noundef !109
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.0.0.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !109 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.3.0.i, %i.av
  br i1 %i.aw, label %bb.r, label %.invoke

.invoke:                                          ; preds = %bb.q, %bb.o
  %i.ax = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.3.0.i, %bb.q ]
  %i.ay = phi i64 [ %i.aq, %bb.o ], [ %i.av, %bb.q ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624) #48
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.at, align 8, !nonnull !109, !noundef !109
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.sroa.3.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36046)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.bb, align 8, !alias.scope !36046
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !36045, !noundef !109 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !36046
  %.not.i = icmp eq ptr %i.bd, null
  %..i = select i1 %.not.i, ptr %i.ba, ptr %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %..i, i64 24
  store ptr %1, ptr %i.bf, align 8, !noalias !36046
  store ptr %1, ptr %i.bc, align 8, !alias.scope !36045
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !36045, !noundef !109
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !alias.scope !36045
  br label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit

end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8completeCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36142
  store i32 2, ptr %i.a, align 8, !noalias !36142
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36142
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  invoke void @_RNvMs6_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.g)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.d
  %i.h = invoke noundef i64 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc5
  %i.i = and i64 %i.h, 8
  %.not2.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %.noexc6
  invoke void @_RNvMs6_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc5, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !126, !invariant.load !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !126, !invariant.load !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #44
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.w, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2d_9GetResult5bytes00ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE25unlink_node_ao_from_dequeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.m = load i8, ptr %i.l, align 8, !range !129, !noundef !109 ; 2 uses
  store i8 %i.m, ptr %i.b, align 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.42.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtB6_5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCskTBvlRM5ILY_4moka6common11CacheRegionjECsDbzj4lZ5l5_11goosefs_sdk(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @640, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @641) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !109 ; 2 uses
  %.not = icmp ne ptr %i.r, null                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36155)
  %i.v = load i64, ptr %2, align 8, !range !116, !alias.scope !36155, !noundef !109
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !36155, !noundef !109 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !36155, !noundef !109 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !36155, !noundef !109
  store i64 1, ptr %2, align 8, !alias.scope !36155
  store ptr %i.ad, ptr %i.w, align 8, !alias.scope !36155
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !36155
  %.pre = load ptr, ptr %i.q, align 8, !noalias !36155
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.s, align 8, !alias.scope !36155
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ null, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !noalias !36155
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !alias.scope !36155
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.k, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !36155
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !36155, !noundef !109
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 8, !alias.scope !36155
  %.val.i = load ptr, ptr %i.i, align 8, !nonnull !109, !noundef !109 ; 4 uses
  %i.al = atomicrmw add ptr %.val.i, i32 -1 release, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.m:                                             ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36156)
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36160)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !36161, !nonnull !109, !noundef !109
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !36161
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #44
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #44
  resume { ptr, i32 } %i.ar

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE6unlinkCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtB1f_10entry_info9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #44
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB5_14NamespaceLevel2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !111, !noundef !109
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !109, !noundef !109
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !109
  tail call fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr nonnull %.val, i64 %.val1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB5_14NamespaceLevel4name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !111, !noundef !109
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs40k4W9msRzi_5alloc6string6StringE6map_orReNCNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB1D_14NamespaceLevel4names_0EB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !109 ; 2 uses
  %.not2 = icmp eq i64 %i.c, 0
  br i1 %.not2, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs40k4W9msRzi_5alloc6string6StringE6map_orReNCNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB1D_14NamespaceLevel4names_0EB1F_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !109, !noundef !109
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %i.c ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs40k4W9msRzi_5alloc6string6StringE6map_orReNCNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB1D_14NamespaceLevel4names_0EB1F_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 -16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !36164, !nonnull !109, !noundef !109
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !36164, !noundef !109
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs40k4W9msRzi_5alloc6string6StringE6map_orReNCNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB1D_14NamespaceLevel4names_0EB1F_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs40k4W9msRzi_5alloc6string6StringE6map_orReNCNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB1D_14NamespaceLevel4names_0EB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %.val5.i, %bb.d ], [ 5, %bb.c ], [ 5, %bb.a ], [ 5, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.d ], [ @642, %bb.c ], [ @642, %bb.a ], [ @642, %bb.b ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB5_14NamespaceLevel8child_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 8, !range !111, !noundef !109
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !109, !noundef !109
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.d, align 8, !noundef !109
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val, i64 %.val3)
          to label %bb.f unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.e = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !112

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #48
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !36172, !noundef !109 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !127, !alias.scope !36172, !noundef !109
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h, !noalias !36173

bb.h:                                             ; preds = %bb.g
end_hunk_6
begin_hunk_7_@_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37558

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.j, %._crit_edge.i.i, %bb.b
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.bp = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, i8 noundef 0)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37572 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.be, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.am, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.bb, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.aj, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %i.bq = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %bb.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.i:                                             ; preds = %.loopexit17.i.i
  %i.br = inttoptr i64 %.pre-phi.i.i to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val21.i.i = load ptr, ptr %i.bs, align 8, !noalias !37572, !nonnull !109, !noundef !109 ; 2 uses
  %i.bt = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !37572
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, !prof !112

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #48
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37572

.noexc22.i.i:                                     ; preds = %bb.j
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i, %bb.c, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i, %bb.f, %bb.i, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.i ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i ] ; 9 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.k unwind label %bb.p, !noalias !37572

bb.k:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.bv = icmp eq ptr %i.t, null
  br i1 %i.bv, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !37572, !noundef !109 ; 2 uses
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8, !noalias !37572
  %i.bz = icmp eq i64 %i.bx, 1
  br i1 %i.bz, label %bb.m, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  store atomic i64 0, ptr %i.ca release, align 8, !noalias !37572
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !37572, !noundef !109
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.n, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !112

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.t), !noalias !37572
  br label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.o:                                             ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.bp, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.bp ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !37573, !noundef !109 ; 2 uses
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  %i.ch = and i64 %i.cg, %2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.p:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %storemerge.i.i) #49
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.q, !noalias !37572

bb.q:                                             ; preds = %bb.p, %.thread.loopexit.split-lp.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !37572
  unreachable

common.resume:                                    ; preds = %bb.ai, %.thread.loopexit.split-lp.i.i, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %i.fk, %bb.ay ], [ %i.dz, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #48
  unreachable

_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37572
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !37579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %3, ptr %i.e, align 8, !noalias !37580
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %4, ptr %i.cj, align 8, !noalias !37580
  %i.ck = getelementptr i8, ptr %storemerge.i.i, i64 32 ; 2 uses
  %.val.i = load ptr, ptr %i.ck, align 8, !noalias !37580, !nonnull !109, !noundef !109 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.cm = cmpxchg weak ptr %i.cl, i8 0, i8 1 acquire monotonic, align 1, !noalias !37579
  %i.cn = extractvalue { i8, i1 } %i.cm, 1
  br i1 %i.cn, label %.noexc, label %bb.t, !prof !114

bb.t:                                             ; preds = %bb.s
  %i.co = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.cl, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.ai    ; 0 uses

.noexc:                                           ; preds = %bb.t, %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !37579, !noundef !109 ; 2 uses
  %i.cr = cmpxchg ptr %i.cl, i8 1, i8 0 release monotonic, align 1, !noalias !37579
  %i.cs = extractvalue { i8, i1 } %i.cr, 1
  br i1 %i.cs, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.u, !prof !114

bb.u:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.cl, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.ai

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.u, %.noexc
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.ct = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 8 uses
  %i.cw = and i64 %i.ct, 3                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37580
  store i64 %i.cw, ptr %i.d, align 8, !noalias !37580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37580
  %i.cx = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %i.cx)
  store ptr %i.cv, ptr %i.c, align 8, !noalias !37580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37580
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cz = load i8, ptr %i.cy, align 8, !range !129, !alias.scope !37579, !noundef !109 ; 2 uses
  store i8 %i.cz, ptr %i.b, align 1, !noalias !37580
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = icmp eq i64 %i.cw, %i.da
  br i1 %i.db, label %bb.x, label %bb.w, !prof !114

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37580
  store ptr %i.e, ptr %i.a, align 8, !noalias !37580
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !37580
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.dc, align 8, !noalias !37580
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEENtB6_5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !37580
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCskTBvlRM5ILY_4moka6common11CacheRegionjECsDbzj4lZ5l5_11goosefs_sdk(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @33, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #48
          to label %.noexc10 unwind label %bb.ai

.noexc10:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37580
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !37579, !noundef !109 ; 3 uses
  %.not9.i = icmp ne ptr %i.de, null              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !37579
  %i.dh = icmp eq ptr %i.dg, %i.cv
  %or.cond.i = select i1 %.not9.i, i1 true, i1 %i.dh
  br i1 %or.cond.i, label %bb.y, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !37581)
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !37582, !noundef !109 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv
  br i1 %i.dk, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load i64, ptr %5, align 8, !range !116, !alias.scope !37582, !noundef !109
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dn = trunc nuw i64 %i.dl to i1
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.dm, align 8, !alias.scope !37582, !noundef !109 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cv
  br i1 %i.dp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !37582, !noundef !109 ; 5 uses
  br i1 %.not9.i, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !37582, !noundef !109
  store i64 1, ptr %5, align 8, !alias.scope !37582
  store ptr %i.dt, ptr %i.dm, align 8, !alias.scope !37582
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %cond.i.i = icmp eq ptr %i.dr, null
  br i1 %cond.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.thread.i.i

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.dr, ptr %i.df, align 8, !alias.scope !37582
  %.not14.i.i = icmp eq ptr %i.dr, null
  br i1 %.not14.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.af

.thread.i.i:                                      ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dr, ptr %i.du, align 8, !noalias !37582
  br label %bb.af

bb.af:                                            ; preds = %.thread.i.i, %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.de, ptr %i.dv, align 8, !noalias !37582
  store ptr %i.dj, ptr %i.dd, align 8, !noalias !37582
  store ptr null, ptr %i.dq, align 8, !noalias !37582
  %.not15.i.i8 = icmp eq ptr %i.dj, null
  br i1 %.not15.i.i8, label %.invoke, label %bb.ag, !prof !112

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.cv, ptr %i.dw, align 8, !noalias !37582
  store ptr %i.cv, ptr %i.di, align 8, !alias.scope !37582
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37580
  br label %bb.aj

bb.ah:                                            ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_ao0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !noundef !109 ; 7 uses
  %.not3 = icmp eq ptr %i.dy, null
  br i1 %.not3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ba

bb.ai:                                            ; preds = %.invoke, %bb.am, %bb.al, %bb.w, %bb.u, %bb.t
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %storemerge.i.i) #49
          to label %common.resume unwind label %bb.az

bb.aj:                                            ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE19access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !37583)
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !37583, !nonnull !109, !noundef !109 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 52
  %i.ed = load atomic i16, ptr %i.ec monotonic, align 2, !noalias !37583
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 54
  %i.ef = load atomic i16, ptr %i.ee monotonic, align 2, !noalias !37583
  %.not24 = icmp eq i16 %i.ed, %i.ef
  fence acquire
  br i1 %.not24, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !37584)
  %.val.i12 = load ptr, ptr %i.ck, align 8, !noalias !37584, !nonnull !109, !noundef !109 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i12, i64 8 ; 4 uses
  %i.eh = cmpxchg weak ptr %i.eg, i8 0, i8 1 acquire monotonic, align 1, !noalias !37584
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %.noexc20, label %bb.al, !prof !114

bb.al:                                            ; preds = %bb.ak
  %i.ej = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eg, i64 undef, i32 noundef -1)
          to label %.noexc20 unwind label %bb.ai  ; 0 uses

.noexc20:                                         ; preds = %bb.al, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i12, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !37584, !noundef !109 ; 8 uses
  %i.em = cmpxchg ptr %i.eg, i8 1, i8 0 release monotonic, align 1, !noalias !37584
  %i.en = extractvalue { i8, i1 } %i.em, 1
  br i1 %i.en, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.am, !prof !114

bb.am:                                            ; preds = %.noexc20
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.ai

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.am, %.noexc20
  %.not.i13 = icmp eq ptr %i.el, null
  br i1 %.not.i13, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.an

bb.an:                                            ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !37584, !noundef !109 ; 3 uses
  %.not2.i = icmp ne ptr %i.ep, null              ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !37584
  %i.es = icmp eq ptr %i.er, %i.el
  %or.cond.i14 = select i1 %.not2.i, i1 true, i1 %i.es
  br i1 %or.cond.i14, label %bb.ao, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !37585)
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !37586, !noundef !109 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, %i.el
  br i1 %i.ev, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %6, align 8, !range !116, !alias.scope !37586, !noundef !109
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ey = trunc nuw i64 %i.ew to i1
  br i1 %i.ey, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ez = load ptr, ptr %i.ex, align 8, !alias.scope !37586, !noundef !109 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.el
  br i1 %i.fa, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !37586, !noundef !109 ; 5 uses
  br i1 %.not2.i, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !37586, !noundef !109
  store i64 1, ptr %6, align 8, !alias.scope !37586
  store ptr %i.fe, ptr %i.ex, align 8, !alias.scope !37586
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %cond.i.i18 = icmp eq ptr %i.fc, null
  br i1 %cond.i.i18, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i.i19

bb.au:                                            ; preds = %bb.ar
  store ptr %i.fc, ptr %i.eq, align 8, !alias.scope !37586
  %.not14.i.i16 = icmp eq ptr %i.fc, null
  br i1 %.not14.i.i16, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.av

.thread.i.i19:                                    ; preds = %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !noalias !37586
  br label %bb.av

bb.av:                                            ; preds = %.thread.i.i19, %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ep, ptr %i.fg, align 8, !noalias !37586
  store ptr %i.eu, ptr %i.eo, align 8, !noalias !37586
  store ptr null, ptr %i.fb, align 8, !noalias !37586
  %.not15.i.i17 = icmp eq ptr %i.eu, null
  br i1 %.not15.i.i17, label %.invoke, label %bb.aw, !prof !112

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.el, ptr %i.fh, align 8, !noalias !37586
  store ptr %i.el, ptr %i.et, align 8, !alias.scope !37586
  br label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.invoke:                                          ; preds = %bb.af, %bb.av
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48
          to label %.cont unwind label %bb.ai

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.aw, %bb.au, %bb.at, %bb.ao, %bb.an, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE18write_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.aj
  %i.fi = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ax:                                            ; preds = %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.ax
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.ba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE24move_to_back_wo_in_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.ah
  ret void

bb.az:                                            ; preds = %bb.ai
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ba:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !37587)
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !37587, !noundef !109 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, %i.dy
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load i64, ptr %5, align 8, !range !116, !alias.scope !37587, !noundef !109
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fr = trunc nuw i64 %i.fp to i1
  br i1 %i.fr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fs = load ptr, ptr %i.fq, align 8, !alias.scope !37587, !noundef !109 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dy
  br i1 %i.ft, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc, %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !37587, !noundef !109 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !37587, !noundef !109 ; 5 uses
  %.not12.i = icmp eq ptr %i.fv, null
  br i1 %.not12.i, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !37587, !noundef !109
  store i64 1, ptr %5, align 8, !alias.scope !37587
  store ptr %i.fz, ptr %i.fq, align 8, !alias.scope !37587
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  %cond.i = icmp eq ptr %i.fx, null
  br i1 %cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i

bb.bg:                                            ; preds = %bb.bd
  store ptr %i.fx, ptr %i.dx, align 8, !alias.scope !37587
  %.not14.i = icmp eq ptr %i.fx, null
  br i1 %.not14.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.bh

.thread.i:                                        ; preds = %bb.bf
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fx, ptr %i.ga, align 8, !noalias !37587
  br label %bb.bh

bb.bh:                                            ; preds = %.thread.i, %bb.bg
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %i.fv, ptr %i.gb, align 8, !noalias !37587
  store ptr %i.fn, ptr %i.fu, align 8, !noalias !37587
  store ptr null, ptr %i.fw, align 8, !noalias !37587
  %.not15.i = icmp eq ptr %i.fn, null
  br i1 %.not15.i, label %bb.bj, label %bb.bi, !prof !112

bb.bi:                                            ; preds = %bb.bh
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.dy, ptr %i.gc, align 8, !noalias !37587
  store ptr %i.dy, ptr %i.fm, align 8, !alias.scope !37587
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bj:                                            ; preds = %bb.bh
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !37587
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_woCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 8, !noundef !109 ; 2 uses
  %i.d = icmp eq i32 %i.c, 64
  %i.e = and i32 %i.c, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 %2, %i.f
  %.sroa.02.0.i = select i1 %i.d, i64 0, i64 %i.g ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !noundef !109 ; 2 uses
  %i.j = icmp ult i64 %.sroa.02.0.i, %i.i
  br i1 %i.j, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !109, !noundef !109
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.02.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37604
  %i.o = tail call fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsc93vp1BCDlY_26lance_namespace_datafusion(), !noalias !37604 ; 7 uses
  store ptr %i.o, ptr %i.a, align 8, !noalias !37604
  %i.p = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.m)
          to label %.preheader.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37604 ; 3 uses

.preheader.i.i:                                   ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !37605, !noundef !109 ; 2 uses
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = and i64 %i.s, %2                         ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i43.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.lr.ph.i.i

._crit_edge.i.peel.i.lr.ph.i.i:                   ; preds = %.preheader.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.u, align 8              ; 4 uses
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !109 ; 2 uses
  %i.z = load i64, ptr %i.w, align 8              ; 2 uses
  br label %._crit_edge.i.peel.i.i.i

.thread.loopexit.split-lp.i.i:                    ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.p ], [ %lpad.loopexit.split-lp115, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %i.o) #49
          to label %common.resume unwind label %bb.q, !noalias !37604

._crit_edge.i.peel.i.i.i:                         ; preds = %bb.o, %._crit_edge.i.peel.i.lr.ph.i.i
  %i.aa = phi i64 [ %i.t, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ab = phi i64 [ %i.s, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.sroa.07.044.i.i = phi ptr [ %i.p, %._crit_edge.i.peel.i.lr.ph.i.i ], [ %spec.select.i.i, %bb.o ] ; 4 uses
  %i.ac = load ptr, ptr %.sroa.07.044.i.i, align 8, !noalias !37605, !nonnull !109, !noundef !109 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !37606 ; 3 uses
  %i.af = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %.loopexit.i.i

bb.c:                                             ; preds = %._crit_edge.i.peel.i.i.i
  %i.ah = and i64 %i.ae, -8                       ; 3 uses
  %.not15.peel.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not15.peel.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = inttoptr i64 %i.ah to ptr
  %.val17.peel.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !37605, !nonnull !109, !noundef !109 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37607)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !37607, !noalias !37605, !noundef !109
  %i.al = icmp eq i64 %i.ak, %i.x
  br i1 %i.al, label %bb.e, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !37607, !noalias !37605, !nonnull !109, !noundef !109
  %bcmp.i.i.i.peel.i.i.i = call i32 @bcmp(ptr nonnull %i.an, ptr nonnull %i.y, i64 %i.x), !noalias !37608
  %i.ao = icmp eq i32 %bcmp.i.i.i.peel.i.i.i, 0
  br i1 %i.ao, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !37607, !noalias !37605, !noundef !109
  %i.ar = icmp eq i64 %i.aq, %i.z
  br i1 %i.ar, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, %bb.e, %bb.d
  %.not.i.i38.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i38.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %.preheader.i.i
  %.lcssa.i.i = phi i64 [ %i.t, %.preheader.i.i ], [ %i.cc, %bb.o ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #48
          to label %.noexc.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37604

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i
  %.sroa.17.0.i39.i.i = phi i64 [ %i.as, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i ]
  %i.as = add nuw i64 %.sroa.17.0.i39.i.i, 1      ; 3 uses
  %i.at = add i64 %i.as, %i.aa
  %i.au = and i64 %i.at, %i.ab
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.au
  %i.aw = load atomic i64, ptr %i.av acquire, align 8, !noalias !37606 ; 3 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %.loopexit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = and i64 %i.aw, -8                       ; 3 uses
  %.not15.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not15.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = inttoptr i64 %i.az to ptr
  %.val17.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !37605, !nonnull !109, !noundef !109 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37609)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !37609, !noalias !37605, !noundef !109
  %i.bd = icmp eq i64 %i.bc, %i.x
  br i1 %i.bd, label %bb.h, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !37609, !noalias !37605, !nonnull !109, !noundef !109
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.y, i64 %i.x), !noalias !37610
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !37609, !noalias !37605, !noundef !109
  %i.bj = icmp eq i64 %i.bi, %i.z
  br i1 %i.bj, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %bb.h, %bb.g
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.ab
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37601

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.j, %._crit_edge.i.i, %bb.b
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.bk = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i8 noundef 0)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37604 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.az, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.ah, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.aw, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.ae, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %i.bl = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.i:                                             ; preds = %.loopexit17.i.i
  %i.bm = inttoptr i64 %.pre-phi.i.i to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val21.i.i = load ptr, ptr %i.bn, align 8, !noalias !37604, !nonnull !109, !noundef !109 ; 2 uses
  %i.bo = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !37604
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, !prof !112

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #48
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37604

.noexc22.i.i:                                     ; preds = %bb.j
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i, %bb.c, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i, %bb.f, %bb.i, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.i ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i ] ; 9 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.k unwind label %bb.p, !noalias !37604

bb.k:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.bq = icmp eq ptr %i.o, null
  br i1 %i.bq, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 2072 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noalias !37604, !noundef !109 ; 2 uses
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !noalias !37604
  %i.bu = icmp eq i64 %i.bs, 1
  br i1 %i.bu, label %bb.m, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  store atomic i64 0, ptr %i.bv release, align 8, !noalias !37604
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 2080
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !37604, !noundef !109
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.n, label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !112

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.o), !noalias !37604
  br label %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.o:                                             ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.bk, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.bk ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !37605, !noundef !109 ; 2 uses
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  %i.cc = and i64 %i.cb, %2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.p:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %storemerge.i.i) #49
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.q, !noalias !37604

bb.q:                                             ; preds = %bb.p, %.thread.loopexit.split-lp.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !37604
  unreachable

common.resume:                                    ; preds = %bb.u, %.thread.loopexit.split-lp.i.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %i.cj, %bb.y ], [ %i.cg, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #48
  unreachable

_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37604
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(192) %3, ptr nonnull %storemerge.i.i)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %_RINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB5_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2l_10ValueEntryB1q_NtB1s_16CachedReaderDataEEE22get_key_value_and_thenB2g_NCNvMsd_NtNtB9_6future10base_cacheINtB4l_5InnerB1q_B3k_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB2_17get_key_value_andB2g_B4d_NCINvB2_3getB4d_E0E0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noundef !109 ; 7 uses
  %.not3 = icmp eq ptr %i.cf, null
  br i1 %.not3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.aa

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %storemerge.i.i) #49
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE15move_to_back_woNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(192) %3, ptr nonnull %storemerge.i.i)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.ch = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.x
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.ai, %bb.ag, %bb.af, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.w, %bb.t
  ret void

bb.z:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.aa:                                            ; preds = %bb.t
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37611)
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !37611, !noundef !109 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = load i64, ptr %4, align 8, !range !116, !alias.scope !37611, !noundef !109
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.cq = trunc nuw i64 %i.co to i1
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.cp, align 8, !alias.scope !37611, !noundef !109 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !37611, !noundef !109 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !37611, !noundef !109 ; 5 uses
  %.not12.i = icmp eq ptr %i.cu, null
  br i1 %.not12.i, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !37611, !noundef !109
  store i64 1, ptr %4, align 8, !alias.scope !37611
  store ptr %i.cy, ptr %i.cp, align 8, !alias.scope !37611
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %cond.i = icmp eq ptr %i.cw, null
  br i1 %cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i

bb.ag:                                            ; preds = %bb.ad
  store ptr %i.cw, ptr %i.ce, align 8, !alias.scope !37611
  %.not14.i = icmp eq ptr %i.cw, null
  br i1 %.not14.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.ah

.thread.i:                                        ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cz, align 8, !noalias !37611
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i, %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cu, ptr %i.da, align 8, !noalias !37611
  store ptr %i.cm, ptr %i.ct, align 8, !noalias !37611
  store ptr null, ptr %i.cv, align 8, !noalias !37611
  %.not15.i = icmp eq ptr %i.cm, null
  br i1 %.not15.i, label %bb.aj, label %bb.ai, !prof !112

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cf, ptr %i.db, align 8, !noalias !37611
  store ptr %i.cf, ptr %i.cl, align 8, !alias.scope !37611
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48, !noalias !37611
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE25handle_remove_with_dequesCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %3, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 32         ; 3 uses
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 4 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %.noexc, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !noundef !109
  store i32 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !109 ; 7 uses
  store ptr null, ptr %i.h, align 8
  %i.j = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.c, !prof !114

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.i, %bb.c, %bb.b, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE20unlink_ao_from_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.k ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %4) #49
          to label %common.resume unwind label %bb.v

bb.e:                                             ; preds = %.noexc, %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.i, align 8, !range !113, !noundef !109
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.01.0.i = phi i32 [ %i.p, %bb.g ], [ 0, %bb.f ]
  %.not.i = icmp eq i32 %.sroa.01.0.i, %i.g
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE12unlink_timerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr readonly %.0.val, i64 %.8.val, ptr noundef nonnull %i.i)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %bb.i
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc12
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #44
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #44
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.h, %.noexc12, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !109, !noundef !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load atomic i8, ptr %i.u acquire, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val8, i64 8 ; 4 uses
  %i.y = cmpxchg weak ptr %i.x, i8 0, i8 1 acquire monotonic, align 1
  %i.z = extractvalue { i8, i1 } %i.y, 1
  br i1 %i.z, label %.noexc14, label %bb.n, !prof !114

bb.n:                                             ; preds = %bb.m
  %i.aa = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.x, i64 undef, i32 noundef -1)
          to label %.noexc14 unwind label %bb.d   ; 0 uses

.noexc14:                                         ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = cmpxchg ptr %i.x, i8 1, i8 0 release monotonic, align 1
  %i.ad = extractvalue { i8, i1 } %i.ac, 1
  br i1 %i.ad, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.o, !prof !114

bb.o:                                             ; preds = %.noexc14
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.x, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.d

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.noexc14, %bb.o, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE20unlink_ao_from_dequeNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ae = atomicrmw add ptr %4, i32 -1 release, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.p:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %4)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.q

common.resume:                                    ; preds = %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  ret void

bb.r:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.s, align 8, !nonnull !109, !noundef !109
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store atomic i8 0, ptr %i.ai release, align 1
  %i.aj = load ptr, ptr %i.s, align 8, !nonnull !109, !noundef !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load atomic i32, ptr %i.ak acquire, align 4
  %i.am = load i64, ptr %5, align 8, !noundef !109
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !109
  %i.aq = zext i32 %i.al to i64
  %i.ar = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.aq)
  store i64 %i.ar, ptr %i.ao, align 8
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !37615, !nonnull !109, !noundef !109 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.at = cmpxchg weak ptr %i.as, i8 0, i8 1 acquire monotonic, align 1, !noalias !37615
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %.noexc18, label %bb.s, !prof !114

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.as, i64 undef, i32 noundef -1)
          to label %.noexc18 unwind label %bb.d   ; 0 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !37615, !noundef !109 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE25handle_remove_with_dequesCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE33handle_remove_without_timer_wheelCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull %1, i16 noundef range(i16 0, 2) %2, i16 %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load atomic i8, ptr %i.c acquire, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.b:                                             ; preds = %.invoke, %bb.l, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %1) #49
          to label %common.resume unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 32
  %.val5 = load ptr, ptr %i.g, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 4 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %.noexc, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e, !prof !114

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.noexc, %bb.e, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.o = trunc nuw i16 %2 to i1
  br i1 %i.o, label %bb.m, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store atomic i8 0, ptr %i.q release, align 1
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load atomic i32, ptr %i.s acquire, align 4
  %i.u = load i64, ptr %4, align 8, !noundef !109
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !109
  %i.y = zext i32 %i.t to i64
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.y)
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !37618, !nonnull !109, !noundef !109 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.ac = cmpxchg weak ptr %i.ab, i8 0, i8 1 acquire monotonic, align 1, !noalias !37618
  %i.ad = extractvalue { i8, i1 } %i.ac, 1
  br i1 %i.ad, label %.noexc9, label %bb.g, !prof !114

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ab, i64 undef, i32 noundef -1)
          to label %.noexc9 unwind label %bb.b    ; 0 uses

.noexc9:                                          ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !37618, !noundef !109 ; 3 uses
  store ptr null, ptr %i.af, align 8, !noalias !37618
  %i.ah = cmpxchg ptr %i.ab, i8 1, i8 0 release monotonic, align 1, !noalias !37618
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.h, !prof !114

bb.h:                                             ; preds = %.noexc9
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.b

_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.h, %.noexc9
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
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
  ], !prof !115

default.unreachable:                              ; preds = %.noexc11
  unreachable

bb.j:                                             ; preds = %.noexc11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.invoke

bb.k:                                             ; preds = %.noexc11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.invoke

.invoke:                                          ; preds = %.noexc11, %bb.j, %bb.k
  %i.ao = phi ptr [ @638, %bb.k ], [ @637, %bb.j ], [ @636, %.noexc11 ]
  %i.ap = phi i64 [ 9, %bb.k ], [ 9, %bb.j ], [ 6, %.noexc11 ]
  %i.aq = phi ptr [ %i.an, %bb.k ], [ %i.am, %bb.j ], [ %0, %.noexc11 ]
  invoke fastcc void @_RNvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB5_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE25unlink_node_ao_from_dequeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap, ptr noalias noundef align 8 dereferenceable(48) %i.aq, ptr noundef nonnull %i.ag)
          to label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b

bb.l:                                             ; preds = %.noexc11
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #48
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %bb.l
  unreachable

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_aoNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.invoke, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE24take_access_order_q_nodeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent6dequesINtB6_6DequesNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9unlink_woNtB1a_16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.ar, ptr nonnull %1)
          to label %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b

bb.m:                                             ; preds = %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.as = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 54 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.au = load atomic i16, ptr %i.at acquire, align 2 ; 3 uses
  %i.av = icmp uge i16 %i.au, %3
  %i.aw = sub i16 %3, %i.au
  %i.ax = icmp slt i16 %i.aw, 0
  %or.cond.i = or i1 %i.av, %i.ax
  br i1 %or.cond.i, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = cmpxchg weak ptr %i.at, i16 %i.au, i16 %3 acq_rel acquire, align 2
  %i.az = extractvalue { i16, i1 } %i.ay, 1
  br i1 %i.az, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.n

_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.o, %bb.n, %_RNvMs7_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE13unset_q_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ba = atomicrmw add ptr %1, i32 -1 release, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.p:                                             ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.q

common.resume:                                    ; preds = %bb.b, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  ret void

bb.r:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admitCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(272) %0, i64 %.0.val, i32 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  store i64 0, ptr %i.f, align 8, !alias.scope !37654
  store i64 0, ptr %i.c, align 8, !alias.scope !37654
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %.not182 = icmp eq i64 %.0.val, 0
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !109
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
  %i.t = load i32, ptr %i.e, align 8, !noundef !109
  %i.u = icmp ugt i32 %i.t, %.8.val
  %i.v = icmp ugt i64 %.sroa.0.086, 5
  %or.cond.not3 = select i1 %i.u, i1 true, i1 %i.v
  %.not11 = icmp eq ptr %.sroa.06.085, null
  %or.cond15 = or i1 %.not11, %or.cond.not3
  br i1 %or.cond15, label %.thread, label %bb.c

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.loopexit.split-lp.i.i, %bb.be, %.body28
  %.pn = phi { ptr, i32 } [ %eh.lpad-body29, %.body28 ], [ %i.fy, %bb.be ], [ %.pn.i.i, %.thread.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(272) %i.c) #49
          to label %bb.bg unwind label %bb.bf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.o, %bb.d, %.invoke, %bb.ag
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !109
  call void @llvm.experimental.noalias.scope.decl(metadata !37655)
  %i.y = load ptr, ptr %.sroa.06.085, align 8, !alias.scope !37655, !nonnull !109, !noundef !109 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.aa = load atomic i16, ptr %i.z monotonic, align 2, !noalias !37655
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.ac = load atomic i16, ptr %i.ab monotonic, align 2, !noalias !37655
  %.not = icmp eq i16 %i.aa, %i.ac
  fence acquire
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %.sroa.06.085, align 8, !nonnull !109, !noundef !109 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !109 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ah)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !37656)
  %i.aj = load ptr, ptr %i.j, align 8, !alias.scope !37656, !noundef !109 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.06.085
  br i1 %i.ak, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.g, align 8, !range !116, !alias.scope !37656, !noundef !109
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.k, align 8, !alias.scope !37656, !noundef !109 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %.sroa.06.085
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !37656, !noundef !109 ; 3 uses
  %i.ar = load ptr, ptr %i.w, align 8, !noalias !37656, !noundef !109 ; 5 uses
  %.not12.i = icmp eq ptr %i.aq, null
  br i1 %.not12.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !37656, !noundef !109
  store i64 1, ptr %i.g, align 8, !alias.scope !37656
  store ptr %i.at, ptr %i.k, align 8, !alias.scope !37656
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %cond.i = icmp eq ptr %i.ar, null
  br i1 %cond.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.thread.i

bb.k:                                             ; preds = %bb.h
  store ptr %i.ar, ptr %i.h, align 8, !alias.scope !37656
  %.not14.i = icmp eq ptr %i.ar, null
  br i1 %.not14.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.l

.thread.i:                                        ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.au, align 8, !noalias !37656
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.aq, ptr %i.av, align 8, !noalias !37656
  store ptr %i.aj, ptr %i.ap, align 8, !noalias !37656
  store ptr null, ptr %i.w, align 8, !noalias !37656
  %.not15.i = icmp eq ptr %i.aj, null
  br i1 %.not15.i, label %.invoke, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.06.085, ptr %i.aw, align 8, !noalias !37656
  store ptr %.sroa.06.085, ptr %i.j, align 8, !alias.scope !37656
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.n:                                             ; preds = %bb.d
  %i.ax = extractvalue { i64, i64 } %i.ai, 0
  %i.ay = extractvalue { i64, i64 } %i.ai, 1
  %i.az = load i32, ptr %i.l, align 8, !noundef !109 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 64
  %i.bb = and i32 %i.az, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ag, %i.bc
  %.sroa.02.0.i = select i1 %i.ba, i64 0, i64 %i.bd ; 3 uses
  %i.be = load i64, ptr %i.m, align 8, !noundef !109 ; 2 uses
  %i.bf = icmp ult i64 %.sroa.02.0.i, %i.be
  br i1 %i.bf, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %1, align 8, !nonnull !109, !noundef !109
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.sroa.02.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37657
  %i.bi = invoke fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsc93vp1BCDlY_26lance_namespace_datafusion()
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc18:                                         ; preds = %bb.o
  store ptr %i.bi, ptr %i.a, align 8, !noalias !37657
  %i.bj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.bh)
          to label %.preheader.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37657 ; 3 uses

.preheader.i.i:                                   ; preds = %.noexc18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !37658, !noundef !109 ; 2 uses
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  %i.bn = and i64 %i.bm, %i.ag                    ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i43.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

.thread.loopexit.split-lp.i.i:                    ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.ae ], [ %lpad.loopexit.split-lp336, %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %i.bi) #49
          to label %.body unwind label %bb.af, !noalias !37657

._crit_edge.i.peel.i.i.i:                         ; preds = %.preheader.i.i, %bb.ad
  %i.bo = phi i64 [ %i.eg, %bb.ad ], [ %i.bn, %.preheader.i.i ] ; 2 uses
  %i.bp = phi i64 [ %i.ef, %bb.ad ], [ %i.bm, %.preheader.i.i ] ; 3 uses
  %.sroa.07.044.i.i = phi ptr [ %spec.select.i.i, %bb.ad ], [ %i.bj, %.preheader.i.i ] ; 4 uses
  %i.bq = load ptr, ptr %.sroa.07.044.i.i, align 8, !noalias !37658, !nonnull !109, !noundef !109 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !37659 ; 4 uses
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %._crit_edge.i.peel.i.i.i
  %i.bv = and i64 %i.bs, -8                       ; 4 uses
  %.not15.peel.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not15.peel.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = inttoptr i64 %i.bv to ptr
  %.val17.peel.i.i.i = load ptr, ptr %i.bw, align 8, !noalias !37658, !nonnull !109, !noundef !109 ; 4 uses
  %i.bx = load ptr, ptr %i.ae, align 8, !noalias !37658, !nonnull !109, !noundef !109 ; 4 uses
  %i.by = icmp eq ptr %.val17.peel.i.i.i, %i.bx
  br i1 %i.by, label %.loopexit17.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !37660)
  call void @llvm.experimental.noalias.scope.decl(metadata !37661)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !37660, !noalias !37658, !noundef !109 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !37661, !noalias !37658, !noundef !109
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !37661, !noalias !37658, !nonnull !109, !noundef !109
  %i.cg = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !37660, !noalias !37658, !nonnull !109, !noundef !109
  %bcmp.i.i.i.peel.i.i.i = call i32 @bcmp(ptr nonnull %i.ch, ptr nonnull %i.cf, i64 %i.ca), !noalias !37662
  %i.ci = icmp eq i32 %bcmp.i.i.i.peel.i.i.i, 0
  br i1 %i.ci, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i: ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.val17.peel.i.i.i, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !37660, !noalias !37658, !noundef !109
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !37661, !noalias !37658, !noundef !109
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, %bb.s, %bb.r
  %.not.i.i38.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i38.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i:                                  ; preds = %.preheader.i.i, %bb.ad
  %.lcssa.i.i = phi i64 [ %i.eg, %bb.ad ], [ %i.bn, %.preheader.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #48
          to label %.noexc.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37657

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i
  %.sroa.17.0.i39.i.i = phi i64 [ %i.co, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i ]
  %i.co = add nuw i64 %.sroa.17.0.i39.i.i, 1      ; 3 uses
  %i.cp = add i64 %i.co, %i.bo
  %i.cq = and i64 %i.cp, %i.bp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cq
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !noalias !37659 ; 4 uses
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %.loopexit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cv = and i64 %i.cs, -8                       ; 4 uses
  %.not15.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not15.i.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = inttoptr i64 %i.cv to ptr
  %.val17.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !37658, !nonnull !109, !noundef !109 ; 4 uses
  %i.cx = load ptr, ptr %i.ae, align 8, !noalias !37658, !nonnull !109, !noundef !109 ; 4 uses
  %i.cy = icmp eq ptr %.val17.i.i.i, %i.cx
  br i1 %i.cy, label %.loopexit17.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !37663)
  call void @llvm.experimental.noalias.scope.decl(metadata !37664)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !37663, !noalias !37658, !noundef !109 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !37664, !noalias !37658, !noundef !109
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.w, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !37664, !noalias !37658, !nonnull !109, !noundef !109
  %i.dg = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !37663, !noalias !37658, !nonnull !109, !noundef !109
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dh, ptr nonnull %i.df, i64 %i.da), !noalias !37665
  %i.di = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.di, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !37663, !noalias !37658, !noundef !109
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !37664, !noalias !37658, !noundef !109
  %i.dn = icmp eq i64 %i.dk, %i.dm
  br i1 %i.dn, label %.loopexit17.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %bb.w, %bb.v
  %exitcond.not.i.i = icmp eq i64 %i.co, %i.bp
  br i1 %exitcond.not.i.i, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37638

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %.noexc18, %bb.y, %._crit_edge.i.i
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.peel.i.i.i
  %i.do = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %.sroa.07.044.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i8 noundef 0)
          to label %bb.ad unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37657 ; 2 uses

.loopexit17.i.i:                                  ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i, %bb.q, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %bb.u
  %.pre-phi.i.i = phi i64 [ %i.cv, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.cv, %bb.u ], [ %i.bv, %bb.q ], [ %i.bv, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.cs, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.cs, %bb.u ], [ %i.bs, %bb.q ], [ %i.bs, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.peel.i.i.i ]
  %i.dp = and i64 %.lcssa.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %bb.x, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.x:                                             ; preds = %.loopexit17.i.i
  %i.dq = inttoptr i64 %.pre-phi.i.i to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val21.i.i = load ptr, ptr %i.dr, align 8, !noalias !37657, !nonnull !109, !noundef !109 ; 2 uses
  %i.ds = atomicrmw add ptr %.val21.i.i, i32 1 monotonic, align 4, !noalias !37657
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, !prof !112

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #48
          to label %.noexc22.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37657

.noexc22.i.i:                                     ; preds = %bb.y
  unreachable

_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i, %bb.p, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i, %bb.t, %bb.x, %.loopexit17.i.i
  %storemerge.i.i = phi ptr [ null, %.loopexit17.i.i ], [ %.val21.i.i, %bb.x ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i ], [ null, %bb.t ], [ null, %bb.p ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBW_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1O_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i ] ; 8 uses
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.bj, ptr noundef nonnull align 8 %.sroa.07.044.i.i)
          to label %bb.z unwind label %bb.ae, !noalias !37657

bb.z:                                             ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.du = icmp eq ptr %i.bi, null
  br i1 %i.du, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2072 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !37657, !noundef !109 ; 2 uses
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr %i.dv, align 8, !noalias !37657
  %i.dy = icmp eq i64 %i.dw, 1
  br i1 %i.dy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 2176
  store atomic i64 0, ptr %i.dz release, align 8, !noalias !37657
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 2080
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !37657, !noundef !109
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ac, label %bb.ah, !prof !112

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bi)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.loopexit.i.i
  %.not15.i.i = icmp eq ptr %i.do, null
  %spec.select.i.i = select i1 %.not15.i.i, ptr %.sroa.07.044.i.i, ptr %i.do ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !37658, !noundef !109 ; 2 uses
  %i.ef = add i64 %i.ee, -1                       ; 2 uses
  %i.eg = and i64 %i.ef, %i.ag                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %._crit_edge.i.peel.i.i.i

bb.ae:                                            ; preds = %_RNCINvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB7_7HashMapINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2n_10ValueEntryB1s_NtB1u_16CachedReaderDataEEE17get_key_value_andB2i_NCNvMsd_NtNtBb_6future10base_cacheINtB4i_5InnerB1s_B3m_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4a_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtB12_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2f_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %storemerge.i.i) #49
          to label %.thread.loopexit.split-lp.i.i unwind label %bb.af, !noalias !37657

bb.af:                                            ; preds = %bb.ae, %.thread.loopexit.split-lp.i.i
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !37657
  unreachable

bb.ag:                                            ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #48
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37657
  %.not13 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not13, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !37666)
  %i.ei = load ptr, ptr %i.j, align 8, !alias.scope !37666, !noundef !109 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.06.085
  br i1 %i.ej, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load i64, ptr %i.g, align 8, !range !116, !alias.scope !37666, !noundef !109
  %i.el = trunc nuw i64 %i.ek to i1
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = load ptr, ptr %i.k, align 8, !alias.scope !37666, !noundef !109 ; 2 uses
  %i.en = icmp eq ptr %i.em, %.sroa.06.085
  br i1 %i.en, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.085, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !37666, !noundef !109 ; 3 uses
  %i.eq = load ptr, ptr %i.w, align 8, !noalias !37666, !noundef !109 ; 5 uses
  %.not12.i21 = icmp eq ptr %i.ep, null
  br i1 %.not12.i21, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !37666, !noundef !109
  store i64 1, ptr %i.g, align 8, !alias.scope !37666
  store ptr %i.es, ptr %i.k, align 8, !alias.scope !37666
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %cond.i22 = icmp eq ptr %i.eq, null
  br i1 %cond.i22, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27, label %.thread.i23

bb.ao:                                            ; preds = %bb.al
  store ptr %i.eq, ptr %i.h, align 8, !alias.scope !37666
  %.not14.i25 = icmp eq ptr %i.eq, null
  br i1 %.not14.i25, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27, label %bb.ap

.thread.i23:                                      ; preds = %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eq, ptr %i.et, align 8, !noalias !37666
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i23, %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.ep, ptr %i.eu, align 8, !noalias !37666
  store ptr %i.ei, ptr %i.eo, align 8, !noalias !37666
  store ptr null, ptr %i.w, align 8, !noalias !37666
  %.not15.i24 = icmp eq ptr %i.ei, null
  br i1 %.not15.i24, label %.invoke, label %bb.aq, !prof !112

bb.aq:                                            ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %.sroa.06.085, ptr %i.ev, align 8, !noalias !37666
  store ptr %.sroa.06.085, ptr %i.j, align 8, !alias.scope !37666
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27

.invoke:                                          ; preds = %bb.ap, %bb.l
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #48
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ar:                                            ; preds = %bb.as
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body28

.body28:                                          ; preds = %bb.aw, %bb.ax, %bb.ar
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.ew, %bb.ar ], [ %i.fl, %bb.ax ], [ %i.fl, %bb.aw ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %storemerge.i.i) #49
          to label %.body unwind label %bb.bf

bb.as:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !109, !noundef !109
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load atomic i32, ptr %i.ez acquire, align 4
  %i.fb = zext i32 %i.fa to i64
  %i.fc = load i64, ptr %i.d, align 8, !noundef !109
  %i.fd = add i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.d, align 8
  invoke void @_RNvMs8_NtNtCskTBvlRM5ILY_4moka6future10base_cacheNtB5_21EntrySizeAndFrequency13add_frequency(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef %i.ag)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = load ptr, ptr %i.ae, align 8, !nonnull !109, !noundef !109
  %i.ff = atomicrmw add ptr %i.fe, i64 1 monotonic, align 8
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fh = load ptr, ptr %i.ae, align 8, !nonnull !109, !noundef !109 ; 2 uses
  store ptr %i.fh, ptr %i.b, align 8
  store i64 %i.ag, ptr %i.o, align 8
  store i64 %i.ax, ptr %i.p, align 8
  store i64 %i.ay, ptr %i.q, align 8
  %i.fi = load i64, ptr %i.f, align 8, !alias.scope !37667, !noundef !109 ; 3 uses
  %i.fj = icmp ugt i64 %i.fi, 8
  br i1 %i.fj, label %bb.av, label %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fk = load ptr, ptr %i.s, align 8, !alias.scope !37667, !nonnull !109, !noundef !109
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !37668
  br label %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.aw:                                            ; preds = %bb.ay
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !37669
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.ax, label %.body28

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body28 unwind label %bb.ba

_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.au, %bb.av
  %i.fo = phi i64 [ %.pre.i, %bb.av ], [ %i.fi, %bb.au ] ; 2 uses
  %.sink11.i.i = phi ptr [ %i.fk, %bb.av ], [ %i.r, %bb.au ]
  %.sink10.i.i = phi ptr [ %i.r, %bb.av ], [ %i.f, %bb.au ]
  %.sink.i.i = phi i64 [ %i.fi, %bb.av ], [ 8, %bb.au ]
  %i.fp = icmp eq i64 %i.fo, %.sink.i.i
  br i1 %i.fp, label %bb.ay, label %bb.bc, !prof !112

bb.ay:                                            ; preds = %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  invoke fastcc void @_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E21reserve_one_uncheckedCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.c)
          to label %bb.az unwind label %bb.aw, !noalias !37670

bb.az:                                            ; preds = %bb.ay
  %i.fq = load ptr, ptr %i.s, align 8, !alias.scope !37668, !nonnull !109, !noundef !109
  %.pre6.i = load i64, ptr %i.r, align 8, !alias.scope !37668
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.bb:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.az, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.fs = phi i64 [ %.pre6.i, %bb.az ], [ %i.fo, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.fq, %bb.az ], [ %.sink11.i.i, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.az ], [ %.sink10.i.i, %_RNvMsd_CsfnXyRYRFu3h_8smallvecINtB5_8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %.sroa.04.0.i, i64 %i.fs
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.fu = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !37668, !noundef !109
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %.sroa.0.0.i, align 8, !alias.scope !37668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fw = atomicrmw add ptr %storemerge.i.i, i32 -1 release, align 4
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.bd, label %.backedge

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %storemerge.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bd
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i.i, i64 noundef 40, i64 noundef 8) #44
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.bc, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.0.0.be = phi i64 [ %i.gd, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %i.gc, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ 0, %bb.bc ]
  %i.fz = load i64, ptr %i.d, align 8, !noundef !109
  %i.ga = icmp ult i64 %i.fz, %.0.val
  br i1 %i.ga, label %bb.b, label %._crit_edge.loopexit

bb.bf:                                            ; preds = %.body28, %.body
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit27: ; preds = %bb.aq, %bb.ao, %bb.an, %bb.ai
  %i.gc = add nuw nsw i64 %.sroa.0.086, 1
  br label %.backedge

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.m, %bb.k, %bb.j, %bb.e
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
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8SmallVecATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(272) %i.c)
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
define internal fastcc noalias noundef nonnull ptr @_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE3newCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_8
begin_hunk_9_@_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE3newCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !112

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !37691
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEE9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE4nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !113, !noundef !109
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !109, !noundef !109 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !109 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37707)
  %i.g = load i64, ptr %0, align 8, !range !116, !alias.scope !37707, !noundef !109
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !113, !alias.scope !37708, !noundef !109
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !37707 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !37708 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37709)
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
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !37710, !noalias !37711, !noundef !109
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !37712, !noundef !109 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !37712, !noundef !109
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !37712, !noundef !109
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !37712, !noundef !109
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

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
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
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !37707, !noundef !109
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !37707, !nonnull !109, !noundef !109 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !37707, !noundef !109 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !37713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37714)
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
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !37710, !noalias !37715, !noundef !109
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !37716, !noundef !109 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !37708
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @969) #48, !noalias !37715
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !37708
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !37708
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i, %bb.q, %bb.h, %bb.p
  %.ph = phi i64 [ %.val1, %bb.p ], [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !37708
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit19
  %1 = phi i64 [ %.val1, %.loopexit19 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !37706
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !37706
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !37706
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !116, !noundef !109
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !109
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !109
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !109 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !113, !alias.scope !37717, !noundef !109
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !37717
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !113, !alias.scope !37717, !noundef !109
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !37717
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !37717
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !37717, !noundef !109 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !37717, !noundef !109 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !37717, !nonnull !109, !noundef !109
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_NtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEE9drop_slowCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !109, !noundef !109 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  %i.c = atomicrmw add ptr %.val, i64 -4 release, align 8
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1v_4util11SharedValueINtNtB2Z_4sync3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !112

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1v_4util11SharedValueINtNtB2Z_4sync3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1v_4util11SharedValueINtNtB2Z_4sync3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1v_4util11SharedValueINtNtB2Z_4sync3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit3

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit3: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1v_4util11SharedValueINtNtB2Z_4sync3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.f, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakINtNtCsiVTOiHjdfhE_8lock_api6rwlock15RwLockReadGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtBG_6string6StringINtNtB24_4util11SharedValueINtBE_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderEEEEERNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderE9drop_slowCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !109, !noundef !109 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 160, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 160, i64 noundef 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderRNtNtBG_5alloc6GlobalEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_E10dying_nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !109 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37752)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !37753
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !37753 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !37753 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !37753 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !37753
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit

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
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 544
  %i.g = load ptr, ptr %i.f, align 8, !noalias !37754, !nonnull !109, !noundef !109 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !37723

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 544
  %i.k = load ptr, ptr %i.j, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 544
  %i.q = load ptr, ptr %i.p, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 544
  %i.s = load ptr, ptr %i.r, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 544
  %i.u = load ptr, ptr %i.t, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 544
  %i.w = load ptr, ptr %i.v, align 8, !noalias !37754, !nonnull !109, !noundef !109
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.y = load ptr, ptr %i.x, align 8, !noalias !37754, !nonnull !109, !noundef !109 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !37755, !noundef !109 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 544, i64 640
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #44, !noalias !37756
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !37755, !noundef !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph.i3.i

_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 544, i64 640
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #44, !noalias !37756
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37758)
  %i.ah = load i64, ptr %1, align 8, !range !116, !alias.scope !37759, !noundef !109
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !37759, !noundef !109 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i

._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !37760
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !37760
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !37759, !noundef !109 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !37759, !nonnull !109, !noundef !109 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 544
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !37761, !nonnull !109, !noundef !109 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !37735

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !37759
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 544
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 544
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 544
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 544
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 544
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 544
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 544
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !37761, !nonnull !109, !noundef !109
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 544
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !37761, !nonnull !109, !noundef !109 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37762)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 538
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !37763, !noundef !109
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.j
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 4 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.042.i.i.i.i, align 8, !noalias !37764, !noundef !109 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 552
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !37765, !nonnull !109, !noundef !109 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !37750

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !37765, !nonnull !109, !noundef !109
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !37765, !nonnull !109, !noundef !109 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 544
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 536
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !37764 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #44, !noalias !37766
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 538
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !37763, !noundef !109
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i37.i.i.i.i, i64 noundef 8) #44, !noalias !37766
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #48
          to label %.noexc.i.i unwind label %bb.l, !noalias !37767

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #48, !noalias !37768
  unreachable

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !37760
  store i64 0, ptr %i.al, align 8, !alias.scope !37760
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !37760
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs40k4W9msRzi_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.a, 1                         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37783)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37785)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37786
  %i.e = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, 9) 1) #44, !noalias !37786 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.c) #48, !noalias !37787
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !noalias !37788
  br label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.5.0.i.i.i = phi ptr [ %i.e, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %i.c, ptr %0, align 8, !alias.scope !37789
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !37789
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !37789
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !37790
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef range(i64 1, 8129) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !112

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #20 {
end_hunk_9
begin_hunk_10_@_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00ENtNtCs8i1Thb8U8hr_12futures_task8arc_wake7ArcWake11wake_by_refCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %.sroa.06.0.i.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.f ] ; 4 uses
  %i.f = icmp eq i64 %.sroa.06.0.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %.sroa.06.0.i.i, -1
  br i1 %i.g, label %bb.f, label %bb.e, !prof !114

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @690, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @694) #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = add nuw i64 %.sroa.06.0.i.i, 1
  %i.i = cmpxchg weak ptr %.val, i64 %.sroa.06.0.i.i, i64 %i.h acquire monotonic, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.i, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.i, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.i, label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit4: ; preds = %bb.c, %bb.a, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39451)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !39452, !nonnull !109, !noundef !109
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !39452
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EE9drop_slowB2u_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  store ptr %.val, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 161
  store atomic i8 1, ptr %i.n monotonic, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39454)
  %i.r = load ptr, ptr %i.b, align 8, !alias.scope !39455, !nonnull !109, !noundef !109
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !39455
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EE9drop_slowB2u_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit4

bb.l:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.b, align 8, !nonnull !109, !noundef !109
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  store atomic ptr null, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = atomicrmw xchg ptr %i.w, ptr %i.c acq_rel, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store atomic ptr %i.c, ptr %i.y release, align 8
  %i.z = load ptr, ptr %i.b, align 8, !nonnull !109, !noundef !109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  invoke void @_RNvMNtNtNtCsj3nLz3LBTXi_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.aa)
          to label %bb.j unwind label %bb.g

bb.m:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit38list_manifests_since_version_with_hint0s0_00EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENCNCNvMsd_NtNtB1h_6future10base_cacheINtB3b_5InnerB2b_NtB2d_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ENtNtNtB9_6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39481)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !113, !alias.scope !39482, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvYINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_mapTINtNtCs40k4W9msRzi_5alloc4sync3ArcB14_EybEQNCNCNvMsd_NtNtBa_6future10base_cacheINtB3Q_5InnerB14_NtB16_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.preheader.i.lr.ph.i.i

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

.preheader.i.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerEventNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyETINtNtCs40k4W9msRzi_5alloc4sync3ArcB2c_EybEQNCNCNvMsd_NtNtB1n_6future10base_cacheINtB3U_5InnerB2c_NtB2e_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, %.preheader.i.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39483)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !range !113, !alias.scope !39484, !noundef !109
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pre.i.i.i = load i8, ptr %i.i, align 8, !alias.scope !39484 ; 3 uses
  %.pre199.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !39484
  %.pre200.i.i.i = load i8, ptr %i.k, align 4, !range !113, !alias.scope !39484
  %.pre202.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !39484 ; 2 uses
  %.pre204.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !39484 ; 2 uses
  %i.n = trunc nuw i8 %.pre200.i.i.i to i1
  %i.o = trunc i64 %.pre199.i.i.i to i8
  %i.p = and i8 %.pre.i.i.i, %i.o                 ; 2 uses
  br i1 %i.n, label %bb.t, label %._crit_edge209.i.i.i

._crit_edge209.i.i.i:                             ; preds = %bb.c
  %.pre210.i.i.i = zext i8 %i.p to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !39484, !noundef !109 ; 5 uses
  %i.r = icmp ult i64 %i.q, 5
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.f, align 8, !alias.scope !39484, !noundef !109
  %i.t = load ptr, ptr %i.g, align 8, !alias.scope !39484, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.v)
  %i.x = load i64, ptr %1, align 8, !alias.scope !39484, !noundef !109
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @621, i64 %i.q
  %i.aa = load i64, ptr %i.z, align 8, !noalias !39485, !noundef !109
  %i.ab = and i64 %i.aa, 63                       ; 2 uses
  %i.ac = lshr i64 %i.y, %i.ab                    ; 3 uses
  %i.ad = lshr i64 %i.w, %i.ab                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.ac
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @777) #48, !noalias !39485
  unreachable

.thread.i.i.i:                                    ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @622, i64 %i.q
  %i.af = load i64, ptr %i.ae, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.h, align 8, !alias.scope !39484
  %i.ah = and i64 %i.ag, %i.ac
  %i.ai = trunc i64 %i.ah to i8                   ; 4 uses
  store i8 %i.ai, ptr %i.i, align 8, !alias.scope !39484
  %reass.sub = sub nuw i64 %i.ad, %i.ac
  %i.aj = add i64 %reass.sub, 1
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %i.aj)
  %i.ak = trunc i64 %.sroa.0.0.i.i.i.i to i8
  %i.al = add i8 %i.ai, %i.ak
  store i8 %i.al, ptr %i.j, align 1, !alias.scope !39484
  store i8 0, ptr %i.d, align 1, !alias.scope !39484
  store i8 1, ptr %i.k, align 4, !alias.scope !39484
  br label %bb.t

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, %._crit_edge209.i.i.i
  %i.am = phi i8 [ %.pre.i.i.i, %._crit_edge209.i.i.i ], [ %i.bs, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %.pre210.i.i.i, %._crit_edge209.i.i.i ], [ %i.bu, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ] ; 3 uses
  %i.an = phi i64 [ %.pre204.pre.i.i.i, %._crit_edge209.i.i.i ], [ %.pre203.pre.i.i.i, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ] ; 5 uses
  %i.ao = phi ptr [ %.pre202.pre.i.i.i, %._crit_edge209.i.i.i ], [ %.pre201.pre.i.i.i, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val38.i.i.i = load i64, ptr %i.ap, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %.val38.i.i.i
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val37.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !39485, !nonnull !109, !noundef !109
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.val37.i.i.i, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.au = icmp ugt i64 %i.at, %.pre-phi.i.i.i
  br i1 %i.au, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %.val38.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @623) #48, !noalias !39485
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.ar, align 8, !noalias !39485, !nonnull !109, !noundef !109
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %.pre-phi.i.i.i ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !39485, !noundef !109 ; 26 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 256) %.pre-phi.i.i.i, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @623) #48, !noalias !39485
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.ay, align 8, !range !113, !noalias !39485, !noundef !109
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39486)
  %i.bb = load i64, ptr %i.aw, align 8, !range !116, !alias.scope !39486, !noalias !39485, !noundef !109
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = trunc nuw i64 %i.bb to i1
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !39486, !noalias !39485, !noundef !109 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !39487, !noundef !109
  store i64 1, ptr %i.aw, align 8, !alias.scope !39486, !noalias !39485
  store ptr %i.bh, ptr %i.bc, align 8, !alias.scope !39486, !noalias !39485
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !39487, !noundef !109 ; 3 uses
  store ptr %i.bj, ptr %i.ax, align 8, !alias.scope !39486, !noalias !39485
  %.not3.i.i.i.i.i = icmp eq ptr %i.bj, null
  %..i.i.i.i.i = select i1 %.not3.i.i.i.i.i, ptr %i.aw, ptr %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i, i64 32
  store ptr null, ptr %i.bk, align 8, !noalias !39485
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !39486, !noalias !39485, !noundef !109
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !39486, !noalias !39485
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !39487
  %i.bo = load i8, ptr %i.ay, align 8, !range !113, !noalias !39485, !noundef !109
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ah, label %bb.q, !prof !114

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #48
          to label %bb.s unwind label %bb.r, !noalias !39485

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %common.resume.sink.split.i.i unwind label %.body9.i.i, !noalias !39485

.body9.i.i:                                       ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 40, i64 noundef 8) #44, !noalias !39485
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !39485
  unreachable

bb.s:                                             ; preds = %bb.q
  unreachable

common.resume.sink.split.i.i:                     ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.thread66.i.i.i, %bb.r
  %.lcssa257.lcssa.sink.i.i = phi ptr [ %i.ek, %.thread66.i.i.i ], [ %i.ay, %bb.r ], [ %i.ay, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ay, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ev, %.thread66.i.i.i ], [ %i.bq, %bb.r ], [ %lpad.loopexit.split-lp265, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa257.lcssa.sink.i.i, i64 noundef 40, i64 noundef 8) #44, !noalias !39488
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
  %.val40.i.i.i = load i64, ptr %i.bv, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.bw = icmp ult i64 %.pre203.pre.i.i.i, %.val40.i.i.i
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val39.i.i.i = load ptr, ptr %.pre201.pre.i.i.i, align 8, !noalias !39485, !nonnull !109, !noundef !109
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.val39.i.i.i, i64 %.pre203.pre.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, %i.bu
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.pre203.pre.i.i.i, i64 noundef %.val40.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #48, !noalias !39485
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.bx, align 8, !noalias !39485, !nonnull !109, !noundef !109
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %i.bu ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !39485, !noundef !109 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not1.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !39489

.lr.ph.i.i.i.i:                                   ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load i8, ptr %i.ce, align 8, !range !113, !noalias !39485, !noundef !109
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.cj = load ptr, ptr %i.cf, align 8, !noalias !39485, !noundef !109 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.us.i.i.i, label %.lr.ph.split.i.i.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.i, %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.us.i.i.i
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.us.i.i.i

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 256) %i.bu, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #48, !noalias !39485
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.w
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @628) #48, !noalias !39485
  unreachable

.lr.ph.splitthread-pre-split.i.i.i:               ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !39485
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i
  %i.cl = phi ptr [ %.pr.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.cj, %.lr.ph.i.i.i ] ; 8 uses
  %i.cm = phi ptr [ %i.db, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.ce, %.lr.ph.i.i.i ] ; 7 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39490)
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i64, ptr %i.cc, align 8, !range !116, !alias.scope !39490, !noalias !39485, !noundef !109
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.cg, align 8, !alias.scope !39490, !noalias !39485, !noundef !109 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cl
  br i1 %i.cr, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !39491, !noundef !109 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !39491, !noundef !109 ; 5 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not12.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !39491, !noundef !109
  store i64 1, ptr %i.cc, align 8, !alias.scope !39490, !noalias !39485
  store ptr %i.cx, ptr %i.cg, align 8, !alias.scope !39490, !noalias !39485
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %cond.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %cond.i.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, label %.thread.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.cv, ptr %i.cf, align 8, !alias.scope !39490, !noalias !39485
  %.not14.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i.i.i.i.i, label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, label %bb.af

.thread.i.i.i.i.i:                                ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %i.cv, ptr %i.cy, align 8, !noalias !39491
  br label %bb.af

bb.af:                                            ; preds = %.thread.i.i.i.i.i, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.ct, ptr %i.cz, align 8, !noalias !39491
  store ptr %i.cm, ptr %i.cs, align 8, !noalias !39491
  store ptr null, ptr %i.cu, align 8, !noalias !39491
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.cl, ptr %i.da, align 8, !noalias !39491
  store ptr %i.cl, ptr %i.cd, align 8, !alias.scope !39490, !noalias !39485
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.y, %.lr.ph.split.i.i.i
  %i.db = phi ptr [ %i.cl, %bb.af ], [ %i.cm, %bb.ae ], [ %i.cm, %bb.ad ], [ %i.cm, %bb.y ], [ %i.cm, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !113, !noalias !39485, !noundef !109
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.lr.ph.splitthread-pre-split.i.i.i, !llvm.loop !39470

_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE26reset_timer_node_positionsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE12move_to_backCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %.lr.ph.i.i.i.i
  store i8 0, ptr %i.k, align 4, !alias.scope !39484
  br label %bb.g

bb.ag:                                            ; preds = %bb.l, %bb.j
  %i.de = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.de, ptr %i.i, align 8, !alias.scope !39484
  store i8 1, ptr %i.k, align 4, !alias.scope !39484
  %i.df = load i8, ptr %i.j, align 1, !alias.scope !39484, !noundef !109
  %.not24.i.i.i = icmp ult i8 %i.de, %i.df
  br i1 %.not24.i.i.i, label %.backedge, label %bb.ba

bb.ah:                                            ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 0, ptr %i.dg, align 1, !noalias !39485
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !39485, !nonnull !109, !noundef !109
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8, !noalias !39485 ; 2 uses
  %i.dl = icmp ugt i64 %i.dk, -4097
  br i1 %i.dl, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %.val35.i.i.i = load i8, ptr %i.ay, align 8, !range !113, !noalias !39485, !noundef !109
  %i.dm = getelementptr i8, ptr %i.ay, i64 16
  %.val36.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !39485 ; 4 uses
  %i.dn = trunc nuw i8 %.val35.i.i.i to i1
  br i1 %i.dn, label %bb.aj, label %.invoke, !prof !114

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36.i.i.i) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 8 ; 4 uses
  %i.dp = cmpxchg weak ptr %i.do, i8 0, i8 1 acquire monotonic, align 1, !noalias !39485
  %i.dq = extractvalue { i8, i1 } %i.dp, 1
  br i1 %i.dq, label %.noexc42.i.i.i, label %bb.ak, !prof !114

.invoke:                                          ; preds = %bb.ai, %bb.an
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #48
          to label %.cont unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dr = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.do, i64 undef, i32 noundef -1)
          to label %.noexc42.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485 ; 0 uses

.noexc42.i.i.i:                                   ; preds = %bb.ak, %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 32
  store ptr null, ptr %i.ds, align 8, !noalias !39485
  %i.dt = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 40
  store i32 0, ptr %i.dt, align 8, !noalias !39485
  %i.du = cmpxchg ptr %i.do, i8 1, i8 0 release monotonic, align 1, !noalias !39485
  %i.dv = extractvalue { i8, i1 } %i.du, 1
  br i1 %i.dv, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %bb.al, !prof !114

bb.al:                                            ; preds = %.noexc42.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.do, i1 noundef zeroext false)
          to label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

bb.am:                                            ; preds = %bb.ah
  %i.dw = and i64 %i.dk, -4096
  %i.dx = load i64, ptr %i.f, align 8, !alias.scope !39484, !noundef !109
  %.not25.i.i.i = icmp ugt i64 %i.dw, %i.dx
  br i1 %.not25.i.i.i, label %bb.ar, label %bb.an

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.al, %.noexc42.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 40, i64 noundef 8) #44, !noalias !39485
  br label %.backedge

bb.an:                                            ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.val33.i.i.i = load i8, ptr %i.ay, align 8, !range !113, !noalias !39485, !noundef !109
  %i.dz = getelementptr i8, ptr %i.ay, i64 16
  %.val34.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !39485 ; 4 uses
  %i.ea = trunc nuw i8 %.val33.i.i.i to i1
  br i1 %i.ea, label %bb.ao, label %.invoke, !prof !114

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i.i.i) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 8 ; 4 uses
  %i.ec = cmpxchg weak ptr %i.eb, i8 0, i8 1 acquire monotonic, align 1, !noalias !39485
  %i.ed = extractvalue { i8, i1 } %i.ec, 1
  br i1 %i.ed, label %.noexc45.i.i.i, label %bb.ap, !prof !114

bb.ap:                                            ; preds = %bb.ao
  %i.ee = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eb, i64 undef, i32 noundef -1)
          to label %.noexc45.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485 ; 0 uses

.noexc45.i.i.i:                                   ; preds = %bb.ap, %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 32
  store ptr null, ptr %i.ef, align 8, !noalias !39485
  %i.eg = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 40
  store i32 0, ptr %i.eg, align 8, !noalias !39485
  %i.eh = cmpxchg ptr %i.eb, i8 1, i8 0 release monotonic, align 1, !noalias !39485
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %bb.bc, label %bb.aq, !prof !114

bb.aq:                                            ; preds = %.noexc45.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eb, i1 noundef zeroext false)
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

bb.ar:                                            ; preds = %bb.am
  %i.ej = load ptr, ptr %i.g, align 8, !alias.scope !39484, !nonnull !109, !align !125, !noundef !109
  %i.ek = tail call fastcc noundef align 8 ptr @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB5_10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE22schedule_existing_nodeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.ej, ptr noundef nonnull %i.ay), !noalias !39485 ; 7 uses
  %.not26.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not26.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerEventNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyETINtNtCs40k4W9msRzi_5alloc4sync3ArcB2c_EybEQNCNCNvMsd_NtNtB1n_6future10base_cacheINtB3U_5InnerB2c_NtB2e_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val31.i.i.i = load i8, ptr %i.ek, align 8, !range !113, !noalias !39485, !noundef !109
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val32.i.i.i = load ptr, ptr %i.el, align 8, !noalias !39485 ; 4 uses
  %i.em = trunc nuw i8 %.val31.i.i.i to i1
  br i1 %i.em, label %bb.at, label %bb.au, !prof !114

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i) ]
  %i.en = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 8 ; 4 uses
  %i.eo = cmpxchg weak ptr %i.en, i8 0, i8 1 acquire monotonic, align 1, !noalias !39485
  %i.ep = extractvalue { i8, i1 } %i.eo, 1
  br i1 %i.ep, label %.noexc49.i.i.i, label %bb.av, !prof !114

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #48
          to label %.noexc48.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

.noexc48.i.i.i:                                   ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eq = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.en, i64 undef, i32 noundef -1)
          to label %.noexc49.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485 ; 0 uses

.noexc49.i.i.i:                                   ; preds = %bb.av, %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 32
  store ptr null, ptr %i.er, align 8, !noalias !39485
  %i.es = getelementptr inbounds nuw i8, ptr %.val32.i.i.i, i64 40
  store i32 0, ptr %i.es, align 8, !noalias !39485
  %i.et = cmpxchg ptr %i.en, i8 1, i8 0 release monotonic, align 1, !noalias !39485
  %i.eu = extractvalue { i8, i1 } %i.et, 1
  br i1 %i.eu, label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit51.i.i.i, label %bb.aw, !prof !114

bb.aw:                                            ; preds = %.noexc49.i.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.en, i1 noundef zeroext false)
          to label %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit51.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !39485

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.aw, %bb.au
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtB1f_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %i.ek) #49
          to label %common.resume.i.i unwind label %bb.ay, !noalias !39485

_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit51.i.i.i: ; preds = %bb.aw, %.noexc49.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5deque7DeqNodeINtNtBG_11timer_wheel9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ek)
          to label %bb.ax unwind label %.thread66.i.i.i, !noalias !39485

.thread66.i.i.i:                                  ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit51.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.ax:                                            ; preds = %_RNvMNtNtCskTBvlRM5ILY_4moka6common11timer_wheelINtB2_9TimerNodeNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE29unset_timer_node_in_deq_nodesCsc93vp1BCDlY_26lance_namespace_datafusion.exit51.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef 40, i64 noundef 8) #44, !noalias !39485
end_hunk_10
