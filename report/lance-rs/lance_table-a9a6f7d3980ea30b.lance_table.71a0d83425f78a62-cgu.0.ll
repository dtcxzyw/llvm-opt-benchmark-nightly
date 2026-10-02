Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Cs9KQ7US1M400_11lance_table:bb.a
  %i.dpu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40946)
  call void @llvm.experimental.noalias.scope.decl(metadata !40947)
  %i.dpv = load ptr, ptr %i.am, align 8, !alias.scope !40948, !noalias !40903, !nonnull !68, !noundef !68
  %i.dpw = atomicrmw sub ptr %i.dpv, i64 1 release, align 8, !noalias !40948
  %i.dpx = icmp eq i64 %i.dpw, 1
  br i1 %i.dpx, label %bb.aja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i

bb.ajd:                                           ; preds = %bb.ajb
  store i8 0, ptr %i.des, align 4, !noalias !40903
  call void @llvm.experimental.noalias.scope.decl(metadata !40949)
  call void @llvm.experimental.noalias.scope.decl(metadata !40950)
  %i.dpy = load ptr, ptr %i.am, align 8, !alias.scope !40951, !noalias !40903, !nonnull !68, !noundef !68
  %i.dpz = atomicrmw sub ptr %i.dpy, i64 1 release, align 8, !noalias !40951
  %i.dqa = icmp eq i64 %i.dpz, 1
  br i1 %i.dqa, label %bb.aje, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit70.i.i

bb.aje:                                           ; preds = %bb.ajd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit70.i.i unwind label %bb.ajf

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i: ; preds = %bb.ajf, %bb.ajc, %bb.aja
  %.pn33.i.i = phi { ptr, i32 } [ %i.dqb, %bb.ajf ], [ %i.dpu, %bb.aja ], [ %i.dpu, %bb.ajc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !40903
  br label %.body.i.i472

bb.ajf:                                           ; preds = %bb.aje
  %i.dqb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit70.i.i: ; preds = %bb.aje, %bb.ajd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !40903
  call void @llvm.experimental.noalias.scope.decl(metadata !40952)
  call void @llvm.experimental.noalias.scope.decl(metadata !40953)
  %i.dqc = load i32, ptr %i.dem, align 8, !alias.scope !40954, !noalias !40955, !noundef !68 ; 2 uses
  %i.dqd = load i32, ptr %i.den, align 4, !alias.scope !40956, !noalias !40957, !noundef !68
  %i.dqe = icmp ult i32 %i.dqc, %i.dqd
  br i1 %i.dqe, label %bb.agl, label %.loopexit.i.i

bb.ajg:                                           ; preds = %bb.aga, %bb.afy, %bb.afv
  %i.dqf = phi ptr [ %i.dfb, %bb.aga ], [ %i.det, %bb.afy ], [ %i.det, %bb.afv ]
  %i.dqg = phi ptr [ %i.dfc, %bb.aga ], [ %i.deu, %bb.afy ], [ %i.deu, %bb.afv ]
  %i.dqh = phi ptr [ %i.dfd, %bb.aga ], [ %i.dev, %bb.afy ], [ %i.dev, %bb.afv ]
  %i.dqi = phi ptr [ %i.dfe, %bb.aga ], [ %i.dew, %bb.afy ], [ %i.dew, %bb.afv ]
  %.pn22.i.i = phi { ptr, i32 } [ %i.dft, %bb.aga ], [ %i.dfa, %bb.afy ], [ %i.dez, %bb.afv ]
  %i.dqj = getelementptr inbounds nuw i8, ptr %0, i64 487 ; 2 uses
  %i.dqk = load i8, ptr %i.dqj, align 1, !range !77, !noalias !40903, !noundef !68
  %i.dql = trunc nuw i8 %i.dqk to i1
  br i1 %i.dql, label %bb.aji, label %bb.ajh

bb.ajh:                                           ; preds = %bb.aji, %bb.ajg
  store i8 0, ptr %i.dqj, align 1, !noalias !40903
  br label %.body64.i.i

bb.aji:                                           ; preds = %bb.ajg
  %i.dqm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val.i.i475 = load ptr, ptr %i.dqm, align 8, !noalias !40903, !nonnull !68, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECs9KQ7US1M400_11lance_table(ptr nonnull %.val.i.i475) #81
          to label %bb.ajh unwind label %bb.ais

bb.ajj:                                           ; preds = %bb.agf
  %i.dqn = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40958)
  call void @llvm.experimental.noalias.scope.decl(metadata !40959)
  %i.dqo = load ptr, ptr %i.dqn, align 8, !alias.scope !40960, !noalias !40903, !nonnull !68, !noundef !68
  %i.dqp = atomicrmw sub ptr %i.dqo, i64 1 release, align 8, !noalias !40960
  %i.dqq = icmp eq i64 %i.dqp, 1
  br i1 %i.dqq, label %bb.ajk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i

bb.ajk:                                           ; preds = %bb.ajj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dqn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i unwind label %bb.ais

bb.ajl:                                           ; preds = %bb.aft, %bb.afs
  %i.dqr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i473

bb.ajm:                                           ; preds = %bb.ahk, %bb.afw
  %i.dqs = phi ptr [ %i.djw, %bb.ahk ], [ %i.det, %bb.afw ]
  %i.dqt = phi ptr [ %i.djy, %bb.ahk ], [ %i.dev, %bb.afw ]
  %.sink.i.ph.i524 = phi i8 [ 3, %bb.ahk ], [ 4, %bb.afw ]
  store i8 %.sink.i.ph.i524, ptr %i.dqt, align 8, !noalias !40903
  br label %bb.akm

bb.ajn:                                           ; preds = %bb.ahc, %.loopexit.i.i
  store i8 1, ptr %i.dei, align 8, !noalias !40903
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dej)
          to label %._crit_edge172.i unwind label %bb.ajo

._crit_edge172.i:                                 ; preds = %bb.ajn
  %.phi.trans.insert173.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre174.i = load ptr, ptr %.phi.trans.insert173.i, align 8, !noalias !40902
  br label %bb.ajp

bb.ajo:                                           ; preds = %bb.ajn
  %i.dqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

bb.ajp:                                           ; preds = %._crit_edge172.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i
  %i.dqv = phi ptr [ %i.deg, %._crit_edge172.i ], [ %i.dbk, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.dqw = phi ptr [ %i.deh, %._crit_edge172.i ], [ %i.dbl, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.dqx = phi ptr [ %.pre174.i, %._crit_edge172.i ], [ %i.dci, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.dqy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dqz = getelementptr i8, ptr %i.dqx, i64 128
  %.val41.i478 = load i32, ptr %i.dqz, align 8, !range !118, !noundef !68
  %.not130.i = icmp eq i32 %.val41.i478, -1
  br i1 %.not130.i, label %bb.ajq, label %bb.ajs

bb.ajq:                                           ; preds = %bb.ajp
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqx, i64 552
  %i.drb = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dra)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.ajr

bb.ajr:                                           ; preds = %bb.ajq
  %i.drc = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ajq
  br i1 %i.drb, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._crit_edge.i, label %bb.akn

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._crit_edge.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit.i
  %.pre175.i = load ptr, ptr %i.dqy, align 8, !noalias !40902
  br label %bb.ajs

bb.ajs:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._crit_edge.i, %bb.ajp
  %i.drd = phi ptr [ %.pre175.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._crit_edge.i ], [ %i.dqx, %bb.ajp ]
  %i.dre = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drf = load ptr, ptr %i.dre, align 8, !noalias !40902, !nonnull !68, !align !73, !noundef !68
  %.val38.i479 = load ptr, ptr %i.drf, align 8, !nonnull !68, !align !73, !noundef !68
  %i.drg = getelementptr inbounds nuw i8, ptr %.val38.i479, i64 16
  %i.drh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dri = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.drj = load i32, ptr %i.dri, align 4, !noalias !40902, !noundef !68
  %i.drk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.drl = load i64, ptr %i.drk, align 8, !noalias !40902, !noundef !68
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.drl, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.drd, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.drg, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.drm = load <2 x ptr>, ptr %i.drh, align 8, !noalias !40902
  store <2 x ptr> %i.drm, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.drj, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.1577.0..sroa_idx.i, align 1, !noalias !40902
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 0, ptr %.sroa.1678.0..sroa_idx.i, align 2, !noalias !40902
  br label %bb.aju

.body.i473:                                       ; preds = %bb.ajl, %.body.i.i472
  %i.drn = phi ptr [ %i.ddt, %.body.i.i472 ], [ %i.dbj, %bb.ajl ]
  %i.dro = phi ptr [ %i.ddu, %.body.i.i472 ], [ %i.dbi, %bb.ajl ]
  %i.drp = phi ptr [ %i.ddw, %.body.i.i472 ], [ %i.dcv, %bb.ajl ]
  %.pn11.i474 = phi { ptr, i32 } [ %.pn33.pn.i.i, %.body.i.i472 ], [ %i.dqr, %bb.ajl ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.drp) #81
          to label %bb.afk unwind label %bb.ajt

bb.ajt:                                           ; preds = %bb.akh, %bb.akb, %bb.ajv, %.body.i473
  %i.drq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.aju:                                           ; preds = %bb.ajs, %bb.afi
  %i.drr = phi ptr [ %i.dqv, %bb.ajs ], [ %i.dbj, %bb.afi ] ; 4 uses
  %i.drs = phi ptr [ %i.dqw, %bb.ajs ], [ %i.dbi, %bb.afi ] ; 3 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dru = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.drt, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ajw unwind label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  %i.drv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.drt) #81
          to label %bb.afk unwind label %bb.ajt

bb.ajw:                                           ; preds = %bb.aju
  br i1 %i.dru, label %bb.akm, label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.drt)
          to label %bb.ajz unwind label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx
  %i.drw = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

bb.ajz:                                           ; preds = %bb.ajx
  %i.drx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dry = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drz = load ptr, ptr %i.dry, align 8, !noalias !40902, !nonnull !68, !align !73, !noundef !68
  %.val37.i469 = load ptr, ptr %i.drz, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dsa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsb = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsc = load i32, ptr %i.dsb, align 4, !noalias !40902, !noundef !68
  %i.dsd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dse = load i64, ptr %i.dsd, align 8, !noalias !40902, !noundef !68
  %.sroa.792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dse, ptr %.sroa.792.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %2 = load ptr, ptr %i.drx, align 8, !noalias !40902, !nonnull !68, !align !73, !noundef !68
  %3 = load <2 x ptr>, ptr %i.dsa, align 8, !noalias !40902
  %4 = insertelement <4 x ptr> poison, ptr %2, i64 0
  %5 = insertelement <4 x ptr> %4, ptr %.val37.i469, i64 1
  %6 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x ptr> %5, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %8 = getelementptr inbounds nuw i8, <4 x ptr> %7, <4 x i64> <i64 0, i64 16, i64 0, i64 0>
  store <4 x ptr> %8, ptr %.sroa.994.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.1398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsc, ptr %.sroa.1398.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.15100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15100.0..sroa_idx.i, align 1, !noalias !40902
  %.sroa.16101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 1, ptr %.sroa.16101.0..sroa_idx.i, align 2, !noalias !40902
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajz, %bb.afi
  %i.dsf = phi ptr [ %i.drr, %bb.ajz ], [ %i.dbj, %bb.afi ] ; 4 uses
  %i.dsg = phi ptr [ %i.drs, %bb.ajz ], [ %i.dbi, %bb.afi ] ; 3 uses
  %i.dsh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsi = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsh, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.akc unwind label %bb.akb

bb.akb:                                           ; preds = %bb.aka
  %i.dsj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsh) #81
          to label %bb.afk unwind label %bb.ajt

bb.akc:                                           ; preds = %bb.aka
  br i1 %i.dsi, label %bb.akm, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsh)
          to label %bb.akf unwind label %bb.ake

bb.ake:                                           ; preds = %bb.akd
  %i.dsk = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

bb.akf:                                           ; preds = %bb.akd
  %i.dsl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dsm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dsn = load ptr, ptr %i.dsm, align 8, !noalias !40902, !nonnull !68, !align !73, !noundef !68
  %.val36.i468 = load ptr, ptr %i.dsn, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dso = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsq = load i32, ptr %i.dsp, align 4, !noalias !40902, !noundef !68
  %i.dsr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dss = load i64, ptr %i.dsr, align 8, !noalias !40902, !noundef !68
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dss, ptr %.sroa.7116.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %9 = load ptr, ptr %i.dsl, align 8, !noalias !40902, !nonnull !68, !align !73, !noundef !68
  %10 = load <2 x ptr>, ptr %i.dso, align 8, !noalias !40902
  %11 = insertelement <4 x ptr> poison, ptr %9, i64 0
  %12 = insertelement <4 x ptr> %11, ptr %.val36.i468, i64 1
  %13 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x ptr> %12, <4 x ptr> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %15 = getelementptr inbounds nuw i8, <4 x ptr> %14, <4 x i64> <i64 0, i64 16, i64 0, i64 0>
  store <4 x ptr> %15, ptr %.sroa.9118.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.13122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsq, ptr %.sroa.13122.0..sroa_idx.i, align 8, !noalias !40902
  %.sroa.15124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15124.0..sroa_idx.i, align 1, !noalias !40902
  %.sroa.16125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 2, ptr %.sroa.16125.0..sroa_idx.i, align 2, !noalias !40902
  br label %bb.akg

