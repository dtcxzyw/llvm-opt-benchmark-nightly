Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.15?download=true
inline.NumInlined: 5557
inline.NumDeleted: 2436
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtB7_21WasmComponentInstance3new0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
bb.gu:                                            ; preds = %bb.gq, %bb.gm
  %i.aef = phi ptr [ %i.ka, %bb.gm ], [ %i.acs, %bb.gq ] ; 3 uses
  %i.aeg = phi ptr [ %i.jz, %bb.gm ], [ %i.act, %bb.gq ] ; 3 uses
  %i.aeh = phi ptr [ %.phi.trans.insert.i, %bb.gm ], [ %i.acu, %bb.gq ] ; 3 uses
  %i.aei = phi ptr [ %i.ld, %bb.gm ], [ %i.acv, %bb.gq ] ; 3 uses
  %i.aej = phi ptr [ %.phi.trans.insert.i.i, %bb.gm ], [ %i.acw, %bb.gq ] ; 3 uses
  %i.aek = phi ptr [ %.phi.trans.insert.i.i.i, %bb.gm ], [ %i.acx, %bb.gq ] ; 3 uses
  %i.ael = phi ptr [ %i.nq, %bb.gm ], [ %i.acy, %bb.gq ] ; 3 uses
  %i.aem = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.gm ], [ %i.acz, %bb.gq ] ; 3 uses
  %i.aen = phi ptr [ %i.ok, %bb.gm ], [ %i.ada, %bb.gq ] ; 3 uses
  %i.aeo = phi ptr [ %.phi.trans.insert.i.i.i.i.i, %bb.gm ], [ %i.adb, %bb.gq ] ; 3 uses
  %i.aep = phi ptr [ %i.rd, %bb.gm ], [ %i.adc, %bb.gq ] ; 3 uses
  %i.aeq = phi ptr [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.gm ], [ %i.add, %bb.gq ] ; 3 uses
  %i.aer = phi ptr [ %i.yp, %bb.gm ], [ %i.ade, %bb.gq ] ; 3 uses
  %i.aes = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.gm ], [ %i.adf, %bb.gq ] ; 3 uses
  %i.aet = phi ptr [ %i.aaq, %bb.gm ], [ %i.adg, %bb.gq ] ; 3 uses
  %i.aeu = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.gm ], [ %i.adi, %bb.gq ] ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 3 uses
  %i.aew = load i8, ptr %i.aev, align 16, !range !44, !noalias !7747, !noundef !13
  switch i8 %i.aew, label %default.unreachable429 [
    i8 0, label %bb.gv
    i8 1, label %bb.hi
    i8 2, label %bb.hj
    i8 3, label %bb.hl
  ]

bb.gv:                                            ; preds = %bb.gu
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 2 uses
  %i.aez = load ptr, ptr %i.aex, align 16, !noalias !7747, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  store ptr %i.aez, ptr %i.aey, align 16, !noalias !7747
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.afb = load ptr, ptr %i.afa, align 8, !noalias !7747, !align !14, !noundef !13
  %i.afc = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7747 ; 2 uses
  %i.afd = icmp ult i64 %i.afc, 6
  call void @llvm.assume(i1 %i.afd)
  %i.afe = icmp samesign ugt i64 %i.afc, 4
  br i1 %i.afe, label %bb.gx, label %bb.gz

bb.gw:                                            ; preds = %bb.gx
  %i.aff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7747
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7747
  %i.afg = getelementptr i8, ptr %i.aez, i64 208
  %.val23.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afg, align 8, !range !15, !noalias !7748, !noundef !13
  store i64 %.val23.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !7747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7747
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !7747
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXsj_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4dataNtB5_7StoreIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7747
  store ptr @363, ptr %i.ab, align 8, !noalias !7747
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 24, ptr %i.afh, align 8, !noalias !7747
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr @363, ptr %i.afi, align 8, !noalias !7747
  %i.afj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 24, ptr %i.afj, align 8, !noalias !7747
  %i.afk = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr @362, ptr %i.afk, align 8, !noalias !7747
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull @361, ptr noundef nonnull %i.ac, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ab)
          to label %bb.gy unwind label %bb.gw, !noalias !7748

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7747
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aey, align 16, !noalias !7747
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gv
  %i.afl = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.gy ], [ %i.aez, %bb.gv ] ; 4 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 352
  %.val24.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afm, align 8, !range !24, !noalias !7748, !noundef !13
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val24.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.hc, label %bb.ha, !prof !16

bb.ha:                                            ; preds = %bb.gz
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #35
          to label %bb.hb unwind label %bb.hk, !noalias !7748

bb.hb:                                            ; preds = %bb.hg, %bb.hd, %bb.ha
  unreachable

bb.hc:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7747
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 520
  %.val25.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afn, align 8, !range !15, !noalias !7748, !noundef !13 ; 2 uses
  %i.afo = inttoptr i64 %.val25.i.i.i.i.i.i.i.i.i.i to ptr
  store ptr %i.afo, ptr %i.aa, align 8, !noalias !7747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7747
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8, !noalias !7747
  %i.afp = icmp eq i64 %.val25.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.afp, label %bb.hf, label %bb.hd, !prof !16

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtNtB4_3ptr8non_null7NonNullhEBM_ECs43kcu4yvms7_24influxdb3_query_executor(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #35
          to label %bb.hb unwind label %bb.he, !noalias !7748

bb.he:                                            ; preds = %bb.hd
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7747
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7747
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 528
  %i.afs = load atomic i64, ptr %i.afr monotonic, align 8, !noalias !7748 ; 2 uses
  store i64 %i.afs, ptr %i.y, align 8, !noalias !7747
  %i.aft = icmp eq i64 %i.afs, 0
  br i1 %i.aft, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.hg, !prof !16

bb.hg:                                            ; preds = %bb.hf
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @256, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #35
          to label %bb.hb unwind label %bb.hh, !noalias !7748

bb.hh:                                            ; preds = %bb.hg
  %i.afu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7747
  br label %.body.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7747
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 1416
  store ptr %i.afl, ptr %i.afv, align 8, !noalias !7747
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store ptr %i.afb, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  br label %bb.hn

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.hm, %bb.hk, %bb.hh, %bb.he, %bb.gw
  %.pn16.pn.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aff, %bb.gw ], [ %i.afu, %bb.hh ], [ %i.afq, %bb.he ], [ %i.afx, %bb.hm ], [ %i.afw, %bb.hk ]
  store i8 2, ptr %i.aev, align 16, !noalias !7747
  br label %.body.i.i.i.i.i.i.i.i.i

bb.hi:                                            ; preds = %bb.gu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #35
          to label %.noexc14.i.i.i.i.i.i.i.i.i unwind label %bb.gt, !noalias !7748

.noexc14.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.hi
  unreachable

bb.hj:                                            ; preds = %bb.gu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #35
          to label %.noexc15.i.i.i.i.i.i.i.i.i unwind label %bb.gt, !noalias !7748

.noexc15.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.hj
  unreachable

bb.hk:                                            ; preds = %bb.hp, %bb.ho, %bb.ha
  %i.afw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.hl:                                            ; preds = %bb.gu
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %.pre22.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !range !82, !noalias !7749
  switch i8 %.pre22.i.i.i.i.i.i.i.i.i.i, label %default.unreachable429 [
    i8 0, label %bb.hn
    i8 1, label %bb.ho
    i8 2, label %bb.hp
  ]

bb.hm:                                            ; preds = %bb.hn
  %i.afx = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.afy, align 8, !noalias !7749
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hl, %.thread.i.i.i.i.i.i.i.i.i.i
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 2 uses
  %i.afz = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly captures(address, read_provenance) @375, i64 noundef 73)
          to label %3 unwind label %bb.hm, !noalias !7748

bb.ho:                                            ; preds = %bb.hl
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #35
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.hk, !noalias !7748

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ho
  unreachable

bb.hp:                                            ; preds = %bb.hl
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #35
          to label %.noexc28.i.i.i.i.i.i.i.i.i.i unwind label %bb.hk, !noalias !7748

.noexc28.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hp
  unreachable

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.gn
  store i8 1, ptr %i.adi, align 8, !noalias !7747
  %.phi.trans.insert126.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %.pre127.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert126.i.i.i.i.i.i.i.i, align 8, !noalias !7747 ; 2 uses
  %.val49.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.pre127.i.i.i.i.i.i.i.i, align 8, !noalias !7748
  br label %bb.hq

