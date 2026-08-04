inline.NumInlined: 839
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a
  %i.bcu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bcv = load ptr, ptr %i.bcu, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8
  %i.bcw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bcx = load ptr, ptr %i.bcw, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bcz = load ptr, ptr %i.bcy, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8
  invoke void @_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_removeB1D_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bcv, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bcx, ptr noundef nonnull %i.bcr, i16 noundef 1, i16 %i.bct, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bcz)
          to label %bb.px unwind label %bb.pv

.thread.i:                                        ; preds = %bb.pt
  %i.bda = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bdb = load ptr, ptr %i.bda, align 8, !noalias !705, !nonnull !8, !noundef !8 ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bdd = load i64, ptr %i.bdc, align 8, !noalias !705, !noundef !8 ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bdf = load ptr, ptr %i.bde, align 8, !noalias !705, !nonnull !8, !noundef !8 ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.bdh = load i16, ptr %i.bdg, align 2, !noalias !705, !noundef !8 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bdj = load i32, ptr %i.bdi, align 4, !noalias !705, !noundef !8 ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bdl = load i32, ptr %i.bdk, align 8, !noalias !705, !noundef !8 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bdn = load ptr, ptr %i.bdm, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bdp = load ptr, ptr %i.bdo, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bdr = load ptr, ptr %i.bdq, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bds = getelementptr i8, ptr %0, i64 256
  %.val29.i = load ptr, ptr %i.bds, align 8, !noalias !705, !noundef !8 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bdu = load ptr, ptr %i.bdt, align 8, !noalias !705, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %.sroa.765.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.bdb, ptr %.sroa.765.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 %i.bdd, ptr %.sroa.866.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1068.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %i.bdn, ptr %.sroa.1068.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store ptr %i.bdf, ptr %.sroa.1169.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %i.bdp, ptr %.sroa.1270.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr %i.bdr, ptr %.sroa.1371.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr %.val29.i, ptr %.sroa.1472.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.bdu, ptr %.sroa.1573.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.1674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i32 %i.bdj, ptr %.sroa.1674.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %i.bdl, ptr %.sroa.17.0..sroa_idx.i, align 4, !noalias !705
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i16 %i.bdh, ptr %.sroa.19.0..sroa_idx.i, align 4, !noalias !705
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1195 ; 2 uses
  store i8 0, ptr %.sroa.21.0..sroa_idx.i, align 1, !noalias !705
  %i.bdv = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !705
  br label %bb.he

bb.pv:                                            ; preds = %bb.pu
  %i.bdw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.bdx = load ptr, ptr %i.ad, align 8, !alias.scope !910, !noalias !705, !nonnull !8, !noundef !8
  %i.bdy = atomicrmw sub ptr %i.bdx, i64 1 release, align 8, !noalias !910
  %i.bdz = icmp eq i64 %i.bdy, 1
  br i1 %i.bdz, label %bb.pw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188

bb.pw:                                            ; preds = %bb.pv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188 unwind label %bb.ha

bb.px:                                            ; preds = %bb.pu
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.bea = load ptr, ptr %i.ad, align 8, !alias.scope !917, !noalias !705, !nonnull !8, !noundef !8
  %i.beb = atomicrmw sub ptr %i.bea, i64 1 release, align 8, !noalias !917
  %i.bec = icmp eq i64 %i.beb, 1
  br i1 %i.bec, label %bb.py, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit43.i

