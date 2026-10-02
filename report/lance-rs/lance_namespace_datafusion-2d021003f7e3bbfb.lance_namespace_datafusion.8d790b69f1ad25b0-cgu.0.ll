Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.dpu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33418)
  call void @llvm.experimental.noalias.scope.decl(metadata !33419)
  %i.dpv = load ptr, ptr %i.am, align 8, !alias.scope !33420, !noalias !33375, !nonnull !111, !noundef !111
  %i.dpw = atomicrmw sub ptr %i.dpv, i64 1 release, align 8, !noalias !33420
  %i.dpx = icmp eq i64 %i.dpw, 1
  br i1 %i.dpx, label %bb.aiz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i

bb.ajc:                                           ; preds = %bb.aja
  store i8 0, ptr %i.des, align 4, !noalias !33375
  call void @llvm.experimental.noalias.scope.decl(metadata !33421)
  call void @llvm.experimental.noalias.scope.decl(metadata !33422)
  %i.dpy = load ptr, ptr %i.am, align 8, !alias.scope !33423, !noalias !33375, !nonnull !111, !noundef !111
  %i.dpz = atomicrmw sub ptr %i.dpy, i64 1 release, align 8, !noalias !33423
  %i.dqa = icmp eq i64 %i.dpz, 1
  br i1 %i.dqa, label %bb.ajd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit70.i.i

bb.ajd:                                           ; preds = %bb.ajc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit70.i.i unwind label %bb.aje

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i: ; preds = %bb.aje, %bb.ajb, %bb.aiz
  %.pn33.i.i = phi { ptr, i32 } [ %i.dqb, %bb.aje ], [ %i.dpu, %bb.aiz ], [ %i.dpu, %bb.ajb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !33375
  br label %.body.i.i472

bb.aje:                                           ; preds = %bb.ajd
  %i.dqb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit70.i.i: ; preds = %bb.ajd, %bb.ajc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !33375
  call void @llvm.experimental.noalias.scope.decl(metadata !33424)
  call void @llvm.experimental.noalias.scope.decl(metadata !33425)
  %i.dqc = load i32, ptr %i.dem, align 8, !alias.scope !33426, !noalias !33427, !noundef !111 ; 2 uses
  %i.dqd = load i32, ptr %i.den, align 4, !alias.scope !33428, !noalias !33429, !noundef !111
  %i.dqe = icmp ult i32 %i.dqc, %i.dqd
  br i1 %i.dqe, label %bb.agk, label %.loopexit.i.i

bb.ajf:                                           ; preds = %bb.afz, %bb.afx, %bb.afu
  %i.dqf = phi ptr [ %i.dfb, %bb.afz ], [ %i.det, %bb.afx ], [ %i.det, %bb.afu ]
  %i.dqg = phi ptr [ %i.dfc, %bb.afz ], [ %i.deu, %bb.afx ], [ %i.deu, %bb.afu ]
  %i.dqh = phi ptr [ %i.dfd, %bb.afz ], [ %i.dev, %bb.afx ], [ %i.dev, %bb.afu ]
  %i.dqi = phi ptr [ %i.dfe, %bb.afz ], [ %i.dew, %bb.afx ], [ %i.dew, %bb.afu ]
  %.pn22.i.i = phi { ptr, i32 } [ %i.dft, %bb.afz ], [ %i.dfa, %bb.afx ], [ %i.dez, %bb.afu ]
  %i.dqj = getelementptr inbounds nuw i8, ptr %0, i64 487 ; 2 uses
  %i.dqk = load i8, ptr %i.dqj, align 1, !range !115, !noalias !33375, !noundef !111
  %i.dql = trunc nuw i8 %i.dqk to i1
  br i1 %i.dql, label %bb.ajh, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajh, %bb.ajf
  store i8 0, ptr %i.dqj, align 1, !noalias !33375
  br label %.body64.i.i

bb.ajh:                                           ; preds = %bb.ajf
  %i.dqm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val.i.i475 = load ptr, ptr %i.dqm, align 8, !noalias !33375, !nonnull !111, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val.i.i475) #49
          to label %bb.ajg unwind label %bb.air

