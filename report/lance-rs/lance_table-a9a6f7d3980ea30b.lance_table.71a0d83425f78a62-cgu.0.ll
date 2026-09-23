Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Cs9KQ7US1M400_11lance_table:bb.a

bb.aeq:                                           ; preds = %bb.adr
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i.i.i410, i64 noundef %i.cwm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #80
          to label %.noexc51.i unwind label %bb.aes

.noexc51.i:                                       ; preds = %bb.aeq
  unreachable

bb.aer:                                           ; preds = %bb.afa, %bb.aey, %.body49.i389, %bb.adj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit53.i, %.body44.i391, %bb.acl
  %i.czn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.aes:                                           ; preds = %bb.aeq, %bb.aen, %bb.ads
  %i.czo = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i389

bb.aet:                                           ; preds = %bb.aen, %bb.aem, %bb.ael, %bb.aek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !40895
  store ptr %.sroa.035.1.i.i.i.i, ptr %i.cwe, align 8, !noalias !40826
  %.not15.i = icmp eq ptr %.sroa.035.1.i.i.i.i, null
  br i1 %.not15.i, label %bb.acs, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.czp = getelementptr inbounds nuw i8, ptr %0, i64 337
  store i8 1, ptr %i.czp, align 1, !noalias !40826
  %i.czq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %.sroa.035.1.i.i.i.i, ptr %i.czq, align 8, !noalias !40826
  %i.czr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.czs = load ptr, ptr %i.czr, align 8, !noalias !40826, !nonnull !68, !align !73, !noundef !68 ; 3 uses
  %i.czt = getelementptr i8, ptr %i.czs, i64 24
  %.val38.i430 = load ptr, ptr %i.czt, align 8, !align !73, !noundef !68
  %.not95.i = icmp eq ptr %.val38.i430, null
  br i1 %.not95.i, label %bb.acp, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  %i.czu = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.czu, align 8, !noalias !40826
  %i.czv = load ptr, ptr %i.cwc, align 8, !noalias !40826, !nonnull !68, !noundef !68
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.czs, ptr %.sroa.787.0..sroa_idx.i, align 8, !noalias !40826
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.czv, ptr %.sroa.888.0..sroa_idx.i, align 8, !noalias !40826
  %.sroa.989.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.czq, ptr %.sroa.989.0..sroa_idx.i, align 8, !noalias !40826
  %.sroa.1191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 0, ptr %.sroa.1191.0..sroa_idx.i, align 1, !noalias !40826
  %.sroa.1292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 458
  store i8 0, ptr %.sroa.1292.0..sroa_idx.i, align 2, !noalias !40826
  br label %bb.ack

.body49.i389:                                     ; preds = %bb.aex, %bb.aes, %.thread.i.i.i.i412
  %i.czw = phi ptr [ %i.dac, %bb.aex ], [ %i.cvw, %bb.aes ], [ %i.cvw, %.thread.i.i.i.i412 ]
  %i.czx = phi ptr [ %i.dad, %bb.aex ], [ %i.cvx, %bb.aes ], [ %i.cvx, %.thread.i.i.i.i412 ]
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22.i, %bb.aex ], [ %i.czo, %bb.aes ], [ %.pn.i.i.i.i413, %.thread.i.i.i.i412 ]
  %i.czy = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val35.i390 = load ptr, ptr %i.czy, align 8, !noalias !40826, !align !73, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECs9KQ7US1M400_11lance_table(ptr %.val35.i390) #81
          to label %.body44.i391 unwind label %bb.aer

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit43.i: ; preds = %bb.ade, %bb.add
  store i8 0, ptr %i.csq, align 8, !noalias !40826
  %i.czz = load ptr, ptr %i.csn, align 8, !alias.scope !40908, !noalias !40909, !nonnull !68, !noundef !68
  %i.daa = load ptr, ptr %i.cso, align 8, !alias.scope !40908, !noalias !40909, !nonnull !68, !noundef !68 ; 2 uses
  %i.dab = icmp eq ptr %i.daa, %i.czz
  br i1 %i.dab, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEybEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEybEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

bb.aew:                                           ; preds = %bb.acq, %bb.aco, %bb.acl
  %i.dac = phi ptr [ %i.ctb, %bb.acq ], [ %i.csv, %bb.aco ], [ %i.csv, %bb.acl ]
  %i.dad = phi ptr [ %i.ctc, %bb.acq ], [ %i.csw, %bb.aco ], [ %i.csw, %bb.acl ]
  %.pn22.i = phi { ptr, i32 } [ %i.cto, %bb.acq ], [ %i.cta, %bb.aco ], [ %i.csz, %bb.acl ]
  %i.dae = getelementptr inbounds nuw i8, ptr %0, i64 337 ; 2 uses
  %i.daf = load i8, ptr %i.dae, align 1, !range !77, !noalias !40826, !noundef !68
  %i.dag = trunc nuw i8 %i.daf to i1
  br i1 %i.dag, label %bb.aey, label %bb.aex

