Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0B15_:bb.a
bb.agv:                                           ; preds = %bb.aep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11120
  %i.djn = load ptr, ptr %i.czl, align 8, !noalias !11120, !nonnull !24, !noundef !24 ; 4 uses
  store ptr %i.djn, ptr %i.al, align 8, !noalias !11120
  %.sroa.04.0.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i472, align 8, !noalias !11120, !noundef !24
  %i.djo = load ptr, ptr %i.czm, align 8, !noalias !11120, !nonnull !24, !align !51, !noundef !24
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djq = load ptr, ptr %i.czk, align 8, !noalias !11120, !nonnull !24, !align !51, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_woB13_(ptr noundef nonnull align 8 %i.djo, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %i.djp, i64 noundef %.sroa.04.0.i.i, ptr noalias noundef align 8 dereferenceable(192) %i.djq)
          to label %bb.agx unwind label %bb.agw

bb.agw:                                           ; preds = %bb.agv
  %i.djr = landingpad { ptr, i32 }
          cleanup
  %i.djs = atomicrmw sub ptr %i.djn, i64 1 release, align 8, !noalias !11151
  %i.djt = icmp eq i64 %i.djs, 1
  br i1 %i.djt, label %bb.agu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit66.i.i

bb.agx:                                           ; preds = %bb.agv
  store i8 0, ptr %i.czn, align 4, !noalias !11120
  %i.dju = atomicrmw sub ptr %i.djn, i64 1 release, align 8, !noalias !11152
  %i.djv = icmp eq i64 %i.dju, 1
  br i1 %i.djv, label %bb.agy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit67.i.i

bb.agy:                                           ; preds = %bb.agx
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit67.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit66.i.i: ; preds = %bb.agw, %bb.agu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11120
  br label %.body.i.i463

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit67.i.i: ; preds = %bb.agy, %bb.agx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11120
  call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  call void @llvm.experimental.noalias.scope.decl(metadata !11154)
  %i.djw = load i32, ptr %i.czh, align 8, !alias.scope !11155, !noalias !11156, !noundef !24 ; 2 uses
  %i.djx = load i32, ptr %i.czi, align 4, !alias.scope !11157, !noalias !11158, !noundef !24
  %i.djy = icmp ult i32 %i.djw, %i.djx
  br i1 %i.djy, label %bb.aei, label %.loopexit.i.i

bb.agz:                                           ; preds = %bb.ady, %bb.adw, %bb.adt
  %i.djz = phi ptr [ %i.czw, %bb.ady ], [ %i.czo, %bb.adw ], [ %i.czo, %bb.adt ]
  %i.dka = phi ptr [ %i.czx, %bb.ady ], [ %i.czp, %bb.adw ], [ %i.czp, %bb.adt ]
  %i.dkb = phi ptr [ %i.czy, %bb.ady ], [ %i.czq, %bb.adw ], [ %i.czq, %bb.adt ]
  %i.dkc = phi ptr [ %i.czz, %bb.ady ], [ %i.czr, %bb.adw ], [ %i.czr, %bb.adt ]
  %.pn22.i.i = phi { ptr, i32 } [ %i.dao, %bb.ady ], [ %i.czv, %bb.adw ], [ %i.czu, %bb.adt ]
  %i.dkd = getelementptr inbounds nuw i8, ptr %0, i64 487 ; 2 uses
  %i.dke = load i8, ptr %i.dkd, align 1, !range !30, !noalias !11120, !noundef !24
  %i.dkf = trunc nuw i8 %i.dke to i1
  br i1 %i.dkf, label %bb.ahb, label %bb.aha

bb.aha:                                           ; preds = %bb.ahb, %bb.agz
  store i8 0, ptr %i.dkd, align 1, !noalias !11120
  br label %.body63.i.i

bb.ahb:                                           ; preds = %bb.agz
  %i.dkg = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val.i.i466 = load ptr, ptr %i.dkg, align 8, !noalias !11120, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_(ptr nonnull %.val.i.i466) #69
          to label %bb.aha unwind label %bb.agm

bb.ahc:                                           ; preds = %bb.aed
  %i.dkh = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11159)
  call void @llvm.experimental.noalias.scope.decl(metadata !11160)
  %i.dki = load ptr, ptr %i.dkh, align 8, !alias.scope !11161, !noalias !11120, !nonnull !24, !noundef !24
  %i.dkj = atomicrmw sub ptr %i.dki, i64 1 release, align 8, !noalias !11161
  %i.dkk = icmp eq i64 %i.dkj, 1
  br i1 %i.dkk, label %bb.ahd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit68.i.i

bb.ahd:                                           ; preds = %bb.ahc
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dkh)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit68.i.i

bb.ahe:                                           ; preds = %bb.adr, %bb.adq
  %i.dkl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i464

bb.ahf:                                           ; preds = %bb.afg, %bb.adu
  %i.dkm = phi ptr [ %i.dee, %bb.afg ], [ %i.czo, %bb.adu ]
  %i.dkn = phi ptr [ %i.deg, %bb.afg ], [ %i.czq, %bb.adu ]
  %.sink.i.ph.i516 = phi i8 [ 3, %bb.afg ], [ 4, %bb.adu ]
  store i8 %.sink.i.ph.i516, ptr %i.dkn, align 8, !noalias !11120
  br label %bb.aif

bb.ahg:                                           ; preds = %bb.aey, %.loopexit.i.i
  store i8 1, ptr %i.czd, align 8, !noalias !11120
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0EB1H_(ptr noundef nonnull align 8 %i.cze)
          to label %._crit_edge178.i unwind label %bb.ahh

._crit_edge178.i:                                 ; preds = %bb.ahg
  %.phi.trans.insert179.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre180.i = load ptr, ptr %.phi.trans.insert179.i, align 8, !noalias !11119
  br label %bb.ahi

bb.ahh:                                           ; preds = %bb.ahg
  %i.dko = landingpad { ptr, i32 }
          cleanup
  br label %bb.adi

bb.ahi:                                           ; preds = %._crit_edge178.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledB13_.exit.i
  %i.dkp = phi ptr [ %i.czb, %._crit_edge178.i ], [ %i.cwf, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledB13_.exit.i ] ; 3 uses
  %i.dkq = phi ptr [ %i.czc, %._crit_edge178.i ], [ %i.cwg, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledB13_.exit.i ] ; 2 uses
  %i.dkr = phi ptr [ %.pre180.i, %._crit_edge178.i ], [ %i.cxd, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE28is_write_order_queue_enabledB13_.exit.i ] ; 3 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dkt = getelementptr i8, ptr %i.dkr, i64 128
  %.val41.i470 = load i32, ptr %i.dkt, align 8, !range !66, !noundef !24
  %.not130.i = icmp eq i32 %.val41.i470, -1
  br i1 %.not130.i, label %bb.ahj, label %bb.ahl

bb.ahj:                                           ; preds = %bb.ahi
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkr, i64 552
  %i.dkv = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant6is_set(ptr noundef nonnull align 8 %i.dku)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit.i unwind label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.dkw = landingpad { ptr, i32 }
          cleanup
  br label %bb.adi

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit.i: ; preds = %bb.ahj
  br i1 %i.dkv, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit._crit_edge.i, label %bb.aig

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit._crit_edge.i: ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit.i
  %.pre181.i = load ptr, ptr %i.dks, align 8, !noalias !11119
  br label %bb.ahl

bb.ahl:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit._crit_edge.i, %bb.ahi
  %i.dkx = phi ptr [ %.pre181.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit._crit_edge.i ], [ %i.dkr, %bb.ahi ]
  %i.dky = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dkz = load ptr, ptr %i.dky, align 8, !noalias !11119, !nonnull !24, !align !51, !noundef !24
  %.val38.i471 = load ptr, ptr %i.dkz, align 8, !nonnull !24, !align !51, !noundef !24
  %i.dla = getelementptr inbounds nuw i8, ptr %.val38.i471, i64 16
  %i.dlb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dlc = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dld = load i32, ptr %i.dlc, align 4, !noalias !11119, !noundef !24
  %i.dle = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dlf = load i64, ptr %i.dle, align 8, !noalias !11119, !noundef !24
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dlf, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.dkx, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.dla, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dlg = load <2 x ptr>, ptr %i.dlb, align 8, !noalias !11119
  store <2 x ptr> %i.dlg, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dld, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.1577.0..sroa_idx.i, align 1, !noalias !11119
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 0, ptr %.sroa.1678.0..sroa_idx.i, align 2, !noalias !11119
  br label %bb.ahn