bb.akg:                                           ; preds = %bb.akf, %bb.afi
  %i.dst = phi ptr [ %i.dsf, %bb.akf ], [ %i.dbj, %bb.afi ] ; 4 uses
  %i.dsu = phi ptr [ %i.dsg, %bb.akf ], [ %i.dbi, %bb.afi ] ; 2 uses
  %i.dsv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsw = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsv, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aki unwind label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.dsx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsv) #81
          to label %bb.afk unwind label %bb.ajt

bb.aki:                                           ; preds = %bb.akg
  br i1 %i.dsw, label %bb.akm, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dsv)
          to label %bb.akn unwind label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.dsy = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

bb.akl:                                           ; preds = %bb.afn, %bb.afm
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  br label %.body532

bb.akm:                                           ; preds = %bb.akc, %bb.ajw, %bb.ajm, %bb.aki
  %i.dta = phi ptr [ %i.dst, %bb.aki ], [ %i.dqs, %bb.ajm ], [ %i.drr, %bb.ajw ], [ %i.dsf, %bb.akc ]
  %.sink.i466.ph = phi i8 [ 6, %bb.aki ], [ 3, %bb.ajm ], [ 4, %bb.ajw ], [ 5, %bb.akc ]
  store i8 %.sink.i466.ph, ptr %i.dta, align 8, !noalias !40902
  br label %common.ret

bb.akn:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit.i, %bb.akj
  %i.dtb = phi ptr [ %i.dqv, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit.i ], [ %i.dst, %bb.akj ]
  store i8 1, ptr %i.dtb, align 8, !noalias !40902
  br label %bb.afh

bb.ako:                                           ; preds = %bb.akp, %bb.ayg, %bb.afh
  %i.dtc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dtd = load ptr, ptr %i.dtc, align 8, !nonnull !68, !align !73, !noundef !68 ; 3 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dtf = load i64, ptr %i.dtd, align 8, !range !76, !noundef !68
  %i.dtg = trunc nuw i64 %i.dtf to i1
  br i1 %i.dtg, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCs9KQ7US1M400_11lance_table.exit, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCs9KQ7US1M400_11lance_table.exit.thread

bb.akp:                                           ; preds = %bb.afh
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dav, i64 688
  %i.dti = load atomic i8, ptr %i.dth acquire, align 8
  %.not903 = icmp eq i8 %i.dti, 0
  br i1 %.not903, label %.thread1943, label %bb.ako

.thread1943:                                      ; preds = %bb.akp
  %i.dtj = load ptr, ptr %i.dau, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dtk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dtl = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dtm = load i32, ptr %i.dtl, align 4, !noundef !68
  %i.dtn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.7785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.dtj, ptr %.sroa.7785.0..sroa_idx, align 8
  %.sroa.8786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.daw, ptr %.sroa.8786.0..sroa_idx, align 8
  %.sroa.9787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dto = load <2 x ptr>, ptr %i.dtk, align 8
  %i.dtp = getelementptr inbounds nuw i8, <2 x ptr> %i.dto, i64 16
  store <2 x ptr> %i.dtp, ptr %.sroa.9787.0..sroa_idx, align 8
  %.sroa.11789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.dtn, ptr %.sroa.11789.0..sroa_idx, align 8
  %.sroa.12790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.dtm, ptr %.sroa.12790.0..sroa_idx, align 8
  %.sroa.14792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 637
  store i8 0, ptr %.sroa.14792.0..sroa_idx, align 1
  %i.dtq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dtr = getelementptr inbounds nuw i8, ptr %0, i64 637
  br label %bb.akr

bb.akq:                                           ; preds = %bb.a
  %.phi.trans.insert1715 = getelementptr inbounds nuw i8, ptr %0, i64 637
  %.pre1716 = load i8, ptr %.phi.trans.insert1715, align 1, !range !96, !noalias !40961
  %i.dts = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40961)
  %i.dtt = getelementptr inbounds nuw i8, ptr %0, i64 637 ; 12 uses
  switch i8 %.pre1716, label %default.unreachable1920 [
    i8 0, label %bb.akr
    i8 1, label %bb.aot
    i8 2, label %bb.aou
    i8 3, label %bb.aov
  ]

bb.akr:                                           ; preds = %.thread1943, %bb.akq
  %i.dtu = phi ptr [ %i.dtr, %.thread1943 ], [ %i.dtt, %bb.akq ] ; 12 uses
  %i.dtv = phi ptr [ %i.dtq, %.thread1943 ], [ %i.dts, %bb.akq ] ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 4 uses
  store i8 0, ptr %i.dtw, align 4, !noalias !40961
  %i.dtx = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dty = load ptr, ptr %i.dtx, align 8, !noalias !40961, !nonnull !68, !align !73, !noundef !68 ; 5 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dub = load <2 x ptr>, ptr %i.dua, align 8, !noalias !40961
  store <2 x ptr> %i.dub, ptr %i.dtz, align 8, !noalias !40961
  %i.duc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dud = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.due = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.duf = load i32, ptr %i.due, align 8, !noalias !40961, !noundef !68 ; 4 uses
  %i.dug = load <2 x ptr>, ptr %i.dud, align 8, !noalias !40961
  store <2 x ptr> %i.dug, ptr %i.duc, align 8, !noalias !40961
  %i.duh = getelementptr inbounds nuw i8, ptr %i.dty, i64 72
  %i.dui = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.duh)
          to label %bb.akt unwind label %bb.aks

.body672.thread:                                  ; preds = %bb.aks, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %bb.alr, %bb.anq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i, %bb.alt
  %i.duj = phi ptr [ %i.dtu, %bb.aks ], [ %i.ect, %bb.anq ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.dtu, %bb.alr ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.dtu, %bb.alt ]
  %.pn34.i = phi { ptr, i32 } [ %i.duk, %bb.aks ], [ %.pn28.pn.pn.pn.pn.i, %bb.anq ], [ %.pn.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.alr ], [ %eh.lpad-body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ], [ %eh.lpad-body.i.i, %bb.alt ]
  store i8 2, ptr %i.duj, align 1, !noalias !40961
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECs9KQ7US1M400_11lance_table.exit686

bb.aks:                                           ; preds = %bb.akr
  %i.duk = landingpad { ptr, i32 }
          cleanup
  br label %.body672.thread

bb.akt:                                           ; preds = %bb.akr
  %i.dul = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dum = load ptr, ptr %i.dul, align 8, !noalias !40961, !nonnull !68, !align !73, !noundef !68 ; 6 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dum, i64 144 ; 9 uses
  %i.duo = getelementptr i8, ptr %i.dum, i64 160
  %.val39.i615 = load i64, ptr %i.duo, align 8, !noundef !68
  %i.dup = icmp eq i64 %.val39.i615, 0
  br i1 %i.dup, label %bb.aku, label %bb.ans

bb.aku:                                           ; preds = %bb.akt
  %i.duq = load ptr, ptr %i.dtz, align 8, !noalias !40961, !nonnull !68, !align !73, !noundef !68 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !40961
  store i64 %i.dui, ptr %i.ae, align 8, !noalias !40961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !40961
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duq, i64 8 ; 2 uses
  %i.dus = load i64, ptr %i.dur, align 8, !noundef !68
  store i64 -1, ptr %i.ad, align 8, !noalias !40961
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.duq, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !40961
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @1027, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40961
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.dus, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !40961
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !40961
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i8 0, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !noalias !40961
  %.sroa.4.0..sroa_idx.i.i635 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i635, align 8, !noalias !40961
  call void @llvm.experimental.noalias.scope.decl(metadata !40962)
  call void @llvm.experimental.noalias.scope.decl(metadata !40963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !40964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !40964
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCskTBvlRM5ILY_4moka3cht4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1p_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3f_16CachedReaderDataEENCNvMs0_B2B_INtB2B_11InvalidatorB3d_B42_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE35remove_predicates_registered_before0ENCB4u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.akw unwind label %bb.akv, !noalias !40965

bb.akv:                                           ; preds = %bb.aku
  %i.dut = landingpad { ptr, i32 }
          cleanup
  br label %bb.alr

bb.akw:                                           ; preds = %bb.aku
  %i.duu = load i64, ptr %i.z, align 8, !range !70, !noalias !40964, !noundef !68 ; 4 uses
  %.not.i.i.i.i636 = icmp eq i64 %i.duu, -1
  br i1 %.not.i.i.i.i636, label %bb.akx, label %bb.ald

bb.akx:                                           ; preds = %bb.akw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !40964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !40964
  call void @llvm.experimental.noalias.scope.decl(metadata !40966)
  call void @llvm.experimental.noalias.scope.decl(metadata !40967)
  call void @llvm.experimental.noalias.scope.decl(metadata !40968)
  call void @llvm.experimental.noalias.scope.decl(metadata !40969)
  %i.duv = load i64, ptr %i.ad, align 8, !range !70, !alias.scope !40970, !noalias !40971, !noundef !68 ; 3 uses
  %i.duw = icmp eq i64 %i.duv, -1
  br i1 %i.duw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.thread, label %bb.aky

bb.aky:                                           ; preds = %bb.akx
  call void @llvm.experimental.noalias.scope.decl(metadata !40972)
  %i.dux = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dux, align 8, !alias.scope !40973, !noalias !40971, !nonnull !68, !noundef !68 ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.duy, align 8, !alias.scope !40973, !noalias !40971, !noundef !68 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40974)
  %i.duz = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.duz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aky, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table:bb.a

bb.cv:                                            ; preds = %bb.cu
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  br label %bb.db

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #80
          to label %.noexc84 unwind label %bb.da

.noexc84:                                         ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.ct
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %.sroa.035.1.i.i.i, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !68, !align !73, !noundef !68 ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 24
  %.val42 = load ptr, ptr %i.lh, align 8, !align !73, !noundef !68
  %.not114 = icmp eq ptr %.val42, null
  br i1 %.not114, label %bb.k, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.li, align 1
  %i.lj = load ptr, ptr %i.hb, align 8, !nonnull !68, !noundef !68
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.ll = load i8, ptr %i.lk, align 2, !range !96, !noundef !68
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.lg, ptr %.sroa.7105.0..sroa_idx, align 8
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.lj, ptr %.sroa.8106.0..sroa_idx, align 8
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.le, ptr %.sroa.9107.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 %i.ll, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 370
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 2
  br label %bb.f

bb.da:                                            ; preds = %bb.cx
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.db:                                            ; preds = %bb.cu, %bb.cv, %bb.cw
  %.sroa.0.0.i81 = phi ptr [ %i.lc, %bb.cw ], [ %i.lb, %bb.cv ], [ %i.ky, %bb.cu ]
  %.sroa.4.0.i82 = getelementptr inbounds nuw i8, ptr %i.ky, i64 144
  %i.ln = load ptr, ptr %i.gx, align 8, !nonnull !68, !align !73, !noundef !68
  %.val44 = load ptr, ptr %i.hb, align 8, !nonnull !68, !noundef !68
  %i.lo = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.lp = load i64, ptr %i.gz, align 8, !noundef !68
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8, !nonnull !68, !noundef !68
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lt = load i64, ptr %i.ls, align 8, !noundef !68
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.ln, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lo, i64 noundef %i.lp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lr, i64 noundef %i.lt, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i81, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i82)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.dd:                                            ; preds = %bb.db
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 0, ptr %i.lv, align 1
  br label %bb.s

.body78:                                          ; preds = %bb.cs, %.thread.i.i.i, %bb.dc, %bb.dn, %bb.da
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.dn ], [ %i.lu, %bb.dc ], [ %.pn.i.i.i, %.thread.i.i.i ], [ %i.lm, %bb.da ], [ %i.kw, %bb.cs ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val36 = load ptr, ptr %i.lw, align 8, !align !73, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECs9KQ7US1M400_11lance_table(ptr %.val36) #81
          to label %.body74 unwind label %bb.cr

bb.de:                                            ; preds = %bb.av
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.df:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.sroa.0.0.i63 = phi ptr [ %i.ff, %bb.au ], [ %i.fe, %bb.at ], [ %i.fc, %bb.as ]
  %.sroa.4.0.i64 = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  %i.ly = load ptr, ptr %i.bf, align 8, !nonnull !68, !align !73, !noundef !68
  %i.lz = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.ma = load ptr, ptr %i.bg, align 8, !nonnull !68, !noundef !68
  %i.mb = load i64, ptr %i.bh, align 8, !noundef !68
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.ly, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lz, i64 noundef %.sroa.04.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i63, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i64)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dh:                                            ; preds = %bb.df
  store i8 0, ptr %i.bi, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !41352)
  call void @llvm.experimental.noalias.scope.decl(metadata !41353)
  %i.md = load ptr, ptr %i.e, align 8, !alias.scope !41354, !nonnull !68, !noundef !68
  %i.me = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !41354
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit87

bb.di:                                            ; preds = %bb.dh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit87 unwind label %bb.dj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit89: ; preds = %bb.dk, %bb.dl, %bb.dj
  %.pn33 = phi { ptr, i32 } [ %i.mg, %bb.dj ], [ %.pn31, %bb.dl ], [ %.pn31, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body

bb.dj:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit89

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit87: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !41355)
  call void @llvm.experimental.noalias.scope.decl(metadata !41356)
  %i.mh = load i32, ptr %i.az, align 8, !alias.scope !41357, !noalias !41356, !noundef !68 ; 2 uses
  %i.mi = load i32, ptr %i.ba, align 4, !alias.scope !41358, !noalias !41355, !noundef !68
  %i.mj = icmp ult i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.ab, label %.loopexit