bb.aex:                                           ; preds = %bb.aey, %bb.aew
  store i8 0, ptr %i.dae, align 1, !noalias !40826
  br label %.body49.i389

bb.aey:                                           ; preds = %bb.aew
  %i.dah = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val.i394 = load ptr, ptr %i.dah, align 8, !noalias !40826, !nonnull !68, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECs9KQ7US1M400_11lance_table(ptr nonnull %.val.i394) #81
          to label %bb.aex unwind label %bb.aer

bb.aez:                                           ; preds = %bb.acv
  %i.dai = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40910)
  call void @llvm.experimental.noalias.scope.decl(metadata !40911)
  %i.daj = load ptr, ptr %i.dai, align 8, !alias.scope !40912, !noalias !40826, !nonnull !68, !noundef !68
  %i.dak = atomicrmw sub ptr %i.daj, i64 1 release, align 8, !noalias !40912
  %i.dal = icmp eq i64 %i.dak, 1
  br i1 %i.dal, label %bb.afa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit53.i

bb.afa:                                           ; preds = %bb.aez
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit53.i unwind label %bb.aer

bb.afb:                                           ; preds = %bb.acj, %bb.aci
  %i.dam = landingpad { ptr, i32 }
          cleanup
  br label %.body461

bb.afc:                                           ; preds = %bb.acm, %bb.adk
  %i.dan = phi ptr [ %i.cvc, %bb.adk ], [ %i.csv, %bb.acm ]
  %.sink.i450.ph = phi i8 [ 3, %bb.adk ], [ 4, %bb.acm ]
  store i8 %.sink.i450.ph, ptr %i.dan, align 2, !noalias !40826
  br label %common.ret

bb.afd:                                           ; preds = %.loopexit139.i
  store i8 1, ptr %i.csi, align 2, !noalias !40826
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.csj)
          to label %bb.abe unwind label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  %i.dao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECs9KQ7US1M400_11lance_table.exit686

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.abe
  %i.dap = getelementptr inbounds nuw i8, ptr %i.cpb, i64 128
  %i.daq = load i32, ptr %i.dap, align 8, !range !118, !noundef !68
  %.not902 = icmp eq i32 %i.daq, -1
  br i1 %.not902, label %bb.aff, label %.thread1942

bb.aff:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit
  %i.dar = getelementptr inbounds nuw i8, ptr %i.cpb, i64 552
  %i.das = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dar)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit unwind label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  %i.dat = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECs9KQ7US1M400_11lance_table.exit686

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.aff
  br i1 %i.das, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit.thread_crit_edge, label %bb.afh

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit.thread_crit_edge: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit
  %.pre1697 = load ptr, ptr %i.cpa, align 8
  br label %.thread1942

bb.afh:                                           ; preds = %bb.akn, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit
  %i.dau = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dav = load ptr, ptr %i.dau, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dav, i64 632 ; 2 uses
  %i.dax = load ptr, ptr %i.daw, align 8, !noundef !68
  %.not70 = icmp eq ptr %i.dax, null
  br i1 %.not70, label %bb.ako, label %bb.akp

.thread1942:                                      ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit, %bb.abe, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit.thread_crit_edge
  %i.day = phi ptr [ %.pre1697, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCs9KQ7US1M400_11lance_table.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit.thread_crit_edge ], [ %i.cpb, %bb.abe ], [ %i.cpb, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCs9KQ7US1M400_11lance_table.exit ]
  %i.daz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val128 = load ptr, ptr %i.daz, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dba = getelementptr inbounds nuw i8, ptr %.val128, i64 16
  %i.dbb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dbc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dbd = load i32, ptr %i.dbc, align 4, !noundef !68
  %i.dbe = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dbf = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.day, ptr %i.dbf, align 8
  %.sroa.7767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.dbb, ptr %.sroa.7767.0..sroa_idx, align 8
  %.sroa.8768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.dba, ptr %.sroa.8768.0..sroa_idx, align 8
  %.sroa.9769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.dbe, ptr %.sroa.9769.0..sroa_idx, align 8
  %.sroa.11771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.dbd, ptr %.sroa.11771.0..sroa_idx, align 8
  %.sroa.13773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %.sroa.13773.0..sroa_idx, align 8
  %i.dbg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dbh = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.afj

bb.afi:                                           ; preds = %bb.a
  %.phi.trans.insert1699 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre1700 = load i8, ptr %.phi.trans.insert1699, align 8, !range !127, !noalias !40913
  %i.dbi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40913)
  %i.dbj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  switch i8 %.pre1700, label %default.unreachable1920 [
    i8 0, label %bb.afj
    i8 1, label %bb.afm
    i8 2, label %bb.afn
    i8 3, label %bb.afo
    i8 4, label %bb.aju
    i8 5, label %bb.aka
    i8 6, label %bb.akg
  ]

