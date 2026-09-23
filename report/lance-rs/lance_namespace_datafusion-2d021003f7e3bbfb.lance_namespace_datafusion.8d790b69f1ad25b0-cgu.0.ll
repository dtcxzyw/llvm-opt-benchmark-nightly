Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a

bb.aep:                                           ; preds = %bb.adq
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i.i.i410, i64 noundef %i.cwm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #48
          to label %.noexc51.i unwind label %bb.aer

.noexc51.i:                                       ; preds = %bb.aep
  unreachable

bb.aeq:                                           ; preds = %bb.aez, %bb.aex, %.body49.i389, %bb.adi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit53.i, %.body44.i391, %bb.ack
  %i.czn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.aer:                                           ; preds = %bb.aep, %bb.aem, %bb.adr
  %i.czo = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i389

bb.aes:                                           ; preds = %bb.aem, %bb.ael, %bb.aek, %bb.aej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !33416
  store ptr %.sroa.035.1.i.i.i.i, ptr %i.cwe, align 8, !noalias !33347
  %.not15.i = icmp eq ptr %.sroa.035.1.i.i.i.i, null
  br i1 %.not15.i, label %bb.acr, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.czp = getelementptr inbounds nuw i8, ptr %0, i64 337
  store i8 1, ptr %i.czp, align 1, !noalias !33347
  %i.czq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %.sroa.035.1.i.i.i.i, ptr %i.czq, align 8, !noalias !33347
  %i.czr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.czs = load ptr, ptr %i.czr, align 8, !noalias !33347, !nonnull !111, !align !127, !noundef !111 ; 3 uses
  %i.czt = getelementptr i8, ptr %i.czs, i64 24
  %.val38.i430 = load ptr, ptr %i.czt, align 8, !align !127, !noundef !111
  %.not95.i = icmp eq ptr %.val38.i430, null
  br i1 %.not95.i, label %bb.aco, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.czu = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.czu, align 8, !noalias !33347
  %i.czv = load ptr, ptr %i.cwc, align 8, !noalias !33347, !nonnull !111, !noundef !111
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.czs, ptr %.sroa.787.0..sroa_idx.i, align 8, !noalias !33347
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.czv, ptr %.sroa.888.0..sroa_idx.i, align 8, !noalias !33347
  %.sroa.989.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.czq, ptr %.sroa.989.0..sroa_idx.i, align 8, !noalias !33347
  %.sroa.1191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 0, ptr %.sroa.1191.0..sroa_idx.i, align 1, !noalias !33347
  %.sroa.1292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 458
  store i8 0, ptr %.sroa.1292.0..sroa_idx.i, align 2, !noalias !33347
  br label %bb.acj

.body49.i389:                                     ; preds = %bb.aew, %bb.aer, %.thread.i.i.i.i412
  %i.czw = phi ptr [ %i.dac, %bb.aew ], [ %i.cvw, %bb.aer ], [ %i.cvw, %.thread.i.i.i.i412 ]
  %i.czx = phi ptr [ %i.dad, %bb.aew ], [ %i.cvx, %bb.aer ], [ %i.cvx, %.thread.i.i.i.i412 ]
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22.i, %bb.aew ], [ %i.czo, %bb.aer ], [ %.pn.i.i.i.i413, %.thread.i.i.i.i412 ]
  %i.czy = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val35.i390 = load ptr, ptr %i.czy, align 8, !noalias !33347, !align !127, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val35.i390) #49
          to label %.body44.i391 unwind label %bb.aeq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit43.i: ; preds = %bb.add, %bb.adc
  store i8 0, ptr %i.csq, align 8, !noalias !33347
  %i.czz = load ptr, ptr %i.csn, align 8, !alias.scope !33429, !noalias !33430, !nonnull !111, !noundef !111
  %i.daa = load ptr, ptr %i.cso, align 8, !alias.scope !33429, !noalias !33430, !nonnull !111, !noundef !111 ; 2 uses
  %i.dab = icmp eq ptr %i.daa, %i.czz
  br i1 %i.dab, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEybEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEybEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.aev:                                           ; preds = %bb.acp, %bb.acn, %bb.ack
  %i.dac = phi ptr [ %i.ctb, %bb.acp ], [ %i.csv, %bb.acn ], [ %i.csv, %bb.ack ]
  %i.dad = phi ptr [ %i.ctc, %bb.acp ], [ %i.csw, %bb.acn ], [ %i.csw, %bb.ack ]
  %.pn22.i = phi { ptr, i32 } [ %i.cto, %bb.acp ], [ %i.cta, %bb.acn ], [ %i.csz, %bb.ack ]
  %i.dae = getelementptr inbounds nuw i8, ptr %0, i64 337 ; 2 uses
  %i.daf = load i8, ptr %i.dae, align 1, !range !115, !noalias !33347, !noundef !111
  %i.dag = trunc nuw i8 %i.daf to i1
  br i1 %i.dag, label %bb.aex, label %bb.aew