.body.i464:                                       ; preds = %bb.ahe, %.body.i.i463
  %i.dlh = phi ptr [ %i.cyo, %.body.i.i463 ], [ %i.cwe, %bb.ahe ]
  %i.dli = phi ptr [ %i.cyp, %.body.i.i463 ], [ %i.cwd, %bb.ahe ]
  %i.dlj = phi ptr [ %i.cyr, %.body.i.i463 ], [ %i.cxq, %bb.ahe ]
  %.pn11.i465 = phi { ptr, i32 } [ %.pn33.pn.i.i, %.body.i.i463 ], [ %i.dkl, %bb.ahe ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_wo0EB1H_(ptr noundef nonnull align 8 %i.dlj) #69
          to label %bb.adi unwind label %bb.ahm

bb.ahm:                                           ; preds = %bb.aia, %bb.ahu, %bb.aho, %.body.i464
  %i.dlk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ahn:                                           ; preds = %bb.ahl, %bb.adg
  %i.dll = phi ptr [ %i.dkp, %bb.ahl ], [ %i.cwe, %bb.adg ] ; 4 uses
  %i.dlm = phi ptr [ %i.dkq, %bb.ahl ], [ %i.cwd, %bb.adg ] ; 3 uses
  %i.dln = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dlo = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0B15_(ptr noundef nonnull align 8 %i.dln, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ahp unwind label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.dlp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dln) #69
          to label %bb.adi unwind label %bb.ahm

bb.ahp:                                           ; preds = %bb.ahn
  br i1 %i.dlo, label %bb.aif, label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dln)
          to label %bb.ahs unwind label %bb.ahr

bb.ahr:                                           ; preds = %bb.ahq
  %i.dlq = landingpad { ptr, i32 }
          cleanup
  br label %bb.adi

bb.ahs:                                           ; preds = %bb.ahq
  %i.dlr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2 = load ptr, ptr %i.dlr, align 8, !noalias !11119, !nonnull !24, !align !51, !noundef !24
  %i.dls = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dlt = load ptr, ptr %i.dls, align 8, !noalias !11119, !nonnull !24, !align !51, !noundef !24
  %.val37.i460 = load ptr, ptr %i.dlt, align 8, !nonnull !24, !align !51, !noundef !24
  %3 = getelementptr inbounds nuw i8, ptr %.val37.i460, i64 16
  %i.dlu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dlv = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dlw = load i32, ptr %i.dlv, align 4, !noalias !11119, !noundef !24
  %i.dlx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dly = load i64, ptr %i.dlx, align 8, !noalias !11119, !noundef !24
  %.sroa.792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dly, ptr %.sroa.792.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %2, ptr %.sroa.994.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1095.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %3, ptr %.sroa.1095.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %4 = load <2 x ptr>, ptr %i.dlu, align 8, !noalias !11119
  store <2 x ptr> %4, ptr %.sroa.1196.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.1398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dlw, ptr %.sroa.1398.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.15100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15100.0..sroa_idx.i, align 1, !noalias !11119
  %.sroa.16101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 1, ptr %.sroa.16101.0..sroa_idx.i, align 2, !noalias !11119
  br label %bb.aht

bb.aht:                                           ; preds = %bb.ahs, %bb.adg
  %i.dlz = phi ptr [ %i.dll, %bb.ahs ], [ %i.cwe, %bb.adg ] ; 4 uses
  %i.dma = phi ptr [ %i.dlm, %bb.ahs ], [ %i.cwd, %bb.adg ] ; 3 uses
  %i.dmb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dmc = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0B15_(ptr noundef nonnull align 8 %i.dmb, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ahv unwind label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht
  %i.dmd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dmb) #69
          to label %bb.adi unwind label %bb.ahm

bb.ahv:                                           ; preds = %bb.aht
  br i1 %i.dmc, label %bb.aif, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dmb)
          to label %bb.ahy unwind label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  %i.dme = landingpad { ptr, i32 }
          cleanup
  br label %bb.adi

bb.ahy:                                           ; preds = %bb.ahw
  %i.dmf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %i.dmf, align 8, !noalias !11119, !nonnull !24, !align !51, !noundef !24
  %i.dmg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dmh = load ptr, ptr %i.dmg, align 8, !noalias !11119, !nonnull !24, !align !51, !noundef !24
  %.val36.i459 = load ptr, ptr %i.dmh, align 8, !nonnull !24, !align !51, !noundef !24
  %6 = getelementptr inbounds nuw i8, ptr %.val36.i459, i64 16
  %i.dmi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dmj = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dmk = load i32, ptr %i.dmj, align 4, !noalias !11119, !noundef !24
  %i.dml = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dmm = load i64, ptr %i.dml, align 8, !noalias !11119, !noundef !24
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.dmm, ptr %.sroa.7116.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %5, ptr %.sroa.9118.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.10119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %6, ptr %.sroa.10119.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.11120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %7 = load <2 x ptr>, ptr %i.dmi, align 8, !noalias !11119
  store <2 x ptr> %7, ptr %.sroa.11120.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.13122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.dmk, ptr %.sroa.13122.0..sroa_idx.i, align 8, !noalias !11119
  %.sroa.15124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %.sroa.15124.0..sroa_idx.i, align 1, !noalias !11119
  %.sroa.16125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 2, ptr %.sroa.16125.0..sroa_idx.i, align 2, !noalias !11119
  br label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy, %bb.adg
  %i.dmn = phi ptr [ %i.dlz, %bb.ahy ], [ %i.cwe, %bb.adg ] ; 4 uses
  %i.dmo = phi ptr [ %i.dma, %bb.ahy ], [ %i.cwd, %bb.adg ] ; 2 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dmq = invoke fastcc noundef zeroext i1 @_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0B15_(ptr noundef nonnull align 8 %i.dmp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aib unwind label %bb.aia

bb.aia:                                           ; preds = %bb.ahz
  %i.dmr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dmp) #69
          to label %bb.adi unwind label %bb.ahm

bb.aib:                                           ; preds = %bb.ahz
  br i1 %i.dmq, label %bb.aif, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0EB1H_(ptr noundef nonnull align 8 %i.dmp)
          to label %bb.aig unwind label %bb.aid

bb.aid:                                           ; preds = %bb.aic
  %i.dms = landingpad { ptr, i32 }
          cleanup
  br label %bb.adi

bb.aie:                                           ; preds = %bb.adl, %bb.adk
  %i.dmt = landingpad { ptr, i32 }
          cleanup
  br label %.body525

bb.aif:                                           ; preds = %bb.ahv, %bb.ahp, %bb.ahf, %bb.aib
  %i.dmu = phi ptr [ %i.dmn, %bb.aib ], [ %i.dkm, %bb.ahf ], [ %i.dll, %bb.ahp ], [ %i.dlz, %bb.ahv ]
  %.sink.i457.ph = phi i8 [ 6, %bb.aib ], [ 3, %bb.ahf ], [ 4, %bb.ahp ], [ 5, %bb.ahv ]
  store i8 %.sink.i457.ph, ptr %i.dmu, align 8, !noalias !11119
  br label %common.ret

bb.aig:                                           ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit.i, %bb.aic
  %i.dmv = phi ptr [ %i.dkp, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE15has_valid_afterB13_.exit.i ], [ %i.dmn, %bb.aic ]
  store i8 1, ptr %i.dmv, align 8, !noalias !11119
  br label %bb.adf

bb.aih:                                           ; preds = %bb.aii, %bb.avg, %bb.adf
  %i.dmw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dmx = load ptr, ptr %i.dmw, align 8, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dmz = load i64, ptr %i.dmx, align 8, !range !32, !noundef !24
  %i.dna = trunc nuw i64 %i.dmz to i1
  br i1 %i.dna, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictB13_.exit, label %_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16weights_to_evictB13_.exit.thread