bb.afj:                                           ; preds = %.thread1942, %bb.afi
  %i.dbk = phi ptr [ %i.dbh, %.thread1942 ], [ %i.dbj, %bb.afi ] ; 3 uses
  %i.dbl = phi ptr [ %i.dbg, %.thread1942 ], [ %i.dbi, %bb.afi ] ; 4 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dbn = load ptr, ptr %i.dbl, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  store ptr %i.dbn, ptr %i.dbm, align 8, !noalias !40913
  %i.dbo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %3 = load <2 x ptr>, ptr %i.dbp, align 8, !noalias !40913
  store <2 x ptr> %3, ptr %i.dbo, align 8, !noalias !40913
  %i.dbq = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dbs = load i32, ptr %i.dbr, align 8, !noalias !40913, !noundef !68
  store i32 %i.dbs, ptr %i.dbq, align 4, !noalias !40913
  %i.dbt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %5 = load ptr, ptr %4, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68
  store ptr %5, ptr %i.dbt, align 8, !noalias !40913
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbn, i64 72
  %i.dbv = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dbu)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCs9KQ7US1M400_11lance_table.exit.i unwind label %bb.afl ; 3 uses

bb.afk:                                           ; preds = %bb.akk, %bb.akh, %bb.ake, %bb.akb, %bb.ajy, %bb.ajv, %.body.i473, %bb.ajr, %bb.ajo, %bb.afl
  %i.dbw = phi ptr [ %i.dsa, %bb.akb ], [ %i.drj, %bb.ajv ], [ %i.drf, %.body.i473 ], [ %i.dqn, %bb.ajr ], [ %i.dbk, %bb.afl ], [ %i.ddy, %bb.ajo ], [ %i.drj, %bb.ajy ], [ %i.dsa, %bb.ake ], [ %i.dsr, %bb.akk ], [ %i.dsr, %bb.akh ]
  %i.dbx = phi ptr [ %i.dsb, %bb.akb ], [ %i.drk, %bb.ajv ], [ %i.drg, %.body.i473 ], [ %i.dqo, %bb.ajr ], [ %i.dbl, %bb.afl ], [ %i.ddz, %bb.ajo ], [ %i.drk, %bb.ajy ], [ %i.dsb, %bb.ake ], [ %i.dss, %bb.akk ], [ %i.dss, %bb.akh ]
  %.pn33.pn.i = phi { ptr, i32 } [ %i.dse, %bb.akb ], [ %i.drn, %bb.ajv ], [ %.pn11.i474, %.body.i473 ], [ %i.dqu, %bb.ajr ], [ %i.dby, %bb.afl ], [ %i.dqm, %bb.ajo ], [ %i.dro, %bb.ajy ], [ %i.dsf, %bb.ake ], [ %i.dsw, %bb.akk ], [ %i.dsv, %bb.akh ]
  store i8 2, ptr %i.dbw, align 8, !noalias !40913
  br label %.body532

bb.afl:                                           ; preds = %bb.afj
  %i.dby = landingpad { ptr, i32 }
          cleanup
  br label %bb.afk

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.afj
  %i.dbz = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.dbv, ptr %i.dbz, align 8, !noalias !40913
  %i.dca = load ptr, ptr %i.dbm, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68 ; 5 uses
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 112
  %i.dcc = load i32, ptr %i.dcb, align 8, !range !118, !noundef !68
  %.not.i.i527 = icmp eq i32 %i.dcc, -1
  br i1 %.not.i.i527, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i, label %.thread.i528

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCs9KQ7US1M400_11lance_table.exit.i
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dca, i64 632
  %i.dce = load ptr, ptr %i.dcd, align 8, !noundef !68
  %.not.i531 = icmp eq ptr %i.dce, null
  br i1 %.not.i531, label %bb.ajp, label %.thread.i528

.thread.i528:                                     ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCs9KQ7US1M400_11lance_table.exit.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCs9KQ7US1M400_11lance_table.exit.i
  %i.dcf = load ptr, ptr %i.dbo, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68
  %.val39.i529 = load ptr, ptr %i.dcf, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dcg = getelementptr inbounds nuw i8, ptr %.val39.i529, i64 16 ; 2 uses
  %i.dch = load ptr, ptr %2, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.dci = load i32, ptr %i.dbq, align 4, !noalias !40913, !noundef !68 ; 2 uses
  %i.dcj = load ptr, ptr %i.dbt, align 8, !noalias !40913, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.dbv, ptr %.sroa.748.0..sroa_idx.i, align 8, !noalias !40913
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.dca, ptr %.sroa.950.0..sroa_idx.i, align 8, !noalias !40913
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.dcg, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !40913
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.dch, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !40913
  %.sroa.12.0..sroa_idx.i530 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.dcj, ptr %.sroa.12.0..sroa_idx.i530, align 8, !noalias !40913
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %i.dci, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !40913
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !40913
  %i.dck = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dcl = insertelement <2 x ptr> poison, ptr %i.dcg, i64 0
  %i.dcm = insertelement <2 x ptr> %i.dcl, ptr %i.dch, i64 1
  br label %bb.afp

