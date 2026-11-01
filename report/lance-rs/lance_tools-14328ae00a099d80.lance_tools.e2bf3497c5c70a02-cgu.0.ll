Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsjsY2yM364a4_11lance_tools:bb.a
    i8 0, label %bb.nz
    i8 3, label %bb.ob
  ]

bb.nz:                                            ; preds = %bb.ny
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  %i.azv = load ptr, ptr %i.azu, align 8, !alias.scope !10349, !nonnull !24, !noundef !24
  %i.azw = atomicrmw add ptr %i.azv, i64 -1 release, align 8, !noalias !10349
  %i.azx = icmp eq i64 %i.azw, 1
  br i1 %i.azx, label %bb.oa, label %._crit_edge.i.i

bb.oa:                                            ; preds = %bb.nz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.azu)
          to label %._crit_edge.i.i unwind label %bb.rf

bb.ob:                                            ; preds = %bb.ny
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.azp)
          to label %bb.od unwind label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.azy = landingpad { ptr, i32 }
          cleanup
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store i8 0, ptr %i.azz, align 8
  br label %.body662

bb.od:                                            ; preds = %bb.ob
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store i8 0, ptr %i.baa, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.od, %bb.nz, %bb.ny, %bb.oa
  %.phi.trans.insert539.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.pre540.i.i = load ptr, ptr %.phi.trans.insert539.i.i, align 8, !noalias !10315
  br label %bb.oe

bb.oe:                                            ; preds = %bb.rg, %._crit_edge.i.i
  %i.bab = phi ptr [ %i.azl, %._crit_edge.i.i ], [ %i.bez, %bb.rg ] ; 3 uses
  %i.bac = phi ptr [ %i.azm, %._crit_edge.i.i ], [ %i.bfa, %bb.rg ] ; 3 uses
  %i.bad = phi ptr [ %i.azn, %._crit_edge.i.i ], [ %i.bfb, %bb.rg ] ; 3 uses
  %i.bae = phi ptr [ %i.azo, %._crit_edge.i.i ], [ %i.bfc, %bb.rg ] ; 3 uses
  %i.baf = phi ptr [ %.pre540.i.i, %._crit_edge.i.i ], [ %i.blv, %bb.rg ]
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 16 ; 2 uses
  %i.bai = load i64, ptr %i.bah, align 8, !alias.scope !10350, !noundef !24
  %i.baj = call i64 @llvm.uadd.sat.i64(i64 %i.bai, i64 1)
  store i64 %i.baj, ptr %i.bah, align 8, !alias.scope !10350
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bal = load ptr, ptr %i.bak, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ban = load ptr, ptr %i.bam, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 1194 ; 2 uses
  store i8 0, ptr %i.bao, align 2, !noalias !10315
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.baq = load ptr, ptr %i.bap, align 8, !noalias !10315, !nonnull !24, !noundef !24
  %i.bar = load ptr, ptr %i.bag, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %.val139.i.i = load ptr, ptr %i.ban, align 8
  %i.bas = getelementptr i8, ptr %i.ban, i64 8
  %.val140.i.i = load i64, ptr %i.bas, align 8
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_removeCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(192) %i.bal, ptr %.val139.i.i, i64 %.val140.i.i, ptr noundef nonnull %i.baq, i16 noundef 0, i16 undef, ptr noalias noundef align 8 dereferenceable(24) %i.bar)
          to label %bb.of unwind label %bb.rf

bb.of:                                            ; preds = %bb.oe
  store i8 0, ptr %i.bao, align 2, !noalias !10315
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.bau = load i8, ptr %i.bat, align 8, !range !25, !noalias !10315, !noundef !24
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %bb.og, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.oh, %bb.og, %bb.of
  store i8 0, ptr %i.bat, align 8, !noalias !10315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !10315
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i