bb.aii:                                           ; preds = %bb.adf
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.cvq, i64 688
  %i.dnc = load atomic i8, ptr %i.dnb acquire, align 8
  %.not858 = icmp eq i8 %i.dnc, 0
  br i1 %.not858, label %.thread1839, label %bb.aih

.thread1839:                                      ; preds = %bb.aii
  %i.dnd = load ptr, ptr %i.cvp, align 8, !nonnull !24, !align !51, !noundef !24
  %i.dne = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dnf = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dng = load i32, ptr %i.dnf, align 4, !noundef !24
  %i.dnh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.7769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.dnd, ptr %.sroa.7769.0..sroa_idx, align 8
  %.sroa.8770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.cvr, ptr %.sroa.8770.0..sroa_idx, align 8
  %.sroa.9771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dni = load <2 x ptr>, ptr %i.dne, align 8
  %i.dnj = getelementptr inbounds nuw i8, <2 x ptr> %i.dni, i64 16
  store <2 x ptr> %i.dnj, ptr %.sroa.9771.0..sroa_idx, align 8
  %.sroa.11773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.dnh, ptr %.sroa.11773.0..sroa_idx, align 8
  %.sroa.12774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 %i.dng, ptr %.sroa.12774.0..sroa_idx, align 8
  %.sroa.14776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 645
  store i8 0, ptr %.sroa.14776.0..sroa_idx, align 1
  %i.dnk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dnl = getelementptr inbounds nuw i8, ptr %0, i64 645
  br label %bb.aik

bb.aij:                                           ; preds = %bb.a
  %.phi.trans.insert1627 = getelementptr inbounds nuw i8, ptr %0, i64 645
  %.pre1628 = load i8, ptr %.phi.trans.insert1627, align 1, !range !52, !noalias !11162
  %i.dnm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11162)
  %i.dnn = getelementptr inbounds nuw i8, ptr %0, i64 645 ; 12 uses
  switch i8 %.pre1628, label %default.unreachable1816 [
    i8 0, label %bb.aik
    i8 1, label %bb.amb
    i8 2, label %bb.amc
    i8 3, label %bb.amd
  ]

bb.aik:                                           ; preds = %.thread1839, %bb.aij
  %i.dno = phi ptr [ %i.dnl, %.thread1839 ], [ %i.dnn, %bb.aij ] ; 10 uses
  %i.dnp = phi ptr [ %i.dnk, %.thread1839 ], [ %i.dnm, %bb.aij ] ; 4 uses
  %i.dnq = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 4 uses
  store i8 0, ptr %i.dnq, align 4, !noalias !11162
  %i.dnr = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dns = load ptr, ptr %i.dnr, align 8, !noalias !11162, !nonnull !24, !align !51, !noundef !24 ; 5 uses
  %i.dnt = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dnu = load ptr, ptr %i.dnt, align 8, !noalias !11162, !nonnull !24, !align !51, !noundef !24
  store ptr %i.dnu, ptr %i.dnp, align 8, !noalias !11162
  %i.dnv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dnx = load <2 x ptr>, ptr %i.dnw, align 8, !noalias !11162
  store <2 x ptr> %i.dnx, ptr %i.dnv, align 8, !noalias !11162
  %i.dny = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dnz = load i32, ptr %i.dny, align 8, !noalias !11162, !noundef !24 ; 4 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dob = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.doc = load ptr, ptr %i.dob, align 8, !noalias !11162, !nonnull !24, !align !51, !noundef !24
  store ptr %i.doc, ptr %i.doa, align 8, !noalias !11162
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dns, i64 72
  %i.doe = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dod)
          to label %bb.aim unwind label %bb.ail

.body660.thread:                                  ; preds = %bb.ail, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %bb.ajk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i, %bb.akz
  %i.dof = phi ptr [ %i.dno, %bb.ail ], [ %i.dxx, %bb.akz ], [ %i.dno, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ], [ %i.dno, %bb.ajk ], [ %i.dno, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i ]
  %.pn34.i = phi { ptr, i32 } [ %i.dog, %bb.ail ], [ %.pn28.pn.pn.pn.i, %bb.akz ], [ %.pn.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i, %bb.ajk ], [ %eh.lpad-body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i ]
  store i8 2, ptr %i.dof, align 1, !noalias !11162
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1F_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE23enable_frequency_sketch0EB1H_.exit674

bb.ail:                                           ; preds = %bb.aik
  %i.dog = landingpad { ptr, i32 }
          cleanup
  br label %.body660.thread

bb.aim:                                           ; preds = %bb.aik
  %i.doh = load ptr, ptr %i.dnv, align 8, !noalias !11162, !nonnull !24, !align !51, !noundef !24 ; 6 uses
  %i.doi = getelementptr inbounds nuw i8, ptr %i.doh, i64 144 ; 9 uses
  %i.doj = getelementptr i8, ptr %i.doh, i64 160
  %.val39.i605 = load i64, ptr %i.doj, align 8, !noundef !24
  %i.dok = icmp eq i64 %.val39.i605, 0
  br i1 %i.dok, label %bb.ain, label %bb.ala

bb.ain:                                           ; preds = %bb.aim
  %i.dol = load ptr, ptr %i.dnp, align 8, !noalias !11162, !nonnull !24, !align !51, !noundef !24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11162
  store i64 %i.doe, ptr %i.ad, align 8, !noalias !11162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11162
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.don = load i64, ptr %i.dom, align 8, !noundef !24
  store i64 -1, ptr %i.ac, align 8, !noalias !11162
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.dol, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11162
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr @462, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11162
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 %i.don, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !11162
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !11162
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i8 0, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !noalias !11162
  %.sroa.4.0..sroa_idx.i.i623 = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i623, align 8, !noalias !11162
  call void @llvm.experimental.noalias.scope.decl(metadata !11163)
  call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11165
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCskTBvlRM5ILY_4moka3cht4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1p_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3h_4moka14MokaCacheEntryEENCNvMs0_B2B_INtB2B_11InvalidatorB3d_B4b_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE35remove_predicates_registered_before0ENCB4I_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %bb.aip unwind label %bb.aio, !noalias !11166

bb.aio:                                           ; preds = %bb.ain
  %i.doo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajk

bb.aip:                                           ; preds = %bb.ain
  %i.dop = load i64, ptr %i.x, align 8, !range !26, !noalias !11165, !noundef !24 ; 4 uses
  %.not.i.i.i.i624 = icmp eq i64 %i.dop, -1
  br i1 %.not.i.i.i.i624, label %bb.aiq, label %bb.aiw

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11165
  call void @llvm.experimental.noalias.scope.decl(metadata !11167)
  call void @llvm.experimental.noalias.scope.decl(metadata !11168)
  call void @llvm.experimental.noalias.scope.decl(metadata !11169)
  call void @llvm.experimental.noalias.scope.decl(metadata !11170)
  %i.doq = load i64, ptr %i.ac, align 8, !range !26, !alias.scope !11171, !noalias !11172, !noundef !24 ; 3 uses
  %i.dor = icmp eq i64 %i.doq, -1
  br i1 %i.dor, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtNtCskTBvlRM5ILY_4moka3cht4iter4IterBU_INtNtNtB2V_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB4e_4moka14MokaCacheEntryEENCNvMs0_B3y_INtB3y_11InvalidatorB4a_B58_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE35remove_predicates_registered_before0ENCB5F_s_0EE9from_iterB4g_.exit.i.i, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  call void @llvm.experimental.noalias.scope.decl(metadata !11173)
  %i.dos = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dos, align 8, !alias.scope !11174, !noalias !11172, !nonnull !24, !noundef !24 ; 2 uses
  %i.dot = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dot, align 8, !alias.scope !11174, !noalias !11172, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11175)
  %i.dou = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dou, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0B15_:bb.a
bb.cq:                                            ; preds = %bb.cp
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.kg = load i8, ptr %i.kf, align 4, !range !52, !noundef !24
  switch i8 %i.kg, label %default.unreachable180 [
    i8 0, label %bb.cx
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.ct
  ], !prof !31

bb.cr:                                            ; preds = %bb.cq
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cq
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 96
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cq
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #68
          to label %.noexc83 unwind label %bb.cw