bb.afm:                                           ; preds = %bb.afi
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748) #80
          to label %.noexc534 unwind label %bb.akl

.noexc534:                                        ; preds = %bb.afm
  unreachable

bb.afn:                                           ; preds = %bb.afi
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748) #80
          to label %.noexc535 unwind label %bb.akl

.noexc535:                                        ; preds = %bb.afn
  unreachable

bb.afo:                                           ; preds = %bb.afi
  %.phi.trans.insert.i470 = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %.pre.i471 = load i8, ptr %.phi.trans.insert.i470, align 8, !range !126, !noalias !40914
  %i.dcn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40915)
  switch i8 %.pre.i471, label %default.unreachable1920 [
    i8 0, label %._crit_edge1701
    i8 1, label %bb.afs
    i8 2, label %bb.aft
    i8 3, label %bb.ahi
    i8 4, label %bb.afu
  ]

._crit_edge1701:                                  ; preds = %bb.afo
  %.phi.trans.insert1702 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.pre1703 = load ptr, ptr %.phi.trans.insert1702, align 8, !noalias !40914
  %.phi.trans.insert1704 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dco = load <2 x ptr>, ptr %.phi.trans.insert1704, align 8, !noalias !40914
  %.phi.trans.insert1708 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.pre1709 = load i32, ptr %.phi.trans.insert1708, align 8, !noalias !40914
  %.phi.trans.insert1710 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre1711 = load i64, ptr %.phi.trans.insert1710, align 8, !noalias !40914
  %.phi.trans.insert1712 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.pre1713 = load ptr, ptr %.phi.trans.insert1712, align 8, !noalias !40914
  br label %bb.afp

bb.afp:                                           ; preds = %._crit_edge1701, %.thread.i528
  %i.dcp = phi ptr [ %i.dbk, %.thread.i528 ], [ %i.dbj, %._crit_edge1701 ] ; 2 uses
  %i.dcq = phi ptr [ %i.dbl, %.thread.i528 ], [ %i.dbi, %._crit_edge1701 ] ; 2 uses
  %i.dcr = phi ptr [ %i.dcj, %.thread.i528 ], [ %.pre1713, %._crit_edge1701 ]
  %i.dcs = phi i64 [ %i.dbv, %.thread.i528 ], [ %.pre1711, %._crit_edge1701 ]
  %i.dct = phi i32 [ %i.dci, %.thread.i528 ], [ %.pre1709, %._crit_edge1701 ] ; 2 uses
  %i.dcu = phi ptr [ %i.dca, %.thread.i528 ], [ %.pre1703, %._crit_edge1701 ] ; 4 uses
  %i.dcv = phi ptr [ %.sroa.15.0..sroa_idx.i, %.thread.i528 ], [ %.phi.trans.insert.i470, %._crit_edge1701 ] ; 2 uses
  %i.dcw = phi ptr [ %i.dck, %.thread.i528 ], [ %i.dcn, %._crit_edge1701 ] ; 2 uses
  %i.dcx = phi <2 x ptr> [ %i.dcm, %.thread.i528 ], [ %i.dco, %._crit_edge1701 ]
  %i.dcy = getelementptr inbounds nuw i8, ptr %0, i64 486
  store i8 0, ptr %i.dcy, align 2, !noalias !40914
  %i.dcz = getelementptr inbounds nuw i8, ptr %0, i64 487
  store i8 0, ptr %i.dcz, align 1, !noalias !40914
  %i.dda = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.dcu, ptr %i.dda, align 8, !noalias !40914
  %i.ddb = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x ptr> %i.dcx, ptr %i.ddb, align 8, !noalias !40914
  %i.ddc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.dcs, ptr %i.ddc, align 8, !noalias !40914
  %i.ddd = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.dcr, ptr %i.ddd, align 8, !noalias !40914
  %i.dde = getelementptr i8, ptr %i.dcu, i64 104
  %.val45.i.i = load i64, ptr %i.dde, align 8
  %i.ddf = getelementptr i8, ptr %i.dcu, i64 112
  %.val46.i.i = load i32, ptr %i.ddf, align 8, !range !118, !noundef !68
  %i.ddg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store i64 %.val45.i.i, ptr %i.ddg, align 8, !noalias !40914
  %i.ddh = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.val46.i.i, ptr %i.ddh, align 8, !noalias !40914
  %i.ddi = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ddg, ptr %i.ddi, align 8, !noalias !40914
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcu, i64 552
  %i.ddk = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ddj)
          to label %bb.afr unwind label %bb.afq   ; 2 uses