bb.aew:                                           ; preds = %bb.aex, %bb.aev
  store i8 0, ptr %i.dae, align 1, !noalias !33347
  br label %.body49.i389

bb.aex:                                           ; preds = %bb.aev
  %i.dah = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val.i394 = load ptr, ptr %i.dah, align 8, !noalias !33347, !nonnull !111, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val.i394) #49
          to label %bb.aew unwind label %bb.aeq

bb.aey:                                           ; preds = %bb.acu
  %i.dai = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33431)
  call void @llvm.experimental.noalias.scope.decl(metadata !33432)
  %i.daj = load ptr, ptr %i.dai, align 8, !alias.scope !33433, !noalias !33347, !nonnull !111, !noundef !111
  %i.dak = atomicrmw sub ptr %i.daj, i64 1 release, align 8, !noalias !33433
  %i.dal = icmp eq i64 %i.dak, 1
  br i1 %i.dal, label %bb.aez, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit53.i

bb.aez:                                           ; preds = %bb.aey
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dai)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit53.i unwind label %bb.aeq

bb.afa:                                           ; preds = %bb.aci, %bb.ach
  %i.dam = landingpad { ptr, i32 }
          cleanup
  br label %.body461

bb.afb:                                           ; preds = %bb.acl, %bb.adj
  %i.dan = phi ptr [ %i.cvc, %bb.adj ], [ %i.csv, %bb.acl ]
  %.sink.i450.ph = phi i8 [ 3, %bb.adj ], [ 4, %bb.acl ]
  store i8 %.sink.i450.ph, ptr %i.dan, align 2, !noalias !33347
  br label %common.ret

bb.afc:                                           ; preds = %.loopexit139.i
  store i8 1, ptr %i.csi, align 2, !noalias !33347
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.csj)
          to label %bb.abe unwind label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  %i.dao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit686

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.abe
  %i.dap = getelementptr inbounds nuw i8, ptr %i.cpb, i64 128
  %i.daq = load i32, ptr %i.dap, align 8, !range !173, !noundef !111
  %.not902 = icmp eq i32 %i.daq, -1
  br i1 %.not902, label %bb.afe, label %.thread1942

bb.afe:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.dar = getelementptr inbounds nuw i8, ptr %i.cpb, i64 552
  %i.das = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dar)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  %i.dat = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1D_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit686

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.afe
  br i1 %i.das, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread_crit_edge, label %bb.afg

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread_crit_edge: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.pre1697 = load ptr, ptr %i.cpa, align 8
  br label %.thread1942

bb.afg:                                           ; preds = %bb.akm, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.dau = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dav = load ptr, ptr %i.dau, align 8, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dav, i64 632 ; 2 uses
  %i.dax = load ptr, ptr %i.daw, align 8, !noundef !111
  %.not70 = icmp eq ptr %i.dax, null
  br i1 %.not70, label %bb.akn, label %bb.ako

.thread1942:                                      ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.abe, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread_crit_edge
  %i.day = phi ptr [ %.pre1697, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterCsc93vp1BCDlY_26lance_namespace_datafusion.exit._RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread_crit_edge ], [ %i.cpb, %bb.abe ], [ %i.cpb, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE10has_expiryCsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %i.daz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val128 = load ptr, ptr %i.daz, align 8, !nonnull !111, !align !127, !noundef !111
  %i.dba = getelementptr inbounds nuw i8, ptr %.val128, i64 16
  %i.dbb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dbc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dbd = load i32, ptr %i.dbc, align 4, !noundef !111
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
  br label %bb.afi

bb.afh:                                           ; preds = %bb.a
  %.phi.trans.insert1699 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre1700 = load i8, ptr %.phi.trans.insert1699, align 8, !range !183, !noalias !33434
  %i.dbi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33434)
  %i.dbj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  switch i8 %.pre1700, label %default.unreachable1920 [
    i8 0, label %bb.afi
    i8 1, label %bb.afl
    i8 2, label %bb.afm
    i8 3, label %bb.afn
    i8 4, label %bb.ajt
    i8 5, label %bb.ajz
    i8 6, label %bb.akf
  ]