bb.py:                                            ; preds = %bb.px
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit43.i unwind label %bb.pz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188: ; preds = %bb.pz, %bb.pw, %bb.pv
  %.pn21.i = phi { ptr, i32 } [ %i.bed, %bb.pz ], [ %i.bdw, %bb.pw ], [ %i.bdw, %bb.pv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !705
  br label %bb.gz

bb.pz:                                            ; preds = %bb.py
  %i.bed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i188

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit43.i: ; preds = %bb.py, %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !705
  br label %bb.pp

bb.qa:                                            ; preds = %bb.ps
  %i.bee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock15RwLockReadGuardNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body.i176:                                       ; preds = %bb.pl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.bef = phi ptr [ %i.ann, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.ya, %bb.pl ]
  %i.beg = phi ptr [ %i.ano, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.xz, %bb.pl ]
  %i.beh = phi ptr [ %i.anq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.zy, %bb.pl ]
  %.pn17.i = phi { ptr, i32 } [ %.pn92.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.bbw, %bb.pl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0EB2m_(ptr noundef nonnull align 8 %i.beh) #26
          to label %bb.gz unwind label %bb.ha

bb.qb:                                            ; preds = %bb.gs, %bb.gr
  %i.bei = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.qc:                                            ; preds = %.noexc.i190, %bb.pm
  %i.bej = phi ptr [ %i.bbx, %bb.pm ], [ %i.yt, %.noexc.i190 ]
  %.sink.i180.ph = phi i8 [ 4, %bb.pm ], [ 3, %.noexc.i190 ]
  store i8 %.sink.i180.ph, ptr %i.bej, align 8, !noalias !705
  br label %common.ret

bb.qd:                                            ; preds = %bb.ps
  store i8 1, ptr %i.zn, align 8, !noalias !705
  br label %bb.qe

bb.qe:                                            ; preds = %bb.go, %bb.qd
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 696
  %.val120 = load i8, ptr %i.bem, align 8, !range !13, !noundef !8
  %i.ben = icmp eq i8 %.val120, 0
  br i1 %i.ben, label %bb.qf, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread

bb.qf:                                            ; preds = %bb.qe
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bep = getelementptr i8, ptr %0, i64 104
  %.val121 = load i64, ptr %i.bep, align 8
  %i.beq = load i64, ptr %i.bel, align 8, !range !14, !noundef !8
  %i.ber = trunc nuw i64 %i.beq to i1
  br i1 %i.ber, label %bb.qg, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread

bb.qg:                                            ; preds = %bb.qf
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bel, i64 8
  %i.bet = load i64, ptr %i.bes, align 8, !noundef !8 ; 2 uses
  %i.beu = icmp eq i64 %i.bet, 0
  br i1 %i.beu, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bel, i64 697
  %i.bew = load atomic i8, ptr %i.bev acquire, align 1
  %i.bex = icmp eq i8 %i.bew, 0
  %i.bey = lshr i64 %i.bet, 1
  %i.bez = icmp uge i64 %.val121, %i.bey
  %or.cond540 = select i1 %i.bex, i1 %i.bez, i1 false
  br i1 %or.cond540, label %.thread725, label %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread

_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread: ; preds = %bb.qh, %bb.qg, %bb.qf, %bb.qe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE23enable_frequency_sketch0EB2m_.exit
  %i.bfa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bfb = load ptr, ptr %i.bfa, align 8, !nonnull !8, !align !12, !noundef !8
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 544
  %i.bfd = load atomic ptr, ptr %i.bfc acquire, align 8 ; 2 uses
  %i.bfe = icmp eq ptr %i.bfd, null
  br i1 %i.bfe, label %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event15total_listenersCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.qi

bb.qi:                                            ; preds = %_RNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE30should_enable_frequency_sketchB1D_.exit.thread
  %i.bff = invoke noundef i64 @_RNvMNtCseKAYRfgxGTE_14event_listener3sysINtB2_4ListuE15total_listenersCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bfd)
          to label %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event15total_listenersCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ri ; 2 uses

.thread725:                                       ; preds = %bb.qh
  %i.bfg = load ptr, ptr %i.bek, align 8, !nonnull !8, !align !12, !noundef !8
  %i.bfh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.bfg, ptr %i.bfh, align 8
  %.sroa.7407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.beo, ptr %.sroa.7407.0..sroa_idx, align 8
  %.sroa.9409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %.sroa.9409.0..sroa_idx, align 8
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.qk

bb.qj:                                            ; preds = %bb.a
  %.phi.trans.insert607 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.pre608 = load i8, ptr %.phi.trans.insert607, align 8, !range !33, !noalias !918
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  switch i8 %.pre608, label %default.unreachable718 [
    i8 0, label %bb.qk
    i8 1, label %bb.qn
    i8 2, label %bb.qo
    i8 3, label %bb.qp
  ]

bb.qk:                                            ; preds = %.thread725, %bb.qj
  %i.bfk = phi ptr [ %i.bfi, %.thread725 ], [ %i.bfj, %bb.qj ] ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bfm = load ptr, ptr %i.bfl, align 8, !noalias !918, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bfo = load ptr, ptr %i.bfn, align 8, !noalias !918, !nonnull !8, !align !12, !noundef !8
  %i.bfp = load i64, ptr %i.bfm, align 8, !range !14, !noalias !918, !noundef !8
  %i.bfq = trunc nuw i64 %i.bfp to i1
  br i1 %i.bfq, label %bb.ql, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE23enable_frequency_sketch0EB2m_.exit

bb.ql:                                            ; preds = %bb.qk
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfm, i64 8
  %i.bfs = load i64, ptr %i.bfr, align 8, !noalias !918, !noundef !8 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfm, i64 560
  %.val.i213 = load ptr, ptr %i.bft, align 8, !noalias !918, !noundef !8
  %.not.i.i214 = icmp eq ptr %.val.i213, null
  br i1 %.not.i.i214, label %.thread.i215, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %2 = load <2 x i64>, ptr %i.bfo, align 8, !noalias !918
  %3 = uitofp <2 x i64> %2 to <2 x double>        ; 2 uses
  %4 = uitofp i64 %i.bfs to double
  %5 = extractelement <2 x double> %3, i64 1
  %6 = fdiv double %5, %4
  %7 = extractelement <2 x double> %3, i64 0
  %i.bfu = fmul double %6, %7
  %i.bfv = call i64 @llvm.fptoui.sat.i64.f64(double %i.bfu)
  br label %.thread.i215

.thread.i215:                                     ; preds = %bb.qm, %bb.ql
  %.sroa.02.0.i = phi i64 [ %i.bfs, %bb.ql ], [ %i.bfv, %bb.qm ] ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.bfm, ptr %i.bfw, align 8, !noalias !918
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.02.0.i, ptr %.sroa.719.0..sroa_idx.i, align 8, !noalias !918
  %.sroa.9.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i216, align 4, !noalias !918
  br label %bb.qq

.body217.thread:                                  ; preds = %.body.thread.i, %.body.i209, %bb.re
  %i.bfx = phi ptr [ %i.bfj, %bb.re ], [ %i.bge, %.body.thread.i ], [ %i.bfj, %.body.i209 ]
  %.pn9.i = phi { ptr, i32 } [ %i.bha, %bb.re ], [ %.pn13.i.i, %.body.thread.i ], [ %i.bha, %.body.i209 ]
  store i8 2, ptr %i.bfx, align 8, !noalias !918
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.qn:                                            ; preds = %bb.qj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
          to label %.noexc219 unwind label %.body217

.noexc219:                                        ; preds = %bb.qn
  unreachable

bb.qo:                                            ; preds = %bb.qj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
          to label %.noexc220 unwind label %.body217

.noexc220:                                        ; preds = %bb.qo
  unreachable

bb.qp:                                            ; preds = %bb.qj
  %.phi.trans.insert.i204 = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %.pre.i205 = load i8, ptr %.phi.trans.insert.i204, align 4, !range !33, !noalias !921
  switch i8 %.pre.i205, label %default.unreachable718 [
    i8 0, label %._crit_edge609
    i8 1, label %bb.qt
    i8 2, label %bb.qu
    i8 3, label %bb.qv
  ]

._crit_edge609:                                   ; preds = %bb.qp
  %.phi.trans.insert610 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre611 = load ptr, ptr %.phi.trans.insert610, align 8, !noalias !921
  %.phi.trans.insert612 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre613 = load i64, ptr %.phi.trans.insert612, align 8, !noalias !921
  br label %bb.qq

bb.qq:                                            ; preds = %._crit_edge609, %.thread.i215
  %i.bfy = phi ptr [ %i.bfk, %.thread.i215 ], [ %i.bfj, %._crit_edge609 ] ; 2 uses
  %i.bfz = phi i64 [ %.sroa.02.0.i, %.thread.i215 ], [ %.pre613, %._crit_edge609 ]
  %i.bga = phi ptr [ %i.bfm, %.thread.i215 ], [ %.pre611, %._crit_edge609 ]
  %i.bgb = phi ptr [ %.sroa.9.0..sroa_idx.i216, %.thread.i215 ], [ %.phi.trans.insert.i204, %._crit_edge609 ] ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.bga, ptr %i.bgc, align 8, !noalias !921
  %i.bgd = invoke noundef i32 @_RNvNtCs95DO3lnzZ3L_4moka6common15sketch_capacity(i64 noundef %i.bfz)
          to label %bb.qs unwind label %bb.qr, !noalias !921

.body.thread.i:                                   ; preds = %bb.rc, %bb.ra, %bb.qy, %bb.qw, %bb.qr
  %i.bge = phi ptr [ %i.bfy, %bb.qr ], [ %i.bgl, %bb.rc ], [ %i.bgl, %bb.ra ], [ %i.bgl, %bb.qy ], [ %i.bgl, %bb.qw ]
  %i.bgf = phi ptr [ %i.bgb, %bb.qr ], [ %i.bgm, %bb.rc ], [ %i.bgm, %bb.ra ], [ %i.bgm, %bb.qy ], [ %i.bgm, %bb.qw ]
  %.pn13.i.i = phi { ptr, i32 } [ %i.bgg, %bb.qr ], [ %i.bgy, %bb.rc ], [ %i.bgx, %bb.ra ], [ %i.bgu, %bb.qy ], [ %i.bgp, %bb.qw ]
  store i8 2, ptr %i.bgf, align 4, !noalias !921
  br label %.body217.thread

bb.qr:                                            ; preds = %bb.qq
  %i.bgg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.qs:                                            ; preds = %bb.qq
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.bgd, ptr %i.bgh, align 8, !noalias !921
  %i.bgi = load ptr, ptr %i.bgc, align 8, !noalias !921, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 472 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgi, i64 512
  %.sroa.724.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 1000000001, ptr %.sroa.724.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.bgj, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.bgj, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.11.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i211, align 8, !noalias !921
  %.sroa.12.0..sroa_idx.i.i212 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.bgk, ptr %.sroa.12.0..sroa_idx.i.i212, align 8, !noalias !921
  br label %bb.qv

bb.qt:                                            ; preds = %bb.qp
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
          to label %.noexc.i210 unwind label %.body.i209, !noalias !918

.noexc.i210:                                      ; preds = %bb.qt
  unreachable

bb.qu:                                            ; preds = %bb.qp
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
          to label %.noexc12.i unwind label %.body.i209, !noalias !918

.noexc12.i:                                       ; preds = %bb.qu
  unreachable

bb.qv:                                            ; preds = %bb.qs, %bb.qp
  %i.bgl = phi ptr [ %i.bfy, %bb.qs ], [ %i.bfj, %bb.qp ] ; 6 uses
  %i.bgm = phi ptr [ %i.bgb, %bb.qs ], [ %.phi.trans.insert.i204, %bb.qp ] ; 6 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bgo = invoke noundef zeroext i1 @_RINvXs1_NtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB6_8RawWriteNtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB11_11NonBlockingECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bgn, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i.i unwind label %bb.qw

.noexc.i.i:                                       ; preds = %bb.qv
  br i1 %i.bgo, label %bb.rh, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.bgp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bgn) #26
          to label %.body.thread.i unwind label %bb.rd