.noexc83:                                         ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cp
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %.sroa.035.1.i.i.i, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 24
  %.val43 = load ptr, ptr %i.kn, align 8, !align !51, !noundef !24
  %.not110 = icmp eq ptr %.val43, null
  br i1 %.not110, label %bb.k, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 0, ptr %i.ko, align 1
  %i.kp = load ptr, ptr %i.gt, align 8, !nonnull !24, !noundef !24
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.kr = load i8, ptr %i.kq, align 2, !range !52, !noundef !24
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.km, ptr %.sroa.7101.0..sroa_idx, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.kp, ptr %.sroa.8102.0..sroa_idx, align 8
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.kk, ptr %.sroa.9103.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 %i.kr, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 378
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 2
  br label %bb.f

bb.cw:                                            ; preds = %bb.ct
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.cx:                                            ; preds = %bb.cq, %bb.cr, %bb.cs
  %.sroa.0.0.i80 = phi ptr [ %i.ki, %bb.cs ], [ %i.kh, %bb.cr ], [ %i.ke, %bb.cq ]
  %.sroa.4.0.i81 = getelementptr inbounds nuw i8, ptr %i.ke, i64 144
  %i.kt = load ptr, ptr %i.gp, align 8, !nonnull !24, !align !51, !noundef !24
  %.val45 = load ptr, ptr %i.gt, align 8, !nonnull !24, !noundef !24
  %i.ku = getelementptr inbounds nuw i8, ptr %.val45, i64 16
  %i.kv = load i64, ptr %i.gr, align 8, !noundef !24
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8, !nonnull !24, !noundef !24
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoB13_(ptr noundef nonnull align 8 %i.kt, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %i.ku, i64 noundef %i.kv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kx, i64 noundef %i.kz, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i80, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i81)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.cz:                                            ; preds = %bb.cx
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 245
  store i8 0, ptr %i.lb, align 1
  br label %bb.s

.body77:                                          ; preds = %bb.co, %.thread.i.i.i, %bb.cy, %bb.di, %bb.cw
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.di ], [ %i.la, %bb.cy ], [ %.pn.i.i.i, %.thread.i.i.i ], [ %i.ks, %bb.cw ], [ %i.kc, %bb.co ]
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val36 = load ptr, ptr %i.lc, align 8, !align !51, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val36) #69
          to label %.body72 unwind label %bb.cn

bb.da:                                            ; preds = %bb.at
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.db:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.0.0.i63 = phi ptr [ %i.fb, %bb.as ], [ %i.fa, %bb.ar ], [ %i.ey, %bb.aq ]
  %.sroa.4.0.i64 = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.le = load ptr, ptr %i.bf, align 8, !nonnull !24, !align !51, !noundef !24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.lg = load ptr, ptr %i.bg, align 8, !nonnull !24, !noundef !24
  %i.lh = load i64, ptr %i.bh, align 8, !noundef !24
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE21skip_updated_entry_aoB13_(ptr noundef nonnull align 8 %i.le, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %i.lf, i64 noundef %.sroa.04.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lg, i64 noundef %i.lh, ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0.i63, ptr noalias noundef align 8 dereferenceable(48) %.sroa.4.0.i64)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dd:                                            ; preds = %bb.db
  store i8 0, ptr %i.bi, align 1
  %i.lj = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !11515
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.de, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit85

bb.de:                                            ; preds = %bb.dd
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit85

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit86: ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit85: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !11516)
  call void @llvm.experimental.noalias.scope.decl(metadata !11517)
  %i.ll = load i32, ptr %i.az, align 8, !alias.scope !11518, !noalias !11517, !noundef !24 ; 2 uses
  %i.lm = load i32, ptr %i.ba, align 4, !alias.scope !11519, !noalias !11516, !noundef !24
  %i.ln = icmp ult i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.aa, label %.loopexit

bb.df:                                            ; preds = %bb.dc, %bb.da
  %.pn31 = phi { ptr, i32 } [ %i.li, %bb.dc ], [ %i.ld, %bb.da ]
  %i.lo = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !11520
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.dg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit86

bb.dg:                                            ; preds = %bb.df
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit86

bb.dh:                                            ; preds = %bb.j, %bb.g, %bb.q, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.by, %bb.o ], [ %i.bm, %bb.j ], [ %i.bl, %bb.g ]
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 8, !range !30, !noundef !24
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dj, %bb.dh
  store i8 0, ptr %i.lq, align 8
  br label %.body77

bb.dj:                                            ; preds = %bb.dh
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.lt, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_(ptr nonnull %.val) #69
          to label %bb.di unwind label %bb.cn

bb.dk:                                            ; preds = %bb.v
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11521)
  call void @llvm.experimental.noalias.scope.decl(metadata !11522)
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !11523, !nonnull !24, !noundef !24
  %i.lw = atomicrmw sub ptr %i.lv, i64 1 release, align 8, !noalias !11523
  %i.lx = icmp eq i64 %i.lw, 1
  br i1 %i.lx, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit87

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lu)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit87
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMse_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13notify_upsert0B15_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !52, !noundef !24
  switch i8 %i.b, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24
  %2 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i8 0, ptr %i.c, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !nonnull !24, !noundef !24
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.h = load i8, ptr %i.g, align 2, !range !52, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 %i.h, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.h, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.n, %bb.h ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11543)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !11544, !nonnull !24, !noundef !24
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !11544
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2a_4moka14MokaCacheEntryEEEB2c_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1H_4moka14MokaCacheEntryEE9drop_slowB1J_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2a_4moka14MokaCacheEntryEEEB2c_.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #68
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #68
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.m = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB18_4moka14MokaCacheEntryE6notify0B1a_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1K_4moka14MokaCacheEntryE6notify0EB1M_(ptr noundef nonnull align 8 %0) #69
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %i.m, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 1
  ret i1 %i.m

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1K_4moka14MokaCacheEntryE6notify0EB1M_(ptr noundef nonnull align 8 %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11546)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11547, !nonnull !24, !noundef !24
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !11547
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1H_4moka14MokaCacheEntryEE9drop_slowB1J_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %common.ret unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit: ; preds = %bb.r, %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit, %bb.n
  %.pn9 = phi { ptr, i32 } [ %i.t, %bb.n ], [ %.pn7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit ], [ %.pn7, %bb.s ], [ %.pn7, %bb.r ]
  store i8 2, ptr %i.a, align 1
  resume { ptr, i32 } %.pn9

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit

bb.o:                                             ; preds = %bb.s, %bb.d, %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2a_4moka14MokaCacheEntryEEEB2c_.exit: ; preds = %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.w = load i8, ptr %i.v, align 1, !range !30, !noundef !24
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit: ; preds = %bb.q, %bb.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2a_4moka14MokaCacheEntryEEEB2c_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load i8, ptr %i.y, align 8, !range !30, !noundef !24
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCskTBvlRM5ILY_4moka6future8notifier15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2a_4moka14MokaCacheEntryEEEB2c_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11549)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !11550, !nonnull !24, !noundef !24
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !11550
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11553)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !11554, !nonnull !24, !noundef !24
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !11554
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit unwind label %bb.o
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs63DIHKhvmTb_10lance_core9datatypes15BLOB_DESC_FIELD0B5_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(112) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes14BLOB_DESC_TYPE, i64 24) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE5force0ECs63DIHKhvmTb_10lance_core.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes14BLOB_DESC_TYPE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes14BLOB_DESC_TYPE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE5force0ECs63DIHKhvmTb_10lance_core.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE5force0ECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes14BLOB_DESC_TYPE)
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 11, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11561
  %i.i = call noundef dereferenceable_or_null(19) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 19, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !11561 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

.thread11:                                        ; preds = %bb.c, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.c:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE5force0ECs63DIHKhvmTb_10lance_core.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #68
          to label %bb.h unwind label %.thread11

bb.d:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE5force0ECs63DIHKhvmTb_10lance_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.i, ptr noundef nonnull align 1 dereferenceable(19) @251, i64 19, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11562
  %i.k = call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !11562 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 19, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !11563
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #68
          to label %bb.h unwind label %.thread

bb.f:                                             ; preds = %bb.d
  store i32 1702195828, ptr %i.k, align 1
  store i64 19, ptr %i.c, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 19, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 4, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB4_10GroupRemap3new:bb.a