bb.dk:                                            ; preds = %bb.dg, %bb.de
  %.pn31 = phi { ptr, i32 } [ %i.mc, %bb.dg ], [ %i.lx, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41359)
  call void @llvm.experimental.noalias.scope.decl(metadata !41360)
  %i.mk = load ptr, ptr %i.e, align 8, !alias.scope !41361, !nonnull !68, !noundef !68
  %i.ml = atomicrmw sub ptr %i.mk, i64 1 release, align 8, !noalias !41361
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit89

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit89 unwind label %bb.cr

bb.dm:                                            ; preds = %bb.j, %bb.g, %bb.q, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.by, %bb.o ], [ %i.bm, %bb.j ], [ %i.bl, %bb.g ]
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8, !range !77, !noundef !68
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  store i8 0, ptr %i.mn, align 8
  br label %.body78

bb.do:                                            ; preds = %bb.dm
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.mq, align 8, !nonnull !68, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECs9KQ7US1M400_11lance_table(ptr nonnull %.val) #81
          to label %bb.dn unwind label %bb.cr

bb.dp:                                            ; preds = %bb.v
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41362)
  call void @llvm.experimental.noalias.scope.decl(metadata !41363)
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !41364, !nonnull !68, !noundef !68
  %i.mt = atomicrmw sub ptr %i.ms, i64 1 release, align 8, !noalias !41364
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %bb.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit91

bb.dq:                                            ; preds = %bb.dp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit91 unwind label %bb.cr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMse_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13notify_upsert0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !96, !noundef !68
  switch i8 %i.b, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 1
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !68, !noundef !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noundef !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.k = load i8, ptr %i.j, align 2, !range !96, !noundef !68
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load <2 x ptr>, ptr %i.e, align 8
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 16, i64 0>
  store <2 x ptr> %3, ptr %.sroa.1021.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.k, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.h, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41384)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !41385, !nonnull !68, !noundef !68
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !41385
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECs9KQ7US1M400_11lance_table.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @750) #80
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @750) #80
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.p = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %0) #81
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %i.p, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 1
  ret i1 %i.p

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41387)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !41388, !nonnull !68, !noundef !68
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !41388
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %common.ret unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.r, %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit, %bb.n
  %.pn9 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %.pn7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit ], [ %.pn7, %bb.s ], [ %.pn7, %bb.r ]
  store i8 2, ptr %i.a, align 1
  resume { ptr, i32 } %.pn9

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit

bb.o:                                             ; preds = %bb.s, %bb.q, %bb.d, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.z = load i8, ptr %i.y, align 1, !range !77, !noundef !68
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.p, %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECs9KQ7US1M400_11lance_table.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !range !77, !noundef !68
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECs9KQ7US1M400_11lance_table.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41390)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !41391, !nonnull !68, !noundef !68
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !41391
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit unwind label %bb.o

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41394)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !41395, !nonnull !68, !noundef !68
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !41395
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs9KQ7US1M400_11lance_table6rowids14select_row_ids0B5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree readonly captures(none) %.0.val, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41416)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !41416, !nonnull !68, !noundef !68
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !41416, !noundef !68 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.split, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.m, %.preheader.i ], [ 0, %.split ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.l, %.preheader.i ], [ 0, %.split ]
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %i.k = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j), !noalias !41416
  %i.l = add i64 %i.k, %.sroa.02.0.i.i            ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit, label %.preheader.i

_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit: ; preds = %.preheader.i, %.split
  %.sroa.0.0.i.i = phi i64 [ 0, %.split ], [ %i.l, %.preheader.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @754, ptr noundef nonnull %i.a), !noalias !41417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !41418)
  call void @llvm.experimental.noalias.scope.decl(metadata !41419)
  %.sroa.06.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !41420, !noalias !41421 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !41420, !noalias !41421 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !41420, !noalias !41421
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !41422
  %i.p = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !41422 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.a, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, !prof !75

bb.a:                                             ; preds = %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i unwind label %bb.b, !noalias !41423

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9KQ7US1M400_11lance_table.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41424
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9KQ7US1M400_11lance_table.exit.i

end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit23default_resolve_version0B7_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !42010)
  %.val.i.i44 = load i64, ptr %i.bs, align 8, !alias.scope !42011 ; 2 uses
  %i.bt = icmp eq i64 %.val.i.i44, 0
  br i1 %i.bt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i45 = load ptr, ptr %i.bu, align 8, !alias.scope !42011, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i45, i64 noundef %.val.i.i44, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !42011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit46

bb.aj:                                            ; preds = %.body
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !42012)
  call void @llvm.experimental.noalias.scope.decl(metadata !42013)
  %.val.i.i47 = load i64, ptr %i.bv, align 8, !alias.scope !42014 ; 2 uses
  %i.bw = icmp eq i64 %.val.i.i47, 0
  br i1 %i.bw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit49, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i48 = load ptr, ptr %i.bx, align 8, !alias.scope !42014, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i48, i64 noundef %.val.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !42014
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit49
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.6.i = alloca [7 x i8], align 1           ; 8 uses
  %.sroa.9.i = alloca [7 x i8], align 1           ; 8 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 7 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  %i.f = alloca [96 x i8], align 8                ; 11 uses
  %i.g = alloca [56 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 12 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 10 uses
  %i.m = alloca [96 x i8], align 8                ; 7 uses
  %i.n = alloca [96 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [56 x i8], align 8               ; 58 uses
  %.sroa.14164.i.i.i = alloca [32 x i8], align 8  ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.3.sroa.5.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.be = alloca [72 x i8], align 8               ; 11 uses
  %.sroa.5115.i.i.i = alloca [56 x i8], align 8   ; 8 uses
  %i.bf = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.13.i.i.i = alloca [56 x i8], align 8     ; 8 uses
  %.sroa.5.sroa.7.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.bg = alloca [72 x i8], align 8               ; 11 uses
  %i.bh = alloca [3 x i8], align 4                ; 4 uses
  %i.bi = alloca [2 x i8], align 1                ; 8 uses
  %i.bj = alloca [72 x i8], align 8               ; 13 uses
  %.sroa.412.i.i.i.i.i.i.i.i = alloca [52 x i8], align 4 ; 4 uses
  %i.bk = alloca [256 x i8], align 128            ; 15 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 10 uses
  %i.bp = alloca [48 x i8], align 8               ; 12 uses
  %.sroa.5.i.sroa.11.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.10.i.i = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.8.i.sroa.9.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.bq = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.14.i.i = alloca [32 x i8], align 8       ; 7 uses
  %i.br = alloca [176 x i8], align 8              ; 14 uses
  %i.bs = alloca [24 x i8], align 8               ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.13105.i = alloca [32 x i8], align 8      ; 7 uses
  %i.bv = alloca [192 x i8], align 8              ; 6 uses
  %i.bw = alloca [192 x i8], align 8              ; 8 uses
  %.sroa.089.i = alloca [384 x i8], align 8       ; 10 uses
  %.sroa.6110 = alloca [24 x i8], align 8         ; 2 uses
  %.sroa.7111 = alloca [24 x i8], align 8         ; 2 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [96 x i8], align 8               ; 10 uses
  %i.bz = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.1092 = alloca [7 x i8], align 1          ; 7 uses
  %.sroa.1395 = alloca [7 x i8], align 1          ; 7 uses
  %.sroa.15 = alloca [16 x i8], align 8           ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 8 uses
  %i.cb = alloca [1 x i8], align 1                ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !126, !noundef !68
  switch i8 %i.cd, label %default.unreachable608 [
    i8 0, label %.thread609
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.la
  ]

default.unreachable608:                           ; preds = %bb.la, %bb.di, %bb.bw, %bb.am, %bb.ah, %bb.m, %bb.e, %bb.a
  unreachable

.thread609:                                       ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %1, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  store ptr %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  store ptr %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cf, ptr %i.cj, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @774) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @774) #80
  unreachable

bb.d:                                             ; preds = %bb.k, %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit73.i, %bb.d
  %i.cn = phi ptr [ %i.co, %bb.d ], [ %i.akw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit73.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.d ], [ %.pn21.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit73.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0EBJ_(ptr noundef nonnull align 8 %i.cn) #81
          to label %bb.ky unwind label %bb.kx

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !126, !noalias !42585
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 14 uses
  switch i8 %.pre, label %default.unreachable608 [
    i8 0, label %bb.f
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.ah
  ]

bb.f:                                             ; preds = %.thread609, %bb.e
  %i.cq = phi ptr [ %i.cl, %.thread609 ], [ %i.cp, %bb.e ] ; 2 uses
  %i.cr = phi ptr [ %i.ck, %.thread609 ], [ %i.co, %bb.e ] ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !42585, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !42585, !nonnull !68, !align !73, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.089.i)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !42586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !42586
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
          to label %.noexc25.i unwind label %bb.g

.noexc25.i:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !42586
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.cv, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1240, i64 noundef 24)
          to label %.thread.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25.i, %.noexc.i, %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

.thread.i:                                        ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !42586
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %3 = insertelement <2 x ptr> poison, ptr %i.cs, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.cv, i64 1
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 48, i64 0>
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !42585
  %.sroa.1199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.cv, ptr %.sroa.1199.0..sroa_idx.i, align 8, !noalias !42585
  %.sroa.13101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store i8 0, ptr %.sroa.13101.0..sroa_idx.i, align 8, !noalias !42585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !42585
  br label %bb.n

bb.h:                                             ; preds = %.body.i, %.body33.i, %bb.fw, %.body45.i
  %i.cz = phi ptr [ %i.me, %bb.fw ], [ %i.fp, %.body45.i ], [ %i.ee, %.body33.i ], [ %i.dh, %.body.i ] ; 2 uses
  %i.da = phi ptr [ %i.mf, %bb.fw ], [ %i.fq, %.body45.i ], [ %i.ef, %.body33.i ], [ %i.di, %.body.i ] ; 2 uses
  %.pn18.pn.i = phi { ptr, i32 } [ %i.zo, %bb.fw ], [ %eh.lpad-body46.i, %.body45.i ], [ %i.fb, %.body33.i ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !42587)
  call void @llvm.experimental.noalias.scope.decl(metadata !42588)
  %.val.i.i.i = load i64, ptr %i.db, align 8, !alias.scope !42589, !noalias !42585 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !42589, !noalias !42585, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !42589
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.de = phi ptr [ %i.cz, %bb.i ], [ %i.cq, %bb.g ], [ %i.cz, %bb.h ]
  %i.df = phi ptr [ %i.da, %bb.i ], [ %i.cr, %bb.g ], [ %i.da, %bb.h ]
  %.pn21.i = phi { ptr, i32 } [ %.pn18.pn.i, %bb.i ], [ %i.cw, %bb.g ], [ %.pn18.pn.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.089.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit73.i

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @771) #80
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @771) #80
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.t, %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body7.i.i, %bb.l
  %i.dh = phi ptr [ %i.cp, %bb.l ], [ %i.dz, %.body7.i.i ]
  %i.di = phi ptr [ %i.co, %bb.l ], [ %i.ea, %.body7.i.i ]
  %i.dj = phi ptr [ %i.dk, %bb.l ], [ %i.ec, %.body7.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dg, %bb.l ], [ %.pn.i.i, %.body7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !42585
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt3get0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dj) #81
          to label %bb.h unwind label %bb.af

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.089.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !96, !noalias !42590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !42585
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42591)
  switch i8 %.pre.i, label %default.unreachable608 [
    i8 0, label %._crit_edge522
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge522:                                   ; preds = %bb.m
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !noalias !42590
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.m
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val5.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !42590
  %.phi.trans.insert16.i.i = getelementptr i8, ptr %1, i64 112
  %.val6.pre.i.i = load ptr, ptr %.phi.trans.insert16.i.i, align 8, !noalias !42590
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge522, %.thread.i
  %i.dm = phi ptr [ %i.cq, %.thread.i ], [ %i.cp, %._crit_edge522 ] ; 2 uses
  %i.dn = phi ptr [ %i.cr, %.thread.i ], [ %i.co, %._crit_edge522 ] ; 2 uses
  %i.do = phi ptr [ %.sroa.13101.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge522 ] ; 2 uses
  %i.dp = phi ptr [ %i.cy, %.thread.i ], [ %i.dk, %._crit_edge522 ] ; 2 uses
  %i.dq = phi <2 x ptr> [ %5, %.thread.i ], [ %i.dl, %._crit_edge522 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !42592
  %i.dr = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  store i64 -1, ptr %i.br, align 8, !noalias !42593
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 -1, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !42593
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 -1, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !42593
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store i64 -1, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !42593
  %.sroa.812.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store ptr null, ptr %.sroa.812.0..sroa_idx.i.i, align 8, !noalias !42593
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !42593
  %.sroa.1013.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 116
  store i32 0, ptr %.sroa.1013.0..sroa_idx.i.i, align 4, !noalias !42593
  %.sroa.1114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  store i8 0, ptr %.sroa.1114.0..sroa_idx.i.i, align 8, !noalias !42593
  store <2 x ptr> %i.dq, ptr %i.dr, align 8, !noalias !42592
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  store i8 0, ptr %i.ds, align 8, !noalias !42592
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !42594
  %i.dt = tail call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 176, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !42594 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.o, label %bb.r, !prof !75

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 176) #80
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !42595

.noexc.i.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_8get_opts0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(176) %i.br) #81
          to label %.body7.i.i unwind label %bb.q, !noalias !42595