.body.i.i472:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i, %bb.agp, %bb.ago, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i, %bb.afq
  %i.ddl = phi ptr [ %i.ddy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i ], [ %i.dgl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i ], [ %i.ddy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i ], [ %i.ddy, %bb.ago ], [ %i.dcp, %bb.afq ], [ %i.ddy, %bb.agp ]
  %i.ddm = phi ptr [ %i.ddz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i ], [ %i.dgm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i ], [ %i.ddz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i ], [ %i.ddz, %bb.ago ], [ %i.dcq, %bb.afq ], [ %i.ddz, %bb.agp ]
  %i.ddn = phi ptr [ %i.dea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i ], [ %i.dgn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i ], [ %i.dea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i ], [ %i.dea, %bb.ago ], [ %i.dcv, %bb.afq ], [ %i.dea, %bb.agp ]
  %i.ddo = phi ptr [ %i.deb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i ], [ %i.dgo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i ], [ %i.deb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i ], [ %i.deb, %bb.ago ], [ %i.dcw, %bb.afq ], [ %i.deb, %bb.agp ]
  %.pn33.pn.i.i = phi { ptr, i32 } [ %.pn33.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit68.i.i ], [ %.pn29.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit72.i.i ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit55.i.i ], [ %i.dhc, %bb.ago ], [ %i.ddp, %bb.afq ], [ %i.dhc, %bb.agp ]
  store i8 2, ptr %i.ddn, align 8, !noalias !40914
  br label %.body.i473

bb.afq:                                           ; preds = %bb.afp
  %i.ddp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i472

bb.afr:                                           ; preds = %bb.afp
  %i.ddq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ddr = extractvalue { i64, i64 } %i.ddk, 0
  %i.dds = extractvalue { i64, i64 } %i.ddk, 1
  store i64 %i.ddr, ptr %i.ddq, align 8, !noalias !40914
  %i.ddt = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.dds, ptr %i.ddt, align 8, !noalias !40914
  %i.ddu = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.ddq, ptr %i.ddu, align 8, !noalias !40914
  %i.ddv = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i8 1, ptr %i.ddv, align 4, !noalias !40914
  %i.ddw = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.ddw, align 8, !noalias !40914
  %i.ddx = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.dct, ptr %i.ddx, align 4, !noalias !40914
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476, %bb.afr
  %i.ddy = phi ptr [ %i.dcp, %bb.afr ], [ %i.dfm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ] ; 9 uses
  %i.ddz = phi ptr [ %i.dcq, %bb.afr ], [ %i.dfn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ] ; 9 uses
  %i.dea = phi ptr [ %i.dcv, %bb.afr ], [ %i.dfo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ] ; 8 uses
  %i.deb = phi ptr [ %i.dcw, %bb.afr ], [ %i.dfp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ] ; 12 uses
  %i.dec = phi i32 [ %i.dct, %bb.afr ], [ %.pre143.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ]
  %i.ded = phi i32 [ 0, %bb.afr ], [ %.pre.i.i477, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit.i.i476 ] ; 2 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 388
  call void @llvm.experimental.noalias.scope.decl(metadata !40916)
  call void @llvm.experimental.noalias.scope.decl(metadata !40917)
  %i.deg = icmp ult i32 %i.ded, %i.dec
  br i1 %i.deg, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.deh = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.dei = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i480 = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dej = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 3 uses
  br label %bb.agl

bb.afs:                                           ; preds = %bb.afo
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #80
          to label %.noexc.i526 unwind label %bb.ajl

.noexc.i526:                                      ; preds = %bb.afs
  unreachable

bb.aft:                                           ; preds = %bb.afo
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #80
          to label %.noexc43.i unwind label %bb.ajl

.noexc43.i:                                       ; preds = %bb.aft
  unreachable

bb.afu:                                           ; preds = %bb.aiw, %bb.afo
  %i.del = phi ptr [ %i.dkk, %bb.aiw ], [ %i.dbj, %bb.afo ] ; 4 uses
  %i.dem = phi ptr [ %i.dkl, %bb.aiw ], [ %i.dbi, %bb.afo ] ; 3 uses
  %i.den = phi ptr [ %i.dkm, %bb.aiw ], [ %.phi.trans.insert.i470, %bb.afo ] ; 4 uses
  %i.deo = phi ptr [ %i.dkn, %bb.aiw ], [ %i.dcn, %bb.afo ] ; 3 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.deq = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1a_16CachedReaderDataE20notify_entry_removal0Cs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dep, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.afw unwind label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.der = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1M_16CachedReaderDataE20notify_entry_removal0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dep) #81
          to label %bb.ajg unwind label %bb.ais