bb.ay:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val68 = load i64, ptr %1, align 8             ; 2 uses
  %i.kx = icmp eq i64 %.val68, 0
  br i1 %i.kx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val69 = load ptr, ptr %i.ev, align 8, !nonnull !24, !noundef !24
  %i.ky = shl nuw i64 %.val68, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit

.loopexit274:                                     ; preds = %.noexc109, %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19165
  %.val66 = load i64, ptr %1, align 8             ; 2 uses
  %i.kz = icmp eq i64 %.val66, 0
  br i1 %i.kz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split: ; preds = %.loopexit274, %bb.cr
  %.val62.sink = phi i64 [ %.val62, %bb.cr ], [ %.val66, %.loopexit274 ]
  %.val63.sink.in = phi ptr [ %i.rf, %bb.cr ], [ %i.ev, %.loopexit274 ]
  %.val63.sink = load ptr, ptr %.val63.sink.in, align 8, !nonnull !24, !noundef !24
  %i.la = shl nuw i64 %.val62.sink, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63.sink, i64 noundef %i.la, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split, %.loopexit280, %.loopexit274
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.az, %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit213
  %.pn58.pn = phi { ptr, i32 } [ %lpad.phi279, %bb.cq ], [ %.pn58, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit213 ], [ %lpad.phi, %bb.az ], [ %lpad.phi, %bb.ay ], [ %lpad.phi279, %bb.cp ], [ %.pn58, %bb.cw ], [ %.pn58, %bb.cx ]
  resume { ptr, i32 } %.pn58.pn

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !19167)
  %.sroa.06.0.copyload.i = load i64, ptr %i.n, align 8, !alias.scope !19168, !noalias !19169 ; 3 uses
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i111, align 8, !alias.scope !19168, !noalias !19169 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !19168, !noalias !19169
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19170
  %i.lb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19170 ; 5 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ba, label %bb.bd, !prof !40

bb.ba:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i112 unwind label %bb.bb, !noalias !19171

.noexc.i112:                                      ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.le, label %.body113, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19172
  br label %.body113

bb.bd:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit
  store i64 %.sroa.06.0.copyload.i, ptr %i.lb, align 8, !noalias !19171
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !19171
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !19171
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.lf, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lb, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @61, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @554, ptr %.sroa.6244.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.be

bb.be:                                            ; preds = %bb.bu, %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !19173)
  call void @llvm.experimental.noalias.scope.decl(metadata !19174)
  call void @llvm.experimental.noalias.scope.decl(metadata !19175)
  call void @llvm.experimental.noalias.scope.decl(metadata !19176)
  call void @llvm.experimental.noalias.scope.decl(metadata !19177)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !19178, !noundef !24 ; 4 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !19179)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !19180, !noundef !24 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lm = load ptr, ptr %i.w, align 8, !alias.scope !19180, !nonnull !24, !noundef !24 ; 3 uses
  %.val3.i.i.i.i.i.i.i115 = load <16 x i8>, ptr %i.lm, align 16, !noalias !19181
  %i.ln = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i115, splat (i8 -1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lp = bitcast <16 x i1> %i.ln to i16
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %bb.bg
  %.sroa.05.016.i.i.i.i.i.i116 = phi ptr [ %i.lm, %bb.bg ], [ %.sroa.05.1.i.i.i.i.i.i122, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i117 = phi ptr [ %i.lo, %bb.bg ], [ %.sroa.6.1.i.i.i.i.i.i121, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i118 = phi i16 [ %i.lp, %bb.bg ], [ %i.ly, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i119 = phi i64 [ %i.lk, %bb.bg ], [ %i.mb, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i120 = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i118, 0
  br i1 %.not12.i.i.i.i.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i124, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i124:                          ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i.i124
  %i.lq = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i124 ], [ %.sroa.6.015.i.i.i.i.i.i117, %bb.bh ] ; 2 uses
  %i.lr = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i124 ], [ %.sroa.05.016.i.i.i.i.i.i116, %bb.bh ]
  %.val10.i.i.i.i.i.i.i125 = load <16 x i8>, ptr %i.lq, align 16, !noalias !19182
  %i.ls = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i125, splat (i8 -1)
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -640 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i126 = bitcast <16 x i1> %i.ls to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i127 = icmp eq i16 %.cast.i.i.i.i.i.i.i126, 0
  br i1 %.not.i.i.i.i.i.i.i127, label %.lr.ph.i.i.i.i.i.i.i124, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i124, %bb.bh
  %.sroa.6.1.i.i.i.i.i.i121 = phi ptr [ %.sroa.6.015.i.i.i.i.i.i117, %bb.bh ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i124 ]
  %.sroa.05.1.i.i.i.i.i.i122 = phi ptr [ %.sroa.05.016.i.i.i.i.i.i116, %bb.bh ], [ %i.lt, %.lr.ph.i.i.i.i.i.i.i124 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i123 = phi i16 [ %.sroa.86.014.i.i.i.i.i.i118, %bb.bh ], [ %.cast.i.i.i.i.i.i.i126, %.lr.ph.i.i.i.i.i.i.i124 ] ; 3 uses
  %i.lv = add i16 %.lcssa.i.i.i.i.i.i.i123, -1
  %i.lw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i123, i1 true)
  %i.lx = zext nneg i16 %i.lw to i64
  %i.ly = and i16 %i.lv, %.lcssa.i.i.i.i.i.i.i123
  %i.lz = sub nsw i64 0, %i.lx
  %i.ma = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i.i.i.i.i122, i64 %i.lz
  %i.mb = add i64 %.sroa.107.013.i.i.i.i.i.i119, -1 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.ma, i64 -32
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.mc), !noalias !19180
  %i.md = icmp eq i64 %i.mb, 0
  br i1 %i.md, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, label %bb.bh

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %bb.bf
  %i.me = mul i64 %i.lh, 40
  %i.mf = icmp slt i64 %i.lh, 461168601842738790
  call void @llvm.assume(i1 %i.mf)
  %i.mg = and i64 %i.me, -16                      ; 2 uses
  %i.mh = add i64 %i.mg, 48                       ; 2 uses
  %i.mi = add nsw i64 %i.lh, 17
  %i.mj = add i64 %i.mi, %i.mh                    ; 4 uses
  %i.mk = icmp uge i64 %i.mj, %i.mh
  %i.ml = icmp ult i64 %i.mj, 9223372036854775793
  call void @llvm.assume(i1 %i.mk)
  call void @llvm.assume(i1 %i.ml)
  %i.mm = icmp eq i64 %i.mj, 0
  br i1 %i.mm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit, label %bb.bi

bb.bi:                                            ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i
  %i.mn = load ptr, ptr %i.w, align 8, !alias.scope !19178, !nonnull !24, !noundef !24
  %i.mo = sub i64 -48, %i.mg
  %i.mp = getelementptr inbounds i8, ptr %i.mn, i64 %i.mo
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mp, i64 noundef %i.mj, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !19178
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit

bb.bj:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !19183)
  %i.mq = load ptr, ptr %i.z, align 8, !alias.scope !19183, !noalias !19184, !nonnull !24, !noundef !24 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.mq, align 16, !noalias !19185
  %i.mr = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.mt = bitcast <16 x i1> %i.mr to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19186
  %.not12.i.i.i.i = icmp eq i16 %i.mt, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i135, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i135:                                ; preds = %bb.bj, %.lr.ph.i.i.i.i135
  %i.mu = phi ptr [ %i.my, %.lr.ph.i.i.i.i135 ], [ %i.ms, %bb.bj ] ; 2 uses
  %i.mv = phi ptr [ %i.mx, %.lr.ph.i.i.i.i135 ], [ %i.mq, %bb.bj ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.mu, align 16, !noalias !19187
  %i.mw = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -512 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.mw to i16 ; 2 uses
  %.not.i.i.i.i136 = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i136, label %.lr.ph.i.i.i.i135, label %._crit_edge19.i.i.i.i

._crit_edge19.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i135, %bb.bj
  %.sroa.6236.0 = phi ptr [ %i.ms, %bb.bj ], [ %i.my, %.lr.ph.i.i.i.i135 ]
  %.sroa.09.0.copyload.i = phi ptr [ %i.mq, %bb.bj ], [ %i.mx, %.lr.ph.i.i.i.i135 ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.mt, %bb.bj ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i135 ] ; 3 uses
  %i.mz = add i16 %.lcssa.i.i.i.i, -1
  %i.na = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.nb = zext nneg i16 %i.na to i64
  %i.nc = and i16 %i.mz, %.lcssa.i.i.i.i
  %i.nd = sub nsw i64 0, %i.nb
  %i.ne = getelementptr inbounds [32 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.nd
  %i.nf = add i64 %i.hb, -1                       ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 -32
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.hb, i64 4) ; 2 uses
  %i.nh = shl i64 %.sroa.0.0.i.i, 3               ; 3 uses
  %i.ni = icmp ugt i64 %i.hb, 2305843009213693951
  %.not.i.i.i129 = icmp ugt i64 %i.nh, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ni, %.not.i.i.i129
  br i1 %or.cond.i.i.i, label %bb.bl, label %bb.bk, !prof !25

bb.bk:                                            ; preds = %._crit_edge19.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19188
  %i.nj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.nh, i64 noundef range(i64 1, 9) 8) #65, !noalias !19188 ; 4 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bl, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i

bb.bl:                                            ; preds = %bb.bk, %._crit_edge19.i.i.i.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bk ], [ 0, %._crit_edge19.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.nh) #68
          to label %.noexc138 unwind label %bb.ad