bb.q:                                             ; preds = %bb.p
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !42595
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dt, ptr noundef nonnull align 8 dereferenceable(176) %i.br, i64 176, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !42592
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dt, ptr %i.dx, align 8, !noalias !42590
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @2058, ptr %i.dy, align 8, !noalias !42590
  br label %bb.v

.body7.i.i:                                       ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.z, %bb.u, %bb.p
  %i.dz = phi ptr [ %i.ee, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ee, %bb.u ], [ %i.ee, %bb.z ], [ %i.dm, %bb.p ]
  %i.ea = phi ptr [ %i.ef, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ef, %bb.u ], [ %i.ef, %bb.z ], [ %i.dn, %bb.p ]
  %i.eb = phi ptr [ %i.eg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.eg, %bb.u ], [ %i.eg, %bb.z ], [ %i.do, %bb.p ]
  %i.ec = phi ptr [ %i.eh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.eh, %bb.u ], [ %i.eh, %bb.z ], [ %i.dp, %bb.p ]
  %.pn.i.i = phi { ptr, i32 } [ %i.eu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ed, %bb.u ], [ %i.eu, %bb.z ], [ %i.dv, %bb.p ]
  store i8 2, ptr %i.eb, align 8, !noalias !42590
  br label %.body.i

bb.s:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #80
          to label %.noexc27.i unwind label %bb.l

.noexc27.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #80
          to label %.noexc28.i unwind label %bb.l

.noexc28.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %.val3.i.i = load ptr, ptr %i.ei, align 8, !noalias !42590
  %.val4.i.i = load ptr, ptr %i.ej, align 8, !noalias !42590, !nonnull !68, !align !73, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECs9KQ7US1M400_11lance_table(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #81
          to label %.body7.i.i unwind label %bb.aa, !noalias !42591

bb.v:                                             ; preds = %bb.r, %._crit_edge.i.i
  %i.ee = phi ptr [ %i.cp, %._crit_edge.i.i ], [ %i.dm, %bb.r ] ; 7 uses
  %i.ef = phi ptr [ %i.co, %._crit_edge.i.i ], [ %i.dn, %bb.r ] ; 7 uses
  %i.eg = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i ], [ %i.do, %bb.r ] ; 5 uses
  %i.eh = phi ptr [ %i.dk, %._crit_edge.i.i ], [ %i.dp, %bb.r ] ; 4 uses
  %.val6.i.i = phi ptr [ %.val6.pre.i.i, %._crit_edge.i.i ], [ @2058, %bb.r ]
  %.val5.i.i = phi ptr [ %.val5.pre.i.i, %._crit_edge.i.i ], [ %i.dt, %bb.r ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ej = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !invariant.load !68, !noalias !42596, !nonnull !68
  invoke void %i.el(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.bw, ptr noundef nonnull %.val5.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i unwind label %bb.u, !inline_history !30

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.v
  %i.em = load i64, ptr %i.bw, align 8, !range !87, !alias.scope !42591, !noalias !42597, !noundef !68
  %i.en = icmp eq i64 %i.em, -2
  br i1 %i.en, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i
  %.val.i.i = load ptr, ptr %i.ei, align 8, !noalias !42590 ; 5 uses
  %.val2.i.i = load ptr, ptr %i.ej, align 8, !noalias !42590, !nonnull !68, !align !73, !noundef !68 ; 5 uses
  %i.eo = load ptr, ptr %.val2.i.i, align 8, !invariant.load !68, !noalias !42591 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.eo(ptr noundef nonnull %.val.i.i)
          to label %bb.y unwind label %bb.z, !noalias !42591

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !72, !invariant.load !68, !noalias !42591 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.et = load i64, ptr %i.es, align 8, !range !94, !invariant.load !68, !noalias !42591
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) %i.et) #76, !noalias !42591
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !72, !invariant.load !68, !noalias !42591 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.body7.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !range !94, !invariant.load !68, !noalias !42591
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) %i.ez) #76, !noalias !42591
  br label %.body7.i.i

bb.aa:                                            ; preds = %bb.u
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !42591
  unreachable

bb.ab:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i
  store i8 3, ptr %i.eg, align 8, !noalias !42590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !42585
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.089.i)
  store i8 3, ptr %i.ee, align 8, !noalias !42585
  br label %bb.ks

.body33.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.ac:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.y
  store i8 1, ptr %i.eg, align 8, !noalias !42590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bv, ptr noundef nonnull align 8 dereferenceable(192) %i.bw, i64 192, i1 false), !noalias !42585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !42585
  %i.fc = load i64, ptr %i.bv, align 8, !range !70, !alias.scope !42598, !noalias !42599, !noundef !68 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, -1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i, label %.thread634.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 dereferenceable(72) %i.fe)
          to label %bb.ad unwind label %.body33.i

.thread634.i:                                     ; preds = %bb.ac
  %.sroa.1194.0..sroa_idx95.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.1194.0..sroa_idx95.i, ptr noundef nonnull align 8 dereferenceable(184) %i.fe, i64 184, i1 false), !noalias !42585
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42600)
  store i64 %i.fc, ptr %i.ff, align 8, !alias.scope !42601, !noalias !42585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.089.i, ptr noundef nonnull align 8 dereferenceable(192) %i.ff, i64 192, i1 false), !noalias !42585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.eh, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.089.i, i64 384, i1 false), !noalias !42585
  %.sroa.1190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  store i8 0, ptr %.sroa.1190.0..sroa_idx.i, align 8, !noalias !42585
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13105.i)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  br label %bb.ai

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i64 -1, ptr %i.fh, align 8, !alias.scope !42602, !noalias !42603
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.thread.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i, %bb.ad
  %i.fi = phi ptr [ %i.me, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i ], [ %i.me, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.ee, %bb.ad ]
  %i.fj = phi ptr [ %i.mf, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i ], [ %i.mf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.ef, %bb.ad ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !42604)
  call void @llvm.experimental.noalias.scope.decl(metadata !42605)
  %.val.i.i36.i = load i64, ptr %i.fk, align 8, !alias.scope !42606, !noalias !42585 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_delete_config_keys:bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !56461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56477
  %i.ac = icmp eq ptr %i.r, %i.o
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.preheader.lr.ph.i.i.i:                 ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i.i
  %i.ad = phi ptr [ %i.aa, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.ao, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.ae = phi i64 [ 1, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.aq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 5 uses
  %.sroa.0.021.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.ag, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56479)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %i.af = phi ptr [ %i.ag, %.backedge.i.i.i.i.i ], [ %.sroa.0.021.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56483)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !70, !alias.scope !56484, !noalias !56485, !noundef !68
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  store i64 -1, ptr %i.a, align 8, !alias.scope !56486, !noalias !56487
  br label %.backedge.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af)
          to label %.noexc6.i unwind label %bb.l, !noalias !56461

.noexc6.i:                                        ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !56477 ; 4 uses
  %i.aj = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %i.aj, label %.backedge.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.noexc6.i, %.critedge.i.i.i.i.i
  %i.ak = icmp eq ptr %i.ag, %i.o
  br i1 %i.ak, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i: ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !56477 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !56477
  %i.al = icmp samesign ult i64 %i.ae, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.c, align 8, !range !72, !alias.scope !56488, !noalias !56461, !noundef !68
  %i.an = icmp eq i64 %i.ae, %i.am
  br i1 %i.an, label %bb.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  %i.ao = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.ad, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ae ; 3 uses
  store i64 %.pr.i.i.i.i.i, ptr %i.ap, align 8, !noalias !56477
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !56477
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !56477
  %i.aq = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56488, !noalias !56461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56477
  %i.ar = icmp eq ptr %i.ag, %i.o
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph.i.i.preheader.i.i.i

bb.i:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.at, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !56489
  br label %.body.i

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ae, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.i, !noalias !56461

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.k
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !56488, !noalias !56461
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.j, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.as, %bb.j ], [ %i.as, %bb.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !56461
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.backedge.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.body.i, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.d ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit: ; preds = %.loopexit24.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56461
  br label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_upsert_config_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = load i64, ptr %1, align 8, !range !86, !noundef !68 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775798
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 10
  switch i64 %i.k, label %bb.b [
    i64 2, label %bb.c
    i64 12, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !noundef !68 ; 5 uses
  %.not1 = icmp eq ptr %i.o, null
  br i1 %.not1, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !70, !noundef !68
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.b, label %bb.u

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56564)
  %.val3.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !56565
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !56564, !noalias !56566, !noundef !68 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !56568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !56568
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.f ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !56569
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -768 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.6.0 = phi ptr [ %i.w, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.o, %bb.f ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.v, %bb.f ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [48 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.ag
  %i.ai = add nsw i64 %i.s, -1                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -48
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj), !noalias !56570
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !56568 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i, %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !56567, !noalias !56571
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !alias.scope !56567, !noalias !56571
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !56567, !noalias !56571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56568
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %.pr.i, 0
  br i1 %i.an, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !56572
  br label %common.resume

bb.i:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !56568 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !56568
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 4) ; 3 uses
  %i.ao = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.s, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !56573
  %i.aq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #76, !noalias !56573 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ao) #80
          to label %.noexc.i unwind label %bb.g, !noalias !56568

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.aq, %bb.k ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %i.as = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.as)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !56568
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !56568
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !56568
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !56568
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !56568
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !56568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !56576
  %i.at = icmp eq i64 %i.ai, 0
  br i1 %i.at, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.av = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.aw = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %i.bi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.n ] ; 2 uses
  %i.ay = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.n ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !56577
  %i.az = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -768 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.az to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.n
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.n ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.n ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.aw, %bb.n ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bc = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.lcssa.i.i.i.i.i.i.i
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [48 x i8], ptr %.lcssa1519.i.i.i, i64 %i.bg
  %i.bi = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -48
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc6.i unwind label %bb.s, !noalias !56568

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.d, align 8, !noalias !56576 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !56576 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !56576
  %i.bk = icmp samesign ult i64 %i.av, 384307168202282326
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.f, align 8, !range !72, !alias.scope !56578, !noalias !56579, !noundef !68
  %i.bm = icmp eq i64 %i.av, %i.bl
  br i1 %i.bm, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.o
  %i.bn = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.au, %bb.o ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.av ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bo, align 8, !noalias !56576
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !56576
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !56576
  %i.bp = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.bp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56578, !noalias !56579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !56576
  %i.bq = icmp eq i64 %i.bi, 0
  br i1 %i.bq, label %.loopexit.i, label %bb.n

bb.p:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bs, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !56580
  br label %.body.i

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.av, i64 noundef range(i64 1, 0) %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.p, !noalias !56579

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !56578, !noalias !56579
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.s:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %i.br, %bb.q ], [ %i.br, %bb.p ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !56568
  br label %common.resume

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.noexc6.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !56571
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

common.resume:                                    ; preds = %bb.v, %bb.w, %.body.i13, %bb.g, %bb.h, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.h ], [ %eh.lpad-body.i, %.body.i ], [ %i.am, %bb.g ], [ %eh.lpad-body.i14, %.body.i13 ], [ %i.ci, %bb.v ], [ %i.ci, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56568
  br label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_upsert_config_keys0EE9from_iterB3q_.exit, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit, %bb.b
  ret void

bb.u:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !68, !noundef !68 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !68 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bx, 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !56581
end_hunk_3
begin_hunk_4_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map24translate_config_updates:bb.a
  %.sroa.013.027 = phi ptr [ %i.l, %.lr.ph ], [ %.sroa.013.1, %bb.n ] ; 2 uses
  %.sroa.614.026 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.614.1, %bb.n ] ; 2 uses
  %.sroa.10.025 = phi i16 [ %i.n, %.lr.ph ], [ %i.aa, %bb.n ] ; 2 uses
  %.sroa.14.024 = phi i64 [ %i.j, %.lr.ph ], [ %i.ad, %bb.n ]
  %.not12.i.i = icmp eq i16 %.sroa.10.025, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %.loopexit22

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.s = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.614.026, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.027, %bb.b ]
  %.val10.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !60070
  %i.u = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -768 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.u to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit22

.loopexit22:                                      ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.614.1 = phi ptr [ %.sroa.614.026, %bb.b ], [ %i.w, %.lr.ph.i.i ]
  %.sroa.013.1 = phi ptr [ %.sroa.013.027, %bb.b ], [ %i.v, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.10.025, %bb.b ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.x = add i16 %.lcssa.i.i, -1
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = and i16 %i.x, %.lcssa.i.i
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [48 x i8], ptr %.sroa.013.1, i64 %i.ab ; 2 uses
  %i.ad = add i64 %.sroa.14.024, -1               ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.af = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.bc, %bb.n ]
  %i.ag = phi i64 [ 0, %bb.a ], [ %i.be, %bb.n ]
  %.idx = mul nuw nsw i64 %3, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ai = icmp eq i64 %3, 0
  br i1 %i.ai, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph30, %bb.g
  %i.ak = phi ptr [ %i.af, %.lr.ph30 ], [ %i.ar, %bb.g ]
  %i.al = phi i64 [ %i.ag, %.lr.ph30 ], [ %i.at, %bb.g ] ; 3 uses
  %.sroa.03.028 = phi ptr [ %2, %.lr.ph30 ], [ %i.am, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.03.028)
          to label %bb.d unwind label %.loopexit

._crit_edge31:                                    ; preds = %bb.g, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 -1, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60071)
  %i.ao = load i64, ptr %i.f, align 8, !range !72, !alias.scope !60071, !noalias !60072, !noundef !68
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge34 unwind label %bb.f, !noalias !60072