bb.aji:                                           ; preds = %bb.age
  %i.dqn = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33430)
  call void @llvm.experimental.noalias.scope.decl(metadata !33431)
  %i.dqo = load ptr, ptr %i.dqn, align 8, !alias.scope !33432, !noalias !33375, !nonnull !111, !noundef !111
  %i.dqp = atomicrmw sub ptr %i.dqo, i64 1 release, align 8, !noalias !33432
  %i.dqq = icmp eq i64 %i.dqp, 1
  br i1 %i.dqq, label %bb.ajj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i

bb.ajj:                                           ; preds = %bb.aji
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dqn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i unwind label %bb.air

bb.ajk:                                           ; preds = %bb.afs, %bb.afr
  %i.dqr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i473

bb.ajl:                                           ; preds = %bb.ahj, %bb.afv
  %i.dqs = phi ptr [ %i.djw, %bb.ahj ], [ %i.det, %bb.afv ]
  %i.dqt = phi ptr [ %i.djy, %bb.ahj ], [ %i.dev, %bb.afv ]
  %.sink.i.ph.i524 = phi i8 [ 3, %bb.ahj ], [ 4, %bb.afv ]
  store i8 %.sink.i.ph.i524, ptr %i.dqt, align 8, !noalias !33375
  br label %bb.akl

bb.ajm:                                           ; preds = %bb.ahb, %.loopexit.i.i
  store i8 1, ptr %i.dei, align 8, !noalias !33375
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dej)
          to label %._crit_edge172.i unwind label %bb.ajn

._crit_edge172.i:                                 ; preds = %bb.ajm
  %.phi.trans.insert173.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre174.i = load ptr, ptr %.phi.trans.insert173.i, align 8, !noalias !33374
  br label %bb.ajo