bb.qx:                                            ; preds = %.noexc.i.i
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bgr = load ptr, ptr %i.bgq, align 8, !noalias !924, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bgt = load ptr, ptr %i.bgs, align 8, !noalias !924, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bgn)
          to label %bb.qz unwind label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bgu = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.qz:                                            ; preds = %bb.qx
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bgw = load i32, ptr %i.bgv, align 8, !noalias !921, !noundef !8
  invoke void @_RNvMNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketchNtB2_15FrequencySketch15ensure_capacity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bgt, i32 noundef %i.bgw)
          to label %bb.rb unwind label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8 %i.bgr)
          to label %.body.thread.i unwind label %bb.rd

bb.rb:                                            ; preds = %bb.qz
  invoke void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8 %i.bgr)
          to label %bb.rg unwind label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.rd:                                            ; preds = %bb.ra, %bb.qw
  %i.bgz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i209:                                       ; preds = %bb.qu, %bb.qt
  %i.bha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i = load i8, ptr %.phi.trans.insert.i204, align 4, !noalias !918
  %cond.i14.i = icmp eq i8 %.pr.i, 3
  br i1 %cond.i14.i, label %bb.re, label %.body217.thread

bb.re:                                            ; preds = %.body.i209
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7kfTgH1B6X1_10async_lock6rwlock7futures5WriteNtNtNtCs95DO3lnzZ3L_4moka6common16frequency_sketch15FrequencySketchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bhb)
          to label %.body217.thread unwind label %bb.rf, !noalias !918

bb.rf:                                            ; preds = %bb.re
  %i.bhc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !918
  unreachable

.body217:                                         ; preds = %bb.qo, %bb.qn
  %i.bhd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr531 = load i8, ptr %i.bfj, align 8
  %cond.i358 = icmp eq i8 %.pr531, 3
  br i1 %cond.i358, label %bb.afg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11apply_reads0EB2m_.exit364

bb.rg:                                            ; preds = %bb.rb
  %i.bhe = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bhf = load ptr, ptr %i.bhe, align 8, !noalias !921, !nonnull !8, !align !12, !noundef !8
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 697
  store atomic i8 1, ptr %i.bhg release, align 1
  store i8 1, ptr %i.bgm, align 4, !noalias !921
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE23enable_frequency_sketch0EB2m_.exit

bb.rh:                                            ; preds = %.noexc.i.i
  store i8 3, ptr %i.bgm, align 4, !noalias !921
  store i8 3, ptr %i.bgl, align 8, !noalias !918
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE23enable_frequency_sketch0EB2m_.exit: ; preds = %bb.qk, %bb.rg
  %i.bhh = phi ptr [ %i.bfk, %bb.qk ], [ %i.bgl, %bb.rg ]
end_hunk_0