._crit_edge34:                                    ; preds = %bb.e
  %.pre35 = load ptr, ptr %i.g, align 8, !alias.scope !60071, !noalias !60072
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.b) #81, !noalias !60071
  br label %.body

bb.g:                                             ; preds = %._crit_edge34, %bb.d
  %i.ar = phi ptr [ %.pre35, %._crit_edge34 ], [ %i.ak, %bb.d ] ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !60071
  %i.at = add i64 %i.al, 1                        ; 2 uses
  store i64 %i.at, ptr %i.h, align 8, !alias.scope !60071, !noalias !60072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = icmp eq ptr %i.am, %i.ah
  br i1 %i.au, label %._crit_edge31, label %bb.c

bb.h:                                             ; preds = %.loopexit22
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60073)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !60073 ; 2 uses
  %i.ax = icmp eq i64 %.val.i, 0
  br i1 %i.ax, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.ay, align 8, !alias.scope !60073, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60073
  br label %.body

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60074)
  %i.az = load i64, ptr %i.f, align 8, !range !72, !alias.scope !60074, !noalias !60075, !noundef !68
  %i.ba = icmp eq i64 %i.r, %i.az
  br i1 %i.ba, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge33 unwind label %bb.m, !noalias !60075

._crit_edge33:                                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !60074, !noalias !60075
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.e) #81, !noalias !60074
  br label %.body

bb.n:                                             ; preds = %._crit_edge33, %bb.k
  %i.bc = phi ptr [ %.pre, %._crit_edge33 ], [ %i.q, %bb.k ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !60074
  %i.be = add i64 %i.r, 1                         ; 3 uses
  store i64 %i.be, ptr %i.h, align 8, !alias.scope !60074, !noalias !60075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bf = icmp eq i64 %i.ad, 0
  br i1 %i.bf, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48.i.i.i = alloca [40 x i8], align 8     ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60128)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !60128, !noalias !60129, !nonnull !68, !noundef !68 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !60130
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !60128, !noalias !60129, !noundef !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !60131
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !60132
  %i.p = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -768 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.p to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.67.0 = phi ptr [ %i.m, %bb.b ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %.sroa.010.0.copyload.i = phi ptr [ %i.g, %bb.b ], [ %i.q, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.l, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i.i.i, -1
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i.i.i
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [48 x i8], ptr %.sroa.010.0.copyload.i, i64 %i.w ; 2 uses
  %i.y = add nsw i64 %i.i, -1                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -48
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !60133
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !60134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60133
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i unwind label %bb.c, !noalias !60135

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60136)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !60136, !noalias !60133 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %common.resume.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !60136, !noalias !60133, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60137
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, %.body.i, %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %eh.lpad-body.i, %.body.i ], [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i: ; preds = %._crit_edge19.i.i.i.i.i
  %.sroa.417.i.sroa.5.16.copyload = load i64, ptr %i.d, align 8, !noalias !60131 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx, align 8, !noalias !60131 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx, align 8, !noalias !60131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60133
  %.sroa.016.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !60138 ; 4 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !60131 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx, align 8, !noalias !60131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !60133
  %.not.i = icmp eq i64 %.sroa.016.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.h

bb.e:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.016.0.copyload.i, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload, i64 noundef %.sroa.016.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60139
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = icmp sgt i64 %.sroa.417.i.sroa.5.16.copyload, 0
  br i1 %i.ag, label %bb.g, label %common.resume.i

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload, i64 noundef %.sroa.417.i.sroa.5.16.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60140
  br label %common.resume.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 4) ; 3 uses
  %i.ah = mul i64 %.sroa.0.0.i.i, 48              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.i, 192153584101141162
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !60141
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, 9) 8) #76, !noalias !60141 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ah) #80
          to label %.noexc.i unwind label %bb.e, !noalias !60131

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.aj, %bb.j ] ; 9 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i, %bb.j ] ; 3 uses
  %i.al = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.al)
  store i64 %.sroa.016.0.copyload.i, ptr %.sroa.10.0.i.i, align 8, !noalias !60131
  %.sroa.514.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload, ptr %.sroa.514.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60131
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60131
  %.sroa.715.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload, ptr %.sroa.715.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60131
  %.sroa.816.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload, ptr %.sroa.816.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60131
  %.sroa.917.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload, ptr %.sroa.917.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60131
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !60131
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !60131
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !60131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60143)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.am = icmp eq i64 %i.y, 0
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %.sroa.48.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i.i.i, i64 16
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ao = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 6 uses
  %.lcssa21.i.i.i = phi ptr [ %.sroa.67.0, %.lr.ph.i.i.i ], [ %.lcssa20.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ap = phi i16 [ %i.v, %.lr.ph.i.i.i ], [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1217.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1114.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i, %bb.m ] ; 2 uses
  %i.ar = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !60144
  %i.as = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -768 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.as to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.lcssa20.i.i.i = phi ptr [ %.lcssa21.i.i.i, %bb.m ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i = phi ptr [ %.lcssa111516.i.i.i, %bb.m ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ap, %bb.m ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.av = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = and i16 %i.av, %.lcssa.i.i.i.i.i.i.i
  %i.az = sub nsw i64 0, %i.ax
  %i.ba = getelementptr inbounds [48 x i8], ptr %.lcssa1114.i.i.i, i64 %i.az ; 2 uses
  %i.bb = add i64 %.val1217.i.i.i, -1             ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60145
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc6.i unwind label %bb.s, !noalias !60131

.noexc6.i:                                        ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60145
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i unwind label %bb.n, !noalias !60146

bb.n:                                             ; preds = %.noexc6.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60147)
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !60147, !noalias !60145 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !60147, !noalias !60145, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60148
  br label %.body.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i: ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !60149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60145
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !60149 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !60149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i, i64 40, i1 false), !noalias !60150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i)
  %.not.i.i5.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre29 = load i64, ptr %i.f, align 8, !noalias !60151 ; 2 uses
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60152
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !60152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !60152
  %i.bg = icmp samesign ult i64 %i.ao, 192153584101141163
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i64 %i.ao, %.sroa.0.0.copyload1.pre.pre29
  br i1 %i.bh, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i, %bb.p
  %i.bi = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.an, %bb.p ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %i.ao
end_hunk_4
begin_hunk_5_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate18validate_operation:bb.a
  %.sroa.4.0.copyload.i109.sink.i = phi ptr [ %.sroa.4.0.copyload.i109.i, %bb.bh ], [ %.sroa.4.0.copyload.i81.i, %bb.ak ]
  %.sroa.57.0.copyload.i111.sink.i = phi i64 [ %.sroa.57.0.copyload.i111.i, %bb.bh ], [ %.sroa.57.0.copyload.i83.i, %bb.ak ]
  %.sink.i = phi ptr [ @1217, %bb.bh ], [ @1215, %bb.ak ] ; 3 uses
  %.sroa.5.0..sroa_idx2.i112.i = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 8
  store ptr %.sroa.4.0.copyload.i109.sink.i, ptr %.sroa.5.0..sroa_idx2.i112.i, align 8, !noalias !61441
  %.sroa.6.0..sroa_idx4.i113.i = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 16
  store i64 %.sroa.57.0.copyload.i111.sink.i, ptr %.sroa.6.0..sroa_idx4.i113.i, align 8, !noalias !61441
  %.val58.i = load i64, ptr %i.be, align 8, !noalias !61431 ; 2 uses
  %i.gv = icmp eq i64 %.val58.i, 0
  br i1 %i.gv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit89.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val59.i = load ptr, ptr %i.dx, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.gw = shl nuw i64 %.val58.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit89.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.val56.i.pre = load i64, ptr %i.be, align 8, !noalias !61431 ; 2 uses
  %i.gx = icmp eq i64 %.val56.i.pre, 0
  br i1 %i.gx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i
  %.val57.i = load ptr, ptr %i.dx, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.gy = shl nuw i64 %.val56.i.pre, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i

._crit_edge.i.thread:                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !61431
  %i.gz = load ptr, ptr %i.dz, align 8, !noalias !61431, !nonnull !68, !noundef !68 ; 5 uses
  %i.ha = load i64, ptr %i.dc, align 8, !noalias !61431, !noundef !68 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61462)
  %i.hb = shl nuw nsw i64 %i.ha, 3                ; 2 uses
  %i.hc = icmp eq i64 %i.ha, 0
  br i1 %i.hc, label %.loopexit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.thread
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61463
  %i.hd = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.hb, i64 noundef range(i64 1, 9) 8) #76, !noalias !61463 ; 8 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ap, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.ao
  %xtraiter = and i64 %i.ha, 3                    ; 3 uses
  %i.hf = icmp ult i64 %i.ha, 4
  br i1 %i.hf, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ha, -4
  br label %.preheader.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hb) #80
          to label %.noexc94.i unwind label %.loopexit.split-lp.i, !noalias !61441

.noexc94.i:                                       ; preds = %bb.ap
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.hg = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.hw, %.preheader.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i ]
  %i.hh = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 232
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.hi, align 8, !noalias !61464, !noundef !68
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hg
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.hj, align 8, !noalias !61465
  %i.hk = or disjoint i64 %i.hg, 1                ; 2 uses
  %i.hl = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 232
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.hm, align 8, !noalias !61464, !noundef !68
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hk
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.hn, align 8, !noalias !61465
  %i.ho = or disjoint i64 %i.hg, 2                ; 2 uses
  %i.hp = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 232
  %.val16.i.i.i.i.i.i.i.2 = load i64, ptr %i.hq, align 8, !noalias !61464, !noundef !68
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ho
  store i64 %.val16.i.i.i.i.i.i.i.2, ptr %i.hr, align 8, !noalias !61465
  %i.hs = or disjoint i64 %i.hg, 3                ; 2 uses
  %i.ht = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 232
  %.val16.i.i.i.i.i.i.i.3 = load i64, ptr %i.hu, align 8, !noalias !61464, !noundef !68
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hs
  store i64 %.val16.i.i.i.i.i.i.i.3, ptr %i.hv, align 8, !noalias !61465
  %i.hw = add nuw i64 %i.hg, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ab, %.body.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1E_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.9.0.copyload.i) #81, !noalias !61441
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i: ; preds = %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i, %bb.an, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !61431
  %i.hx = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.hx, label %bb.bo, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i
  %i.hy = shl i64 %.sroa.9.0.copyload.i, 4        ; 2 uses
  %i.hz = add i64 %i.hy, 16                       ; 2 uses
  %i.ia = add i64 %.sroa.9.0.copyload.i, 17
  %i.ib = add i64 %i.ia, %i.hz                    ; 4 uses
  %i.ic = icmp uge i64 %i.ib, %i.hz
  %i.id = icmp ult i64 %i.ib, 9223372036854775793
  call void @llvm.assume(i1 %i.ic)
  call void @llvm.assume(i1 %i.id)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %i.ie = icmp eq i64 %i.ib, 0
  br i1 %i.ie, label %bb.bo, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.if = sub nuw nsw i64 -16, %i.hy
  %i.ig = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 %i.if
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ig, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 16) #76, !noalias !61441
  br label %bb.bo

.body100.i:                                       ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.kl, %bb.ax ], [ %i.ij, %bb.as ], [ %i.kl, %bb.ay ], [ %i.kq, %bb.ba ], [ %i.kq, %bb.bb ] ; 2 uses
  %.val54.i = load i64, ptr %i.ba, align 8, !noalias !61431 ; 2 uses
  %i.ih = icmp eq i64 %.val54.i, 0
  br i1 %i.ih, label %.body.i, label %bb.ar

bb.ar:                                            ; preds = %.body100.i
  %.val55.i = load ptr, ptr %.sroa.4.0..sroa_idx.i92.i, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.ii = shl nuw i64 %.val54.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %.body.i

bb.as:                                            ; preds = %bb.av
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body100.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.hw, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod954 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod954)
  br label %.preheader.i.i.i.i.epil

.preheader.i.i.i.i.epil:                          ; preds = %.preheader.i.i.i.i.epil, %.preheader.i.i.i.i.epil.preheader
  %i.ik = phi i64 [ %i.io, %.preheader.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.epil.preheader ]
  %i.il = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 232
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.im, align 8, !noalias !61464, !noundef !68
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ik
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.in, align 8, !noalias !61465
  %i.io = add nuw i64 %i.ik, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.preheader.i.i.i.i.epil, !llvm.loop !61029

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.epil, %._crit_edge.i.thread
  %.sroa.10.0.i11.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.hd, %.preheader.i.i.i.i.epil ], [ %i.hd, %.loopexit.i.loopexit.unr-lcssa ]
  store i64 %i.ha, ptr %i.ba, align 8, !alias.scope !61462, !noalias !61431
  %.sroa.4.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i11.i.i, ptr %.sroa.4.0..sroa_idx.i92.i, align 8, !alias.scope !61462, !noalias !61431
  %.sroa.5.0..sroa_idx.i93.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.ha, ptr %.sroa.5.0..sroa_idx.i93.i, align 8, !alias.scope !61462, !noalias !61431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !61431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.03.0.copyload.i, align 16, !noalias !61466
  call void @llvm.experimental.noalias.scope.decl(metadata !61467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !61468
  br i1 %i.ee, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  %i.ip = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.iq = bitcast <16 x i1> %i.ip to i16          ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.iq, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i ], [ %i.ir, %bb.at ] ; 2 uses
  %i.it = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.0.copyload.i, %bb.at ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.is, align 16, !noalias !61469
  %i.iu = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -256 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.iu to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.at
  %.sroa.626.0.i = phi ptr [ %i.ir, %bb.at ], [ %i.iw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.010.0.copyload.i.i = phi ptr [ %.sroa.03.0.copyload.i, %bb.at ], [ %i.iv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.iq, %bb.at ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ix = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = and i16 %i.ix, %.lcssa.i.i.i.i.i.i
  %i.jb = sub nsw i64 0, %i.iz
  %i.jc = getelementptr inbounds [16 x i8], ptr %.sroa.010.0.copyload.i.i, i64 %i.jb
  %i.jd = add nsw i64 %.sroa.146.0.copyload.i, -1 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -16
  %i.jf = load i64, ptr %i.je, align 8, !noalias !61470, !noundef !68
  %.sroa.0.0.i9.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.146.0.copyload.i, i64 4) ; 2 uses
  %i.jg = shl i64 %.sroa.0.0.i9.i.i, 3            ; 3 uses
  %i.jh = icmp ugt i64 %.sroa.146.0.copyload.i, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.jg, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.jh, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.av, label %bb.au, !prof !69

bb.au:                                            ; preds = %._crit_edge19.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61471
  %i.ji = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.jg, i64 noundef range(i64 1, 9) 8) #76, !noalias !61471 ; 4 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.av, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i