bb.og:                                            ; preds = %bb.of
  call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  call void @llvm.experimental.noalias.scope.decl(metadata !10352)
  %i.baw = load ptr, ptr %i.bi, align 8, !alias.scope !10353, !noalias !10315, !nonnull !24, !noundef !24
  %i.bax = atomicrmw add ptr %i.baw, i64 -1 release, align 8, !noalias !10353
  %i.bay = icmp eq i64 %i.bax, 1
  br i1 %i.bay, label %bb.oh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.oh:                                            ; preds = %bb.og
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.oi

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i: ; preds = %bb.se, %bb.sd, %bb.sb, %bb.oi
  %i.baz = phi ptr [ %i.bab, %bb.oi ], [ %i.bnx, %bb.sb ], [ %i.bnx, %bb.se ], [ %i.bnx, %bb.sd ]
  %i.bba = phi ptr [ %i.bac, %bb.oi ], [ %i.bny, %bb.sb ], [ %i.bny, %bb.se ], [ %i.bny, %bb.sd ]
  %i.bbb = phi ptr [ %i.bad, %bb.oi ], [ %i.bnz, %bb.sb ], [ %i.bnz, %bb.se ], [ %i.bnz, %bb.sd ]
  %i.bbc = phi ptr [ %i.bae, %bb.oi ], [ %i.boa, %bb.sb ], [ %i.boa, %bb.se ], [ %i.boa, %bb.sd ]
  %.pn40.i.i = phi { ptr, i32 } [ %i.bbe, %bb.oi ], [ %.pn38.i.i, %bb.sb ], [ %.pn38.i.i, %bb.se ], [ %.pn38.i.i, %bb.sd ]
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i8 0, ptr %i.bbd, align 8, !noalias !10315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !10315
  br label %bb.rx

bb.oi:                                            ; preds = %bb.oh
  %i.bbe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit213.i.i

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.ru, %bb.rs, %bb.rr, %bb.rm, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i, %bb.rl, %bb.rk, %bb.ri, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bbf = phi ptr [ %i.bez, %bb.ru ], [ %i.bez, %bb.rs ], [ %i.bez, %bb.rr ], [ %i.bez, %bb.rm ], [ %i.bez, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i ], [ %i.bez, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.bez, %bb.rl ], [ %i.bez, %bb.rk ], [ %i.bez, %bb.ri ], [ %i.bab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i ] ; 4 uses
  %i.bbg = phi ptr [ %i.bfa, %bb.ru ], [ %i.bfa, %bb.rs ], [ %i.bfa, %bb.rr ], [ %i.bfa, %bb.rm ], [ %i.bfa, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i ], [ %i.bfa, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.bfa, %bb.rl ], [ %i.bfa, %bb.rk ], [ %i.bfa, %bb.ri ], [ %i.bac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i ] ; 4 uses
  %i.bbh = phi ptr [ %i.bfb, %bb.ru ], [ %i.bfb, %bb.rs ], [ %i.bfb, %bb.rr ], [ %i.bfb, %bb.rm ], [ %i.bfb, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i ], [ %i.bfb, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.bfb, %bb.rl ], [ %i.bfb, %bb.rk ], [ %i.bfb, %bb.ri ], [ %i.bad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i ] ; 4 uses
  %i.bbi = phi ptr [ %i.bfc, %bb.ru ], [ %i.bfc, %bb.rs ], [ %i.bfc, %bb.rr ], [ %i.bfc, %bb.rm ], [ %i.bfc, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.thread369.i.i ], [ %i.bfc, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtB7_9PartialEq2eqCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.bfc, %bb.rl ], [ %i.bfc, %bb.rk ], [ %i.bfc, %bb.ri ], [ %i.bae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit.i.i ] ; 4 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val106.i.i = load ptr, ptr %i.bbj, align 8, !noalias !10315, !align !41, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val106.i.i)
          to label %bb.ol unwind label %bb.ok

bb.oj:                                            ; preds = %bb.rx, %bb.ok
  %i.bbk = phi ptr [ %i.bbf, %bb.ok ], [ %i.bno, %bb.rx ]
  %i.bbl = phi ptr [ %i.bbg, %bb.ok ], [ %i.bnp, %bb.rx ]
  %i.bbm = phi ptr [ %i.bbh, %bb.ok ], [ %i.bnq, %bb.rx ]
  %i.bbn = phi ptr [ %i.bbi, %bb.ok ], [ %i.bnr, %bb.rx ]
  %.pn43.i.i = phi { ptr, i32 } [ %i.bbp, %bb.ok ], [ %.pn40.pn.i.i, %bb.rx ]
  %i.bbo = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.bbo) #41
          to label %bb.om unwind label %bb.mz

bb.ok:                                            ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.ol:                                            ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE18move_front_to_backCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.bbq)
          to label %bb.op unwind label %bb.oo