.noexc138:                                        ; preds = %bb.bl
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.bk
  store ptr %i.ng, ptr %i.nj, align 8, !noalias !19186
  store i64 %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !19186
  %.sroa.4.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.nj, ptr %.sroa.4.0..sroa_idx.i130, align 8, !noalias !19186
  %.sroa.6.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i131, align 8, !noalias !19186
  call void @llvm.experimental.noalias.scope.decl(metadata !19189)
  call void @llvm.experimental.noalias.scope.decl(metadata !19190)
  %i.nl = icmp eq i64 %i.nf, 0
  br i1 %i.nl, label %.loopexit281, label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i, %.noexc.i133
  %i.nm = phi ptr [ %i.of, %.noexc.i133 ], [ %i.nj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ]
  %i.nn = phi i64 [ %i.oh, %.noexc.i133 ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 5 uses
  %.lcssa18.i.i.i = phi ptr [ %.lcssa17.i.i.i, %.noexc.i133 ], [ %.sroa.6236.0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %i.no = phi i16 [ %i.nx, %.noexc.i133 ], [ %i.nc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.val914.i.i.i = phi i64 [ %i.oa, %.noexc.i133 ], [ %i.nf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.lcssa81213.i.i.i = phi ptr [ %.lcssa811.i.i.i, %.noexc.i133 ], [ %.sroa.09.0.copyload.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.no, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i132, %.lr.ph.i.i.i.i.i.i
  %i.np = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa18.i.i.i, %.lr.ph.i.i.i132 ] ; 2 uses
  %i.nq = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa81213.i.i.i, %.lr.ph.i.i.i132 ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.np, align 16, !noalias !19191
  %i.nr = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -512 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.nr to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i132
  %.lcssa17.i.i.i = phi ptr [ %.lcssa18.i.i.i, %.lr.ph.i.i.i132 ], [ %i.nt, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa811.i.i.i = phi ptr [ %.lcssa81213.i.i.i, %.lr.ph.i.i.i132 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.no, %.lr.ph.i.i.i132 ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.nu = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.nv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.nw = zext nneg i16 %i.nv to i64
  %i.nx = and i16 %i.nu, %.lcssa.i.i.i.i.i.i
  %i.ny = sub nsw i64 0, %i.nw
  %i.nz = getelementptr inbounds [32 x i8], ptr %.lcssa811.i.i.i, i64 %i.ny
  %i.oa = add i64 %.val914.i.i.i, -1              ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 -32
  %i.oc = icmp samesign ult i64 %i.nn, 1152921504606846976
  call void @llvm.assume(i1 %i.oc)
  %i.od = load i64, ptr %i.c, align 8, !range !39, !alias.scope !19192, !noalias !19193, !noundef !24
  %i.oe = icmp eq i64 %i.nn, %i.od
  br i1 %i.oe, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i, label %.noexc.i133

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.nn, i64 noundef range(i64 1, 0) %.val914.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i unwind label %bb.bm, !noalias !19186

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %.pre.i134 = load ptr, ptr %.sroa.4.0..sroa_idx.i130, align 8, !alias.scope !19192, !noalias !19193
  br label %.noexc.i133

.noexc.i133:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i, %._crit_edge19.i.i.i.i.i.i
  %i.of = phi ptr [ %.pre.i134, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i ], [ %i.nm, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.nn
  store ptr %i.ob, ptr %i.og, align 8, !noalias !19194
  %i.oh = add nuw nsw i64 %i.nn, 1                ; 2 uses
  store i64 %i.oh, ptr %.sroa.6.0..sroa_idx.i131, align 8, !alias.scope !19192, !noalias !19193
  %i.oi = icmp eq i64 %i.oa, 0
  br i1 %i.oi, label %.loopexit281, label %.lr.ph.i.i.i132

bb.bm:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %i.c, align 8, !noalias !19186 ; 2 uses
  %i.ok = icmp eq i64 %.val7.i, 0
  br i1 %i.ok, label %.body113, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val8.i = load ptr, ptr %.sroa.4.0..sroa_idx.i130, align 8, !noalias !19186, !nonnull !24, !noundef !24
  %i.ol = shl nuw i64 %.val7.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.ol, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19186
  br label %.body113

.loopexit281:                                     ; preds = %.noexc.i133, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.429.0..sroa_idx, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %1, ptr %i.om, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @555, ptr noundef nonnull %i.p)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142 unwind label %bb.bo

bb.bo:                                            ; preds = %.loopexit281
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val84 = load i64, ptr %i.q, align 8           ; 2 uses
  %i.oo = icmp eq i64 %.val84, 0
  br i1 %i.oo, label %.body113, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.op = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val85 = load ptr, ptr %i.op, align 8, !nonnull !24, !noundef !24
  %i.oq = shl nuw i64 %.val84, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %i.oq, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %.body113

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142: ; preds = %.loopexit281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val82 = load i64, ptr %i.q, align 8           ; 2 uses
  %i.or = icmp eq i64 %.val82, 0
  br i1 %i.or, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143, label %bb.bq

bb.bq:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142
  %i.os = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val83 = load ptr, ptr %i.os, align 8, !nonnull !24, !noundef !24
  %i.ot = shl nuw i64 %.val82, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val83, i64 noundef %i.ot, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143: ; preds = %bb.bq, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !19196)
  %.sroa.06.0.copyload.i144 = load i64, ptr %i.r, align 8, !alias.scope !19197, !noalias !19198 ; 3 uses
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i146 = load ptr, ptr %.sroa.4.0..sroa_idx.i145, align 8, !alias.scope !19197, !noalias !19198 ; 3 uses
  %.sroa.57.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.57.0.copyload.i148 = load i64, ptr %.sroa.57.0..sroa_idx.i147, align 8, !alias.scope !19197, !noalias !19198
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19199
  %i.ou = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19199 ; 5 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.br, label %bb.bu, !prof !40

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i152 unwind label %bb.bs, !noalias !19200

.noexc.i152:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = icmp eq i64 %.sroa.06.0.copyload.i144, 0
  br i1 %i.ox, label %.body113, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i146) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i146, i64 noundef %.sroa.06.0.copyload.i144, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19201
  br label %.body113

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143
  store i64 %.sroa.06.0.copyload.i144, ptr %i.ou, align 8, !noalias !19200
  %.sroa.5.0..sroa_idx2.i149 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %.sroa.4.0.copyload.i146, ptr %.sroa.5.0..sroa_idx2.i149, align 8, !noalias !19200
  %.sroa.6.0..sroa_idx4.i150 = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store i64 %.sroa.57.0.copyload.i148, ptr %.sroa.6.0..sroa_idx4.i150, align 8, !noalias !19200
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.oy, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ou, ptr %.sroa.4229.0..sroa_idx, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @61, ptr %.sroa.5230.0..sroa_idx, align 8
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @556, ptr %.sroa.6231.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bi, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !19202)
  call void @llvm.experimental.noalias.scope.decl(metadata !19203)
  call void @llvm.experimental.noalias.scope.decl(metadata !19204)
  call void @llvm.experimental.noalias.scope.decl(metadata !19205)
  call void @llvm.experimental.noalias.scope.decl(metadata !19206)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_2
begin_hunk_3_@_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri17parse_backend_uri:bb.a
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i217, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ab, label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit

bb.ab:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i217, 1 ; 2 uses
  %i.cm = add nuw i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 4 uses
  %.not13.i.i.i218 = icmp ugt i64 %i.cn, %i.bw
  %i.co = add i64 %i.cl, %i.by                    ; 3 uses
  %or.cond.i.not.i.i219 = icmp ult i64 %i.co, %i.bw
  br i1 %or.cond.i.not.i.i219, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  br i1 %.not13.i.i.i218, label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit, label %bb.y

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.co
  %lhsc.i.i220 = load i8, ptr %i.cp, align 1, !alias.scope !21478, !noalias !21479
  %i.cq = icmp eq i8 %lhsc.i.i220, 63
  br i1 %i.cq, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.cr = sub nuw i64 %i.bw, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cn
  br label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit

.body:                                            ; preds = %.loopexit606, %.loopexit.split-lp607, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333, %bb.ah, %bb.ai
  %.pn209 = phi { ptr, i32 } [ %i.df, %bb.ah ], [ %.pn207, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333 ], [ %i.df, %bb.ai ], [ %lpad.loopexit608, %.loopexit606 ], [ %lpad.loopexit.split-lp609, %.loopexit.split-lp607 ] ; 2 uses
  %i.ct = icmp eq i64 %.sroa.098.0.copyload.i, 0
  br i1 %i.ct, label %common.resume, label %bb.af

bb.af:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.499.0.copyload.i, i64 noundef %.sroa.098.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21480
  br label %common.resume

.loopexit606:                                     ; preds = %bb.z
  %lpad.loopexit608 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp607:                            ; preds = %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit
  %lpad.loopexit.split-lp609 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit: ; preds = %bb.ac, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216, %bb.ae
  %.pre2.i.i = phi i64 [ %i.cr, %bb.ae ], [ undef, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ undef, %bb.ac ] ; 8 uses
  %.val.i235 = phi ptr [ %i.cs, %bb.ae ], [ null, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ null, %bb.ac ] ; 6 uses
  %.sroa.5.0 = phi i64 [ %i.co, %bb.ae ], [ %i.bw, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ %i.bw, %bb.ac ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload.i) ]
  invoke void @_RNvNtNtCs63DIHKhvmTb_10lance_core5cache8registry22normalize_backend_kind(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.499.0.copyload.i, i64 noundef %.sroa.5100.0.copyload.i)
          to label %.noexc229 unwind label %.loopexit.split-lp607

.noexc229:                                        ; preds = %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit
  %i.cu = load i8, ptr %i.g, align 8, !range !104, !noalias !21481, !noundef !24 ; 2 uses
  %.not.i = icmp eq i8 %i.cu, -1
  br i1 %.not.i, label %bb.ag, label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread

_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread: ; preds = %.noexc229
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.7343.1.copyload = load i56, ptr %.sroa.410.0..sroa_idx.i, align 1, !noalias !21482
  %.sroa.7343.1.insert.ext = zext i56 %.sroa.7343.1.copyload to i64
  %.sroa.7343.1.insert.shift = shl nuw i64 %.sroa.7343.1.insert.ext, 8
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.410.sroa.4.0.copyload.i = load i64, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.410.sroa.5.0.copyload.i = load ptr, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.410.sroa.6.0.copyload.i = load i64, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx.i, i64 16, i1 false), !noalias !21482
  %.sroa.18.40..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.18.40.copyload = load i64, ptr %.sroa.18.40..sroa.511.0..sroa_idx.i.sroa_idx, align 8, !noalias !21482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21481
  %.sroa.7343.0.insert.ext = zext nneg i8 %i.cu to i64
  %.sroa.7343.0.insert.insert = or disjoint i64 %.sroa.7343.1.insert.shift, %.sroa.7343.0.insert.ext
  %i.cv = inttoptr i64 %.sroa.7343.0.insert.insert to ptr
  br label %bb.aj

bb.ag:                                            ; preds = %.noexc229
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.040.0.copyload.i = load i64, ptr %i.cw, align 8, !noalias !21481 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21481 ; 4 uses
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.541.0.copyload.i = load i64, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !21481 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21481
  %i.cx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8, !range !30, !noalias !21483, !noundef !24
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i: ; preds = %bb.ag
  %.pre.i.i.i = load i64, ptr %i.cx, align 8, !noalias !21484
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !21484
  br label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %bb.ag
  %i.db = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.ah, !noalias !21481 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = extractvalue { i64, i64 } %i.db, 1      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !noalias !21485
  store i8 1, ptr %i.cy, align 8, !noalias !21485
  br label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit

bb.ah:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.040.0.copyload.i, 0
  br i1 %i.dg, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.040.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21486
  br label %.body

_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i, %.noexc.i
  %.pre-phi43.i = phi i64 [ %i.dd, %.noexc.i ], [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.dc, %.noexc.i ], [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i ] ; 3 uses
  %i.dh = add i64 %.pre-phi.i, 1
  store i64 %i.dh, ptr %i.cx, align 8, !noalias !21484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @20, i64 16), i64 16, i1 false), !noalias !21482
  %i.di = icmp eq i64 %.sroa.040.0.copyload.i, -1
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit
  %.sroa.12.0529 = phi i64 [ %.sroa.410.sroa.4.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.sroa.541.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.14346.0528 = phi ptr [ %.sroa.410.sroa.5.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ @19, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.16.0527 = phi i64 [ %.sroa.410.sroa.6.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ 0, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.18.0526 = phi i64 [ %.sroa.18.40.copyload, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.pre-phi.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.7343.0525 = phi ptr [ %i.cv, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.sroa.4.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17349)
  %.sroa.7417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.10, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7343.0525, ptr %i.dj, align 8
  %.sroa.4414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0529, ptr %.sroa.4414.0..sroa_idx, align 8
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.14346.0528, ptr %.sroa.5415.0..sroa_idx, align 8
  %.sroa.6416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.16.0527, ptr %.sroa.6416.0..sroa_idx, align 8
  %.sroa.8418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.18.0526, ptr %.sroa.8418.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.10)
  br label %bb.dg

bb.ak:                                            ; preds = %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17349)
  %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @20, i64 16), i64 16, i1 false)
  store i64 %.sroa.040.0.copyload.i, ptr %i.ad, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.541.0.copyload.i, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 5 uses
  store ptr @19, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  store i64 %.pre-phi43.i, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.10)
  %.not.i.i = icmp samesign ult i64 %.sroa.5.0, 2
  br i1 %.not.i.i, label %bb.al, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.ak
  %i.dk = load i16, ptr %i.bx, align 1
  %i.dl = icmp ne i16 12079, %i.dk
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.am, label %.thread20.i