bb.av:                                            ; preds = %bb.au, %._crit_edge19.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.au ], [ 0, %._crit_edge19.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.jg) #80
          to label %.noexc99.i unwind label %bb.as, !noalias !61441

.noexc99.i:                                       ; preds = %bb.av
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.au
  store i64 %i.jf, ptr %i.ji, align 8, !noalias !61472
  store i64 %.sroa.0.0.i9.i.i, ptr %i.aw, align 8, !noalias !61468
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  store ptr %i.ji, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !noalias !61468
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !61468
  call void @llvm.experimental.noalias.scope.decl(metadata !61473)
  call void @llvm.experimental.noalias.scope.decl(metadata !61474)
  %i.jk = icmp eq i64 %i.jd, 0
  br i1 %i.jk, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEE11spec_extendB36_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i, %.noexc.i97.i
  %i.jl = phi ptr [ %i.kf, %.noexc.i97.i ], [ %i.ji, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.jm = phi i64 [ %i.kh, %.noexc.i97.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ] ; 5 uses
  %.lcssa19.i.i.i.i = phi ptr [ %.lcssa18.i.i.i.i, %.noexc.i97.i ], [ %.sroa.626.0.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.jn = phi i16 [ %i.jw, %.noexc.i97.i ], [ %i.ja, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %.val1015.i.i.i.i = phi i64 [ %i.jz, %.noexc.i97.i ], [ %i.jd, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %.lcssa91314.i.i.i.i = phi ptr [ %.lcssa912.i.i.i.i, %.noexc.i97.i ], [ %.sroa.010.0.copyload.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %i.jn, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jo = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa91314.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jo, align 16, !noalias !61475
  %i.jq = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -256 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.lcssa18.i.i.i.i = phi ptr [ %.lcssa19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa912.i.i.i.i = phi ptr [ %.lcssa91314.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.jn, %.lr.ph.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jt = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ju = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.jv = zext nneg i16 %i.ju to i64
  %i.jw = and i16 %i.jt, %.lcssa.i.i.i.i.i.i.i.i
  %i.jx = sub nsw i64 0, %i.jv
  %i.jy = getelementptr inbounds [16 x i8], ptr %.lcssa912.i.i.i.i, i64 %i.jx
  %i.jz = add i64 %.val1015.i.i.i.i, -1           ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -16
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !61476, !noundef !68
  %i.kc = icmp samesign ult i64 %i.jm, 1152921504606846976
  call void @llvm.assume(i1 %i.kc)
  %i.kd = load i64, ptr %i.aw, align 8, !range !72, !alias.scope !61477, !noalias !61478, !noundef !68
  %i.ke = icmp eq i64 %i.jm, %i.kd
  br i1 %i.ke, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %.noexc.i97.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %i.jm, i64 noundef %.val1015.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i.i unwind label %bb.ax, !noalias !61472

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !alias.scope !61477, !noalias !61478
  br label %.noexc.i97.i

.noexc.i97.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i.i, %._crit_edge19.i.i.i.i.i.i.i.i
  %i.kf = phi ptr [ %.pre.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i.i ], [ %i.jl, %._crit_edge19.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jm
  store i64 %i.kb, ptr %i.kg, align 8, !noalias !61479
  %i.kh = add nuw nsw i64 %i.jm, 1                ; 2 uses
  store i64 %i.kh, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !61477, !noalias !61478
  %i.ki = icmp eq i64 %i.jz, 0
  br i1 %i.ki, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEE11spec_extendB36_.exit.i.i, label %.lr.ph.i.i.i.i

bb.aw:                                            ; preds = %.loopexit.i
  store i64 0, ptr %i.az, align 8, !alias.scope !61467, !noalias !61480
  %i.kj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.kj, align 8, !alias.scope !61467, !noalias !61480
  %i.kk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %i.kk, align 8, !alias.scope !61467, !noalias !61480
  br label %bb.az

bb.ax:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i98.i = load i64, ptr %i.aw, align 8, !noalias !61468 ; 2 uses
  %i.km = icmp eq i64 %.val.i98.i, 0
  br i1 %i.km, label %.body100.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !noalias !61468, !nonnull !68, !noundef !68
  %i.kn = shl nuw i64 %.val.i98.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61472
  br label %.body100.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEE11spec_extendB36_.exit.i.i: ; preds = %.noexc.i97.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !61480
  br label %bb.az

bb.az:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEE11spec_extendB36_.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !61468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !61431
  store ptr %i.be, ptr %i.ay, align 8, !noalias !61431
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !61431
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ba, ptr %i.ko, align 8, !noalias !61431
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !61431
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.kp, align 8, !noalias !61431
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !61431
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @1216, ptr noundef nonnull %i.ay)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit103.i unwind label %bb.ba, !noalias !61441

bb.ba:                                            ; preds = %bb.az
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val52.i = load i64, ptr %i.az, align 8, !noalias !61431 ; 2 uses
  %i.kr = icmp eq i64 %.val52.i, 0
  br i1 %i.kr, label %.body100.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ks = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val53.i = load ptr, ptr %i.ks, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.kt = shl nuw i64 %.val52.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i, i64 noundef %i.kt, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %.body100.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit103.i: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !61431
  %.val50.i = load i64, ptr %i.az, align 8, !noalias !61431 ; 2 uses
  %i.ku = icmp eq i64 %.val50.i, 0
  br i1 %i.ku, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit105.i, label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit103.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val51.i = load ptr, ptr %i.kv, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.kw = shl nuw i64 %.val50.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51.i, i64 noundef %i.kw, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit105.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit105.i: ; preds = %bb.bc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !61431
  %.val.i = load i64, ptr %i.ba, align 8, !noalias !61431 ; 2 uses
  %i.kx = icmp eq i64 %.val.i, 0
  br i1 %i.kx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit106.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit105.i
  %.val49.i = load ptr, ptr %.sroa.4.0..sroa_idx.i92.i, align 8, !noalias !61431, !nonnull !68, !noundef !68
  %i.ky = shl nuw i64 %.val.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49.i, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit106.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit106.i: ; preds = %bb.bd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !61431
  call void @llvm.experimental.noalias.scope.decl(metadata !61481)
  %.sroa.06.0.copyload.i107.i = load i64, ptr %i.bb, align 8, !alias.scope !61482, !noalias !61483 ; 3 uses
  %.sroa.4.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.4.0.copyload.i109.i = load ptr, ptr %.sroa.4.0..sroa_idx.i108.i, align 8, !alias.scope !61482, !noalias !61483 ; 3 uses
  %.sroa.57.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.57.0.copyload.i111.i = load i64, ptr %.sroa.57.0..sroa_idx.i110.i, align 8, !alias.scope !61482, !noalias !61483
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61484
  %i.kz = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61484 ; 3 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.be, label %bb.bh, !prof !75

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit106.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i115.i unwind label %bb.bf, !noalias !61485

.noexc.i115.i:                                    ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.lb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = icmp eq i64 %.sroa.06.0.copyload.i107.i, 0
  br i1 %i.lc, label %.body.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtCs9KQ7US1M400_11lance_table5utils6streamNtB5_11MergeStreamNtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next:bb.a
  call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1584) #80
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ac ; 2 uses
  %.val27 = load ptr, ptr %i.gj, align 8, !nonnull !68, !noundef !68
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %.val28 = load ptr, ptr %i.gk, align 8, !nonnull !68, !align !73, !noundef !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !invariant.load !68, !noalias !71563, !nonnull !68
  call void %i.gm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noundef nonnull %.val27, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !inline_history !51
  %i.gn = load i64, ptr %i.l, align 8, !range !76, !noundef !68
  %i.go = trunc nuw i64 %i.gn to i1
  br i1 %i.go, label %.loopexit, label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1585) #80
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gp = load ptr, ptr %i.y, align 8, !noundef !68 ; 3 uses
  %.not23 = icmp eq ptr %i.gp, null
  br i1 %.not23, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.gq, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bn, %bb.bq
  %storemerge = phi i64 [ 0, %bb.bq ], [ 1, %bb.bn ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.gr = load ptr, ptr %i.z, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.gs = load i32, ptr %i.aa, align 8, !noundef !68 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table5utils6stream16PendingReadBatchEEB13_(ptr noalias noundef align 8 dereferenceable(48) %i.ge)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i64 0, ptr %i.ge, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr %i.gp, ptr %.sroa.5109.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store ptr %i.gr, ptr %.sroa.6.0..sroa_idx111, align 8
  %.sroa.7.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store i32 0, ptr %.sroa.7.0..sroa_idx113, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 44
  store i32 %i.gs, ptr %.sroa.8.0..sroa_idx, align 4
  call void @llvm.assume(i1 %i.u)
  %i.gt = add nuw i64 %i.ac, 1
  %i.gu = urem i64 %i.gt, %i.t                    ; 2 uses
  store i64 %i.gu, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.lr.ph.backedge

bb.bt:                                            ; preds = %bb.br
  %i.gv = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.ge, align 8
  %.sroa.5109.0..lcssa106.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr %i.gp, ptr %.sroa.5109.0..lcssa106.sroa_idx, align 8
  %.sroa.6.0..lcssa106.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store ptr %i.gr, ptr %.sroa.6.0..lcssa106.sroa_idx, align 8
  %.sroa.7.0..lcssa106.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store i32 0, ptr %.sroa.7.0..lcssa106.sroa_idx, align 8
  %.sroa.8.0..lcssa106.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 44
  store i32 %i.gs, ptr %.sroa.8.0..lcssa106.sroa_idx, align 4
  br label %common.resume

bb.bu:                                            ; preds = %.loopexit, %_RNvMs1_NtNtCs9KQ7US1M400_11lance_table5utils6streamNtB5_11MergeStream4emit.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs9KQ7US1M400_11lance_table6format13key_existenceNtNtNtB7_2pb11transaction18KeyExistenceFilterINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_18KeyExistenceFilterE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !range !105, !noundef !68
  %i.d = trunc nuw i32 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val27 = load ptr, ptr %i.e, align 8, !nonnull !68, !noundef !68 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val28 = load i64, ptr %i.f, align 8, !noundef !68 ; 6 uses
  %i.g = shl nuw i64 %.val28, 2                   ; 7 uses
  %i.h = icmp eq i64 %.val28, 0                   ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !71617
  %i.i = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 4) #76, !noalias !71617 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.g) #80, !noalias !71618
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %.val27, i64 %i.g, i1 false), !noalias !71619
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %bb.e
  %.sroa.653.0 = phi ptr [ %i.i, %bb.e ], [ inttoptr (i64 4 to ptr), %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val23 = load ptr, ptr %i.k, align 8, !nonnull !68, !noundef !68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val24 = load i64, ptr %i.l, align 8, !noundef !68 ; 6 uses
  %i.m = icmp eq i64 %.val24, 0
  br i1 %i.m, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !71620
  %i.n = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val24, i64 noundef range(i64 1, 9) 1) #76, !noalias !71620 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val24) #80
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val23, i64 range(i64 0, -9223372036854775808) %.val24, i1 false), !noalias !71621
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !71622
  %i.p = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 4) #76, !noalias !71622 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.g) #80, !noalias !71623
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull readonly align 4 %.val27, i64 %i.g, i1 false), !noalias !71624
  br label %bb.n

bb.m:                                             ; preds = %bb.q
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.br, %bb.s ], [ %i.br, %bb.r ] ; 2 uses
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit.sink.split

bb.n:                                             ; preds = %bb.l, %bb.i
  %.sroa.6.0 = phi ptr [ %i.p, %bb.l ], [ inttoptr (i64 4 to ptr), %bb.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71625)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !71625, !noalias !71626, !nonnull !68, !noundef !68 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !71627
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !71625, !noalias !71626, !noundef !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71628
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.aa = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.o ] ; 2 uses
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.o ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !71629
  %i.ac = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ac to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.o
  %.sroa.645.0 = phi ptr [ %i.z, %bb.o ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  %.sroa.010.0.copyload.i = phi ptr [ %i.t, %bb.o ], [ %i.ad, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.y, %bb.o ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.af = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = and i16 %i.af, %.lcssa.i.i.i.i.i
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sroa.010.0.copyload.i, i64 %i.aj
  %i.al = add nsw i64 %i.v, -1                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !noalias !71630, !noundef !68
  %.sroa.0.0.i9.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 4) ; 3 uses
  %i.ao = shl i64 %.sroa.0.0.i9.i, 3              ; 3 uses
  %i.ap = icmp ugt i64 %i.v, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.ao, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ap, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.p, !prof !69

bb.p:                                             ; preds = %._crit_edge19.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !71631
  %i.aq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #76, !noalias !71631 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i

bb.q:                                             ; preds = %bb.p, %._crit_edge19.i.i.i.i.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.p ], [ 0, %._crit_edge19.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ao) #80
          to label %.noexc32 unwind label %bb.m