bb.om:                                            ; preds = %bb.oo, %bb.oj
  %i.bbr = phi ptr [ %i.bbf, %bb.oo ], [ %i.bbk, %bb.oj ] ; 2 uses
  %i.bbs = phi ptr [ %i.bbg, %bb.oo ], [ %i.bbl, %bb.oj ] ; 2 uses
  %i.bbt = phi ptr [ %i.bbh, %bb.oo ], [ %i.bbm, %bb.oj ] ; 2 uses
  %i.bbu = phi ptr [ %i.bbi, %bb.oo ], [ %i.bbn, %bb.oj ] ; 2 uses
  %.pn45.i.i = phi { ptr, i32 } [ %i.bbz, %bb.oo ], [ %.pn43.i.i, %bb.oj ] ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10354)
  call void @llvm.experimental.noalias.scope.decl(metadata !10355)
  %i.bbw = load ptr, ptr %i.bbv, align 8, !alias.scope !10356, !noalias !10315, !nonnull !24, !noundef !24
  %i.bbx = atomicrmw add ptr %i.bbw, i64 -1 release, align 8, !noalias !10356
  %i.bby = icmp eq i64 %i.bbx, 1
  br i1 %i.bby, label %bb.on, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i

bb.on:                                            ; preds = %bb.om
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bbv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i unwind label %bb.mz

bb.oo:                                            ; preds = %bb.ol
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.op:                                            ; preds = %bb.ol
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  call void @llvm.experimental.noalias.scope.decl(metadata !10358)
  %i.bcb = load ptr, ptr %i.bca, align 8, !alias.scope !10359, !noalias !10315, !nonnull !24, !noundef !24
  %i.bcc = atomicrmw add ptr %i.bcb, i64 -1 release, align 8, !noalias !10359
  %i.bcd = icmp eq i64 %i.bcc, 1
  br i1 %i.bcd, label %bb.oq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit180.i.i

bb.oq:                                            ; preds = %bb.op
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bca)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit180.i.i unwind label %bb.or

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit180.i.i: ; preds = %bb.oq, %bb.op
  %.phi.trans.insert533.i.i = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pre534.i.i = load i64, ptr %.phi.trans.insert533.i.i, align 8, !alias.scope !10331, !noalias !10315
  %.phi.trans.insert535.i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.pre536.i.i = load i64, ptr %.phi.trans.insert535.i.i, align 8, !alias.scope !10331, !noalias !10315
  br label %bb.lq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i: ; preds = %bb.sa, %bb.rz, %bb.rc, %bb.rb, %bb.or, %bb.on, %bb.om
  %i.bce = phi ptr [ %i.bbf, %bb.or ], [ %i.bbr, %bb.om ], [ %i.blb, %bb.rb ], [ %i.bbr, %bb.on ], [ %i.blb, %bb.rc ], [ %i.bez, %bb.sa ], [ %i.bez, %bb.rz ]
  %i.bcf = phi ptr [ %i.bbg, %bb.or ], [ %i.bbs, %bb.om ], [ %i.blc, %bb.rb ], [ %i.bbs, %bb.on ], [ %i.blc, %bb.rc ], [ %i.bfa, %bb.sa ], [ %i.bfa, %bb.rz ]
  %i.bcg = phi ptr [ %i.bbh, %bb.or ], [ %i.bbt, %bb.om ], [ %i.bld, %bb.rb ], [ %i.bbt, %bb.on ], [ %i.bld, %bb.rc ], [ %i.bfb, %bb.sa ], [ %i.bfb, %bb.rz ]
  %i.bch = phi ptr [ %i.bbi, %bb.or ], [ %i.bbu, %bb.om ], [ %i.ble, %bb.rb ], [ %i.bbu, %bb.on ], [ %i.ble, %bb.rc ], [ %i.bfc, %bb.sa ], [ %i.bfc, %bb.rz ]
  %.pn47.i.i = phi { ptr, i32 } [ %i.bcj, %bb.or ], [ %.pn45.i.i, %bb.om ], [ %.pn23.pn.i.i, %bb.rb ], [ %.pn45.i.i, %bb.on ], [ %.pn23.pn.i.i, %bb.rc ], [ %eh.lpad-body204.i.i, %bb.sa ], [ %eh.lpad-body204.i.i, %bb.rz ]
  %i.bci = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(288) %i.bci) #41
          to label %bb.ln unwind label %bb.mz