bb.al:                                            ; preds = %bb.ak
  %i.do = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.do, label %bb.ar, label %.thread20.i

.thread20.i:                                      ; preds = %bb.al, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21487
  %i.dp = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.5.0, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21487 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.invoke, label %bb.an

bb.am:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i
  %i.dr = add i64 %.sroa.5.0, -2                  ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %bb.ar, label %3

bb.an:                                            ; preds = %.thread20.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull readonly align 1 %i.bx, i64 %.sroa.5.0, i1 false), !noalias !21488
  br label %bb.as

3:                                                ; preds = %bb.am
  %.not.i10.i = icmp slt i64 %i.dr, 0
  br i1 %.not.i10.i, label %.invoke, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21489
  %i.du = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21489 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.invoke, label %bb.ap

.invoke:                                          ; preds = %3, %bb.ao, %.thread20.i
  %4 = phi i64 [ 1, %.thread20.i ], [ 1, %bb.ao ], [ 0, %3 ]
  %5 = phi i64 [ %.sroa.5.0, %.thread20.i ], [ %i.dr, %bb.ao ], [ %i.dr, %3 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %4, i64 %5) #68
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 1 %i.ds, i64 %i.dr, i1 false), !noalias !21488
  br label %bb.as

bb.aq:                                            ; preds = %.invoke
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333