bb.afw:                                           ; preds = %bb.afu
  br i1 %i.deq, label %bb.ajm, label %bb.afx

bb.afx:                                           ; preds = %bb.afw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1M_16CachedReaderDataE20notify_entry_removal0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dep)
          to label %._crit_edge146.i.i unwind label %bb.afy

._crit_edge146.i.i:                               ; preds = %bb.afx
  %.phi.trans.insert147.i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.pre148.i.i = load ptr, ptr %.phi.trans.insert147.i.i, align 8, !noalias !40914
  br label %bb.afz

bb.afy:                                           ; preds = %bb.afx
  %i.des = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajg

bb.afz:                                           ; preds = %bb.aiv, %._crit_edge146.i.i
  %i.det = phi ptr [ %i.del, %._crit_edge146.i.i ], [ %i.dkk, %bb.aiv ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB7_29ExternalManifestCommitHandlerNtB9_13CommitHandler24resolve_version_location0Bd_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %i.ar, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.as, ptr %i.au, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #80
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #80
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.val64 = load ptr, ptr %i.aw, align 8
  %.val65 = load ptr, ptr %i.ax, align 8, !nonnull !68, !align !73, !noundef !68
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr %.val64, ptr nonnull %.val65) #81
          to label %.body unwind label %bb.ab