bb.or:                                            ; preds = %bb.oq
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit178.i.i

_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.lt, %bb.ls
  %.sink12.i.i.i.i = phi ptr [ %i.ati, %bb.ls ], [ %i.atj, %bb.lt ]
  %i.bck = getelementptr inbounds nuw [32 x i8], ptr %.sink12.i.i.i.i, i64 %i.asy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ata, ptr noundef nonnull align 8 dereferenceable(32) %i.bck, i64 32, i1 false)
  %.phi.trans.insert537.i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.pre538.i.i = load i64, ptr %.phi.trans.insert537.i.i, align 8, !range !35, !noalias !10315 ; 2 uses
  %.not.i.i211 = icmp eq i64 %.pre538.i.i, -1
  br i1 %.not.i.i211, label %bb.ou, label %bb.os

bb.os:                                            ; preds = %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.bcl = load ptr, ptr %i.ata, align 8, !noalias !10315, !nonnull !24, !noundef !24
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bcn = load i64, ptr %i.bcm, align 8, !noalias !10315, !noundef !24
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %3 = load i64, ptr %2, align 8, !noalias !10315
  store i64 %.pre538.i.i, ptr %i.bco, align 8, !noalias !10315
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i64 %3, ptr %4, align 8, !noalias !10315
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store ptr %i.bcl, ptr %i.bcp, align 8, !noalias !10315
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.bcn, ptr %i.bcq, align 8, !noalias !10315
  %i.bcr = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bcs = load ptr, ptr %i.bcr, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcs, i64 584 ; 2 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !noalias !10361, !noundef !24
  %.not.i181.i.i = icmp eq ptr %i.bcv, null
  br i1 %.not.i181.i.i, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.thread.i.i, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  invoke fastcc void @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB5_10KeyLockMapNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE8key_lockCsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.bct, ptr noundef nonnull align 8 %i.bcu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bcp)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.i.i unwind label %bb.pb

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.thread.i.i: ; preds = %bb.os
  store ptr null, ptr %i.bct, align 8, !alias.scope !10360, !noalias !10315
  br label %bb.pc

bb.ou:                                            ; preds = %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i, %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2v_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(288) %i.asz)
          to label %bb.ov unwind label %bb.ul

bb.ov:                                            ; preds = %bb.ou
  %i.bcw = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bcx = load ptr, ptr %i.bcw, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bda = load i32, ptr %i.bcz, align 8, !noalias !10315, !noundef !24
  %i.bdb = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bdc = load ptr, ptr %i.bdb, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %i.bdd = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bde = load ptr, ptr %i.bdd, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bdg = load ptr, ptr %i.bdf, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12handle_admitCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.bcx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bcy, i32 noundef %i.bda, ptr noalias noundef align 8 dereferenceable(192) %i.bdc, ptr noalias noundef align 8 dereferenceable(32) %i.bde, ptr noalias noundef align 8 dereferenceable(24) %i.bdg)
          to label %bb.ow unwind label %bb.ul

bb.ow:                                            ; preds = %bb.ov
  %.val110.i.i = load ptr, ptr %i.bcy, align 8, !noalias !10315, !nonnull !24, !noundef !24
  %i.bdh = getelementptr inbounds nuw i8, ptr %.val110.i.i, i64 24
  %.val123.i.i = load ptr, ptr %i.bdh, align 8, !nonnull !24, !noundef !24
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 1190
  %i.bdj = load i16, ptr %i.bdi, align 2, !noalias !10315, !noundef !24 ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %.val123.i.i, i64 54 ; 2 uses
  br label %bb.ox

bb.ox:                                            ; preds = %bb.oy, %bb.ow
  %i.bdl = load atomic i16, ptr %i.bdk acquire, align 2 ; 3 uses
  %i.bdm = icmp uge i16 %i.bdl, %i.bdj
  %i.bdn = sub i16 %i.bdj, %i.bdl
  %i.bdo = icmp slt i16 %i.bdn, 0
  %or.cond.i184.i.i = or i1 %i.bdm, %i.bdo
  br i1 %or.cond.i184.i.i, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit185.i.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bdp = cmpxchg weak ptr %i.bdk, i16 %i.bdl, i16 %i.bdj acq_rel acquire, align 2
  %i.bdq = extractvalue { i16, i1 } %i.bdp, 1
  br i1 %i.bdq, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit185.i.i, label %bb.ox