bb.ar:                                            ; preds = %bb.am, %bb.al
  %.not201 = icmp eq ptr %.val.i235, null
  br i1 %.not201, label %.split, label %.lr.ph

bb.as:                                            ; preds = %bb.an, %bb.ap
  %.sink40.i = phi i64 [ %i.dr, %bb.ap ], [ %.sroa.5.0, %bb.an ] ; 6 uses
  %.sink39.i = phi ptr [ %i.du, %bb.ap ], [ %i.dp, %bb.an ] ; 4 uses
  %i.dx = icmp sgt i64 %.sink40.i, -1
  tail call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21490
  %i.dy = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21490 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.au, label %bb.av

.split:                                           ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

bb.at:                                            ; preds = %bb.bf
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink39.i544, i64 noundef %.sink40.i533, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21491
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

.body259:                                         ; preds = %.loopexit600, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.dc, %bb.db, %.body308, %.body.i, %bb.bw, %bb.bp, %bb.bq
  %i.ea = phi i1 [ %i.ee, %.body.i ], [ %i.ee, %.body308 ], [ %i.ee, %bb.bp ], [ %i.ee, %bb.dc ], [ %i.ee, %bb.bq ], [ %i.ee, %bb.bw ], [ %i.ee, %bb.db ], [ %i.ee, %.loopexit600 ], [ %i.ee, %.loopexit.split-lp.loopexit ], [ %i.ee, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sink39.i546 = phi ptr [ %.sink39.i544, %.body.i ], [ %.sink39.i544, %.body308 ], [ %.sink39.i544, %bb.bp ], [ %.sink39.i544, %bb.dc ], [ %.sink39.i544, %bb.bq ], [ %.sink39.i544, %bb.bw ], [ %.sink39.i544, %bb.db ], [ %.sink39.i544, %.loopexit600 ], [ %.sink39.i544, %.loopexit.split-lp.loopexit ], [ %.sink39.i544, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sink39.i551.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sink40.i535 = phi i64 [ %.sink40.i533, %.body.i ], [ %.sink40.i533, %.body308 ], [ %.sink40.i533, %bb.bp ], [ %.sink40.i533, %bb.dc ], [ %.sink40.i533, %bb.bq ], [ %.sink40.i533, %bb.bw ], [ %.sink40.i533, %bb.db ], [ %.sink40.i533, %.loopexit600 ], [ %.sink40.i533, %.loopexit.split-lp.loopexit ], [ %.sink40.i533, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sink40.i540.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.099.1 = phi i8 [ %.sroa.099.0, %.body.i ], [ %.sroa.099.0, %.body308 ], [ %.sroa.099.0, %bb.bp ], [ %.sroa.099.0, %bb.dc ], [ %.sroa.099.0, %bb.bq ], [ %.sroa.099.0, %bb.bw ], [ %.sroa.099.0, %bb.db ], [ %.sroa.099.0, %.loopexit600 ], [ %.sroa.099.0, %.loopexit.split-lp.loopexit ], [ %.sroa.099.0, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.099.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn205 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.iv, %.body308 ], [ %i.gj, %bb.bp ], [ %.pn.ph, %bb.dc ], [ %i.gj, %bb.bq ], [ %eh.lpad-body.i, %bb.bw ], [ %.pn.ph, %bb.db ], [ %lpad.loopexit, %.loopexit600 ], [ %lpad.loopexit601, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit604, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eb = trunc nuw i8 %.sroa.099.1 to i1
  %.not598 = xor i1 %i.eb, true
  %brmerge599 = or i1 %i.ea, %.not598
  br i1 %brmerge599, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333, label %bb.dj

.loopexit600:                                     ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit:                      ; preds = %bb.ba
  %lpad.loopexit601 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bm
  %lpad.loopexit604 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.av, %bb.bn
  %.ph.ph.ph = phi i1 [ %i.ee, %bb.bn ], [ false, %bb.au ], [ false, %bb.av ]
  %.sink39.i551.ph.ph.ph = phi ptr [ %.sink39.i544, %bb.bn ], [ %.sink39.i, %bb.au ], [ %.sink39.i, %bb.av ]
  %.sink40.i540.ph.ph.ph = phi i64 [ %.sink40.i533, %bb.bn ], [ %.sink40.i, %bb.au ], [ %.sink40.i, %bb.av ]
  %.sroa.099.2.ph.ph.ph = phi i8 [ %.sroa.099.0, %bb.bn ], [ 1, %bb.au ], [ 0, %bb.av ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #68
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.as
  store i32 1752457584, ptr %i.dy, align 1
  store i64 4, ptr %i.ab, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dy, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4, ptr %.sroa.6128.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sink40.i, ptr %i.aa, align 8
  %.sroa.8352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sink39.i, ptr %.sroa.8352.0..sroa_idx, align 8
  %.sroa.12353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sink40.i, ptr %.sroa.12353.0..sroa_idx, align 8
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef align 8 dereferenceable(48) %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val212 = load i64, ptr %i.ac, align 8, !range !26, !noundef !24 ; 2 uses
  %i.ec = icmp sgt i64 %.val212, 0
  br i1 %i.ec, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val213 = load ptr, ptr %i.ed, align 8, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val213, i64 noundef %.val212, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21492
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not200 = icmp eq ptr %.val.i235, null
  br i1 %.not200, label %bb.ay, label %.lr.ph

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit, %bb.ar
  %i.ee = phi i1 [ true, %bb.ar ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sink39.i544 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ar ], [ %.sink39.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sink40.i533 = phi i64 [ 0, %bb.ar ], [ %.sink40.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sroa.099.0 = phi i8 [ 1, %bb.ar ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i235) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.4459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.5460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.4473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.7360.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %.backedge
  %.lcssa632649 = phi i64 [ 0, %.lr.ph ], [ %.lcssa632647, %.backedge ] ; 3 uses
  %.lcssa611635644 = phi i64 [ 0, %.lr.ph ], [ %.lcssa611634, %.backedge ] ; 6 uses
  %i.em = icmp ult i64 %.pre2.i.i, %.lcssa632649
  br i1 %i.em, label %select.unfold, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.az, %bb.bd
  %i.en = phi i64 [ %i.fc, %bb.bd ], [ %.lcssa632649, %bb.az ] ; 5 uses
  %i.eo = sub nuw i64 %.pre2.i.i, %i.en           ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i235, i64 %i.en ; 2 uses
  %i.eq = icmp samesign ult i64 %i.eo, 16
  br i1 %i.eq, label %.preheader.i.i.i, label %bb.ba

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ba:                                            ; preds = %.lr.ph.split.i.i
  %i.er = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.eo)
          to label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.bb, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.eo, %bb.bb ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.bb ], [ 1, %.lr.ph.i.i.i ]
  %i.es = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.et = insertvalue { i64, i64 } %i.es, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bb
  %.sroa.01.05.i.i.i = phi i64 [ %i.ex, %bb.bb ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.05.i.i.i
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !21493, !noalias !21494, !noundef !24
  %i.ew = icmp eq i8 %i.ev, 38
  br i1 %i.ew, label %._crit_edge.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.ex = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ex, %i.eo
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.ba, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.et, %._crit_edge.i.i.i ], [ %i.er, %bb.ba ] ; 2 uses
  %i.ey = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %bb.bc, label %select.unfold

bb.bc:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i
  %i.fa = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.fb = add nuw i64 %i.en, 1
  %i.fc = add i64 %i.fb, %i.fa                    ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.fc, %.pre2.i.i
  %i.fd = add i64 %i.en, %i.fa
  %or.cond.i.i.not = icmp ult i64 %i.fd, %.pre2.i.i
  br i1 %or.cond.i.i.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  br i1 %.not13.i.i, label %select.unfold, label %.lr.ph.split.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fe = add i64 %i.en, %i.fa                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i235, i64 %i.fe
  %lhsc = load i8, ptr %i.ff, align 1
end_hunk_3