bb.hq:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i, %bb.gj
  %i.aga = phi ptr [ %i.acs, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aar, %bb.gj ] ; 3 uses
  %i.agb = phi ptr [ %i.act, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aas, %bb.gj ] ; 3 uses
  %i.agc = phi ptr [ %i.acu, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aat, %bb.gj ] ; 3 uses
  %i.agd = phi ptr [ %i.acv, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aau, %bb.gj ] ; 3 uses
  %i.age = phi ptr [ %i.acw, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aav, %bb.gj ] ; 3 uses
  %i.agf = phi ptr [ %i.acx, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aaw, %bb.gj ] ; 3 uses
  %i.agg = phi ptr [ %i.acy, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aax, %bb.gj ] ; 3 uses
  %i.agh = phi ptr [ %i.acz, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aay, %bb.gj ] ; 3 uses
  %i.agi = phi ptr [ %i.ada, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aaz, %bb.gj ] ; 3 uses
  %i.agj = phi ptr [ %i.adb, %.critedge.i.i.i.i.i.i.i.i ], [ %i.aba, %bb.gj ] ; 3 uses
  %i.agk = phi ptr [ %i.adc, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abb, %bb.gj ] ; 3 uses
  %i.agl = phi ptr [ %i.add, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abc, %bb.gj ] ; 3 uses
  %i.agm = phi ptr [ %i.ade, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abd, %bb.gj ] ; 3 uses
  %i.agn = phi ptr [ %i.adf, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abh, %bb.gj ] ; 3 uses
  %i.ago = phi ptr [ %i.adg, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abi, %bb.gj ] ; 3 uses
  %.val49.i.i.i.i.i.i.i.i = phi ptr [ %.val49.pre.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i ], [ %.val46.i.i.i.i.i.i.i.i, %bb.gj ]
  %i.agp = phi ptr [ %.pre127.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i ], [ %i.abv, %bb.gj ]
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.agr = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i.i.i.i.i, i64 16
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store ptr %i.agr, ptr %i.ags, align 16, !noalias !7747
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  %i.agu = load ptr, ptr %i.agt, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.agv = invoke { i64, ptr } @_RNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB5_11StoreOpaque15register_module(ptr noundef nonnull align 8 %i.agu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.agp)
          to label %bb.hr unwind label %bb.hw, !noalias !7748 ; 2 uses

bb.hr:                                            ; preds = %bb.hq
  %i.agw = extractvalue { i64, ptr } %i.agv, 0
  %i.agx = extractvalue { i64, ptr } %i.agv, 1
  %i.agy = ptrtoint ptr %i.agx to i64             ; 2 uses
  %i.agz = trunc nuw i64 %i.agw to i1
  br i1 %i.agz, label %bb.my, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.989.i.i.i.i.i.i.i.i)
  %i.aha = load ptr, ptr %i.agt, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %.val47.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahb, align 16, !noalias !7747, !align !14, !noundef !13
  %i.ahc = load ptr, ptr %i.agq, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %.val50.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahc, align 8, !noalias !7748, !nonnull !13, !noundef !13 ; 2 uses
  %i.ahd = atomicrmw add ptr %.val50.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !7748
  %i.ahe = icmp slt i64 %i.ahd, 0
  br i1 %i.ahe, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.trap()
  unreachable

bb.hu:                                            ; preds = %bb.hs
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 1272 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store ptr %.val50.i.i.i.i.i.i.i.i, ptr %i.ahg, align 16, !noalias !7747
  store i64 0, ptr %i.ahf, align 8, !noalias !7747
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.989.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.ahh, i64 80, i1 false), !noalias !7747
  store ptr %i.aha, ptr %i.ahh, align 16, !noalias !7747
  %.sroa.888.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store ptr %i.ahf, ptr %.sroa.888.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.989.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.989.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.989.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !7747
  %.sroa.1090.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store ptr %.val47.i.i.i.i.i.i.i.i, ptr %.sroa.1090.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.1191.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1400
  store ptr null, ptr %.sroa.1191.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.1191.sroa.8.0..sroa.1191.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  store i64 %i.agy, ptr %.sroa.1191.sroa.8.0..sroa.1191.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1916
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !7747
  br label %bb.ia

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i: ; preds = %bb.if, %bb.hz, %bb.hy
  %.pn30.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ajw, %bb.if ], [ %i.aia, %bb.hy ], [ %i.aia, %bb.hz ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 1272
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm17ModuleRuntimeInfoECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.ahi) #32
          to label %bb.hv unwind label %bb.hx, !noalias !7748

bb.hv:                                            ; preds = %bb.ie, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i
  %.pn32.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ajb, %bb.ie ], [ %.pn30.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.989.i.i.i.i.i.i.i.i)
  br label %.body.i.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.hq, %bb.gs, %bb.gr, %bb.gg, %bb.gf
  %i.ahj = phi ptr [ %i.aar, %bb.gg ], [ %i.aga, %bb.hq ], [ %i.ka, %bb.gs ], [ %i.ka, %bb.gr ], [ %i.aar, %bb.gf ]
  %i.ahk = phi ptr [ %i.aas, %bb.gg ], [ %i.agb, %bb.hq ], [ %i.jz, %bb.gs ], [ %i.jz, %bb.gr ], [ %i.aas, %bb.gf ]
  %i.ahl = phi ptr [ %i.aat, %bb.gg ], [ %i.agc, %bb.hq ], [ %.phi.trans.insert.i, %bb.gs ], [ %.phi.trans.insert.i, %bb.gr ], [ %i.aat, %bb.gf ]
  %i.ahm = phi ptr [ %i.aau, %bb.gg ], [ %i.agd, %bb.hq ], [ %i.ld, %bb.gs ], [ %i.ld, %bb.gr ], [ %i.aau, %bb.gf ]
  %i.ahn = phi ptr [ %i.aav, %bb.gg ], [ %i.age, %bb.hq ], [ %.phi.trans.insert.i.i, %bb.gs ], [ %.phi.trans.insert.i.i, %bb.gr ], [ %i.aav, %bb.gf ]
  %i.aho = phi ptr [ %i.aaw, %bb.gg ], [ %i.agf, %bb.hq ], [ %.phi.trans.insert.i.i.i, %bb.gs ], [ %.phi.trans.insert.i.i.i, %bb.gr ], [ %i.aaw, %bb.gf ]
  %i.ahp = phi ptr [ %i.aax, %bb.gg ], [ %i.agg, %bb.hq ], [ %i.nq, %bb.gs ], [ %i.nq, %bb.gr ], [ %i.aax, %bb.gf ]
  %i.ahq = phi ptr [ %i.aay, %bb.gg ], [ %i.agh, %bb.hq ], [ %.phi.trans.insert.i.i.i.i, %bb.gs ], [ %.phi.trans.insert.i.i.i.i, %bb.gr ], [ %i.aay, %bb.gf ]
  %i.ahr = phi ptr [ %i.aaz, %bb.gg ], [ %i.agi, %bb.hq ], [ %i.ok, %bb.gs ], [ %i.ok, %bb.gr ], [ %i.aaz, %bb.gf ]
  %i.ahs = phi ptr [ %i.aba, %bb.gg ], [ %i.agj, %bb.hq ], [ %.phi.trans.insert.i.i.i.i.i, %bb.gs ], [ %.phi.trans.insert.i.i.i.i.i, %bb.gr ], [ %i.aba, %bb.gf ]
  %i.aht = phi ptr [ %i.abb, %bb.gg ], [ %i.agk, %bb.hq ], [ %i.rd, %bb.gs ], [ %i.rd, %bb.gr ], [ %i.abb, %bb.gf ]
  %i.ahu = phi ptr [ %i.abc, %bb.gg ], [ %i.agl, %bb.hq ], [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.gs ], [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.gr ], [ %i.abc, %bb.gf ]
  %i.ahv = phi ptr [ %i.abd, %bb.gg ], [ %i.agm, %bb.hq ], [ %i.yp, %bb.gs ], [ %i.yp, %bb.gr ], [ %i.abd, %bb.gf ]
  %i.ahw = phi ptr [ %i.abh, %bb.gg ], [ %i.agn, %bb.hq ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.gs ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.gr ], [ %i.abh, %bb.gf ]
  %i.ahx = phi ptr [ %i.abi, %bb.gg ], [ %i.ago, %bb.hq ], [ %i.aaq, %bb.gs ], [ %i.aaq, %bb.gr ], [ %i.abi, %bb.gf ]
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