bb.ajn:                                           ; preds = %bb.ajm
  %i.dqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ajo:                                           ; preds = %._crit_edge172.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.dqv = phi ptr [ %i.deg, %._crit_edge172.i ], [ %i.dbk, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %i.dqw = phi ptr [ %i.deh, %._crit_edge172.i ], [ %i.dbl, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.dqx = phi ptr [ %.pre174.i, %._crit_edge172.i ], [ %i.dci, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %i.dqy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dqz = getelementptr i8, ptr %i.dqx, i64 128
  %.val41.i478 = load i32, ptr %i.dqz, align 8, !range !173, !noundef !111
  %.not130.i = icmp eq i32 %.val41.i478, -1
  br i1 %.not130.i, label %bb.ajp, label %bb.ajr

bb.ajp:                                           ; preds = %bb.ajo
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqx, i64 552
  %i.drb = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dra)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.drc = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ajp
  br i1 %i.drb, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i, label %bb.akm

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.pre175.i = load ptr, ptr %i.dqy, align 8, !noalias !33374
  br label %bb.ajr

bb.ajr:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i, %bb.ajo
  %i.drd = phi ptr [ %.pre175.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i ], [ %i.dqx, %bb.ajo ]
  %i.dre = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drf = load ptr, ptr %i.dre, align 8, !noalias !33374, !nonnull !111, !align !127, !noundef !111
  %.val38.i479 = load ptr, ptr %i.drf, align 8, !nonnull !111, !align !127, !noundef !111
  %i.drg = getelementptr inbounds nuw i8, ptr %.val38.i479, i64 16
  %i.drh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dri = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.drj = load i32, ptr %i.dri, align 4, !noalias !33374, !noundef !111
  %i.drk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.drl = load i64, ptr %i.drk, align 8, !noalias !33374, !noundef !111
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.drl, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.drd, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.drg, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.drm = load <2 x ptr>, ptr %i.drh, align 8, !noalias !33374
  store <2 x ptr> %i.drm, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.drj, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.1577.0..sroa_idx.i, align 1, !noalias !33374
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 0, ptr %.sroa.1678.0..sroa_idx.i, align 2, !noalias !33374
  br label %bb.ajt

.body.i473:                                       ; preds = %bb.ajk, %.body.i.i472
  %i.drn = phi ptr [ %i.ddt, %.body.i.i472 ], [ %i.dbj, %bb.ajk ]
  %i.dro = phi ptr [ %i.ddu, %.body.i.i472 ], [ %i.dbi, %bb.ajk ]
  %i.drp = phi ptr [ %i.ddw, %.body.i.i472 ], [ %i.dcv, %bb.ajk ]
  %.pn11.i474 = phi { ptr, i32 } [ %.pn33.pn.i.i, %.body.i.i472 ], [ %i.dqr, %bb.ajk ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.drp) #49
          to label %bb.afj unwind label %bb.ajs

bb.ajs:                                           ; preds = %bb.akg, %bb.aka, %bb.aju, %.body.i473
  %i.drq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ajt:                                           ; preds = %bb.ajr, %bb.afh
  %i.drr = phi ptr [ %i.dqv, %bb.ajr ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.drs = phi ptr [ %i.dqw, %bb.ajr ], [ %i.dbi, %bb.afh ] ; 3 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dru = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.drt, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ajv unwind label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.drv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.drt) #49
          to label %bb.afj unwind label %bb.ajs

bb.ajv:                                           ; preds = %bb.ajt
  br i1 %i.dru, label %bb.akl, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.drt)
          to label %bb.ajy unwind label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  %i.drw = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ajy:                                           ; preds = %bb.ajw
  %i.drx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2 = load ptr, ptr %i.drx, align 8, !noalias !33374, !nonnull !111, !align !127, !noundef !111
  %i.dry = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.drz = load ptr, ptr %i.dry, align 8, !noalias !33374, !nonnull !111, !align !127, !noundef !111
  %.val37.i469 = load ptr, ptr %i.drz, align 8, !nonnull !111, !align !127, !noundef !111
  %3 = getelementptr inbounds nuw i8, ptr %.val37.i469, i64 16
  %i.dsa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsb = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsc = load i32, ptr %i.dsb, align 4, !noalias !33374, !noundef !111
  %i.dsd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dse = load i64, ptr %i.dsd, align 8, !noalias !33374, !noundef !111
  %.sroa.792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dse, ptr %.sroa.792.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %2, ptr %.sroa.994.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1095.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %3, ptr %.sroa.1095.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %4 = load <2 x ptr>, ptr %i.dsa, align 8, !noalias !33374
  store <2 x ptr> %4, ptr %.sroa.1196.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.1398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsc, ptr %.sroa.1398.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.15100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15100.0..sroa_idx.i, align 1, !noalias !33374
  %.sroa.16101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 1, ptr %.sroa.16101.0..sroa_idx.i, align 2, !noalias !33374
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy, %bb.afh
  %i.dsf = phi ptr [ %i.drr, %bb.ajy ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.dsg = phi ptr [ %i.drs, %bb.ajy ], [ %i.dbi, %bb.afh ] ; 3 uses
  %i.dsh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsi = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsh, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.akb unwind label %bb.aka

bb.aka:                                           ; preds = %bb.ajz
  %i.dsj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsh) #49
          to label %bb.afj unwind label %bb.ajs

bb.akb:                                           ; preds = %bb.ajz
  br i1 %i.dsi, label %bb.akl, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsh)
          to label %bb.ake unwind label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.dsk = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.ake:                                           ; preds = %bb.akc
  %i.dsl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %i.dsl, align 8, !noalias !33374, !nonnull !111, !align !127, !noundef !111
  %i.dsm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dsn = load ptr, ptr %i.dsm, align 8, !noalias !33374, !nonnull !111, !align !127, !noundef !111
  %.val36.i468 = load ptr, ptr %i.dsn, align 8, !nonnull !111, !align !127, !noundef !111
  %6 = getelementptr inbounds nuw i8, ptr %.val36.i468, i64 16
  %i.dso = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dsp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dsq = load i32, ptr %i.dsp, align 4, !noalias !33374, !noundef !111
  %i.dsr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dss = load i64, ptr %i.dsr, align 8, !noalias !33374, !noundef !111
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dss, ptr %.sroa.7116.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %5, ptr %.sroa.9118.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.10119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %6, ptr %.sroa.10119.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.11120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %7 = load <2 x ptr>, ptr %i.dso, align 8, !noalias !33374
  store <2 x ptr> %7, ptr %.sroa.11120.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.13122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dsq, ptr %.sroa.13122.0..sroa_idx.i, align 8, !noalias !33374
  %.sroa.15124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15124.0..sroa_idx.i, align 1, !noalias !33374
  %.sroa.16125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 2, ptr %.sroa.16125.0..sroa_idx.i, align 2, !noalias !33374
  br label %bb.akf