bb.afi:                                           ; preds = %.thread1942, %bb.afh
  %i.dbk = phi ptr [ %i.dbh, %.thread1942 ], [ %i.dbj, %bb.afh ] ; 3 uses
  %i.dbl = phi ptr [ %i.dbg, %.thread1942 ], [ %i.dbi, %bb.afh ] ; 4 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dbn = load ptr, ptr %i.dbl, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %i.dbo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dbp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %2 = load ptr, ptr %i.dbp, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dbq = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dbs = load i32, ptr %i.dbr, align 8, !noalias !33434, !noundef !111
  store i32 %i.dbs, ptr %i.dbq, align 4, !noalias !33434
  %i.dbt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %5 = load <2 x ptr>, ptr %4, align 8, !noalias !33434
  %6 = insertelement <4 x ptr> poison, ptr %i.dbn, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %2, i64 1
  %8 = shufflevector <2 x ptr> %5, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %9, ptr %i.dbm, align 8, !noalias !33434
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbn, i64 72
  %i.dbv = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dbu)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.afk ; 3 uses

bb.afj:                                           ; preds = %bb.akj, %bb.akg, %bb.akd, %bb.aka, %bb.ajx, %bb.aju, %.body.i473, %bb.ajq, %bb.ajn, %bb.afk
  %i.dbw = phi ptr [ %i.dsa, %bb.aka ], [ %i.drj, %bb.aju ], [ %i.drf, %.body.i473 ], [ %i.dqn, %bb.ajq ], [ %i.dbk, %bb.afk ], [ %i.ddy, %bb.ajn ], [ %i.drj, %bb.ajx ], [ %i.dsa, %bb.akd ], [ %i.dsr, %bb.akj ], [ %i.dsr, %bb.akg ]
  %i.dbx = phi ptr [ %i.dsb, %bb.aka ], [ %i.drk, %bb.aju ], [ %i.drg, %.body.i473 ], [ %i.dqo, %bb.ajq ], [ %i.dbl, %bb.afk ], [ %i.ddz, %bb.ajn ], [ %i.drk, %bb.ajx ], [ %i.dsb, %bb.akd ], [ %i.dss, %bb.akj ], [ %i.dss, %bb.akg ]
  %.pn33.pn.i = phi { ptr, i32 } [ %i.dse, %bb.aka ], [ %i.drn, %bb.aju ], [ %.pn11.i474, %.body.i473 ], [ %i.dqu, %bb.ajq ], [ %i.dby, %bb.afk ], [ %i.dqm, %bb.ajn ], [ %i.dro, %bb.ajx ], [ %i.dsf, %bb.akd ], [ %i.dsw, %bb.akj ], [ %i.dsv, %bb.akg ]
  store i8 2, ptr %i.dbw, align 8, !noalias !33434
  br label %.body532

bb.afk:                                           ; preds = %bb.afi
  %i.dby = landingpad { ptr, i32 }
          cleanup
  br label %bb.afj

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.afi
  %i.dbz = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.dbv, ptr %i.dbz, align 8, !noalias !33434
  %i.dca = load ptr, ptr %i.dbm, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111 ; 5 uses
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 112
  %i.dcc = load i32, ptr %i.dcb, align 8, !range !173, !noundef !111
  %.not.i.i527 = icmp eq i32 %i.dcc, -1
  br i1 %.not.i.i527, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.thread.i528

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dca, i64 632
  %i.dce = load ptr, ptr %i.dcd, align 8, !noundef !111
  %.not.i531 = icmp eq ptr %i.dce, null
  br i1 %.not.i531, label %bb.ajo, label %.thread.i528

.thread.i528:                                     ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBZ_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12current_timeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.dcf = load ptr, ptr %i.dbo, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111
  %.val39.i529 = load ptr, ptr %i.dcf, align 8, !nonnull !111, !align !127, !noundef !111
  %i.dcg = getelementptr inbounds nuw i8, ptr %.val39.i529, i64 16 ; 2 uses
  %i.dch = load ptr, ptr %3, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %i.dci = load i32, ptr %i.dbq, align 4, !noalias !33434, !noundef !111 ; 2 uses
  %i.dcj = load ptr, ptr %i.dbt, align 8, !noalias !33434, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.dbv, ptr %.sroa.748.0..sroa_idx.i, align 8, !noalias !33434
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.dca, ptr %.sroa.950.0..sroa_idx.i, align 8, !noalias !33434
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.dcg, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !33434
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.dch, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !33434
  %.sroa.12.0..sroa_idx.i530 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.dcj, ptr %.sroa.12.0..sroa_idx.i530, align 8, !noalias !33434
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %i.dci, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !33434
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !33434
  %i.dck = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dcl = insertelement <2 x ptr> poison, ptr %i.dcg, i64 0
  %i.dcm = insertelement <2 x ptr> %i.dcl, ptr %i.dch, i64 1
  br label %bb.afo