3:                                                ; preds = %bb.hn
  store i8 1, ptr %i.afy, align 8, !noalias !7749
  store i8 1, ptr %i.aev, align 16, !noalias !7747
  store i8 1, ptr %i.aeu, align 8, !noalias !7747
  %4 = ptrtoint ptr %i.afz to i64
  br label %bb.my

bb.hx:                                            ; preds = %.body67.i.i.i.i.i.i.i.i, %bb.hz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i
  %i.ahz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7748
  unreachable

bb.hy:                                            ; preds = %bb.ia
  %i.aia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7747
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 1916
  %i.aic = load i8, ptr %i.aib, align 4, !range !44, !noalias !7747, !noundef !13
  %cond.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aic, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i, label %bb.hz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %bb.hy
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 1440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.aid)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i unwind label %bb.hx, !noalias !7748

bb.ia:                                            ; preds = %bb.hu, %bb.gd
  %i.aie = phi ptr [ %i.aga, %bb.hu ], [ %i.ka, %bb.gd ] ; 5 uses
  %i.aif = phi ptr [ %i.agb, %bb.hu ], [ %i.jz, %bb.gd ] ; 5 uses
  %i.aig = phi ptr [ %i.agc, %bb.hu ], [ %.phi.trans.insert.i, %bb.gd ] ; 5 uses
  %i.aih = phi ptr [ %i.agd, %bb.hu ], [ %i.ld, %bb.gd ] ; 4 uses
  %i.aii = phi ptr [ %i.age, %bb.hu ], [ %.phi.trans.insert.i.i, %bb.gd ] ; 5 uses
  %i.aij = phi ptr [ %i.agf, %bb.hu ], [ %.phi.trans.insert.i.i.i, %bb.gd ] ; 5 uses
  %i.aik = phi ptr [ %i.agg, %bb.hu ], [ %i.nq, %bb.gd ] ; 4 uses
  %i.ail = phi ptr [ %i.agh, %bb.hu ], [ %.phi.trans.insert.i.i.i.i, %bb.gd ] ; 5 uses
  %i.aim = phi ptr [ %i.agi, %bb.hu ], [ %i.ok, %bb.gd ] ; 4 uses
  %i.ain = phi ptr [ %i.agj, %bb.hu ], [ %.phi.trans.insert.i.i.i.i.i, %bb.gd ] ; 5 uses
  %i.aio = phi ptr [ %i.agk, %bb.hu ], [ %i.rd, %bb.gd ] ; 4 uses
  %i.aip = phi ptr [ %i.agl, %bb.hu ], [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.gd ] ; 5 uses
  %i.aiq = phi ptr [ %i.agm, %bb.hu ], [ %i.yp, %bb.gd ] ; 4 uses
  %i.air = phi ptr [ %i.agn, %bb.hu ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.gd ] ; 5 uses
  %i.ais = phi ptr [ %i.ago, %bb.hu ], [ %i.aaq, %bb.gd ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7747
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 2 uses
  invoke fastcc void @_RNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noundef nonnull align 8 %i.ait, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ib unwind label %bb.hy, !noalias !7748

bb.ib:                                            ; preds = %bb.ia
  %i.aiu = load i32, ptr %i.af, align 8, !range !81, !noalias !7747, !noundef !13 ; 2 uses
  %i.aiv = icmp eq i32 %i.aiu, 2
  br i1 %i.aiv, label %bb.mx, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !7747 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7747 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7747
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 1916
  %i.aix = load i8, ptr %i.aiw, align 4, !range !44, !noalias !7747, !noundef !13
  %cond.i56.i.i.i.i.i.i.i.i = icmp eq i8 %i.aix, 3
  br i1 %cond.i56.i.i.i.i.i.i.i.i, label %bb.id, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit58.i.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.ic
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 1440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.aiy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit58.i.i.i.i.i.i.i.i unwind label %bb.if, !noalias !7748

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit58.i.i.i.i.i.i.i.i: ; preds = %bb.id, %bb.ic
  %i.aiz = trunc nuw i32 %i.aiu to i1
  br i1 %i.aiz, label %bb.ig, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit58.i.i.i.i.i.i.i.i
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 1272
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm17ModuleRuntimeInfoECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.aja)
          to label %.thread169.i.i.i.i.i.i.i.i unwind label %bb.ie, !noalias !7748

bb.ie:                                            ; preds = %bb.ig, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

.thread169.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store4data10InstanceIdNtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.989.i.i.i.i.i.i.i.i)
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.ajd = load ptr, ptr %i.ajc, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13 ; 6 uses
  %i.aje = getelementptr i8, ptr %i.ajd, i64 208
  %.val51.i.i.i.i.i.i.i.i = load i64, ptr %i.aje, align 8, !range !15, !noalias !7748, !noundef !13
  store i64 %.val51.i.i.i.i.i.i.i.i, ptr %i.ait, align 16, !noalias !7747
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store i32 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ajf, align 8, !noalias !7747
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 480
  %.val52.i.i.i.i.i.i.i.i = load ptr, ptr %i.ajg, align 8, !noalias !7748, !nonnull !13, !noundef !13
  %i.ajh = getelementptr inbounds nuw i8, ptr %.val52.i.i.i.i.i.i.i.i, i64 368
  %i.aji = load i64, ptr %i.ajh, align 8, !noalias !7748, !noundef !13
  %i.ajj = and i64 %i.aji, 34359738400
  %i.ajk = icmp eq i64 %i.ajj, 34359738400        ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.ajm = load ptr, ptr %i.ajl, align 16, !noalias !7747, !align !14, !noundef !13 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.ajo = load ptr, ptr %i.ajn, align 16, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 80
  %.val41.i.i.i.i.i.i.i.i = load ptr, ptr %i.ajp, align 8, !noalias !7748, !nonnull !13, !noundef !13
  %i.ajq = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.ajr = zext i1 %i.ajk to i8
  %.sroa.7107.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store ptr %i.ajm, ptr %.sroa.7107.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.9109.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store ptr %i.ajd, ptr %.sroa.9109.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.10110.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1400
  store ptr %i.ajq, ptr %.sroa.10110.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.11111.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  store i32 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.11111.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.13113.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1416 ; 3 uses
  store i8 0, ptr %.sroa.13113.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.14114.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1417
  store i8 %i.ajr, ptr %.sroa.14114.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !7747
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  store ptr %i.ajd, ptr %i.ajt, align 8, !noalias !7747
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  store ptr %i.ajm, ptr %i.aju, align 16, !noalias !7747
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  store ptr %i.ajq, ptr %i.ajv, align 8, !noalias !7747
  br i1 %i.ajk, label %.thread79.i.i.i.i.i.i.i.i.i, label %bb.il

bb.if:                                            ; preds = %bb.id
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsd_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtBJ_11StoreOpaque17allocate_instance0ECs43kcu4yvms7_24influxdb3_query_executor.exit58.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i.i) ]
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 1272
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm17ModuleRuntimeInfoECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.ajx)
          to label %bb.ih unwind label %bb.ie, !noalias !7748

bb.ih:                                            ; preds = %bb.ig
  %i.ajy = ptrtoint ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.989.i.i.i.i.i.i.i.i)
  br label %bb.my

bb.ii:                                            ; preds = %bb.ip, %bb.io
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i.i.i.i.i.i.i