bb.akf:                                           ; preds = %bb.ake, %bb.afh
  %i.dst = phi ptr [ %i.dsf, %bb.ake ], [ %i.dbj, %bb.afh ] ; 4 uses
  %i.dsu = phi ptr [ %i.dsg, %bb.ake ], [ %i.dbi, %bb.afh ] ; 2 uses
  %i.dsv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dsw = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsv, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.akh unwind label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.dsx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsv) #49
          to label %bb.afj unwind label %bb.ajs

bb.akh:                                           ; preds = %bb.akf
  br i1 %i.dsw, label %bb.akl, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dsv)
          to label %bb.akm unwind label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.dsy = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

bb.akk:                                           ; preds = %bb.afm, %bb.afl
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  br label %.body532

bb.akl:                                           ; preds = %bb.akb, %bb.ajv, %bb.ajl, %bb.akh
  %i.dta = phi ptr [ %i.dst, %bb.akh ], [ %i.dqs, %bb.ajl ], [ %i.drr, %bb.ajv ], [ %i.dsf, %bb.akb ]
  %.sink.i466.ph = phi i8 [ 6, %bb.akh ], [ 3, %bb.ajl ], [ 4, %bb.ajv ], [ 5, %bb.akb ]
  store i8 %.sink.i466.ph, ptr %i.dta, align 8, !noalias !33374
  br label %common.ret

bb.akm:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.aki
  %i.dtb = phi ptr [ %i.dqv, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.dst, %bb.aki ]
  store i8 1, ptr %i.dtb, align 8, !noalias !33374
  br label %bb.afg

bb.akn:                                           ; preds = %bb.ako, %bb.ayd, %bb.afg
  %i.dtc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dtd = load ptr, ptr %i.dtc, align 8, !nonnull !111, !align !127, !noundef !111 ; 3 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dtf = load i64, ptr %i.dtd, align 8, !range !118, !noundef !111
  %i.dtg = trunc nuw i64 %i.dtf to i1
  br i1 %i.dtg, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.ako:                                           ; preds = %bb.afg
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dav, i64 688
  %i.dti = load atomic i8, ptr %i.dth acquire, align 8
  %.not903 = icmp eq i8 %i.dti, 0
  br i1 %.not903, label %.thread1943, label %bb.akn

.thread1943:                                      ; preds = %bb.ako
  %i.dtj = load ptr, ptr %i.dau, align 8, !nonnull !111, !align !127, !noundef !111
  %i.dtk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dtl = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dtm = load i32, ptr %i.dtl, align 4, !noundef !111
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
  br label %bb.akq

bb.akp:                                           ; preds = %bb.a
  %.phi.trans.insert1715 = getelementptr inbounds nuw i8, ptr %0, i64 637
  %.pre1716 = load i8, ptr %.phi.trans.insert1715, align 1, !range !131, !noalias !33433
  %i.dts = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33433)
  %i.dtt = getelementptr inbounds nuw i8, ptr %0, i64 637 ; 12 uses
  switch i8 %.pre1716, label %default.unreachable1920 [
    i8 0, label %bb.akq
    i8 1, label %bb.aor
    i8 2, label %bb.aos
    i8 3, label %bb.aot
  ]

bb.akq:                                           ; preds = %.thread1943, %bb.akp
  %i.dtu = phi ptr [ %i.dtr, %.thread1943 ], [ %i.dtt, %bb.akp ] ; 12 uses
  %i.dtv = phi ptr [ %i.dtq, %.thread1943 ], [ %i.dts, %bb.akp ] ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 4 uses
  store i8 0, ptr %i.dtw, align 4, !noalias !33433
  %i.dtx = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dty = load ptr, ptr %i.dtx, align 8, !noalias !33433, !nonnull !111, !align !127, !noundef !111 ; 5 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dub = load <2 x ptr>, ptr %i.dua, align 8, !noalias !33433
  store <2 x ptr> %i.dub, ptr %i.dtz, align 8, !noalias !33433
  %i.duc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dud = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.due = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.duf = load i32, ptr %i.due, align 8, !noalias !33433, !noundef !111 ; 4 uses
  %i.dug = load <2 x ptr>, ptr %i.dud, align 8, !noalias !33433
  store <2 x ptr> %i.dug, ptr %i.duc, align 8, !noalias !33433
  %i.duh = getelementptr inbounds nuw i8, ptr %i.dty, i64 72
  %i.dui = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.duh)
          to label %bb.aks unwind label %bb.akr