bb.i:                                             ; preds = %._crit_edge, %bb.e
  %.val77 = phi ptr [ %.val77.pre, %._crit_edge ], [ %i.as, %bb.e ]
  %.val76 = phi ptr [ %.val76.pre, %._crit_edge ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 4 uses
  %i.ax = getelementptr i8, ptr %1, i64 352       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val77, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !68, !noalias !44006, !nonnull !68
  invoke void %i.az(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.s, ptr noundef nonnull %.val76, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_.exit unwind label %bb.h, !inline_history !40

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_.exit: ; preds = %bb.i
  %i.ba = load i64, ptr %i.s, align 8, !range !176, !noundef !68
  %i.bb = icmp eq i64 %i.ba, -2
  br i1 %i.bb, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.ee, %bb.ea, %bb.di, %bb.db, %bb.bo, %bb.au, %bb.af, %bb.j
  %.sink = phi i8 [ 9, %bb.ee ], [ 1, %bb.ea ], [ 8, %bb.di ], [ 7, %bb.db ], [ 6, %bb.bo ], [ 5, %bb.au ], [ 4, %bb.af ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.t, align 1
  ret void

bb.j:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 341 ; 2 uses
  store i8 1, ptr %i.bd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.val62 = load ptr, ptr %i.aw, align 8          ; 5 uses
  %.val63 = load ptr, ptr %i.ax, align 8, !nonnull !68, !align !73, !noundef !68 ; 5 uses
  %i.be = load ptr, ptr %.val63, align 8, !invariant.load !68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  invoke void %i.be(ptr noundef nonnull %.val62)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.val63, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !72, !invariant.load !68 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.val63, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !94, !invariant.load !68
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val63, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !72, !invariant.load !68 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val63, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !94, !invariant.load !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) %i.bp) #76
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  %i.bq = load i64, ptr %i.bc, align 8, !range !97, !noundef !68
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !range !142, !noundef !68
  %i.bu = icmp eq i8 %i.bt, 16
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i64 80, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 337 ; 2 uses
  store i8 1, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.by = invoke { ptr, i64 } @_RNvMNtCs3PfUT229lOd_12object_store4pathNtB2_4Path9extension(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.r:                                             ; preds = %bb.p
  %i.ca = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.by, 1
  %.not.i85 = icmp ne ptr %i.ca, null
  %i.cc = icmp eq i64 %i.cb, 8
  %or.cond.i = select i1 %.not.i85, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit, label %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread

_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.r
  %i.cd = load i64, ptr %i.ca, align 1
  %i.ce = icmp ne i64 %i.cd, 8391162021251277165
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.y, label %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread

_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.r, %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit
  %i.ch = invoke { ptr, i64 } @_RNvMNtCs3PfUT229lOd_12object_store4pathNtB2_4Path8filename(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.t:                                             ; preds = %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread
  %i.cj = extractvalue { ptr, i64 } %i.ch, 0      ; 2 uses
  %.not.i44 = icmp eq ptr %i.cj, null
  br i1 %.not.i44, label %bb.u, label %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionReE6unwrapCs9KQ7US1M400_11lance_table.exit46, !prof !71

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @851) #80
          to label %.noexc45 unwind label %bb.v

.noexc45:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body127

_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionReE6unwrapCs9KQ7US1M400_11lance_table.exit46: ; preds = %bb.t
  %i.cl = extractvalue { ptr, i64 } %i.ch, 1
  %i.cm = call noundef zeroext i1 @_RNvMNtNtCs9KQ7US1M400_11lance_table2io6commitNtB2_20ManifestNamingScheme21detect_scheme_staging(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.co = zext i1 %i.cm to i8
  store i8 %i.co, ptr %i.cn, align 8
  %i.cp = load i64, ptr %i.bv, align 8, !range !76, !noundef !68
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionReE6unwrapCs9KQ7US1M400_11lance_table.exit46
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECs9KQ7US1M400_11lance_table.exit

bb.x:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionReE6unwrapCs9KQ7US1M400_11lance_table.exit46
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.cu = load <2 x ptr>, ptr %i.ct, align 8
  store <2 x ptr> %i.cu, ptr %i.aw, align 8
  %.sroa.9268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.bx, ptr %.sroa.9268.0..sroa_idx, align 8
  %.sroa.11270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %.sroa.11270.0..sroa_idx, align 8
  br label %bb.dg

.body127:                                         ; preds = %bb.cy, %bb.dd, %bb.eb, %bb.eg, %bb.df, %bb.ds, %bb.dn, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i124, %bb.q, %bb.v, %bb.s
  %.pn16.pn = phi { ptr, i32 } [ %i.mt, %bb.eb ], [ %i.lm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i124 ], [ %i.ci, %bb.s ], [ %i.bz, %bb.q ], [ %i.ck, %bb.v ], [ %i.mg, %bb.ds ], [ %i.lm, %bb.dn ], [ %i.kv, %bb.df ], [ %i.mx, %bb.eg ], [ %i.kr, %bb.dd ], [ %i.kn, %bb.cy ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 337
  %i.cw = load i8, ptr %i.cv, align 1, !range !77, !noundef !68
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ek, label %bb.cx

bb.y:                                             ; preds = %_RNvXsf_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !68, !align !73, !noundef !68
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !68, !align !73, !noundef !68
  store i8 0, ptr %i.bw, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 80, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr %i.cz, ptr %.sroa.7237.0..sroa_idx, align 8
  %.sroa.8238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.db, ptr %.sroa.8238.0..sroa_idx, align 8
  %.sroa.9239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  %3 = load <2 x ptr>, ptr %i.dc, align 8
  store <2 x ptr> %3, ptr %.sroa.9239.0..sroa_idx, align 8
  %.sroa.12242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i8 0, ptr %.sroa.12242.0..sroa_idx, align 8
  br label %bb.cz

bb.z:                                             ; preds = %bb.o
  store i8 0, ptr %i.bd, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false)
  store i64 -1, ptr %i.e, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationEBH_.exit

bb.aa:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11144.sroa.15.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.0)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !68, !align !73, !noundef !68
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !68
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.9169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.dj = load <2 x ptr>, ptr %i.di, align 8
  store <2 x ptr> %i.dj, ptr %.sroa.9169.0..sroa_idx, align 8
  %.sroa.11171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 %i.dh, ptr %.sroa.11171.0..sroa_idx, align 8
  %.sroa.13172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.df, ptr %.sroa.13172.0..sroa_idx, align 8
  %.sroa.15174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 466
  store i8 0, ptr %.sroa.15174.0..sroa_idx, align 2
  br label %bb.ad

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationEBH_.exit: ; preds = %bb.dw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i134, %bb.de, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit107, %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dm = load i64, ptr %i.dl, align 8, !range !97, !noundef !68
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %bb.dx, label %bb.ea

bb.ab:                                            ; preds = %bb.h, %bb.bm, %bb.em, %bb.eb, %bb.df, %bb.cy, %bb.cu, %bb.bw, %bb.ar, %bb.ac
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

.body:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n, %bb.h, %bb.d, %bb.em, %bb.el, %bb.dz, %bb.cx
  %.pn42 = phi { ptr, i32 } [ %i.mr, %bb.dz ], [ %.pn37.pn.pn, %bb.cx ], [ %.pn37.pn.pn, %bb.em ], [ %.pn37.pn.pn, %bb.el ], [ %i.bk, %bb.n ], [ %i.av, %bb.h ], [ %i.bk, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.aq, %bb.d ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 341
  store i8 0, ptr %i.dp, align 1
  store i8 2, ptr %i.t, align 1
  resume { ptr, i32 } %.pn42

bb.ac:                                            ; preds = %bb.ad
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit23default_resolve_version0EBJ_(ptr noundef nonnull align 8 %i.dr) #81
          to label %.body86 unwind label %bb.ab

bb.ad:                                            ; preds = %bb.b, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 4 uses
  invoke fastcc void @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit23default_resolve_version0B7_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.r, ptr noundef nonnull align 8 %i.dr, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i64, ptr %i.r, align 8, !range !176, !noundef !68 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, -2
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11144.sroa.15.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.0)
  br label %common.ret

bb.ag:                                            ; preds = %bb.ae
  %.sroa.3176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3176.0.copyload = load i8, ptr %.sroa.3176.0..sroa_idx, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177.0..sroa_idx, i64 7, i1 false)
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6178.0.copyload = load ptr, ptr %.sroa.6178.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7179.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7179.0..sroa_idx, i64 16, i1 false)
  %.sroa.7179.sroa.3.0..sroa.7179.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.7179.sroa.3.0.copyload = load i64, ptr %.sroa.7179.sroa.3.0..sroa.7179.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.8180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.8180.sroa.0.0.copyload = load ptr, ptr %.sroa.8180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8180.sroa.3.0..sroa.8180.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.8180.sroa.3.0.copyload = load i64, ptr %.sroa.8180.sroa.3.0..sroa.8180.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit23default_resolve_version0EBJ_(ptr noundef nonnull align 8 %i.dr)
          to label %bb.ai unwind label %bb.ah