.noexc32:                                         ; preds = %bb.q
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.p
  store i64 %i.an, ptr %i.aq, align 8, !noalias !71628
  store i64 %.sroa.0.0.i9.i, ptr %i.a, align 8, !noalias !71628
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !71628
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !71628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71633)
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i, %.noexc.i
  %i.at = phi ptr [ %i.bn, %.noexc.i ], [ %i.aq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ]
  %i.au = phi i64 [ %i.bp, %.noexc.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ] ; 5 uses
  %.lcssa19.i.i.i = phi ptr [ %.lcssa18.i.i.i, %.noexc.i ], [ %.sroa.645.0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.av = phi i16 [ %i.be, %.noexc.i ], [ %i.ai, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %.val1015.i.i.i = phi i64 [ %i.bh, %.noexc.i ], [ %i.al, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %.lcssa91314.i.i.i = phi ptr [ %.lcssa912.i.i.i, %.noexc.i ], [ %.sroa.010.0.copyload.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa91314.i.i.i, %.lr.ph.i.i.i ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !71634
  %i.ay = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ay to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.lcssa18.i.i.i = phi ptr [ %.lcssa19.i.i.i, %.lr.ph.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa912.i.i.i = phi ptr [ %.lcssa91314.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.av, %.lr.ph.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i.i.i.i.i.i
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %.lcssa912.i.i.i, i64 %i.bf
  %i.bh = add i64 %.val1015.i.i.i, -1             ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !71635, !noundef !68
  %i.bk = icmp samesign ult i64 %i.au, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.a, align 8, !range !72, !alias.scope !71636, !noalias !71637, !noundef !68
  %i.bm = icmp eq i64 %i.au, %i.bl
  br i1 %i.bm, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, label %.noexc.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.au, i64 noundef %.val1015.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i unwind label %bb.r, !noalias !71628

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !71636, !noalias !71637
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i, %._crit_edge19.i.i.i.i.i.i.i
  %i.bn = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i ], [ %i.at, %._crit_edge19.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.au
  store i64 %i.bj, ptr %i.bo, align 8, !noalias !71638
  %i.bp = add nuw nsw i64 %i.au, 1                ; 3 uses
  store i64 %i.bp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !71636, !noalias !71637
  %i.bq = icmp eq i64 %i.bh, 0
  br i1 %i.bq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noalias !71628 ; 2 uses
  %i.bs = icmp eq i64 %.val.i, 0
  br i1 %i.bs, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !71628, !nonnull !68, !noundef !68
  %i.bt = shl nuw i64 %.val.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !71628
  br label %.body

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit: ; preds = %.noexc.i
  %.sroa.034.0.copyload35.pre = load i64, ptr %i.a, align 8, !noalias !71639
  %.sroa.5.0.copyload37.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !71639
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit, %bb.n
  %.sroa.638.0 = phi i64 [ 0, %bb.n ], [ %i.bp, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.n ], [ %.sroa.5.0.copyload37.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit ], [ %i.aq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ]
  %.sroa.034.0 = phi i64 [ 0, %bb.n ], [ %.sroa.034.0.copyload35.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i.loopexit ], [ %.sroa.0.0.i9.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71628
  store i64 %.val28, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val28, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.bu, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.034.0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.5.0, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.638.0, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4IteryEEE11spec_extendCs9KQ7US1M400_11lance_table.exit.i
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit.sink.split: ; preds = %.body, %bb.u
  %.sroa.653.0.sink = phi ptr [ %.sroa.653.0, %bb.u ], [ %.sroa.6.0, %.body ]
  %.pn.ph = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %eh.lpad-body, %.body ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.653.0.sink, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit.sink.split, %bb.u, %.body
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %eh.lpad-body, %.body ], [ %.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit.sink.split ]
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs9KQ7US1M400_11lance_table.exit.sink.split

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.h, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit
  %.sroa.556.0 = phi ptr [ %i.n, %bb.h ], [ inttoptr (i64 1 to ptr), %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !68
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !noundef !68
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load double, ptr %i.ca, align 8, !noundef !68
  store i64 %.val28, ptr %0, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.653.0, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val28, ptr %.sroa.954.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val24, ptr %i.cc, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.556.0, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val24, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bz, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.cb, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bx, ptr %.sroa.615.0..sroa_idx, align 8
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !71642
  %i.a = tail call noundef dereferenceable_or_null(26) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 26, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !71642 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 26) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @1586, i64 26, i1 false)
  store i64 26, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_6
begin_hunk_7_@_RNvXs9_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_14FragReuseIndexNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children:bb.a
  %i.t = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %i.u = phi ptr [ %i.w, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2631.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.val18.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !74873
  %i.v = icmp sgt <16 x i8> %.val18.i.i.i.i.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.v to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = add i64 %i.k, %i.i
  %i.y = mul i64 %i.x, 25
  %i.z = add i64 %i.y, %.sroa.02.0.i.i            ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e
  br i1 %i.ab, label %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit, label %.preheader.i

_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74875)
  %i.ad = load i64, ptr %i.ac, align 8, !range !72, !alias.scope !74876, !noundef !68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !74876, !nonnull !68, !noundef !68
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !74876, !noundef !68 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.bu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ], [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.bt, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ], [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ]
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.04.0.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74880)
  %i.ak = load i64, ptr %i.aj, align 8, !range !72, !alias.scope !74881, !noalias !74876, !noundef !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !74881, !noalias !74876, !nonnull !68, !noundef !68 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !74881, !noalias !74876, !noundef !68 ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.bi, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.bh, %.preheader.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !72, !alias.scope !74882, !noalias !74883, !noundef !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !72, !alias.scope !74884, !noalias !74883, !noundef !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !range !72, !alias.scope !74885, !noalias !74883, !noundef !68
  %reass.add.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.aw, %i.au
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.ax = add i64 %i.as, %.sroa.02.0.i.i.i.i.i.i.i.i
  %i.ay = add i64 %i.ax, %reass.mul.i.i.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !range !72, !alias.scope !74882, !noalias !74883, !noundef !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !range !72, !alias.scope !74884, !noalias !74883, !noundef !68
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !range !72, !alias.scope !74885, !noalias !74883, !noundef !68
  %reass.add.i.i.i.i.i.i.i.i.i.i.i.1 = add nuw i64 %i.bf, %i.bd
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i.1, 24
  %i.bg = add i64 %i.bb, %i.ay
  %i.bh = add i64 %i.bg, %reass.mul.i.i.i.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.bi = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.bi, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.bh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !72, !alias.scope !74882, !noalias !74883, !noundef !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !range !72, !alias.scope !74884, !noalias !74883, !noundef !68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !range !72, !alias.scope !74885, !noalias !74883, !noundef !68
  %reass.add.i.i.i.i.i.i.i.i.i.i.i.epil = add nuw i64 %i.bo, %i.bm
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i.epil, 24
  %i.bp = add i64 %i.bk, %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init
  %i.bq = add i64 %i.bp, %reass.mul.i.i.i.i.i.i.i.i.i.i.i.epil
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ], [ %i.bq, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.br = mul i64 %i.ak, 72
  %i.bs = add i64 %i.br, %.sroa.02.0.i.i.i
  %i.bt = add i64 %i.bs, %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.bu = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.ah
  br i1 %i.bv, label %_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit, label %.preheader.i.i

_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ], [ %i.bt, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ]
  %i.bw = mul i64 %i.a, 48
  %i.bx = shl i64 %i.ad, 5
  %i.by = add i64 %.sroa.0.0.i.i, %i.bw
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = add i64 %i.bz, %.sroa.0.0.i.i.i
  ret i64 %i.ca
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtNtNtB9_6format2pb13ShardManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_13ShardManifestE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !74997
  %i.i = tail call noundef dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !74997 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 16) #80, !noalias !74998
  unreachable

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !74999
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !noundef !68
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load i32, ptr %i.o, align 8, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75000)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !75000, !noalias !75001, !nonnull !68, !noundef !68 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !75002
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !75000, !noalias !75001, !noundef !68 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !75004
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.noexc.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.r, %bb.e ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !75005
  %i.aa = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -768 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

._crit_edge19.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %bb.e
  %.sroa.7.0 = phi ptr [ %i.x, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %i.r, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.w, %bb.e ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ad = add i16 %.lcssa.i.i.i.i, -1
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = and i16 %i.ad, %.lcssa.i.i.i.i          ; 2 uses
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [48 x i8], ptr %.sroa.027.0, i64 %i.ah ; 3 uses
  %i.aj = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -48
  %i.al = getelementptr i8, ptr %i.ai, i64 -16
  %.val.i14 = load ptr, ptr %i.al, align 8, !noalias !75006 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 -8
  %.val3.i = load i64, ptr %i.am, align 8, !noalias !75006 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75007
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %._crit_edge19.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14) ]
  %i.an = icmp eq i64 %.val3.i, 0                 ; 2 uses
  br i1 %i.an, label %.noexc, label %bb.f

bb.f:                                             ; preds = %.noexc17
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75008
  %i.ao = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !75008 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i) #80
          to label %.noexc.i.i unwind label %bb.i, !noalias !75009

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.val.i14, i64 range(i64 0, -9223372036854775808) %.val3.i, i1 false), !noalias !75010
  br label %.noexc

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75011)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !75011, !noalias !75007 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ar, label %bb.an, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !75011, !noalias !75007, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75012
  br label %bb.an

.noexc:                                           ; preds = %.noexc17, %bb.h
  %.sroa.5.0.i.i = phi ptr [ %i.ao, %bb.h ], [ inttoptr (i64 1 to ptr), %.noexc17 ] ; 2 uses
  %.sroa.035.0.copyload36 = load i64, ptr %i.a, align 8, !noalias !75013 ; 4 uses
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.737.0.copyload38 = load ptr, ptr %.sroa.737.0..sroa_idx, align 8, !noalias !75013 ; 3 uses
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.839.0.copyload40 = load i64, ptr %.sroa.839.0..sroa_idx, align 8, !noalias !75013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75007
  %.not.i = icmp eq i64 %.sroa.035.0.copyload36, -1
  br i1 %.not.i, label %.noexc.thread, label %bb.n

.noexc.thread:                                    ; preds = %bb.d, %.noexc
  store i64 0, ptr %i.h, align 8, !alias.scope !75003, !noalias !75014
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !alias.scope !75003, !noalias !75014
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.au, align 8, !alias.scope !75003, !noalias !75014
  br label %bb.ag

bb.k:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.035.0.copyload36, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.737.0.copyload38) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.737.0.copyload38, i64 noundef %.sroa.035.0.copyload36, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75015
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.l, %bb.k
  br i1 %i.an, label %bb.an, label %bb.m

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75016
  br label %bb.an

bb.n:                                             ; preds = %.noexc
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 4) ; 3 uses
  %i.ax = mul i64 %.sroa.0.0.i.i, 48              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.t, 192153584101141162
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.o, !prof !69

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75017
  %i.az = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #76, !noalias !75017 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.p ], [ 0, %bb.n ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ax) #80
          to label %.noexc.i unwind label %bb.k, !noalias !75004

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %i.az, %bb.p ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.o ], [ %.sroa.0.0.i.i, %bb.p ] ; 2 uses
  %i.bb = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.bb)
  store i64 %.sroa.035.0.copyload36, ptr %.sroa.10.0.i.i, align 8, !noalias !75004
  %.sroa.737.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.737.0.copyload38, ptr %.sroa.737.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75004
  %.sroa.839.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.839.0.copyload40, ptr %.sroa.839.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75004
  %.sroa.841.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.val3.i, ptr %.sroa.841.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75004
  %.sroa.1042.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.5.0.i.i, ptr %.sroa.1042.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75004
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.val3.i, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75004
  store i64 %.sroa.4.0.i.i, ptr %i.g, align 8, !noalias !75004
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !75004
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i4, align 8, !noalias !75004
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75021)
  %i.bc = icmp eq i64 %i.aj, 0
  br i1 %i.bc, label %.loopexit54.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not12.i.i.i.i11.i = icmp eq i16 %i.ag, 0
  br i1 %.not12.i.i.i.i11.i, label %.lr.ph.i.i.i.i26.i, label %._crit_edge19.i.i.i.i12.i

.lr.ph.i.i.i.i26.i:                               ; preds = %bb.s, %.lr.ph.i.i.i.i26.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i.i26.i ], [ %.sroa.7.0, %bb.s ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i.i26.i ], [ %.sroa.027.0, %bb.s ]
  %.val10.i.i.i.i29.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !75022
  %i.bf = icmp sgt <16 x i8> %.val10.i.i.i.i29.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -768 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i.i30.i = bitcast <16 x i1> %i.bf to i16 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i16 %.cast.i.i.i.i30.i, 0
  br i1 %.not.i.i.i.i31.i, label %.lr.ph.i.i.i.i26.i, label %._crit_edge19.i.i.i.i12.i