.body67.i.i.i.i.i.i.i.i:                          ; preds = %.body40.i.i.i.i.i.i.i.i.i, %bb.ii
  %i.aka = phi ptr [ %i.ka, %bb.ii ], [ %i.aml, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akb = phi ptr [ %i.jz, %bb.ii ], [ %i.amm, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akc = phi ptr [ %.phi.trans.insert.i, %bb.ii ], [ %i.amn, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akd = phi ptr [ %i.ld, %bb.ii ], [ %i.amo, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.ake = phi ptr [ %.phi.trans.insert.i.i, %bb.ii ], [ %i.amp, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akf = phi ptr [ %.phi.trans.insert.i.i.i, %bb.ii ], [ %i.amq, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akg = phi ptr [ %i.nq, %bb.ii ], [ %i.amr, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akh = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.ii ], [ %i.ams, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.aki = phi ptr [ %i.ok, %bb.ii ], [ %i.amt, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akj = phi ptr [ %.phi.trans.insert.i.i.i.i.i, %bb.ii ], [ %i.amu, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akk = phi ptr [ %i.rd, %bb.ii ], [ %i.amv, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akl = phi ptr [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.ii ], [ %i.amw, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akm = phi ptr [ %i.yp, %bb.ii ], [ %i.amx, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akn = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.ii ], [ %i.amy, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.ako = phi ptr [ %i.aaq, %bb.ii ], [ %i.amz, %.body40.i.i.i.i.i.i.i.i.i ]
  %i.akp = phi ptr [ %i.akq, %bb.ii ], [ %i.anb, %.body40.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body68.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ajz, %bb.ii ], [ %.pn36.i.i.i.i.i.i.i.i.i, %.body40.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocator19initialize_instance0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.akp) #32
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.hx, !noalias !7748

bb.ij:                                            ; preds = %bb.gc
  %.phi.trans.insert130.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1416 ; 13 uses
  %.pre131.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert130.i.i.i.i.i.i.i.i, align 8, !range !43, !noalias !7747
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 13 uses
  switch i8 %.pre131.i.i.i.i.i.i.i.i, label %default.unreachable429 [
    i8 0, label %bb.ik
    i8 1, label %bb.io
    i8 2, label %bb.ip
    i8 3, label %bb.iq
    i8 4, label %bb.js
  ]

bb.ik:                                            ; preds = %bb.ij
  %.phi.trans.insert95.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %.pre96.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert95.i.i.i.i.i.i.i, align 16, !noalias !7747 ; 3 uses
  %.phi.trans.insert97.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %.pre98.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert97.i.i.i.i.i.i.i, align 16, !noalias !7747 ; 2 uses
  %.phi.trans.insert99.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %.pre100.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert99.i.i.i.i.i.i.i, align 16, !noalias !7747 ; 2 uses
  %.phi.trans.insert101.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %.pre102.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert101.i.i.i.i.i.i.i, align 8, !noalias !7747 ; 3 uses
  %.phi.trans.insert103.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1417
  %.pre104.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert103.i.i.i.i.i.i.i, align 1, !range !19, !noalias !7747
  %i.akr = trunc nuw i8 %.pre104.i.i.i.i.i.i.i to i1
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  store ptr %.pre96.i.i.i.i.i.i.i, ptr %i.aks, align 8, !noalias !7747
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  store ptr %.pre98.i.i.i.i.i.i.i, ptr %i.akt, align 16, !noalias !7747
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  store ptr %.pre102.i.i.i.i.i.i.i, ptr %i.aku, align 8, !noalias !7747
  br i1 %i.akr, label %.thread79.i.i.i.i.i.i.i.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik, %.thread169.i.i.i.i.i.i.i.i
  %i.akv = phi ptr [ %i.aie, %.thread169.i.i.i.i.i.i.i.i ], [ %i.ka, %bb.ik ] ; 3 uses
  %i.akw = phi ptr [ %i.aif, %.thread169.i.i.i.i.i.i.i.i ], [ %i.jz, %bb.ik ] ; 3 uses
  %i.akx = phi ptr [ %i.aig, %.thread169.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i, %bb.ik ] ; 3 uses
  %i.aky = phi ptr [ %i.aih, %.thread169.i.i.i.i.i.i.i.i ], [ %i.ld, %bb.ik ] ; 3 uses
  %i.akz = phi ptr [ %i.aii, %.thread169.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.ik ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtB7_21WasmComponentInstance3new0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %i.bnm = load ptr, ptr %i.bmf, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bcx, i64 80 ; 3 uses
  %i.bno = invoke noundef i64 @_RNvMs0_NtCs3qFYL1dVk0u_16wasmtime_environ6moduleNtB5_20TableSegmentElements3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnn)
          to label %.thread71.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp, !noalias !7748 ; 2 uses

.loopexit:                                        ; preds = %bb.ju
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp:                               ; preds = %bb.jv, %bb.ll, %bb.lm, %bb.me, %bb.mk, %bb.ml, %bb.mm, %bb.mn
  %.ph467 = phi ptr [ %i.bab, %bb.jv ], [ %i.ka, %bb.ll ], [ %i.ka, %bb.lm ], [ %i.bce, %bb.me ], [ %i.bce, %bb.mk ], [ %i.bce, %bb.ml ], [ %i.bce, %bb.mm ], [ %i.bce, %bb.mn ]
  %.ph468 = phi ptr [ %i.bac, %bb.jv ], [ %i.jz, %bb.ll ], [ %i.jz, %bb.lm ], [ %i.bcf, %bb.me ], [ %i.bcf, %bb.mk ], [ %i.bcf, %bb.ml ], [ %i.bcf, %bb.mm ], [ %i.bcf, %bb.mn ]
  %.ph469 = phi ptr [ %i.bad, %bb.jv ], [ %.phi.trans.insert.i, %bb.ll ], [ %.phi.trans.insert.i, %bb.lm ], [ %i.bcg, %bb.me ], [ %i.bcg, %bb.mk ], [ %i.bcg, %bb.ml ], [ %i.bcg, %bb.mm ], [ %i.bcg, %bb.mn ]
  %.ph470 = phi ptr [ %i.bae, %bb.jv ], [ %i.ld, %bb.ll ], [ %i.ld, %bb.lm ], [ %i.bch, %bb.me ], [ %i.bch, %bb.mk ], [ %i.bch, %bb.ml ], [ %i.bch, %bb.mm ], [ %i.bch, %bb.mn ]
  %.ph471 = phi ptr [ %i.baf, %bb.jv ], [ %.phi.trans.insert.i.i, %bb.ll ], [ %.phi.trans.insert.i.i, %bb.lm ], [ %i.bci, %bb.me ], [ %i.bci, %bb.mk ], [ %i.bci, %bb.ml ], [ %i.bci, %bb.mm ], [ %i.bci, %bb.mn ]
  %.ph472 = phi ptr [ %i.bag, %bb.jv ], [ %.phi.trans.insert.i.i.i, %bb.ll ], [ %.phi.trans.insert.i.i.i, %bb.lm ], [ %i.bcj, %bb.me ], [ %i.bcj, %bb.mk ], [ %i.bcj, %bb.ml ], [ %i.bcj, %bb.mm ], [ %i.bcj, %bb.mn ]
  %.ph473 = phi ptr [ %i.bah, %bb.jv ], [ %i.nq, %bb.ll ], [ %i.nq, %bb.lm ], [ %i.bck, %bb.me ], [ %i.bck, %bb.mk ], [ %i.bck, %bb.ml ], [ %i.bck, %bb.mm ], [ %i.bck, %bb.mn ]
  %.ph474 = phi ptr [ %i.bai, %bb.jv ], [ %.phi.trans.insert.i.i.i.i, %bb.ll ], [ %.phi.trans.insert.i.i.i.i, %bb.lm ], [ %i.bcl, %bb.me ], [ %i.bcl, %bb.mk ], [ %i.bcl, %bb.ml ], [ %i.bcl, %bb.mm ], [ %i.bcl, %bb.mn ]
  %.ph475 = phi ptr [ %i.baj, %bb.jv ], [ %i.ok, %bb.ll ], [ %i.ok, %bb.lm ], [ %i.bcm, %bb.me ], [ %i.bcm, %bb.mk ], [ %i.bcm, %bb.ml ], [ %i.bcm, %bb.mm ], [ %i.bcm, %bb.mn ]
  %.ph476 = phi ptr [ %i.bak, %bb.jv ], [ %.phi.trans.insert.i.i.i.i.i, %bb.ll ], [ %.phi.trans.insert.i.i.i.i.i, %bb.lm ], [ %i.bcn, %bb.me ], [ %i.bcn, %bb.mk ], [ %i.bcn, %bb.ml ], [ %i.bcn, %bb.mm ], [ %i.bcn, %bb.mn ]
  %.ph477 = phi ptr [ %i.bal, %bb.jv ], [ %i.rd, %bb.ll ], [ %i.rd, %bb.lm ], [ %i.bco, %bb.me ], [ %i.bco, %bb.mk ], [ %i.bco, %bb.ml ], [ %i.bco, %bb.mm ], [ %i.bco, %bb.mn ]
  %.ph478 = phi ptr [ %i.bam, %bb.jv ], [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.ll ], [ %.phi.trans.insert193.i.i.i.i.i.i, %bb.lm ], [ %i.bcp, %bb.me ], [ %i.bcp, %bb.mk ], [ %i.bcp, %bb.ml ], [ %i.bcp, %bb.mm ], [ %i.bcp, %bb.mn ]
  %.ph479 = phi ptr [ %i.ban, %bb.jv ], [ %i.yp, %bb.ll ], [ %i.yp, %bb.lm ], [ %i.bcq, %bb.me ], [ %i.bcq, %bb.mk ], [ %i.bcq, %bb.ml ], [ %i.bcq, %bb.mm ], [ %i.bcq, %bb.mn ]
  %.ph480 = phi ptr [ %i.bao, %bb.jv ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.ll ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %bb.lm ], [ %i.bcr, %bb.me ], [ %i.bcr, %bb.mk ], [ %i.bcr, %bb.ml ], [ %i.bcr, %bb.mm ], [ %i.bcr, %bb.mn ]
  %.ph481 = phi ptr [ %i.bap, %bb.jv ], [ %i.aaq, %bb.ll ], [ %i.aaq, %bb.lm ], [ %i.bcs, %bb.me ], [ %i.bcs, %bb.mk ], [ %i.bcs, %bb.ml ], [ %i.bcs, %bb.mm ], [ %i.bcs, %bb.mn ]
  %.ph482 = phi ptr [ %i.baq, %bb.jv ], [ %.phi.trans.insert130.i.i.i.i.i.i.i.i, %bb.ll ], [ %.phi.trans.insert130.i.i.i.i.i.i.i.i, %bb.lm ], [ %i.bct, %bb.me ], [ %i.bct, %bb.mk ], [ %i.bct, %bb.ml ], [ %i.bct, %bb.mm ], [ %i.bct, %bb.mn ]
  %.ph483 = phi ptr [ %i.bar, %bb.jv ], [ %i.akq, %bb.ll ], [ %i.akq, %bb.lm ], [ %i.bcu, %bb.me ], [ %i.bcu, %bb.mk ], [ %i.bcu, %bb.ml ], [ %i.bcu, %bb.mm ], [ %i.bcu, %bb.mn ]
  %.ph484 = phi ptr [ %i.bas, %bb.jv ], [ %.phi.trans.insert42.i.i.i.i.i.i.i.i.i, %bb.ll ], [ %.phi.trans.insert42.i.i.i.i.i.i.i.i.i, %bb.lm ], [ %i.bcv, %bb.me ], [ %i.bcv, %bb.mk ], [ %i.bcv, %bb.ml ], [ %i.bcv, %bb.mm ], [ %i.bcv, %bb.mn ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i.i.i.i.i.i.i.i.i.i

.thread71.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.mn
  %i.bnp = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store ptr %i.bni, ptr %i.bnp, align 8, !noalias !7747
  %.sroa.733.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1520
  store ptr %i.bnm, ptr %.sroa.733.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.834.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1528
  store ptr %i.bnn, ptr %.sroa.834.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.935.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1536
  store ptr %.val56.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.935.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.1036.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1544
  store i64 %i.bnh, ptr %.sroa.1036.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.1137.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store i64 0, ptr %.sroa.1137.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.1238.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1560
  store i64 %i.bno, ptr %.sroa.1238.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7747
  %.sroa.1440.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1792
  store i32 %i.bnl, ptr %.sroa.1440.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !7747
  %.sroa.1541.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1796
  store i32 %i.bnc, ptr %.sroa.1541.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !7747
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1804 ; 2 uses
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !7747
  br label %bb.kq

.thread30.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.mc, %.thread51.i.i.i.i.i.i.i.i.i.i, %bb.kh
  %i.bnq = phi ptr [ %i.bab, %bb.kh ], [ %i.bdi, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.biz, %bb.mc ]
  %i.bnr = phi ptr [ %i.bac, %bb.kh ], [ %i.bdj, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bja, %bb.mc ]
  %i.bns = phi ptr [ %i.bad, %bb.kh ], [ %i.bdk, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjb, %bb.mc ]
  %i.bnt = phi ptr [ %i.bae, %bb.kh ], [ %i.bdl, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjc, %bb.mc ]
  %i.bnu = phi ptr [ %i.baf, %bb.kh ], [ %i.bdm, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjd, %bb.mc ]
  %i.bnv = phi ptr [ %i.bag, %bb.kh ], [ %i.bdn, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bje, %bb.mc ]
  %i.bnw = phi ptr [ %i.bah, %bb.kh ], [ %i.bdo, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjf, %bb.mc ]
  %i.bnx = phi ptr [ %i.bai, %bb.kh ], [ %i.bdp, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjg, %bb.mc ]
  %i.bny = phi ptr [ %i.baj, %bb.kh ], [ %i.bdq, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjh, %bb.mc ]
  %i.bnz = phi ptr [ %i.bak, %bb.kh ], [ %i.bdr, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bji, %bb.mc ]
  %i.boa = phi ptr [ %i.bal, %bb.kh ], [ %i.bds, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjj, %bb.mc ]
  %i.bob = phi ptr [ %i.bam, %bb.kh ], [ %i.bdt, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjk, %bb.mc ]
  %i.boc = phi ptr [ %i.ban, %bb.kh ], [ %i.bdu, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjl, %bb.mc ]
  %i.bod = phi ptr [ %i.bao, %bb.kh ], [ %i.bdv, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjm, %bb.mc ]
  %i.boe = phi ptr [ %i.bap, %bb.kh ], [ %i.bdw, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjn, %bb.mc ]
  %i.bof = phi ptr [ %i.baq, %bb.kh ], [ %i.bdx, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjo, %bb.mc ]
  %i.bog = phi ptr [ %i.bar, %bb.kh ], [ %i.bdy, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjp, %bb.mc ]
  %i.boh = phi ptr [ %i.bas, %bb.kh ], [ %i.bdz, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjq, %bb.mc ]
  %.sroa.024.1.i.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bbr, %bb.kh ], [ %i.bha, %.thread51.i.i.i.i.i.i.i.i.i.i ], [ %i.bjv, %bb.mc ]
  store i8 1, ptr %i.boh, align 8, !noalias !7747
  br label %bb.jo

bb.mo:                                            ; preds = %bb.jw
  store i8 1, ptr %i.bas, align 8, !noalias !7747
  %.not27.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.baw, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i, label %bb.mp, label %bb.jo

bb.mp:                                            ; preds = %bb.mo, %.thread34.i.i.i.i.i.i.i.i.i
  %i.boi = phi ptr [ %i.bab, %bb.mo ], [ %i.bce, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.boj = phi ptr [ %i.bac, %bb.mo ], [ %i.bcf, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bok = phi ptr [ %i.bad, %bb.mo ], [ %i.bcg, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bol = phi ptr [ %i.bae, %bb.mo ], [ %i.bch, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bom = phi ptr [ %i.baf, %bb.mo ], [ %i.bci, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bon = phi ptr [ %i.bag, %bb.mo ], [ %i.bcj, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.boo = phi ptr [ %i.bah, %bb.mo ], [ %i.bck, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bop = phi ptr [ %i.bai, %bb.mo ], [ %i.bcl, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.boq = phi ptr [ %i.baj, %bb.mo ], [ %i.bcm, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bor = phi ptr [ %i.bak, %bb.mo ], [ %i.bcn, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bos = phi ptr [ %i.bal, %bb.mo ], [ %i.bco, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bot = phi ptr [ %i.bam, %bb.mo ], [ %i.bcp, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bou = phi ptr [ %i.ban, %bb.mo ], [ %i.bcq, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bov = phi ptr [ %i.bao, %bb.mo ], [ %i.bcr, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bow = phi ptr [ %i.bap, %bb.mo ], [ %i.bcs, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.box = phi ptr [ %i.baq, %bb.mo ], [ %i.bct, %.thread34.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.boy = phi ptr [ %i.bar, %bb.mo ], [ %i.bcu, %.thread34.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.bpa = load ptr, ptr %i.boz, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.bpb = getelementptr inbounds nuw i8, ptr %1, i64 1412
  %i.bpc = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %i.bpd = load ptr, ptr %i.bpc, align 8, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.bpe = invoke noundef ptr @_RNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm8instance9allocator19initialize_memories(ptr noundef nonnull align 8 %i.bpa, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.bpb, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.boy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %i.bpd)
          to label %bb.mq unwind label %bb.mu, !noalias !7748 ; 2 uses

bb.mq:                                            ; preds = %bb.mp
  %.not28.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bpe, null
  br i1 %.not28.i.i.i.i.i.i.i.i.i, label %bb.mr, label %bb.jo

bb.mr:                                            ; preds = %bb.mq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.boy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i58.i.i.i.i.i.i.i.i.i unwind label %bb.ms, !noalias !7748

bb.ms:                                            ; preds = %bb.mr
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.boy)
          to label %.body40.i.i.i.i.i.i.i.i.i unwind label %bb.mt, !noalias !7748

bb.mt:                                            ; preds = %bb.ms
  %i.bpg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7748
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i58.i.i.i.i.i.i.i.i.i: ; preds = %bb.mr
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.boy)
          to label %bb.mv unwind label %bb.in, !noalias !7748

bb.mu:                                            ; preds = %bb.mp, %.invoke81.i.i.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i
  %i.bph = phi ptr [ %i.boi, %bb.mp ], [ %i.ka, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpi = phi ptr [ %i.boj, %bb.mp ], [ %i.jz, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.jz, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpj = phi ptr [ %i.bok, %bb.mp ], [ %.phi.trans.insert.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpk = phi ptr [ %i.bol, %bb.mp ], [ %i.ld, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.ld, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpl = phi ptr [ %i.bom, %bb.mp ], [ %.phi.trans.insert.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpm = phi ptr [ %i.bon, %bb.mp ], [ %.phi.trans.insert.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpn = phi ptr [ %i.boo, %bb.mp ], [ %i.nq, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.nq, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpo = phi ptr [ %i.bop, %bb.mp ], [ %.phi.trans.insert.i.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpp = phi ptr [ %i.boq, %bb.mp ], [ %i.ok, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.ok, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpq = phi ptr [ %i.bor, %bb.mp ], [ %.phi.trans.insert.i.i.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpr = phi ptr [ %i.bos, %bb.mp ], [ %i.rd, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.rd, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bps = phi ptr [ %i.bot, %bb.mp ], [ %.phi.trans.insert193.i.i.i.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert193.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpt = phi ptr [ %i.bou, %bb.mp ], [ %i.yp, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.yp, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpu = phi ptr [ %i.bov, %bb.mp ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpv = phi ptr [ %i.bow, %bb.mp ], [ %i.aaq, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.aaq, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpw = phi ptr [ %i.box, %bb.mp ], [ %.phi.trans.insert130.i.i.i.i.i.i.i.i, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert130.i.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpx = phi ptr [ %i.boy, %bb.mp ], [ %i.akq, %.invoke81.i.i.i.i.i.i.i.i.i ], [ %i.akq, %.invoke.i.i.i.i.i.i.i.i.i ]
  %i.bpy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i59.i.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i58.i.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.box, align 8, !noalias !7747
  %i.bpz = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.bqa = load i64, ptr %i.bpz, align 16, !range !15, !noalias !7747, !noundef !13
  %i.bqb = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.bqc = load i32, ptr %i.bqb, align 8, !noalias !7747, !noundef !13
  %i.bqd = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.bqe = load ptr, ptr %i.bqd, align 16, !noalias !7747, !nonnull !13, !align !14, !noundef !13
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 80
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bqf, align 8, !noalias !7748, !nonnull !13, !noundef !13 ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 384
  %i.bqh = load i32, ptr %i.bqg, align 8, !range !83, !noalias !7748, !noundef !13
  %i.bqi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 388
  %i.bqj = load i32, ptr %i.bqi, align 4, !noalias !7748
  br label %bb.my

bb.mw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i, %bb.im
  %i.bqk = phi ptr [ %i.awn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.akv, %bb.im ]
  %i.bql = phi ptr [ %i.awo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.akw, %bb.im ]
  %i.bqm = phi ptr [ %i.awp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.akx, %bb.im ]
  %i.bqn = phi ptr [ %i.awq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aky, %bb.im ]
  %i.bqo = phi ptr [ %i.awr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.akz, %bb.im ]
  %i.bqp = phi ptr [ %i.aws, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ala, %bb.im ]
  %i.bqq = phi ptr [ %i.awt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alb, %bb.im ]
  %i.bqr = phi ptr [ %i.awu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alc, %bb.im ]
  %i.bqs = phi ptr [ %i.awv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ald, %bb.im ]
  %i.bqt = phi ptr [ %i.aww, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ale, %bb.im ]
  %i.bqu = phi ptr [ %i.awx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alf, %bb.im ]
  %i.bqv = phi ptr [ %i.awy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alg, %bb.im ]
  %i.bqw = phi ptr [ %i.awz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alh, %bb.im ]
  %i.bqx = phi ptr [ %i.axa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alr, %bb.im ]
  %i.bqy = phi ptr [ %i.axb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alq, %bb.im ]
  %i.bqz = phi ptr [ %i.axc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.alm, %bb.im ]
  %.sroa.019.1.i.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.019.0.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime6values3ValEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.als, %bb.im ]
  store i8 1, ptr %i.bqz, align 8, !noalias !7747
  %i.bra = ptrtoint ptr %.sroa.019.1.i.ph.i.i.i.i.i.i.i.i to i64
  br label %bb.my

bb.mx:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.989.i.i.i.i.i.i.i.i)
  store i8 4, ptr %i.air, align 8, !noalias !7747
  br label %bb.rd

bb.my:                                            ; preds = %bb.mw, %bb.mv, %bb.ih, %3, %bb.hr, %bb.gi, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i
  %i.brb = phi ptr [ %i.aga, %bb.hr ], [ %i.aar, %bb.gi ], [ %i.bqk, %bb.mw ], [ %i.boi, %bb.mv ], [ %i.aie, %bb.ih ], [ %i.aar, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aef, %3 ] ; 6 uses
  %i.brc = phi ptr [ %i.agb, %bb.hr ], [ %i.aas, %bb.gi ], [ %i.bql, %bb.mw ], [ %i.boj, %bb.mv ], [ %i.aif, %bb.ih ], [ %i.aas, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aeg, %3 ] ; 6 uses
  %i.brd = phi ptr [ %i.agc, %bb.hr ], [ %i.aat, %bb.gi ], [ %i.bqm, %bb.mw ], [ %i.bok, %bb.mv ], [ %i.aig, %bb.ih ], [ %i.aat, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aeh, %3 ] ; 6 uses
  %i.bre = phi ptr [ %i.agd, %bb.hr ], [ %i.aau, %bb.gi ], [ %i.bqn, %bb.mw ], [ %i.bol, %bb.mv ], [ %i.aih, %bb.ih ], [ %i.aau, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aei, %3 ] ; 6 uses
  %i.brf = phi ptr [ %i.age, %bb.hr ], [ %i.aav, %bb.gi ], [ %i.bqo, %bb.mw ], [ %i.bom, %bb.mv ], [ %i.aii, %bb.ih ], [ %i.aav, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aej, %3 ] ; 6 uses
  %i.brg = phi ptr [ %i.agf, %bb.hr ], [ %i.aaw, %bb.gi ], [ %i.bqp, %bb.mw ], [ %i.bon, %bb.mv ], [ %i.aij, %bb.ih ], [ %i.aaw, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aek, %3 ] ; 6 uses
  %i.brh = phi ptr [ %i.agg, %bb.hr ], [ %i.aax, %bb.gi ], [ %i.bqq, %bb.mw ], [ %i.boo, %bb.mv ], [ %i.aik, %bb.ih ], [ %i.aax, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.ael, %3 ] ; 6 uses
  %i.bri = phi ptr [ %i.agh, %bb.hr ], [ %i.aay, %bb.gi ], [ %i.bqr, %bb.mw ], [ %i.bop, %bb.mv ], [ %i.ail, %bb.ih ], [ %i.aay, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aem, %3 ] ; 6 uses
  %i.brj = phi ptr [ %i.agi, %bb.hr ], [ %i.aaz, %bb.gi ], [ %i.bqs, %bb.mw ], [ %i.boq, %bb.mv ], [ %i.aim, %bb.ih ], [ %i.aaz, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aen, %3 ] ; 6 uses
  %i.brk = phi ptr [ %i.agj, %bb.hr ], [ %i.aba, %bb.gi ], [ %i.bqt, %bb.mw ], [ %i.bor, %bb.mv ], [ %i.ain, %bb.ih ], [ %i.aba, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aeo, %3 ] ; 6 uses
  %i.brl = phi ptr [ %i.agk, %bb.hr ], [ %i.abb, %bb.gi ], [ %i.bqu, %bb.mw ], [ %i.bos, %bb.mv ], [ %i.aio, %bb.ih ], [ %i.abb, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aep, %3 ] ; 6 uses
  %i.brm = phi ptr [ %i.agl, %bb.hr ], [ %i.abc, %bb.gi ], [ %i.bqv, %bb.mw ], [ %i.bot, %bb.mv ], [ %i.aip, %bb.ih ], [ %i.abc, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aeq, %3 ] ; 6 uses
  %i.brn = phi ptr [ %i.agm, %bb.hr ], [ %i.abd, %bb.gi ], [ %i.bqw, %bb.mw ], [ %i.bou, %bb.mv ], [ %i.aiq, %bb.ih ], [ %i.abd, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aer, %3 ] ; 6 uses
  %i.bro = phi ptr [ %i.agn, %bb.hr ], [ %i.abh, %bb.gi ], [ %i.bqx, %bb.mw ], [ %i.bov, %bb.mv ], [ %i.air, %bb.ih ], [ %i.abh, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aes, %3 ]
  %i.brp = phi ptr [ %i.ago, %bb.hr ], [ %i.abi, %bb.gi ], [ %i.bqy, %bb.mw ], [ %i.bow, %bb.mv ], [ %i.ais, %bb.ih ], [ %i.abi, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %i.aet, %3 ] ; 2 uses
  %.sroa.1058.0.ph.i.i.i.i.i.i.i = phi i32 [ undef, %bb.hr ], [ undef, %bb.gi ], [ undef, %bb.mw ], [ %i.bqj, %bb.mv ], [ undef, %bb.ih ], [ undef, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ undef, %3 ] ; 2 uses
  %.sroa.757.0.ph.i.i.i.i.i.i.i = phi i32 [ 2, %bb.hr ], [ 2, %bb.gi ], [ 2, %bb.mw ], [ %i.bqh, %bb.mv ], [ 2, %bb.ih ], [ 2, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ 2, %3 ] ; 2 uses
  %.sroa.655.0.ph.i.i.i.i.i.i.i = phi i32 [ undef, %bb.hr ], [ undef, %bb.gi ], [ undef, %bb.mw ], [ %i.bqc, %bb.mv ], [ undef, %bb.ih ], [ undef, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ undef, %3 ]
  %.sroa.054.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.agy, %bb.hr ], [ %i.abu, %bb.gi ], [ %i.bra, %bb.mw ], [ %i.bqa, %bb.mv ], [ %i.ajy, %bb.ih ], [ %i.abt, %_RNvNtCsaIKnL9StOw_6anyhow9___private10format_err.exit.i.i.i.i.i.i.i ], [ %4, %3 ] ; 2 uses
  store i8 1, ptr %i.bro, align 8, !noalias !7747
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instanceNtBG_8Instance7new_raw0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.brp)
          to label %bb.mz unwind label %bb.ne, !noalias !7745

bb.mz:                                            ; preds = %bb.my
  %i.brq = icmp eq i32 %.sroa.757.0.ph.i.i.i.i.i.i.i, 2
  br i1 %i.brq, label %bb.nf, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i: ; preds = %bb.mz
  %i.brr = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 4 uses
  store i64 %.sroa.054.0.ph.i.i.i.i.i.i.i, ptr %i.brr, align 16, !noalias !7744
  %i.brs = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store i32 %.sroa.655.0.ph.i.i.i.i.i.i.i, ptr %i.brs, align 8, !noalias !7744
  %i.brt = trunc nuw i32 %.sroa.757.0.ph.i.i.i.i.i.i.i to i1
  br i1 %i.brt, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.pf, %bb.nd, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i
  %i.bru = phi ptr [ %i.caj, %bb.pf ], [ %i.brb, %bb.nd ], [ %i.brb, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.brv = phi ptr [ %i.cak, %bb.pf ], [ %i.brc, %bb.nd ], [ %i.brc, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.brw = phi ptr [ %i.cal, %bb.pf ], [ %i.brd, %bb.nd ], [ %i.brd, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.brx = phi ptr [ %i.cam, %bb.pf ], [ %i.bre, %bb.nd ], [ %i.bre, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bry = phi ptr [ %i.can, %bb.pf ], [ %i.brf, %bb.nd ], [ %i.brf, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.brz = phi ptr [ %i.cao, %bb.pf ], [ %i.brg, %bb.nd ], [ %i.brg, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsa = phi ptr [ %i.cap, %bb.pf ], [ %i.brh, %bb.nd ], [ %i.brh, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsb = phi ptr [ %i.caq, %bb.pf ], [ %i.bri, %bb.nd ], [ %i.bri, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsc = phi ptr [ %i.car, %bb.pf ], [ %i.brj, %bb.nd ], [ %i.brj, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsd = phi ptr [ %i.cas, %bb.pf ], [ %i.brk, %bb.nd ], [ %i.brk, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bse = phi ptr [ %i.cat, %bb.pf ], [ %i.brl, %bb.nd ], [ %i.brl, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsf = phi ptr [ %i.cau, %bb.pf ], [ %i.brm, %bb.nd ], [ %i.brm, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsg = phi ptr [ %i.cav, %bb.pf ], [ %i.brn, %bb.nd ], [ %i.brn, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i ]
  %i.bsh = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.bsi = load i32, ptr %i.bsh, align 8, !noalias !7744, !noundef !13
  %.sroa.677.8.insert.ext.i.i.i.i.i.i.i = zext i32 %i.bsi to i64
  %i.bsj = inttoptr i64 %.sroa.677.8.insert.ext.i.i.i.i.i.i.i to ptr
  br label %bb.pg

bb.nb:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instance8InstanceINtNtB7_6option6OptionNtNtCs3qFYL1dVk0u_16wasmtime_environ5types9FuncIndexEENtCsaIKnL9StOw_6anyhow5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i
  %i.bsk = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 3 uses
  store i32 %.sroa.1058.0.ph.i.i.i.i.i.i.i, ptr %i.bsk, align 8, !noalias !7744
  %i.bsl = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.bsm = load ptr, ptr %i.bsl, align 8, !noalias !7744, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  %i.bsn = load ptr, ptr %i.bsm, align 8, !noalias !7745, !nonnull !13, !align !30, !noundef !13
  %i.bso = getelementptr i8, ptr %i.bsn, i64 1032
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bso, align 8, !noalias !7745, !nonnull !13, !noundef !13
  %i.bsp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 267
  %i.bsq = load i8, ptr %i.bsp, align 1, !range !19, !noalias !7745, !noundef !13
  %i.bsr = trunc nuw i8 %i.bsq to i1
  br i1 %i.bsr, label %.thread145.i.i.i.i.i.i.i, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bss = invoke noundef ptr @_RINvMNtNtCs8dy3IO6wsj9_8wasmtime7runtime8instanceNtB3_8Instance9start_rawNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.brr, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bsm, i32 noundef %.sroa.1058.0.ph.i.i.i.i.i.i.i)
          to label %bb.nd unwind label %bb.ne, !noalias !7745 ; 2 uses

bb.nd:                                            ; preds = %bb.nc
  %.not.i97.i.i.i.i.i.i = icmp eq ptr %i.bss, null
  br i1 %.not.i97.i.i.i.i.i.i, label %bb.na, label %bb.pg

.thread145.i.i.i.i.i.i.i:                         ; preds = %bb.nb
  store ptr %i.bsm, ptr %i.brp, align 8, !noalias !7744
  %.sroa.871.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  store ptr %i.brr, ptr %.sroa.871.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !7744
  %.sroa.972.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  store ptr %i.bsk, ptr %.sroa.972.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !7744
  %.sroa.1174.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 2 uses
  store i8 0, ptr %.sroa.1174.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !7744
  br label %.thread.i36.i.i.i.i.i.i.i

bb.ne:                                            ; preds = %bb.nc, %bb.my
  %i.bst = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i

bb.nf:                                            ; preds = %bb.mz
  %i.bsu = inttoptr i64 %.sroa.054.0.ph.i.i.i.i.i.i.i to ptr
  br label %bb.pg

bb.ng:                                            ; preds = %bb.nh, %.body.i.i.i.i.i.i.i
  %i.bsv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7745
  unreachable

.body37.i.i.i.i.i.i.i:                            ; preds = %bb.nk, %bb.nj
  %i.bsw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert105.i.i.i.i.i.i.i, align 8, !noalias !7744
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i.i, 3
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.nh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i

bb.nh:                                            ; preds = %.body37.i.i.i.i.i.i.i
  %i.bsx = getelementptr inbounds nuw i8, ptr %1, i64 1160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCs8dy3IO6wsj9_8wasmtime7runtime5fiber8on_fiberINtNtBI_5store10StoreInnerNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplEINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMs2_NtB1x_6async_INtNtB1x_7context15StoreContextMutB1U_E8on_fiberB2Y_NCNCINvMNtBI_8instanceNtB5a_8Instance11new_startedB1U_E00E00E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %i.bsx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i unwind label %bb.ng, !noalias !7745

bb.ni:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.phi.trans.insert105.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 6 uses
  %.pre106.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert105.i.i.i.i.i.i.i, align 8, !range !44, !noalias !7764
  switch i8 %.pre106.i.i.i.i.i.i.i, label %default.unreachable429 [
    i8 0, label %..thread.i36.i_crit_edge.i.i.i.i.i.i
    i8 1, label %bb.nj
    i8 2, label %bb.nk
    i8 3, label %bb.nm
  ]

..thread.i36.i_crit_edge.i.i.i.i.i.i:             ; preds = %bb.ni
  %.phi.trans.insert201.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %.pre202.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert201.i.i.i.i.i.i, align 8, !noalias !7764
  %.phi.trans.insert203.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.pre204.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert203.i.i.i.i.i.i, align 16, !noalias !7764
  br label %.thread.i36.i.i.i.i.i.i.i

.thread.i36.i.i.i.i.i.i.i:                        ; preds = %..thread.i36.i_crit_edge.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i
  %i.bsy = phi ptr [ %i.brb, %.thread145.i.i.i.i.i.i.i ], [ %i.ka, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bsz = phi ptr [ %i.brc, %.thread145.i.i.i.i.i.i.i ], [ %i.jz, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bta = phi ptr [ %i.brd, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btb = phi ptr [ %i.bre, %.thread145.i.i.i.i.i.i.i ], [ %i.ld, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btc = phi ptr [ %i.brf, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btd = phi ptr [ %i.brg, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bte = phi ptr [ %i.brh, %.thread145.i.i.i.i.i.i.i ], [ %i.nq, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btf = phi ptr [ %i.bri, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btg = phi ptr [ %i.brj, %.thread145.i.i.i.i.i.i.i ], [ %i.ok, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bth = phi ptr [ %i.brk, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bti = phi ptr [ %i.brl, %.thread145.i.i.i.i.i.i.i ], [ %i.rd, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btj = phi ptr [ %i.brm, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert193.i.i.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btk = phi ptr [ %i.brn, %.thread145.i.i.i.i.i.i.i ], [ %i.yp, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.btl = phi ptr [ %i.bsk, %.thread145.i.i.i.i.i.i.i ], [ %.pre204.i.i.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.btm = phi ptr [ %i.brr, %.thread145.i.i.i.i.i.i.i ], [ %.pre202.i.i.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.btn = phi ptr [ %.sroa.1174.0..sroa_idx.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i ], [ %.phi.trans.insert105.i.i.i.i.i.i.i, %..thread.i36.i_crit_edge.i.i.i.i.i.i ]
  %i.bto = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.btp = load ptr, ptr %i.bto, align 16, !noalias !7764, !nonnull !13, !align !14, !noundef !13
  %i.btq = load ptr, ptr %i.btp, align 8, !noalias !7745, !nonnull !13, !align !30, !noundef !13 ; 2 uses
  %.sroa.714.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store ptr %i.btm, ptr %.sroa.714.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7764
  %.sroa.815.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store ptr %i.btl, ptr %.sroa.815.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !7764
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store ptr %i.btq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7764
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1299 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !7764
  %i.btr = getelementptr inbounds nuw i8, ptr %1, i64 1160
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438.i.i.i.i.i.i.i.i.i)
  br label %bb.no

.body37.thread.i.i.i.i.i.i.i:                     ; preds = %bb.pb, %.body.i34.i.i.i.i.i.i.i
  %i.bts = phi ptr [ %i.caj, %bb.pb ], [ %i.buh, %.body.i34.i.i.i.i.i.i.i ]
  %i.btt = phi ptr [ %i.cak, %bb.pb ], [ %i.bui, %.body.i34.i.i.i.i.i.i.i ]
  %i.btu = phi ptr [ %i.cal, %bb.pb ], [ %i.buj, %.body.i34.i.i.i.i.i.i.i ]
  %i.btv = phi ptr [ %i.cam, %bb.pb ], [ %i.buk, %.body.i34.i.i.i.i.i.i.i ]
  %i.btw = phi ptr [ %i.can, %bb.pb ], [ %i.bul, %.body.i34.i.i.i.i.i.i.i ]
  %i.btx = phi ptr [ %i.cao, %bb.pb ], [ %i.bum, %.body.i34.i.i.i.i.i.i.i ]
  %i.bty = phi ptr [ %i.cap, %bb.pb ], [ %i.bun, %.body.i34.i.i.i.i.i.i.i ]
  %i.btz = phi ptr [ %i.caq, %bb.pb ], [ %i.buo, %.body.i34.i.i.i.i.i.i.i ]
  %i.bua = phi ptr [ %i.car, %bb.pb ], [ %i.bup, %.body.i34.i.i.i.i.i.i.i ]
  %i.bub = phi ptr [ %i.cas, %bb.pb ], [ %i.buq, %.body.i34.i.i.i.i.i.i.i ]
  %i.buc = phi ptr [ %i.cat, %bb.pb ], [ %i.bur, %.body.i34.i.i.i.i.i.i.i ]
  %i.bud = phi ptr [ %i.cau, %bb.pb ], [ %i.bus, %.body.i34.i.i.i.i.i.i.i ]
  %i.bue = phi ptr [ %i.cav, %bb.pb ], [ %i.but, %.body.i34.i.i.i.i.i.i.i ]
  %i.buf = phi ptr [ %i.caw, %bb.pb ], [ %i.buu, %.body.i34.i.i.i.i.i.i.i ]
  %.pn9.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cba, %bb.pb ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i34.i.i.i.i.i.i.i ]
  store i8 2, ptr %i.buf, align 8, !noalias !7764
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs2_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store6async_INtNtBM_7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE8on_fiberINtNtB4_6result6ResultuNtCsaIKnL9StOw_6anyhow5ErrorENCNCINvMNtBO_8instanceNtB4g_8Instance11new_startedB25_E00E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i

bb.nj:                                            ; preds = %bb.ni
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #35
          to label %.noexc39.i.i.i.i.i.i.i unwind label %.body37.i.i.i.i.i.i.i, !noalias !7745

.noexc39.i.i.i.i.i.i.i:                           ; preds = %bb.nj
  unreachable

bb.nk:                                            ; preds = %bb.ni
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #35
          to label %.noexc40.i.i.i.i.i.i.i unwind label %.body37.i.i.i.i.i.i.i, !noalias !7745

.noexc40.i.i.i.i.i.i.i:                           ; preds = %bb.nk
  unreachable

bb.nl:                                            ; preds = %bb.nz, %bb.ny
  %i.bug = landingpad { ptr, i32 }
          cleanup
  br label %.body.i34.i.i.i.i.i.i.i
end_hunk_1