bb.afl:                                           ; preds = %bb.afh
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @511) #48
          to label %.noexc534 unwind label %bb.akk

.noexc534:                                        ; preds = %bb.afl
  unreachable

bb.afm:                                           ; preds = %bb.afh
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @511) #48
          to label %.noexc535 unwind label %bb.akk

.noexc535:                                        ; preds = %bb.afm
  unreachable

bb.afn:                                           ; preds = %bb.afh
  %.phi.trans.insert.i470 = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %.pre.i471 = load i8, ptr %.phi.trans.insert.i470, align 8, !range !140, !noalias !33435
  %i.dcn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33436)
  switch i8 %.pre.i471, label %default.unreachable1920 [
    i8 0, label %._crit_edge1701
    i8 1, label %bb.afr
    i8 2, label %bb.afs
    i8 3, label %bb.ahh
    i8 4, label %bb.aft
  ]

._crit_edge1701:                                  ; preds = %bb.afn
  %.phi.trans.insert1702 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.pre1703 = load ptr, ptr %.phi.trans.insert1702, align 8, !noalias !33435
  %.phi.trans.insert1704 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dco = load <2 x ptr>, ptr %.phi.trans.insert1704, align 8, !noalias !33435
  %.phi.trans.insert1708 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.pre1709 = load i32, ptr %.phi.trans.insert1708, align 8, !noalias !33435
  %.phi.trans.insert1710 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre1711 = load i64, ptr %.phi.trans.insert1710, align 8, !noalias !33435
  %.phi.trans.insert1712 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.pre1713 = load ptr, ptr %.phi.trans.insert1712, align 8, !noalias !33435
  br label %bb.afo

bb.afo:                                           ; preds = %._crit_edge1701, %.thread.i528
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
  store i8 0, ptr %i.dcy, align 2, !noalias !33435
  %i.dcz = getelementptr inbounds nuw i8, ptr %0, i64 487
  store i8 0, ptr %i.dcz, align 1, !noalias !33435
  %i.dda = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.dcu, ptr %i.dda, align 8, !noalias !33435
  %i.ddb = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x ptr> %i.dcx, ptr %i.ddb, align 8, !noalias !33435
  %i.ddc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.dcs, ptr %i.ddc, align 8, !noalias !33435
  %i.ddd = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.dcr, ptr %i.ddd, align 8, !noalias !33435
  %i.dde = getelementptr i8, ptr %i.dcu, i64 104
  %.val45.i.i = load i64, ptr %i.dde, align 8
  %i.ddf = getelementptr i8, ptr %i.dcu, i64 112
  %.val46.i.i = load i32, ptr %i.ddf, align 8, !range !173, !noundef !111
  %i.ddg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store i64 %.val45.i.i, ptr %i.ddg, align 8, !noalias !33435
  %i.ddh = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.val46.i.i, ptr %i.ddh, align 8, !noalias !33435
  %i.ddi = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ddg, ptr %i.ddi, align 8, !noalias !33435
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcu, i64 552
  %i.ddk = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ddj)
          to label %bb.afq unwind label %bb.afp   ; 2 uses

.body.i.i472:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i, %bb.ago, %bb.agn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i, %bb.afp
  %i.ddl = phi ptr [ %i.ddy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i ], [ %i.dgl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i ], [ %i.ddy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i ], [ %i.ddy, %bb.agn ], [ %i.dcp, %bb.afp ], [ %i.ddy, %bb.ago ]
  %i.ddm = phi ptr [ %i.ddz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i ], [ %i.dgm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i ], [ %i.ddz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i ], [ %i.ddz, %bb.agn ], [ %i.dcq, %bb.afp ], [ %i.ddz, %bb.ago ]
  %i.ddn = phi ptr [ %i.dea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i ], [ %i.dgn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i ], [ %i.dea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i ], [ %i.dea, %bb.agn ], [ %i.dcv, %bb.afp ], [ %i.dea, %bb.ago ]
  %i.ddo = phi ptr [ %i.deb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i ], [ %i.dgo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i ], [ %i.deb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i ], [ %i.deb, %bb.agn ], [ %i.dcw, %bb.afp ], [ %i.deb, %bb.ago ]
  %.pn33.pn.i.i = phi { ptr, i32 } [ %.pn33.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit68.i.i ], [ %.pn29.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit72.i.i ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit55.i.i ], [ %i.dhc, %bb.agn ], [ %i.ddp, %bb.afp ], [ %i.dhc, %bb.ago ]
  store i8 2, ptr %i.ddn, align 8, !noalias !33435
  br label %.body.i473