._crit_edge19.i.i.i.i12.i:                        ; preds = %.lr.ph.i.i.i.i26.i, %bb.s
  %.sroa.9.3.i = phi ptr [ %.sroa.7.0, %bb.s ], [ %i.bh, %.lr.ph.i.i.i.i26.i ]
  %.sroa.037.3.i = phi ptr [ %.sroa.027.0, %bb.s ], [ %i.bg, %.lr.ph.i.i.i.i26.i ] ; 2 uses
  %.lcssa.i.i.i.i14.i = phi i16 [ %i.ag, %bb.s ], [ %.cast.i.i.i.i30.i, %.lr.ph.i.i.i.i26.i ] ; 3 uses
  %i.bi = add i16 %.lcssa.i.i.i.i14.i, -1
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i14.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = and i16 %i.bi, %.lcssa.i.i.i.i14.i
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [48 x i8], ptr %.sroa.037.3.i, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48
  %i.bp = getelementptr i8, ptr %i.bn, i64 -16
  %.val.i15.i = load ptr, ptr %i.bp, align 8, !noalias !75023 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 -8
  %.val3.i16.i = load i64, ptr %i.bq, align 8, !noalias !75023 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75024
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %.noexc33.i unwind label %.loopexit.split-lp.i, !noalias !75004

.noexc33.i:                                       ; preds = %._crit_edge19.i.i.i.i12.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i15.i) ]
  %i.br = icmp eq i64 %.val3.i16.i, 0
  br i1 %i.br, label %.noexc6.i, label %bb.t

bb.t:                                             ; preds = %.noexc33.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75025
  %i.bs = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i16.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !75025 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i16.i) #80
          to label %.noexc.i.i25.i unwind label %bb.w, !noalias !75026

.noexc.i.i25.i:                                   ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.val.i15.i, i64 range(i64 0, -9223372036854775808) %.val3.i16.i, i1 false), !noalias !75027
  br label %.noexc6.i

bb.w:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75028)
  %.val.i.i.i22.i = load i64, ptr %i.d, align 8, !alias.scope !75028, !noalias !75024 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i.i22.i, 0
  br i1 %i.bv, label %.body.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_7
begin_hunk_8_@_RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from:bb.a
  %.not31 = icmp eq i64 %i.dn, -1
  br i1 %.not31, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.at
  %.sroa.898.0 = phi i64 [ %.sroa.5103.0.copyload, %bb.at ], [ 0, %bb.ap ]
  %.sroa.695.0 = phi ptr [ %.sroa.4102.0.copyload, %bb.at ], [ inttoptr (i64 1 to ptr), %bb.ap ] ; 2 uses
  %.sroa.093.0 = phi i64 [ %.sroa.0101.0.copyload, %bb.at ], [ 0, %bb.ap ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.dp = load <2 x i64>, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.dr = load <2 x i32>, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 16, !range !70, !noundef !68
  %.not32 = icmp eq i64 %i.dt, -1
  br i1 %.not32, label %bb.av, label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53, %bb.as
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.du, %bb.as ], [ %.pn34.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53 ], [ %.pn34.pn, %bb.aw ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.w)
  br label %bb.an

bb.as:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

bb.at:                                            ; preds = %bb.aq
  %.sroa.0101.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4102.0.copyload = load ptr, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5103.0.copyload = load i64, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
          to label %bb.ay unwind label %bb.ax

bb.av:                                            ; preds = %bb.ar, %bb.ay
  %.sroa.8109.0 = phi i64 [ %.sroa.5114.0.copyload, %bb.ay ], [ 0, %bb.ar ]
  %.sroa.6106.0 = phi ptr [ %.sroa.4113.0.copyload, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.ar ] ; 2 uses
  %.sroa.0104.0 = phi i64 [ %.sroa.0112.0.copyload, %bb.ay ], [ 0, %bb.ar ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx)
          to label %switch.lookup unwind label %bb.ba

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53: ; preds = %bb.az, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56, %bb.ax
  %.pn34.pn = phi { ptr, i32 } [ %i.dz, %bb.ax ], [ %.pn34, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56 ], [ %.pn34, %bb.az ] ; 2 uses
  %i.dy = icmp eq i64 %.sroa.093.0, 0
  br i1 %i.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.695.0, i64 noundef %.sroa.093.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77985
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

bb.ax:                                            ; preds = %bb.au
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53

bb.ay:                                            ; preds = %bb.au
  %.sroa.0112.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4113.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5114.0.copyload = load i64, ptr %.sroa.5114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.av

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56: ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.ba
  %.pn34 = phi { ptr, i32 } [ %i.eb, %bb.ba ], [ %.pn, %bb.bf ], [ %i.eh, %bb.bb ], [ %i.eh, %bb.bc ] ; 2 uses
  %i.ea = icmp eq i64 %.sroa.0104.0, 0
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53, label %bb.az

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6106.0, i64 noundef %.sroa.0104.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77986
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53

bb.ba:                                            ; preds = %bb.av
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

switch.lookup:                                    ; preds = %bb.av
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !range !126, !noundef !68
  %i.ee = zext nneg i8 %i.ed to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from, i64 %i.ee
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77987
  %i.ef = call noundef dereferenceable_or_null(3) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77987 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.bd, label %bb.be

bb.bb:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77988)
  %.val.i54 = load i64, ptr %i.u, align 8, !alias.scope !77988 ; 2 uses
  %i.ei = icmp eq i64 %.val.i54, 0
  br i1 %i.ei, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i55 = load ptr, ptr %i.ej, align 8, !alias.scope !77988, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i55, i64 noundef %.val.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77988
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

bb.bd:                                            ; preds = %switch.lookup
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #80
          to label %bb.cg unwind label %bb.bb

bb.be:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ef, ptr noundef nonnull align 1 dereferenceable(3) %switch.load, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 3, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ef, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 3, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek)
          to label %bb.bi unwind label %bb.bg

bb.bf:                                            ; preds = %.body75, %bb.bg
  %.pn = phi { ptr, i32 } [ %eh.lpad-body76, %.body75 ], [ %i.el, %bb.bg ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb8manifest17DataStorageFormatEEB15_(ptr noalias noundef align 8 dereferenceable(48) %i.v) #81
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

bb.bg:                                            ; preds = %bb.be
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bk
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body75:                                          ; preds = %bb.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78, %bb.bm, %bb.bn, %.body.i67, %bb.bh
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.em, %bb.bh ], [ %i.fo, %bb.bm ], [ %i.fo, %bb.bn ], [ %eh.lpad-body.i68, %.body.i67 ], [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78 ], [ %i.fp, %bb.bq ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.t)
  br label %bb.bf

bb.bi:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !77989)
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !77989, !noalias !77990, !nonnull !68, !noundef !68 ; 4 uses
  %.val3.i.i57 = load <16 x i8>, ptr %i.eo, align 16, !noalias !77991
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !77989, !noalias !77990, !noundef !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !77992
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.cf, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = icmp sgt <16 x i8> %.val3.i.i57, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.i.i.i.i
  %i.ev = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i ], [ %i.eu, %bb.bj ] ; 2 uses
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bj ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !77993
  %i.ex = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -1024 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ex to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.bj
  %.sroa.6124.0 = phi ptr [ %i.eu, %bb.bj ], [ %i.ez, %.lr.ph.i.i.i.i.i ]
  %.sroa.014.0.copyload.i = phi ptr [ %i.eo, %bb.bj ], [ %i.ey, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.et, %bb.bj ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.fa = add i16 %.lcssa.i.i.i.i.i, -1
  %i.fb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = and i16 %i.fa, %.lcssa.i.i.i.i.i
  %i.fe = sub nsw i64 0, %i.fc
  %i.ff = getelementptr inbounds [64 x i8], ptr %.sroa.014.0.copyload.i, i64 %i.fe ; 4 uses
  %i.fg = add nsw i64 %i.eq, -1                   ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !77994)
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fj = load i32, ptr %i.fi, align 8, !alias.scope !77994, !noalias !77995, !noundef !68
  %i.fk = getelementptr inbounds i8, ptr %i.ff, i64 -32 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !range !70, !alias.scope !77994, !noalias !77995, !noundef !68
  %.not.i.i.i = icmp eq i64 %i.fl, -1
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge19.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !77996
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %.noexc74 unwind label %bb.bh

.noexc74:                                         ; preds = %bb.bk
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !77996
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !77996
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !77996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !77996
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc74, %._crit_edge19.i.i.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %.noexc74 ], [ undef, %._crit_edge19.i.i.i.i.i ]
  %.sroa.6.0.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.noexc74 ], [ undef, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc74 ], [ -1, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fn = load i8, ptr %i.fm, align 4, !range !77, !alias.scope !77994, !noalias !77995, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77996
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i unwind label %bb.bm, !noalias !77995

bb.bm:                                            ; preds = %bb.bl
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i = add i64 %.sroa.0.0.i.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.bn, label %.body75

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77997
  br label %.body75

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i: ; preds = %bb.bl
  %.sroa.0.0.copyload10.i = load i64, ptr %i.e, align 8, !noalias !77998 ; 4 uses
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx11.i, align 8, !noalias !77998 ; 3 uses
  %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx, align 8, !noalias !77998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77996
  %.not.i62 = icmp eq i64 %.sroa.0.0.copyload10.i, -1
  br i1 %.not.i62, label %bb.cf, label %bb.br

bb.bo:                                            ; preds = %bb.bu
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = icmp sgt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.fq, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77999
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78: ; preds = %bb.bp, %bb.bo
  %i.fr = icmp eq i64 %.sroa.0.0.copyload10.i, 0
  br i1 %i.fr, label %.body75, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i78
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.i.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !78000
  br label %.body75

bb.br:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.eq, i64 4) ; 3 uses
  %i.fs = mul i64 %.sroa.0.0.i.i, 56              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.eq, 164703072086692425
  br i1 %or.cond.i.i.i, label %bb.bu, label %bb.bs, !prof !69

bb.bs:                                            ; preds = %bb.br
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78001
  %i.fu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fs, i64 noundef range(i64 1, 9) 8) #76, !noalias !78001 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bt ], [ 0, %bb.br ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fs) #80
          to label %.noexc.i73 unwind label %bb.bo, !noalias !77992

.noexc.i73:                                       ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bs ], [ %i.fu, %bb.bt ] ; 11 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.bs ], [ %.sroa.0.0.i.i, %bb.bt ] ; 3 uses
  %i.fw = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.fw)
  store i64 %.sroa.0.0.copyload10.i, ptr %.sroa.10.0.i.i, align 8, !noalias !77992
  %.sroa.5151.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.i.sroa.0.0.copyload, ptr %.sroa.5151.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.7152.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.7.i.sroa.5.0.copyload, ptr %.sroa.7152.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.7153.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.7153.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.9154.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.9154.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.11155.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.11155.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 48
  store i32 %i.fj, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !77992
  %.sroa.13.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 52
  store i8 %i.fn, ptr %.sroa.13.0..sroa.10.0.i.i.sroa_idx, align 4, !noalias !77992
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !77992
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i64, align 8, !noalias !77992
  %.sroa.6.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i65, align 8, !noalias !77992
  call void @llvm.experimental.noalias.scope.decl(metadata !78002)
  call void @llvm.experimental.noalias.scope.decl(metadata !78003)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.fx = icmp eq i64 %i.fg, 0
  br i1 %i.fx, label %.loopexit.i69, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  br label %bb.bw

bb.bw:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.fy = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.gx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.fz = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.gz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 6 uses
  %.lcssa27.i.i.i = phi ptr [ %.sroa.6124.0, %.lr.ph.i.i.i ], [ %.lcssa26.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ga = phi i16 [ %i.fd, %.lr.ph.i.i.i ], [ %i.gj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1823.i.i.i = phi i64 [ %i.fg, %.lr.ph.i.i.i ], [ %i.gm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa152122.i.i.i = phi ptr [ %.sroa.014.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1520.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i70, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i70:                           ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i70
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.lcssa27.i.i.i, %bb.bw ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i70 ], [ %.lcssa152122.i.i.i, %bb.bw ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !78004
  %i.gd = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -1024 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i71 = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i72 = icmp eq i16 %.cast.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i.i.i72, label %.lr.ph.i.i.i.i.i.i.i70, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i70, %bb.bw
  %.lcssa26.i.i.i = phi ptr [ %.lcssa27.i.i.i, %bb.bw ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i70 ]
  %.lcssa1520.i.i.i = phi ptr [ %.lcssa152122.i.i.i, %bb.bw ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i70 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i66 = phi i16 [ %i.ga, %bb.bw ], [ %.cast.i.i.i.i.i.i.i71, %.lr.ph.i.i.i.i.i.i.i70 ] ; 3 uses
  %i.gg = add i16 %.lcssa.i.i.i.i.i.i.i66, -1
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i66, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = and i16 %i.gg, %.lcssa.i.i.i.i.i.i.i66
  %i.gk = sub nsw i64 0, %i.gi
  %i.gl = getelementptr inbounds [64 x i8], ptr %.lcssa1520.i.i.i, i64 %i.gk ; 4 uses
  %i.gm = add i64 %.val1823.i.i.i, -1             ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !78005)
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.gp = load i32, ptr %i.go, align 8, !alias.scope !78005, !noalias !78006, !noundef !68
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 -32 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !range !70, !alias.scope !78005, !noalias !78006, !noundef !68
  %.not.i.i.i.i7.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i.i.i7.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78007
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %.noexc9.i unwind label %bb.ce, !noalias !77992

.noexc9.i:                                        ; preds = %bb.bx
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !78007
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !78007
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !78007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78007
  br label %bb.by

bb.by:                                            ; preds = %.noexc9.i, %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc9.i ], [ -1, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gl, i64 -4
end_hunk_8