.body86:                                          ; preds = %bb.am, %bb.ak, %bb.ah, %bb.ac
  %.pn21 = phi { ptr, i32 } [ %i.du, %bb.ah ], [ %i.dq, %bb.ac ], [ %i.eb, %bb.am ], [ %i.dz, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11144.sroa.15.sroa.0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit119

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body86

bb.ai:                                            ; preds = %bb.ag
  %i.dv = icmp eq i64 %i.ds, -1
  br i1 %i.dv, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44007
  store i8 %.sroa.3176.0.copyload, ptr %i.d, align 8, !noalias !44008
  %.sroa.5177.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177, i64 7, i1 false), !noalias !44008
  %.sroa.6178.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.6178.0.copyload, ptr %.sroa.6178.8..sroa_idx, align 8, !noalias !44008
  %.sroa.7179.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7179.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7179.sroa.0, i64 16, i1 false), !noalias !44008
  %.sroa.7179.sroa.3.0..sroa.7179.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.7179.sroa.3.0.copyload, ptr %.sroa.7179.sroa.3.0..sroa.7179.8..sroa_idx.sroa_idx, align 8, !noalias !44008
  %.sroa.8180.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8180.sroa.0.0.copyload, ptr %.sroa.8180.8..sroa_idx, align 8, !noalias !44008
  %.sroa.8180.sroa.3.0..sroa.8180.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %.sroa.8180.sroa.3.0.copyload, ptr %.sroa.8180.sroa.3.0..sroa.8180.8..sroa_idx.sroa_idx, align 8, !noalias !44008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44009
  store ptr %i.dx, ptr %i.b, align 8, !noalias !44009
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !44009
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dw, ptr %i.dy, align 8, !noalias !44009
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !44009
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @552, ptr noundef nonnull %i.b)
          to label %_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler24resolve_version_location00Bf_.exit.i unwind label %bb.ak, !noalias !44010

bb.ak:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #81
          to label %.body86 unwind label %bb.al, !noalias !44011

bb.al:                                            ; preds = %bb.ak
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !44011
  unreachable

_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler24resolve_version_location00Bf_.exit.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !44012
  %.sroa.14.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.sroa.10.0.copyload = load i64, ptr %.sroa.14.sroa.10.0..sroa_idx, align 8, !noalias !44012
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.aq unwind label %bb.am

bb.am:                                            ; preds = %_RNCNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB9_29ExternalManifestCommitHandlerNtBb_13CommitHandler24resolve_version_location00Bf_.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body86

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.0)
  %.sroa.0.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.12.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7179.sroa.0, i64 16, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 340
  store i8 1, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  store ptr %.sroa.6178.0.copyload, ptr %i.ed, align 8
  %.0.val.off.i = add i64 %.sroa.7179.sroa.3.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8180.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8180.sroa.0.0.copyload, i64 noundef %.sroa.7179.sroa.3.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !44013
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11144.sroa.15.sroa.0)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ef = load <2 x ptr>, ptr %i.ee, align 8
  store <2 x ptr> %i.ef, ptr %i.dr, align 8
  %.sroa.10214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.ed, ptr %.sroa.10214.0..sroa_idx, align 8
  %.sroa.12215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %.sroa.12215.0..sroa_idx, align 8
  br label %bb.as

.body89:                                          ; preds = %bb.cq, %bb.ct, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit113.thread, %bb.ba, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.az, %bb.cu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit113, %bb.cr, %bb.ar
  %.pn34 = phi { ptr, i32 } [ %.pn30.pn, %bb.ct ], [ %i.fe, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.pn30.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit113.thread ], [ %i.fe, %bb.az ], [ %.pn30.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit113 ], [ %.pn30.pn, %bb.cu ], [ %.pn30.pn, %bb.cr ], [ %i.eo, %bb.ar ], [ %i.fk, %bb.ba ], [ %.pn30.pn, %bb.cq ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 338
  store i8 0, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 339
  store i8 0, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ej = load i8, ptr %i.ei, align 4, !range !77, !noundef !68
end_hunk_1