_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit185.i.i: ; preds = %bb.oy, %bb.ox, %bb.uk
  %i.bdr = phi ptr [ %i.btl, %bb.uk ], [ %i.ast, %bb.ox ], [ %i.ast, %bb.oy ] ; 3 uses
  %i.bds = phi ptr [ %i.btm, %bb.uk ], [ %i.asu, %bb.ox ], [ %i.asu, %bb.oy ] ; 3 uses
  %i.bdt = phi ptr [ %i.btn, %bb.uk ], [ %i.asv, %bb.ox ], [ %i.asv, %bb.oy ] ; 3 uses
  %i.bdu = phi ptr [ %i.bto, %bb.uk ], [ %i.asw, %bb.ox ], [ %i.asw, %bb.oy ] ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.val97.i.i = load ptr, ptr %i.bdv, align 8, !noalias !10315, !nonnull !24, !noundef !24 ; 4 uses
  %i.bdw = atomicrmw add ptr %.val97.i.i, i32 -1 release, align 4
  %i.bdx = icmp eq i32 %i.bdw, 1
  br i1 %i.bdx, label %bb.oz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit189.i.i

bb.oz:                                            ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE14set_policy_genCsjsY2yM364a4_11lance_tools.exit185.i.i
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val97.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i186.i.i unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bdy = landingpad { ptr, i32 }
          cleanup
  br label %.body159.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i186.i.i: ; preds = %bb.oz
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97.i.i, i64 noundef 40, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit189.i.i

bb.pb:                                            ; preds = %bb.ot
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  br label %bb.rb

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.i.i: ; preds = %bb.ot
  %.pr366.i.i = load ptr, ptr %i.bct, align 8, !noalias !10315
  %.not20.i.i = icmp eq ptr %.pr366.i.i, null
  br i1 %.not20.i.i, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.i.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.thread.i.i
  %i.bea = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store ptr null, ptr %i.bea, align 8, !noalias !10315
  br label %bb.pn

bb.pd:                                            ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockCsjsY2yM364a4_11lance_tools.exit183.i.i
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store ptr %i.bct, ptr %i.beb, align 8, !noalias !10315
  %.sroa.8319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i8 0, ptr %.sroa.8319.0..sroa_idx.i.i, align 8, !noalias !10315
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.jx
  %i.bec = phi ptr [ %i.ajc, %bb.jx ], [ %i.ast, %bb.pd ] ; 3 uses
  %i.bed = phi ptr [ %i.ajb, %bb.jx ], [ %i.asu, %bb.pd ] ; 2 uses
  %i.bee = phi ptr [ %.phi.trans.insert365.i, %bb.jx ], [ %i.asv, %bb.pd ] ; 3 uses
  %i.bef = phi ptr [ %i.amh, %bb.jx ], [ %i.asw, %bb.pd ] ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %.val117.i.i = load ptr, ptr %1, align 8, !alias.scope !10315
  %i.beh = invoke fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.beg, ptr %.val117.i.i)
          to label %bb.pg unwind label %bb.pf     ; 2 uses

bb.pf:                                            ; preds = %bb.pe
  %i.bei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.beg) #41
          to label %.body196.i.i unwind label %bb.mz

bb.pg:                                            ; preds = %bb.pe
  %i.bej = icmp eq ptr %i.beh, null
  br i1 %i.bej, label %bb.up, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bel = load i8, ptr %i.bek, align 8, !range !40, !noalias !10315, !noundef !24
  %cond.i190.i.i = icmp eq i8 %i.bel, 3
  br i1 %cond.i190.i.i, label %bb.pi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i

bb.pi:                                            ; preds = %bb.ph
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ben = load i32, ptr %i.bem, align 8, !range !45, !noalias !10315, !noundef !24
  %i.beo = icmp eq i32 %i.ben, -2
  br i1 %i.beo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ber = load ptr, ptr %i.bep, align 8, !noalias !10315, !align !41, !noundef !24 ; 2 uses
  store ptr null, ptr %i.bep, align 8, !noalias !10315
  %i.bes = load i8, ptr %i.beq, align 8, !range !25, !noalias !10315, !noundef !24
  %i.bet = trunc nuw i8 %i.bes to i1
  %.not.i.i.i.i.i.i.i.i191.i.i = icmp ne ptr %i.ber, null
  %or.cond.not.i.i.i.i.i.i.i.i192.i.i = and i1 %.not.i.i.i.i.i.i.i.i191.i.i, %i.bet
  br i1 %or.cond.not.i.i.i.i.i.i.i.i192.i.i, label %bb.pk, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i193.i.i