bb.afp:                                           ; preds = %bb.afo
  %i.ddp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i472

bb.afq:                                           ; preds = %bb.afo
  %i.ddq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ddr = extractvalue { i64, i64 } %i.ddk, 0
  %i.dds = extractvalue { i64, i64 } %i.ddk, 1
  store i64 %i.ddr, ptr %i.ddq, align 8, !noalias !33435
  %i.ddt = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.dds, ptr %i.ddt, align 8, !noalias !33435
  %i.ddu = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.ddq, ptr %i.ddu, align 8, !noalias !33435
  %i.ddv = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i8 1, ptr %i.ddv, align 4, !noalias !33435
  %i.ddw = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.ddw, align 8, !noalias !33435
  %i.ddx = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.dct, ptr %i.ddx, align 4, !noalias !33435
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476, %bb.afq
  %i.ddy = phi ptr [ %i.dcp, %bb.afq ], [ %i.dfm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ] ; 9 uses
  %i.ddz = phi ptr [ %i.dcq, %bb.afq ], [ %i.dfn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ] ; 9 uses
  %i.dea = phi ptr [ %i.dcv, %bb.afq ], [ %i.dfo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ] ; 8 uses
  %i.deb = phi ptr [ %i.dcw, %bb.afq ], [ %i.dfp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ] ; 12 uses
  %i.dec = phi i32 [ %i.dct, %bb.afq ], [ %.pre143.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ]
  %i.ded = phi i32 [ 0, %bb.afq ], [ %.pre.i.i477, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i476 ] ; 2 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 388
  call void @llvm.experimental.noalias.scope.decl(metadata !33437)
  call void @llvm.experimental.noalias.scope.decl(metadata !33438)
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
  br label %bb.agk

bb.afr:                                           ; preds = %bb.afn
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @507) #48
          to label %.noexc.i526 unwind label %bb.ajk

.noexc.i526:                                      ; preds = %bb.afr
  unreachable

bb.afs:                                           ; preds = %bb.afn
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @507) #48
          to label %.noexc43.i unwind label %bb.ajk

.noexc43.i:                                       ; preds = %bb.afs
  unreachable

bb.aft:                                           ; preds = %bb.aiv, %bb.afn
  %i.del = phi ptr [ %i.dkk, %bb.aiv ], [ %i.dbj, %bb.afn ] ; 4 uses
  %i.dem = phi ptr [ %i.dkl, %bb.aiv ], [ %i.dbi, %bb.afn ] ; 3 uses
  %i.den = phi ptr [ %i.dkm, %bb.aiv ], [ %.phi.trans.insert.i470, %bb.afn ] ; 4 uses
  %i.deo = phi ptr [ %i.dkn, %bb.aiv ], [ %i.dcn, %bb.afn ] ; 3 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.deq = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1a_16CachedReaderDataE20notify_entry_removal0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dep, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.afv unwind label %bb.afu

bb.afu:                                           ; preds = %bb.aft
  %i.der = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1M_16CachedReaderDataE20notify_entry_removal0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dep) #49
          to label %bb.ajf unwind label %bb.air

bb.afv:                                           ; preds = %bb.aft
  br i1 %i.deq, label %bb.ajl, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs6_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_13EvictionStateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1M_16CachedReaderDataE20notify_entry_removal0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dep)
          to label %._crit_edge146.i.i unwind label %bb.afx

._crit_edge146.i.i:                               ; preds = %bb.afw
  %.phi.trans.insert147.i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.pre148.i.i = load ptr, ptr %.phi.trans.insert147.i.i, align 8, !noalias !33435
  br label %bb.afy

bb.afx:                                           ; preds = %bb.afw
  %i.des = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajf

bb.afy:                                           ; preds = %bb.aiu, %._crit_edge146.i.i
  %i.det = phi ptr [ %i.del, %._crit_edge146.i.i ], [ %i.dkk, %bb.aiu ] ; 2 uses
end_hunk_0