.body672.thread:                                  ; preds = %bb.akr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %bb.alp, %bb.ano, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.alr
  %i.duj = phi ptr [ %i.dtu, %bb.akr ], [ %i.ect, %bb.ano ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ], [ %i.dtu, %bb.alp ], [ %i.dtu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.dtu, %bb.alr ]
  %.pn34.i = phi { ptr, i32 } [ %i.duk, %bb.akr ], [ %.pn28.pn.pn.pn.pn.i, %bb.ano ], [ %.pn.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.alp ], [ %eh.lpad-body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %eh.lpad-body.i.i, %bb.alr ]
  store i8 2, ptr %i.duj, align 1, !noalias !33433
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit686

bb.akr:                                           ; preds = %bb.akq
  %i.duk = landingpad { ptr, i32 }
          cleanup
  br label %.body672.thread

bb.aks:                                           ; preds = %bb.akq
  %i.dul = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dum = load ptr, ptr %i.dul, align 8, !noalias !33433, !nonnull !111, !align !127, !noundef !111 ; 6 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dum, i64 144 ; 9 uses
  %i.duo = getelementptr i8, ptr %i.dum, i64 160
  %.val39.i615 = load i64, ptr %i.duo, align 8, !noundef !111
  %i.dup = icmp eq i64 %.val39.i615, 0
  br i1 %i.dup, label %bb.akt, label %bb.anq

bb.akt:                                           ; preds = %bb.aks
  %i.duq = load ptr, ptr %i.dtz, align 8, !noalias !33433, !nonnull !111, !align !127, !noundef !111 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !33433
  store i64 %i.dui, ptr %i.ae, align 8, !noalias !33433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33433
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duq, i64 8 ; 2 uses
  %i.dus = load i64, ptr %i.dur, align 8, !noundef !111
  store i64 -1, ptr %i.ad, align 8, !noalias !33433
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.duq, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !33433
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @630, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !33433
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.dus, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !33433
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !33433
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i8 0, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !noalias !33433
  %.sroa.4.0..sroa_idx.i.i635 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i635, align 8, !noalias !33433
  call void @llvm.experimental.noalias.scope.decl(metadata !33434)
  call void @llvm.experimental.noalias.scope.decl(metadata !33435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !33436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33436
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCskTBvlRM5ILY_4moka3cht4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1p_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3f_16CachedReaderDataEENCNvMs0_B2B_INtB2B_11InvalidatorB3d_B42_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE35remove_predicates_registered_before0ENCB4u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.akv unwind label %bb.aku, !noalias !33437

bb.aku:                                           ; preds = %bb.akt
  %i.dut = landingpad { ptr, i32 }
          cleanup
  br label %bb.alp

bb.akv:                                           ; preds = %bb.akt
  %i.duu = load i64, ptr %i.z, align 8, !range !113, !noalias !33436, !noundef !111 ; 4 uses
  %.not.i.i.i.i636 = icmp eq i64 %i.duu, -1
  br i1 %.not.i.i.i.i636, label %bb.akw, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

bb.akw:                                           ; preds = %bb.akv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !33436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33436
  call void @llvm.experimental.noalias.scope.decl(metadata !33438)
  call void @llvm.experimental.noalias.scope.decl(metadata !33439)
  call void @llvm.experimental.noalias.scope.decl(metadata !33440)
  call void @llvm.experimental.noalias.scope.decl(metadata !33441)
  %i.duv = load i64, ptr %i.ad, align 8, !range !113, !alias.scope !33442, !noalias !33443, !noundef !111 ; 3 uses
  %i.duw = icmp eq i64 %i.duv, -1
  br i1 %i.duw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.thread, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  call void @llvm.experimental.noalias.scope.decl(metadata !33444)
  %i.dux = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dux, align 8, !alias.scope !33445, !noalias !33443, !nonnull !111, !noundef !111 ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.duy, align 8, !alias.scope !33445, !noalias !33443, !noundef !111 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33446)
  %i.duz = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.duz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.akx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a