bb.pk:                                            ; preds = %bb.pj
  %i.beu = atomicrmw add ptr %i.ber, i64 -2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i193.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i193.i.i: ; preds = %bb.pk, %bb.pj
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.val.i.i.i.i.i.i194.i.i = load ptr, ptr %i.bev, align 8, !noalias !10315, !align !41, !noundef !24 ; 4 uses
  %i.bew = icmp eq ptr %.val.i.i.i.i.i.i194.i.i, null
  br i1 %i.bew, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i, label %bb.pl

bb.pl:                                            ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i193.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i194.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i195.i.i unwind label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bex = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i194.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %.body196.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i195.i.i: ; preds = %bb.pl
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i194.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i

.body196.i.i:                                     ; preds = %bb.pm, %bb.pf
  %.pn23.i.i = phi { ptr, i32 } [ %i.bex, %bb.pm ], [ %i.bei, %bb.pf ]
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.bey) #41
          to label %bb.rb unwind label %bb.mz

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i195.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i193.i.i, %bb.pi, %bb.ph
  store ptr %i.beh, ptr %i.beg, align 8, !noalias !10315
  br label %bb.pn

bb.pn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i, %bb.pc
  %i.bez = phi ptr [ %i.bec, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i ], [ %i.ast, %bb.pc ] ; 14 uses
  %i.bfa = phi ptr [ %i.bed, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i ], [ %i.asu, %bb.pc ] ; 14 uses
  %i.bfb = phi ptr [ %i.bee, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i ], [ %i.asv, %bb.pc ] ; 14 uses
  %i.bfc = phi ptr [ %i.bef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0ECsjsY2yM364a4_11lance_tools.exit198.i.i ], [ %i.asw, %bb.pc ] ; 14 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bfe = load ptr, ptr %i.bfd, align 8, !noalias !10315, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bfg = load i64, ptr %i.bff, align 8, !noalias !10315, !noundef !24 ; 3 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 4 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.val141.i.i = load ptr, ptr %i.bfh, align 8, !noalias !10315 ; 5 uses
  %.val142.i.i = load i64, ptr %i.bfi, align 8, !noalias !10315
end_hunk_0
begin_hunk_1_@_RNvXsS_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_5MapOkNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1e_13FileScheduler14submit_request0NCNvB1a_13submit_single0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14270
  store i64 %i.je, ptr %i.e, align 8, !noalias !14270
  %.not.i.i117.i.i.i.i.i = icmp ugt i64 %i.en, %i.je
  br i1 %.not.i.i117.i.i.i.i.i, label %bb.ck, label %bb.cl, !prof !29

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14270
  store ptr %i.f, ptr %i.d, align 8, !noalias !14270
  br label %.invoke.i.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %.not31.i.i118.i.i.i.i.i = icmp ugt i64 %i.je, %i.jg
  br i1 %.not31.i.i118.i.i.i.i.i, label %bb.cm, label %_RINvCs4XDKJNDGLq7_5bytes5rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjsY2yM364a4_11lance_tools.exit.i119.i.i.i.i.i, !prof !29

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14270
  store ptr %i.e, ptr %i.c, align 8, !noalias !14270
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.cm, %bb.ck
  %.sink452.i.sroa.phi.i.i.i.i = phi ptr [ %.sink452.i.sroa.gep.i.i.i.i, %bb.ck ], [ %.sink452.i.sroa.gep1.i.i.i.i, %bb.cm ]
  %.sink452.i.sroa.phi2.i.i.i.i = phi ptr [ %.sink452.i.sroa.gep3.i.i.i.i, %bb.ck ], [ %.sink452.i.sroa.gep4.i.i.i.i, %bb.cm ]
  %.sink452.i.sroa.phi5.i.i.i.i = phi ptr [ %.sink452.i.sroa.gep6.i.i.i.i, %bb.ck ], [ %.sink452.i.sroa.gep7.i.i.i.i, %bb.cm ]
  %.sink452.i.i.i.i.i = phi ptr [ %i.d, %bb.ck ], [ %i.c, %bb.cm ]
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
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
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
  %.sroa.825.0.copyload.i.i = load ptr, ptr %.sroa.825.0..sroa_idx.i.i, align 8, !noalias !14192 ; 10 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !14192 ; 4 uses
  %.not.i.i.i = icmp eq i8 %.sroa.022.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.11.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i, i64 7, i1 false), !noalias !14192
  %i.lc = inttoptr i64 %.sroa.624.0.copyload.i.i to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !14192
  br label %_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i