bb.cv:                                            ; preds = %bb.cu
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  br label %bb.db

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @635) #48
          to label %.noexc84 unwind label %bb.da

.noexc84:                                         ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.ct
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %.sroa.035.1.i.i.i, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !111, !align !127, !noundef !111 ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 24
  %.val42 = load ptr, ptr %i.lh, align 8, !align !127, !noundef !111
  %.not114 = icmp eq ptr %.val42, null
  br i1 %.not114, label %bb.k, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.li, align 1
  %i.lj = load ptr, ptr %i.hb, align 8, !nonnull !111, !noundef !111
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.ll = load i8, ptr %i.lk, align 2, !range !131, !noundef !111
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
  %i.ln = load ptr, ptr %i.gx, align 8, !nonnull !111, !align !127, !noundef !111
  %.val44 = load ptr, ptr %i.hb, align 8, !nonnull !111, !noundef !111
  %i.lo = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.lp = load i64, ptr %i.gz, align 8, !noundef !111
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8, !nonnull !111, !noundef !111
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lt = load i64, ptr %i.ls, align 8, !noundef !111
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ln, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lo, i64 noundef %i.lp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lr, i64 noundef %i.lt, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i81, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i82)
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
  %.val36 = load ptr, ptr %i.lw, align 8, !align !127, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val36) #49
          to label %.body74 unwind label %bb.cr

bb.de:                                            ; preds = %bb.av
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.df:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.sroa.0.0.i63 = phi ptr [ %i.ff, %bb.au ], [ %i.fe, %bb.at ], [ %i.fc, %bb.as ]
  %.sroa.4.0.i64 = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  %i.ly = load ptr, ptr %i.bf, align 8, !nonnull !111, !align !127, !noundef !111
  %i.lz = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.ma = load ptr, ptr %i.bg, align 8, !nonnull !111, !noundef !111
  %i.mb = load i64, ptr %i.bh, align 8, !noundef !111
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ly, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lz, i64 noundef %.sroa.04.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i63, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i64)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dh:                                            ; preds = %bb.df
  store i8 0, ptr %i.bi, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !33824)
  call void @llvm.experimental.noalias.scope.decl(metadata !33825)
  %i.md = load ptr, ptr %i.e, align 8, !alias.scope !33826, !nonnull !111, !noundef !111
  %i.me = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !33826
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit87

bb.di:                                            ; preds = %bb.dh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit87 unwind label %bb.dj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit89: ; preds = %bb.dk, %bb.dl, %bb.dj
  %.pn33 = phi { ptr, i32 } [ %i.mg, %bb.dj ], [ %.pn31, %bb.dl ], [ %.pn31, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body

bb.dj:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit89

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit87: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !33827)
  call void @llvm.experimental.noalias.scope.decl(metadata !33828)
  %i.mh = load i32, ptr %i.az, align 8, !alias.scope !33829, !noalias !33828, !noundef !111 ; 2 uses
  %i.mi = load i32, ptr %i.ba, align 4, !alias.scope !33830, !noalias !33827, !noundef !111
  %i.mj = icmp ult i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.ab, label %.loopexit

bb.dk:                                            ; preds = %bb.dg, %bb.de
  %.pn31 = phi { ptr, i32 } [ %i.mc, %bb.dg ], [ %i.lx, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33831)
  call void @llvm.experimental.noalias.scope.decl(metadata !33832)
  %i.mk = load ptr, ptr %i.e, align 8, !alias.scope !33833, !nonnull !111, !noundef !111
  %i.ml = atomicrmw sub ptr %i.mk, i64 1 release, align 8, !noalias !33833
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit89

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit89 unwind label %bb.cr

bb.dm:                                            ; preds = %bb.j, %bb.g, %bb.q, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.by, %bb.o ], [ %i.bm, %bb.j ], [ %i.bl, %bb.g ]
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8, !range !115, !noundef !111
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  store i8 0, ptr %i.mn, align 8
  br label %.body78

bb.do:                                            ; preds = %bb.dm
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.mq, align 8, !nonnull !111, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val) #49
          to label %bb.dn unwind label %bb.cr

bb.dp:                                            ; preds = %bb.v
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33834)
  call void @llvm.experimental.noalias.scope.decl(metadata !33835)
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !33836, !nonnull !111, !noundef !111
  %i.mt = atomicrmw sub ptr %i.ms, i64 1 release, align 8, !noalias !33836
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %bb.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit91

bb.dq:                                            ; preds = %bb.dp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit91 unwind label %bb.cr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMse_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13notify_upsert0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !131, !noundef !111
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
  %.val = load ptr, ptr %i.e, align 8, !nonnull !111, !noundef !111
  %2 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i8 0, ptr %i.c, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %4 = load ptr, ptr %3, align 8, !nonnull !111, !noundef !111
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !111, !noundef !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noundef !111
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.k = load i8, ptr %i.j, align 2, !range !131, !noundef !111
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.1021.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.k, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.h, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33856)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !33857, !nonnull !111, !noundef !111
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !33857
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #48
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #48
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.p = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0) #49
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %i.p, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 1
  ret i1 %i.p

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataE6notify0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33859)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !33860, !nonnull !111, !noundef !111
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !33860
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %common.ret unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.r, %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.n
  %.pn9 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %.pn7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.pn7, %bb.s ], [ %.pn7, %bb.r ]
  store i8 2, ptr %i.a, align 1
  resume { ptr, i32 } %.pn9

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.o:                                             ; preds = %bb.s, %bb.q, %bb.d, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.z = load i8, ptr %i.y, align 1, !range !115, !noundef !111
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.p, %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !range !115, !noundef !111
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB28_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33862)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !33863, !nonnull !111, !noundef !111
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !33863
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.o

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33866)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !33867, !nonnull !111, !noundef !111
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !33867
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit21current_manifest_path0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 17 uses
  %i.c = alloca [104 x i8], align 8               ; 21 uses
  %.sroa.11.i.sroa.13.i = alloca [16 x i8], align 8 ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.27.sroa.8.i = alloca [16 x i8], align 8  ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [96 x i8], align 8                ; 17 uses
  %i.l = alloca [1 x i8], align 1                 ; 7 uses
  %.sroa.5255.sroa.11.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.5255.sroa.13.i = alloca [32 x i8], align 8 ; 6 uses
  %i.m = alloca [104 x i8], align 8               ; 14 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [96 x i8], align 8                ; 12 uses
  %i.q = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.9240.i = alloca [88 x i8], align 8       ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.6223.sroa.2.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.10220.sroa.6.i = alloca [16 x i8], align 8 ; 7 uses
  %i.s = alloca [104 x i8], align 8               ; 15 uses
  %.sroa.4.sroa.11.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.6192.i = alloca [32 x i8], align 8       ; 6 uses
  %i.t = alloca [104 x i8], align 8               ; 14 uses
  %.sroa.11.sroa.17.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.14.i = alloca [32 x i8], align 8         ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.779.i.sroa.4 = alloca [16 x i8], align 8 ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [96 x i8], align 8                ; 11 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [56 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [1 x i8], align 1                ; 6 uses
  %.sroa.15 = alloca [16 x i8], align 8           ; 4 uses
  %.sroa.47.sroa.15 = alloca [7 x i8], align 1    ; 2 uses
  %.sroa.3.sroa.3.sroa.2 = alloca [16 x i8], align 8 ; 3 uses
  %.sroa.1144.sroa.6 = alloca [16 x i8], align 8  ; 10 uses
  %i.ad = alloca [80 x i8], align 8               ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !140, !noundef !111
  switch i8 %i.af, label %default.unreachable174 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.q
    i8 4, label %bb.ax
  ]

default.unreachable174:                           ; preds = %bb.ax, %bb.q, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load <2 x ptr>, ptr %1, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !111, !align !127, !noundef !111
  store <2 x ptr> %i.ai, ptr %i.ag, align 8
  %i.ak = invoke noundef zeroext i1 @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore22has_direct_local_paths(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aj)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