bb.dg:                                            ; preds = %bb.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.825.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14283
  %i.ld = icmp ult i64 %.sroa.10.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ld)
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.sroa.10.0.copyload.i.i, 5
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 %.idx.i.i.i.i.i
  store ptr %.sroa.825.0.copyload.i.i, ptr %i.b, align 8, !noalias !14283
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.624.0.copyload.i.i, ptr %i.lf, align 8, !noalias !14283
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.825.0.copyload.i.i, ptr %i.lg, align 8, !noalias !14283
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.le, ptr %i.lh, align 8, !noalias !14283
  call void @llvm.experimental.noalias.scope.decl(metadata !14284)
  %i.li = icmp eq i64 %.sroa.10.0.copyload.i.i, 0
  br i1 %i.li, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.dh:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.b) #41
          to label %common.resume.i.i unwind label %bb.dj, !noalias !14285

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.dg
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 32
  store ptr %i.lk, ptr %i.lg, align 8, !alias.scope !14284, !noalias !14283
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %.sroa.825.0.copyload.i.i, align 8, !noalias !14286 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i, label %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i, !prof !54

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, %bb.dg
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #40
          to label %bb.di unwind label %bb.dh, !noalias !14285

bb.di:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !14285
  unreachable

_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload26.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !14287
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload27.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i, align 8, !noalias !14287
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.825.0.copyload.i.i, i64 24
  %.sroa.6.sroa.6.0.copyload28.i.i = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.i.i.i.sroa_idx.i.i, align 8, !noalias !14287
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.b), !noalias !14193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14283
  br label %_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i

_RNvXsa_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_7MapOkFnNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBZ_13FileScheduler13submit_single0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.df
  %.sroa.6.sroa.6.0.i.i = phi i64 [ %.sroa.6.sroa.6.0.copyload28.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.11.sroa.0.0.copyload.i.i, %bb.df ]
  %.sroa.6.sroa.5.0.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload27.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.10.0.copyload.i.i, %bb.df ]
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.6.sroa.0.0.copyload26.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.825.0.copyload.i.i, %bb.df ]
  %.sroa.516.0.i.i = phi ptr [ %.sroa.0.0.copyload1.i.i.i.i.i, %_RNvXNtCs9p5Dg9WVwvP_12futures_util3fnsNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBI_13FileScheduler13submit_single0INtB2_7FnOnce1INtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE9call_onceCsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.lc, %bb.df ]
  store i8 %.sroa.022.0.copyload.i.i, ptr %0, align 8, !alias.scope !14193
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.i.i, i64 7, i1 false), !noalias !14288
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.516.0.i.i, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.sroa.5.0.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.sroa.6.0.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14193
  %.sroa.720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.i.i, i64 16, i1 false), !noalias !14288
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.720.i.i)
  br label %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB1S_13FileScheduler14submit_request0EINtNtB9_3fns7MapOkFnNCNvB1O_13submit_single0EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsjsY2yM364a4_11lance_tools.exit

bb.dk:                                            ; preds = %bb.dd
  unreachable

bb.dl:                                            ; preds = %bb.dd
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.x) #41
          to label %common.resume.i.i unwind label %bb.dm, !noalias !14193

bb.dm:                                            ; preds = %bb.dl, %.body.i.i
  %i.ln = landingpad { ptr, i32 }
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
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @538, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @537)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @536, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
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
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14297)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14297, !noundef !24 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !42, !alias.scope !14298, !noundef !24
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjsY2yM364a4_11lance_tools.exit.i, !prof !29

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjsY2yM364a4_11lance_tools.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !14297, !nonnull !24, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjsY2yM364a4_11lance_tools.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
end_hunk_1
