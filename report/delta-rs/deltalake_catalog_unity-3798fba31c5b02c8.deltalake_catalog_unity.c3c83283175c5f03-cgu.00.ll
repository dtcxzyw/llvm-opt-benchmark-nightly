inline.NumInlined: 1642
inline.NumDeleted: 746
begin_hunk_0_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  %i.agq = phi ptr [ %i.zx, %.body11.i.i.i.i ], [ %.phi.trans.insert.i194.i, %bb.hs ]
  %i.agr = phi ptr [ %i.zy, %.body11.i.i.i.i ], [ %i.vu, %bb.hs ]
  %i.ags = phi ptr [ %i.aaa, %.body11.i.i.i.i ], [ %i.zg, %bb.hs ]
  %.pn11.i.i.i = phi { ptr, i32 } [ %.pn8.i.i.i.i, %.body11.i.i.i.i ], [ %i.acl, %bb.hs ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs95DO3lnzZ3L_4moka6future8key_lockINtBN_7KeyLockNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4lock0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.ags) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.gy, !noalias !1668

bb.iz:                                            ; preds = %bb.gt
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 1416 ; 2 uses
  %i.agu = load i16, ptr %i.agt, align 8, !range !236, !alias.scope !1730, !noalias !1664, !noundef !4
  %i.agv = icmp eq i16 %i.agu, 2
  br i1 %i.agv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit.i.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.agt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit.i.i.i unwind label %bb.gy, !noalias !1668

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit.i.i.i: ; preds = %bb.ja, %bb.iz
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.agx = load ptr, ptr %i.agw, align 8, !alias.scope !1739, !noalias !1664, !nonnull !4, !noundef !4
  %i.agy = atomicrmw sub ptr %i.agx, i64 1 release, align 8, !noalias !1740
  %i.agz = icmp eq i64 %i.agy, 1
  br i1 %i.agz, label %bb.jb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit81.i.i.i

bb.jb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomichEE9drop_slowCscEIReFzlGbb_26datafusion_catalog_listing(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agw) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit81.i.i.i unwind label %bb.gy, !noalias !1668

bb.jc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0132.i.i.i)
  %.phi.trans.insert154.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 3 uses
  %.pre155.i.i.i = load i8, ptr %.phi.trans.insert154.i.i.i, align 8, !range !38, !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8140.i.i.i)
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.sroa.4.i.i.i)
  switch i8 %.pre155.i.i.i, label %default.unreachable133 [
    i8 0, label %._crit_edge.i198.i
    i8 1, label %bb.lj
    i8 2, label %bb.lk
    i8 3, label %bb.ll
  ]

._crit_edge.i198.i:                               ; preds = %bb.jc
  %.phi.trans.insert70.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1824
  %.pre71.i.i = load ptr, ptr %.phi.trans.insert70.i.i, align 8, !noalias !1741
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1848
  %.pre73.i.i = load i64, ptr %.phi.trans.insert72.i.i, align 8, !noalias !1741
  %.phi.trans.insert74.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1832
  %.pre75.i.i = load ptr, ptr %.phi.trans.insert74.i.i, align 8, !noalias !1741
  %.phi.trans.insert76.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1840
  %.pre77.i.i = load ptr, ptr %.phi.trans.insert76.i.i, align 8, !noalias !1741
  br label %bb.jd

bb.jd:                                            ; preds = %._crit_edge.i198.i, %.thread172.i.i.i
  %i.ahb = phi ptr [ %i.yt, %.thread172.i.i.i ], [ %i.cs, %._crit_edge.i198.i ] ; 9 uses
  %i.ahc = phi ptr [ %i.yu, %.thread172.i.i.i ], [ %i.cr, %._crit_edge.i198.i ] ; 9 uses
  %i.ahd = phi ptr [ %i.yv, %.thread172.i.i.i ], [ %.phi.trans.insert323.i, %._crit_edge.i198.i ] ; 9 uses
  %i.ahe = phi ptr [ %i.yw, %.thread172.i.i.i ], [ %i.ub, %._crit_edge.i198.i ] ; 9 uses
  %i.ahf = phi ptr [ %i.yx, %.thread172.i.i.i ], [ %.phi.trans.insert.i194.i, %._crit_edge.i198.i ] ; 9 uses
  %i.ahg = phi ptr [ %i.yy, %.thread172.i.i.i ], [ %i.vu, %._crit_edge.i198.i ] ; 9 uses
  %i.ahh = phi ptr [ %i.afx, %.thread172.i.i.i ], [ %.pre77.i.i, %._crit_edge.i198.i ]
  %i.ahi = phi ptr [ %i.afw, %.thread172.i.i.i ], [ %.pre75.i.i, %._crit_edge.i198.i ]
  %i.ahj = phi i64 [ %i.afu, %.thread172.i.i.i ], [ %.pre73.i.i, %._crit_edge.i198.i ]
  %i.ahk = phi ptr [ %i.aft, %.thread172.i.i.i ], [ %.pre71.i.i, %._crit_edge.i198.i ]
  %i.ahl = phi ptr [ %.sroa.12.0..sroa_idx.i.i.i, %.thread172.i.i.i ], [ %.phi.trans.insert154.i.i.i, %._crit_edge.i198.i ] ; 9 uses
  %i.ahm = phi ptr [ %i.afy, %.thread172.i.i.i ], [ %i.aha, %._crit_edge.i198.i ] ; 10 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 2065 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 2066 ; 3 uses
  store i8 0, ptr %i.aho, align 2, !noalias !1741
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 1856 ; 3 uses
  store i64 %i.ahj, ptr %i.ahp, align 8, !noalias !1741
  store i8 1, ptr %i.ahn, align 1, !noalias !1741
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 1864 ; 3 uses
  store ptr %i.ahi, ptr %i.ahq, align 8, !noalias !1741
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ahr, ptr noundef nonnull align 8 dereferenceable(40) %i.ahm, i64 40, i1 false), !noalias !1741
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 1912 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 1784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ahs, ptr noundef nonnull align 8 dereferenceable(40) %i.aht, i64 40, i1 false), !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1741
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64 ; 3 uses
  %.val28.i.i.i.i = load ptr, ptr %i.ahu, align 8, !noalias !1745, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 104
  %.val30.i.i.i.i = load ptr, ptr %i.ahv, align 8, !noalias !1745, !noundef !4 ; 4 uses
  %i.ahw = getelementptr i8, ptr %.val28.i.i.i.i, i64 112
  %.val31.i.i.i.i = load ptr, ptr %i.ahw, align 8, !noalias !1745 ; 2 uses
  %.not.i.i84.i.i.i = icmp eq ptr %.val30.i.i.i.i, null
  br i1 %.not.i.i84.i.i.i, label %.thread58.i.i.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i.i.i.i) ]
  %i.ahx = atomicrmw add ptr %.val30.i.i.i.i, i64 1 monotonic, align 8, !noalias !1745
  %i.ahy = icmp slt i64 %i.ahx, 0
  br i1 %i.ahy, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  call void @llvm.trap()
  unreachable

bb.jg:                                            ; preds = %bb.je
  store ptr %.val30.i.i.i.i, ptr %i.l, align 8, !noalias !1741
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.val31.i.i.i.i, ptr %i.ahz, align 8, !noalias !1741
  %i.aia = load i16, ptr %i.ahs, align 8, !range !256, !noalias !1741, !noundef !4
  %i.aib = trunc nuw i16 %i.aia to i1
  br i1 %i.aib, label %.thread59.i.i.i.i, label %bb.jk

bb.jh:                                            ; preds = %bb.jk
  %.pr.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1746, !noalias !1741 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.aic = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %i.aic, label %.thread58.i.i.i.i, label %.thread59.i.i.i.i

.thread59.i.i.i.i:                                ; preds = %bb.jh, %bb.jg
  %i.aid = phi ptr [ %.pr.i.i.i.i, %bb.jh ], [ %.val30.i.i.i.i, %bb.jg ]
  %i.aie = atomicrmw sub ptr %i.aid, i64 1 release, align 8, !noalias !1749
  %i.aif = icmp eq i64 %i.aie, 1
  br i1 %i.aif, label %bb.ji, label %.thread58.i.i.i.i

bb.ji:                                            ; preds = %.thread59.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #33
          to label %.thread58.i.i.i.i unwind label %bb.jo, !noalias !1745

bb.jj:                                            ; preds = %bb.jk
  %i.aig = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  %i.aih = load ptr, ptr %i.l, align 8, !alias.scope !1754, !noalias !1741, !noundef !4 ; 2 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i, label %bb.jl

bb.jk:                                            ; preds = %bb.jg
  %.val.i85.i.i.i = load ptr, ptr %i.ahq, align 8, !noalias !1741, !nonnull !4, !noundef !4
  %i.aij = getelementptr inbounds nuw i8, ptr %.val.i85.i.i.i, i64 16
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 1944
  %.val32.i.i.i.i = load ptr, ptr %i.aik, align 8, !noalias !1741, !nonnull !4, !noundef !4
  %i.ail = getelementptr inbounds nuw i8, ptr %.val32.i.i.i.i, i64 8
  %.val27.i.i.i.i = load ptr, ptr %i.ahu, align 8, !noalias !1745, !nonnull !4, !noundef !4 ; 5 uses
  %i.aim = getelementptr i8, ptr %.val27.i.i.i.i, i64 120
  %.val33.i.i.i.i = load i64, ptr %i.aim, align 8, !noalias !1745
  %i.ain = getelementptr i8, ptr %.val27.i.i.i.i, i64 128
  %.val34.i.i.i.i = load i32, ptr %i.ain, align 8, !range !1340, !noalias !1745, !noundef !4
  %i.aio = getelementptr i8, ptr %.val27.i.i.i.i, i64 136
  %.val35.i.i.i.i = load i64, ptr %i.aio, align 8, !noalias !1745
  %i.aip = getelementptr i8, ptr %.val27.i.i.i.i, i64 144
  %.val36.i.i.i.i = load i32, ptr %i.aip, align 8, !range !1340, !noalias !1745, !noundef !4
  %i.aiq = load i64, ptr %i.ahp, align 8, !noalias !1741, !noundef !4
  %i.air = getelementptr inbounds nuw i8, ptr %.val27.i.i.i.i, i64 88
  %i.ais = invoke noundef zeroext i1 @_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps00EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ail, i64 %.val33.i.i.i.i, i32 noundef %.val34.i.i.i.i, i64 %.val35.i.i.i.i, i32 noundef %.val36.i.i.i.i, i64 noundef %i.aiq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.air)
          to label %bb.jh unwind label %bb.jj, !noalias !1745 ; 0 uses

bb.jl:                                            ; preds = %bb.jj
  %i.ait = atomicrmw sub ptr %i.aih, i64 1 release, align 8, !noalias !1757
  %i.aiu = icmp eq i64 %i.ait, 1
  br i1 %i.aiu, label %bb.jm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i unwind label %bb.jn, !noalias !1745

bb.jn:                                            ; preds = %bb.mq, %bb.mo, %bb.mn, %bb.md, %bb.lm, %bb.li, %.body48.i.i.i.i, %bb.lg, %bb.jm
  %i.aiv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !1745
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i: ; preds = %bb.jo, %bb.jm, %bb.jl, %bb.jj
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %i.aiw, %bb.jo ], [ %i.aig, %bb.jl ], [ %i.aig, %bb.jj ], [ %i.aig, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1741
  br label %bb.li

bb.jo:                                            ; preds = %bb.ji
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i

.thread58.i.i.i.i:                                ; preds = %bb.ji, %.thread59.i.i.i.i, %bb.jh, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1741
  %.val37.i.i.i.i = load ptr, ptr %i.ahu, align 8, !noalias !1745, !nonnull !4, !noundef !4 ; 7 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 592 ; 3 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !noalias !1745, !noundef !4
  %.not.i86.i.i.i = icmp eq ptr %i.aiy, null
  br i1 %.not.i86.i.i.i, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.ma, %.thread58.i.i.i.i
  %i.aiz = phi ptr [ %i.ant, %bb.ma ], [ %i.ahb, %.thread58.i.i.i.i ] ; 6 uses
  %i.aja = phi ptr [ %i.anu, %bb.ma ], [ %i.ahc, %.thread58.i.i.i.i ] ; 5 uses
  %i.ajb = phi ptr [ %i.anv, %bb.ma ], [ %i.ahd, %.thread58.i.i.i.i ] ; 6 uses
  %i.ajc = phi ptr [ %i.anw, %bb.ma ], [ %i.ahe, %.thread58.i.i.i.i ] ; 5 uses
  %i.ajd = phi ptr [ %i.anx, %bb.ma ], [ %i.ahf, %.thread58.i.i.i.i ] ; 6 uses
  %i.aje = phi ptr [ %i.any, %bb.ma ], [ %i.ahg, %.thread58.i.i.i.i ] ; 5 uses
  %i.ajf = phi ptr [ %i.anz, %bb.ma ], [ %i.ahl, %.thread58.i.i.i.i ] ; 4 uses
  %i.ajg = phi ptr [ %i.aoa, %bb.ma ], [ %i.ahm, %.thread58.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1741
  %i.ajh = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.mc unwind label %bb.mb, !noalias !1745 ; 7 uses

bb.jq:                                            ; preds = %.thread58.i.i.i.i
  store i8 0, ptr %i.ahn, align 1, !noalias !1741
  %i.aji = load ptr, ptr %i.ahq, align 8, !noalias !1741, !nonnull !4, !noundef !4
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 1904
  %i.ajk = load i64, ptr %i.ahr, align 8, !range !19, !noalias !1741, !noundef !4
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 1880
  %i.ajm = load i64, ptr %i.ajl, align 8, !noalias !1741
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 1888
  %i.ajo = load i64, ptr %i.ajn, align 8, !range !19, !noalias !1741, !noundef !4
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 1896
  %i.ajq = load i64, ptr %i.ajp, align 8, !noalias !1741 ; 2 uses
  %.val40.i.i.i.i = load ptr, ptr %i.ajj, align 8, !noalias !1741 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1741
  store ptr %i.aji, ptr %i.h, align 8, !noalias !1741
  %i.ajr = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 88
  %i.ajs = invoke noundef i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ajr)
          to label %bb.js unwind label %bb.jr, !noalias !1745 ; 2 uses

bb.jr:                                            ; preds = %bb.kg, %bb.kb, %bb.jz, %bb.jv, %bb.jq
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.js:                                            ; preds = %bb.jq
  %i.aju = trunc nuw i64 %i.ajk to i1
  br i1 %i.aju, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 136
  %i.ajw = load i64, ptr %i.ajv, align 8, !noalias !1745
  %i.ajx = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 144
  %i.ajy = load i32, ptr %i.ajx, align 8, !range !1340, !noalias !1745, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1741
  store i64 %i.ajm, ptr %i.g, align 8, !noalias !1741
  %.not.i44.i.i.i.i = icmp eq i32 %i.ajy, 1000000000
  br i1 %.not.i44.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.jv

.sink.split.i.i.i.i.i:                            ; preds = %bb.jw, %bb.jt
  %.sroa.06.0.ph.i.i.i.i.i = phi i8 [ %spec.select12.i.i.i.i.i, %bb.jw ], [ 2, %bb.jt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1741
  br label %bb.ju

bb.ju:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.js
  %.sroa.06.0.i.i.i.i.i = phi i8 [ 2, %bb.js ], [ %.sroa.06.0.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 2 uses
  %i.ajz = trunc nuw i64 %i.ajo to i1
  br i1 %i.ajz, label %bb.jx, label %bb.jy

bb.jv:                                            ; preds = %bb.jt
  %i.aka = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.ajw, i32 noundef %i.ajy)
          to label %bb.jw unwind label %bb.jr, !noalias !1745

bb.jw:                                            ; preds = %bb.jv
  %.not23.i.i.i.i.i = icmp ugt i64 %i.aka, %i.ajs
  %spec.select12.i.i.i.i.i = select i1 %.not23.i.i.i.i.i, i8 2, i8 0
  br label %.sink.split.i.i.i.i.i

bb.jx:                                            ; preds = %bb.ju
  %i.akb = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 120
  %i.akc = load i64, ptr %i.akb, align 8, !noalias !1745
  %i.akd = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 128
  %i.ake = load i32, ptr %i.akd, align 8, !range !1340, !noalias !1745, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1741
  store i64 %i.ajq, ptr %i.f, align 8, !noalias !1741
  %.not24.i.i.i.i.i = icmp eq i32 %i.ake, 1000000000
  br i1 %.not24.i.i.i.i.i, label %bb.kb, label %bb.jz

bb.jy:                                            ; preds = %bb.kd, %bb.kc, %bb.ju
  %.sroa.06.1.i.i.i.i.i = phi i8 [ 0, %bb.kc ], [ %spec.select.i.i.i.i.i, %bb.kd ], [ %.sroa.06.0.i.i.i.i.i, %bb.ju ]
  %i.akf = load ptr, ptr %i.aix, align 8, !noalias !1745, !noundef !4 ; 2 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.akf, null
  br i1 %.not26.i.i.i.i.i, label %bb.kf, label %bb.ke

bb.jz:                                            ; preds = %bb.jx
  %i.akg = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.akc, i32 noundef %i.ake)
          to label %bb.ka unwind label %bb.jr, !noalias !1745

bb.ka:                                            ; preds = %bb.jz
  %.not25.i.i.i.i.i = icmp ugt i64 %i.akg, %i.ajs
  br i1 %.not25.i.i.i.i.i, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1741
  %i.akh = getelementptr inbounds nuw i8, ptr %.val37.i.i.i.i, i64 568
  %i.aki = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.akh)
          to label %bb.kd unwind label %bb.jr, !noalias !1745 ; 2 uses

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1741
  br label %bb.jy

bb.kd:                                            ; preds = %bb.kb
  %i.akj = extractvalue { i64, i64 } %i.aki, 0
  %i.akk = trunc nuw i64 %i.akj to i1
  %i.akl = extractvalue { i64, i64 } %i.aki, 1
  %i.akm = icmp ult i64 %i.ajq, %i.akl
  %or.cond.i.i.i.i.i = select i1 %i.akk, i1 %i.akm, i1 false
  %spec.select.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 1, i8 %.sroa.06.0.i.i.i.i.i
  br label %bb.jy

bb.ke:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1741
  %i.akn = atomicrmw add ptr %i.akf, i64 1 monotonic, align 8, !noalias !1745
  %i.ako = icmp slt i64 %i.akn, 0
  br i1 %i.ako, label %bb.ki, label %bb.kh

bb.kf:                                            ; preds = %bb.jy
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1745
  %i.akp = call noundef dereferenceable_or_null(1) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 8617) 1, i64 noundef range(i64 1, 17) 1) #24, !noalias !1745 ; 4 uses
  %i.akq = icmp eq ptr %i.akp, null
  br i1 %i.akq, label %bb.kg, label %bb.kr, !prof !11

bb.kg:                                            ; preds = %bb.kf
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #30
          to label %.noexc.i.i.i.i.i unwind label %bb.jr, !noalias !1745

.noexc.i.i.i.i.i:                                 ; preds = %bb.kg
  unreachable

bb.kh:                                            ; preds = %bb.ke
  %i.akr = load ptr, ptr %i.aix, align 8, !noalias !1745, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.akr, ptr %i.e, align 8, !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i.i.i) ]
  %i.aks = getelementptr inbounds nuw i8, ptr %.val40.i.i.i.i, i64 8
  invoke fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.aks)
          to label %bb.kj unwind label %bb.ko, !noalias !1745

bb.ki:                                            ; preds = %bb.ke
  call void @llvm.trap()
  unreachable

bb.kj:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1741
  %i.akt = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.akr, ptr %i.akt, align 8, !noalias !1741
  %i.aku = load ptr, ptr %i.h, align 8, !noalias !1741, !nonnull !4, !noundef !4
  %i.akv = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr %i.aku, ptr %i.akv, align 8, !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %i.d, i64 256, i1 false), !noalias !1741
  %i.akw = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store i8 %.sroa.06.1.i.i.i.i.i, ptr %i.akw, align 8, !noalias !1741
  %i.akx = getelementptr inbounds nuw i8, ptr %i.c, i64 577
  store i8 0, ptr %i.akx, align 1, !noalias !1741
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1762
  %i.aky = call noundef align 8 dereferenceable_or_null(584) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 8617) 584, i64 noundef range(i64 1, 17) 8) #24, !noalias !1762 ; 3 uses
  %i.akz = icmp eq ptr %i.aky, null
  br i1 %i.akz, label %bb.kk, label %bb.kn, !prof !11

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 584) #30
          to label %.noexc29.i.i.i.i.i unwind label %bb.kl, !noalias !1745

.noexc29.i.i.i.i.i:                               ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kk
  %i.ala = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMse_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13notify_upsert0EB2m_(ptr noundef nonnull align 8 dereferenceable(584) %i.c) #31
          to label %.body.i82.i.i.i unwind label %bb.km, !noalias !1745

bb.km:                                            ; preds = %bb.kl
  %i.alb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !1745
  unreachable

bb.kn:                                            ; preds = %bb.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.aky, ptr noundef nonnull align 8 dereferenceable(584) %i.c, i64 584, i1 false), !noalias !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1741
  br label %bb.kw

bb.ko:                                            ; preds = %bb.kh
  %i.alc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ald = atomicrmw sub ptr %i.akr, i64 1 release, align 8, !noalias !1765
  %i.ale = icmp eq i64 %i.ald, 1
  br i1 %i.ale, label %bb.kp, label %bb.kt

bb.kp:                                            ; preds = %bb.ko
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9drop_slowB22_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %bb.kt unwind label %bb.kq, !noalias !1745

bb.kq:                                            ; preds = %bb.ku, %bb.kp
  %i.alf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !1745
  unreachable

bb.kr:                                            ; preds = %bb.kf
  store i8 1, ptr %i.akp, align 1, !noalias !1745
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.alg = load ptr, ptr %i.h, align 8, !alias.scope !1776, !noalias !1741, !nonnull !4, !noundef !4
  %i.alh = atomicrmw sub ptr %i.alg, i64 1 release, align 8, !noalias !1777
  %i.ali = icmp eq i64 %i.alh, 1
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  store i8 0, ptr %i.aho, align 2, !noalias !1741
  %i.amc = load ptr, ptr %i.aln, align 8, !noalias !1741, !noundef !4
  %i.amd = load i64, ptr %i.als, align 8, !noalias !1741, !noundef !4
  %i.ame = getelementptr inbounds nuw i8, ptr %1, i64 2048
  store ptr %i.amc, ptr %i.ame, align 8, !noalias !1741
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 2056
  store i64 %i.amd, ptr %i.amf, align 8, !noalias !1741
  br label %bb.ll

bb.lf:                                            ; preds = %bb.lg, %bb.ld
  %.pn7.pn.i.i.i.i = phi { ptr, i32 } [ %i.amg, %bb.lg ], [ %i.amb, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1741
  br label %.body48.i.i.i.i

bb.lg:                                            ; preds = %bb.lb
  %i.amg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1741
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.k) #31
          to label %bb.lf unwind label %bb.jn, !noalias !1745

.body48.i.i.i.i:                                  ; preds = %bb.lx, %bb.lw, %bb.lr, %bb.lq, %bb.lp, %bb.lm, %bb.lf
  %i.amh = phi ptr [ %i.ant, %bb.lx ], [ %i.ahb, %bb.lf ], [ %i.ant, %bb.lm ], [ %i.ant, %bb.lp ], [ %i.ant, %bb.lw ], [ %i.ant, %bb.lr ], [ %i.ant, %bb.lq ]
  %i.ami = phi ptr [ %i.anu, %bb.lx ], [ %i.ahc, %bb.lf ], [ %i.anu, %bb.lm ], [ %i.anu, %bb.lp ], [ %i.anu, %bb.lw ], [ %i.anu, %bb.lr ], [ %i.anu, %bb.lq ]
  %i.amj = phi ptr [ %i.anv, %bb.lx ], [ %i.ahd, %bb.lf ], [ %i.anv, %bb.lm ], [ %i.anv, %bb.lp ], [ %i.anv, %bb.lw ], [ %i.anv, %bb.lr ], [ %i.anv, %bb.lq ]
  %i.amk = phi ptr [ %i.anw, %bb.lx ], [ %i.ahe, %bb.lf ], [ %i.anw, %bb.lm ], [ %i.anw, %bb.lp ], [ %i.anw, %bb.lw ], [ %i.anw, %bb.lr ], [ %i.anw, %bb.lq ]
  %i.aml = phi ptr [ %i.anx, %bb.lx ], [ %i.ahf, %bb.lf ], [ %i.anx, %bb.lm ], [ %i.anx, %bb.lp ], [ %i.anx, %bb.lw ], [ %i.anx, %bb.lr ], [ %i.anx, %bb.lq ]
  %i.amm = phi ptr [ %i.any, %bb.lx ], [ %i.ahg, %bb.lf ], [ %i.any, %bb.lm ], [ %i.any, %bb.lp ], [ %i.any, %bb.lw ], [ %i.any, %bb.lr ], [ %i.any, %bb.lq ]
  %i.amn = phi ptr [ %i.anz, %bb.lx ], [ %i.ahl, %bb.lf ], [ %i.anz, %bb.lm ], [ %i.anz, %bb.lp ], [ %i.anz, %bb.lw ], [ %i.anz, %bb.lr ], [ %i.anz, %bb.lq ]
  %i.amo = phi ptr [ %i.aoa, %bb.lx ], [ %i.ahm, %bb.lf ], [ %i.aoa, %bb.lm ], [ %i.aoa, %bb.lp ], [ %i.aoa, %bb.lw ], [ %i.aoa, %bb.lr ], [ %i.aoa, %bb.lq ]
  %.pn12.i.i.i.i = phi { ptr, i32 } [ %i.aoq, %bb.lx ], [ %.pn7.pn.i.i.i.i, %bb.lf ], [ %i.aod, %bb.lm ], [ %i.aoe, %bb.lp ], [ %i.aoo, %bb.lw ], [ %i.aoe, %bb.lr ], [ %i.aoe, %bb.lq ]
  %i.amp = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB24_(ptr noalias noundef align 8 dereferenceable(80) %i.amp) #31
          to label %bb.lh unwind label %bb.jn, !noalias !1745

bb.lh:                                            ; preds = %bb.lz, %.body48.i.i.i.i
  %i.amq = phi ptr [ %i.ant, %bb.lz ], [ %i.amh, %.body48.i.i.i.i ] ; 2 uses
  %i.amr = phi ptr [ %i.anu, %bb.lz ], [ %i.ami, %.body48.i.i.i.i ] ; 2 uses
  %i.ams = phi ptr [ %i.anv, %bb.lz ], [ %i.amj, %.body48.i.i.i.i ] ; 2 uses
  %i.amt = phi ptr [ %i.anw, %bb.lz ], [ %i.amk, %.body48.i.i.i.i ] ; 2 uses
  %i.amu = phi ptr [ %i.anx, %bb.lz ], [ %i.aml, %.body48.i.i.i.i ] ; 2 uses
  %i.amv = phi ptr [ %i.any, %bb.lz ], [ %i.amm, %.body48.i.i.i.i ] ; 2 uses
  %i.amw = phi ptr [ %i.anz, %bb.lz ], [ %i.amn, %.body48.i.i.i.i ] ; 2 uses
  %i.amx = phi ptr [ %i.aoa, %bb.lz ], [ %i.amo, %.body48.i.i.i.i ] ; 2 uses
  %.pn14.i.i.i.i = phi { ptr, i32 } [ %i.aor, %bb.lz ], [ %.pn12.i.i.i.i, %.body48.i.i.i.i ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 2066
  %i.amz = load i8, ptr %i.amy, align 2, !range !243, !noalias !1741, !noundef !4
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.mn, label %.body.i82.i.i.i

.body.i82.i.i.i:                                  ; preds = %bb.mn, %bb.lh, %bb.kx, %bb.kv, %bb.ku, %bb.kt, %bb.kl
  %i.anb = phi ptr [ %i.amq, %bb.mn ], [ %i.amq, %bb.lh ], [ %i.ahb, %bb.kx ], [ %i.ahb, %bb.kt ], [ %i.ahb, %bb.kv ], [ %i.ahb, %bb.kl ], [ %i.ahb, %bb.ku ]
  %i.anc = phi ptr [ %i.amr, %bb.mn ], [ %i.amr, %bb.lh ], [ %i.ahc, %bb.kx ], [ %i.ahc, %bb.kt ], [ %i.ahc, %bb.kv ], [ %i.ahc, %bb.kl ], [ %i.ahc, %bb.ku ]
  %i.and = phi ptr [ %i.ams, %bb.mn ], [ %i.ams, %bb.lh ], [ %i.ahd, %bb.kx ], [ %i.ahd, %bb.kt ], [ %i.ahd, %bb.kv ], [ %i.ahd, %bb.kl ], [ %i.ahd, %bb.ku ]
  %i.ane = phi ptr [ %i.amt, %bb.mn ], [ %i.amt, %bb.lh ], [ %i.ahe, %bb.kx ], [ %i.ahe, %bb.kt ], [ %i.ahe, %bb.kv ], [ %i.ahe, %bb.kl ], [ %i.ahe, %bb.ku ]
  %i.anf = phi ptr [ %i.amu, %bb.mn ], [ %i.amu, %bb.lh ], [ %i.ahf, %bb.kx ], [ %i.ahf, %bb.kt ], [ %i.ahf, %bb.kv ], [ %i.ahf, %bb.kl ], [ %i.ahf, %bb.ku ]
  %i.ang = phi ptr [ %i.amv, %bb.mn ], [ %i.amv, %bb.lh ], [ %i.ahg, %bb.kx ], [ %i.ahg, %bb.kt ], [ %i.ahg, %bb.kv ], [ %i.ahg, %bb.kl ], [ %i.ahg, %bb.ku ]
  %i.anh = phi ptr [ %i.amw, %bb.mn ], [ %i.amw, %bb.lh ], [ %i.ahl, %bb.kx ], [ %i.ahl, %bb.kt ], [ %i.ahl, %bb.kv ], [ %i.ahl, %bb.kl ], [ %i.ahl, %bb.ku ]
  %i.ani = phi ptr [ %i.amx, %bb.mn ], [ %i.amx, %bb.lh ], [ %i.ahm, %bb.kx ], [ %i.ahm, %bb.kt ], [ %i.ahm, %bb.kv ], [ %i.ahm, %bb.kl ], [ %i.ahm, %bb.ku ]
  %.pn14.pn.i.i.i.i = phi { ptr, i32 } [ %.pn14.i.i.i.i, %bb.mn ], [ %.pn14.i.i.i.i, %bb.lh ], [ %i.alp, %bb.kx ], [ %.pn.ph.i.i.i.i.i, %bb.kt ], [ %i.alm, %bb.kv ], [ %i.ala, %bb.kl ], [ %.pn.ph.i.i.i.i.i, %bb.ku ]
  %i.anj = getelementptr inbounds nuw i8, ptr %1, i64 2066
  store i8 0, ptr %i.anj, align 2, !noalias !1741
  br label %bb.li

bb.li:                                            ; preds = %bb.mh, %.body.i82.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i
  %i.ank = phi ptr [ %i.aiz, %bb.mh ], [ %i.anb, %.body.i82.i.i.i ], [ %i.ahb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.anl = phi ptr [ %i.aja, %bb.mh ], [ %i.anc, %.body.i82.i.i.i ], [ %i.ahc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.anm = phi ptr [ %i.ajb, %bb.mh ], [ %i.and, %.body.i82.i.i.i ], [ %i.ahd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.ann = phi ptr [ %i.ajc, %bb.mh ], [ %i.ane, %.body.i82.i.i.i ], [ %i.ahe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.ano = phi ptr [ %i.ajd, %bb.mh ], [ %i.anf, %.body.i82.i.i.i ], [ %i.ahf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.anp = phi ptr [ %i.aje, %bb.mh ], [ %i.ang, %.body.i82.i.i.i ], [ %i.ahg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.anq = phi ptr [ %i.ajf, %bb.mh ], [ %i.anh, %.body.i82.i.i.i ], [ %i.ahl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.anr = phi ptr [ %i.ajg, %bb.mh ], [ %i.ani, %.body.i82.i.i.i ], [ %i.ahm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %.pn17.pn.i.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i.i, %bb.mh ], [ %.pn14.pn.i.i.i.i, %.body.i82.i.i.i ], [ %.pn5.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit42.i.i.i.i ]
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 1912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.ans) #31
          to label %bb.mo unwind label %bb.jn, !noalias !1745

bb.lj:                                            ; preds = %bb.jc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #34
          to label %.noexc87.i.i.i unwind label %bb.mr, !noalias !1668

.noexc87.i.i.i:                                   ; preds = %bb.lj
  unreachable

bb.lk:                                            ; preds = %bb.jc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #34
          to label %.noexc88.i.i.i unwind label %bb.mr, !noalias !1668

.noexc88.i.i.i:                                   ; preds = %bb.lk
  unreachable

bb.ll:                                            ; preds = %bb.le, %bb.jc
  %i.ant = phi ptr [ %i.ahb, %bb.le ], [ %i.cs, %bb.jc ] ; 9 uses
  %i.anu = phi ptr [ %i.ahc, %bb.le ], [ %i.cr, %bb.jc ] ; 8 uses
  %i.anv = phi ptr [ %i.ahd, %bb.le ], [ %.phi.trans.insert323.i, %bb.jc ] ; 9 uses
  %i.anw = phi ptr [ %i.ahe, %bb.le ], [ %i.ub, %bb.jc ] ; 8 uses
  %i.anx = phi ptr [ %i.ahf, %bb.le ], [ %.phi.trans.insert.i194.i, %bb.jc ] ; 9 uses
  %i.any = phi ptr [ %i.ahg, %bb.le ], [ %i.vu, %bb.jc ] ; 8 uses
  %i.anz = phi ptr [ %i.ahl, %bb.le ], [ %.phi.trans.insert154.i.i.i, %bb.jc ] ; 9 uses
  %i.aoa = phi ptr [ %i.ahm, %bb.le ], [ %i.aha, %bb.jc ] ; 8 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 7 uses
  %i.aoc = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEEB2h_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aob, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ln unwind label %bb.lm, !noalias !1745

bb.lm:                                            ; preds = %bb.ll
  %i.aod = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.aob) #31
          to label %.body48.i.i.i.i unwind label %bb.jn, !noalias !1745

bb.ln:                                            ; preds = %bb.ll
  br i1 %i.aoc, label %.thread147.i.i.i, label %bb.lo

.thread147.i.i.i:                                 ; preds = %bb.ln
  store i8 3, ptr %i.anz, align 8, !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.sroa.4.i.i.i)
  br label %bb.mt

bb.lo:                                            ; preds = %bb.ln
  invoke void @_RNvXsb_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aob)
          to label %bb.ls unwind label %bb.lp, !noalias !1745

bb.lp:                                            ; preds = %bb.lo
  %i.aoe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.aof = load ptr, ptr %i.aob, align 8, !alias.scope !1794, !noalias !1741, !noundef !4 ; 2 uses
  %i.aog = icmp eq ptr %i.aof, null
  br i1 %i.aog, label %.body48.i.i.i.i, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aoh = atomicrmw sub ptr %i.aof, i64 1 release, align 8, !noalias !1797
  %i.aoi = icmp eq i64 %i.aoh, 1
  br i1 %i.aoi, label %bb.lr, label %.body48.i.i.i.i

bb.lr:                                            ; preds = %bb.lq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aob) #33
          to label %.body48.i.i.i.i unwind label %bb.lv, !noalias !1745

bb.ls:                                            ; preds = %bb.lo
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.aoj = load ptr, ptr %i.aob, align 8, !alias.scope !1805, !noalias !1741, !noundef !4 ; 2 uses
  %i.aok = icmp eq ptr %i.aoj, null
  br i1 %i.aok, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aol = atomicrmw sub ptr %i.aoj, i64 1 release, align 8, !noalias !1806
  %i.aom = icmp eq i64 %i.aol, 1
  br i1 %i.aom, label %bb.lu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i

bb.lu:                                            ; preds = %bb.lt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aob) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.lw, !noalias !1745

bb.lv:                                            ; preds = %bb.lr
  %i.aon = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !1745
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.lu, %bb.lt, %bb.ls
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; 2 uses
  invoke void @_RNvMs1_NtCs95DO3lnzZ3L_4moka6futureINtB5_11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE5clearB1w_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aop)
          to label %bb.ly unwind label %bb.lx, !noalias !1745

bb.lx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i.i.i.i

bb.ly:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB24_(ptr noalias noundef align 8 dereferenceable(80) %i.aop)
          to label %bb.ma unwind label %bb.lz, !noalias !1745

bb.lz:                                            ; preds = %bb.ly
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

bb.ma:                                            ; preds = %bb.ly
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 2066
  store i8 0, ptr %i.aos, align 2, !noalias !1741
  br label %bb.jp

bb.mb:                                            ; preds = %bb.jp
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.mc:                                            ; preds = %bb.jp
  store ptr %i.ajh, ptr %i.i, align 8, !noalias !1741
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %3 unwind label %bb.md, !noalias !1745

bb.md:                                            ; preds = %bb.mc
  %i.aou = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.ajh) #31
          to label %bb.mh unwind label %bb.jn, !noalias !1745

3:                                                ; preds = %bb.mc
  %4 = icmp eq ptr %i.ajh, null
  br i1 %4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %bb.me

bb.me:                                            ; preds = %3
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2072 ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !noalias !1745, !noundef !4 ; 2 uses
  %i.aox = add i64 %i.aow, -1
  store i64 %i.aox, ptr %i.aov, align 8, !noalias !1745
  %i.aoy = icmp eq i64 %i.aow, 1
  br i1 %i.aoy, label %bb.mf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i

bb.mf:                                            ; preds = %bb.me
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2176
  store atomic i64 0, ptr %i.aoz release, align 8, !noalias !1745
  %i.apa = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2080
  %i.apb = load i64, ptr %i.apa, align 8, !noalias !1745, !noundef !4
  %i.apc = icmp eq i64 %i.apb, 0
  br i1 %i.apc, label %bb.mg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, !prof !11

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ajh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.mi, !noalias !1745

bb.mh:                                            ; preds = %bb.mi, %bb.md, %bb.mb
  %.pn17.i.i.i.i = phi { ptr, i32 } [ %i.apd, %bb.mi ], [ %i.aou, %bb.md ], [ %i.aot, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1741
  br label %bb.li

bb.mi:                                            ; preds = %bb.mg
  %i.apd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.mg, %bb.mf, %bb.me, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1741
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 1912
  %.sroa.02.i.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ape, align 8, !noalias !1741 ; 2 uses
  %.sroa.02.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.02.i.sroa.4.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.02.i.sroa.4.0..sroa_idx.i.i.i, i64 38, i1 false), !noalias !1741
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.apg = load i64, ptr %i.apf, align 8, !noalias !1741, !noundef !4
  %i.aph = getelementptr inbounds nuw i8, ptr %1, i64 1904
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aph)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit.i.i.i.i unwind label %bb.mj, !noalias !1745

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i: ; preds = %bb.mo, %bb.mj
  %i.api = phi ptr [ %i.aiz, %bb.mj ], [ %i.ank, %bb.mo ] ; 3 uses
  %i.apj = phi ptr [ %i.aja, %bb.mj ], [ %i.anl, %bb.mo ] ; 3 uses
  %i.apk = phi ptr [ %i.ajb, %bb.mj ], [ %i.anm, %bb.mo ] ; 3 uses
  %i.apl = phi ptr [ %i.ajc, %bb.mj ], [ %i.ann, %bb.mo ] ; 3 uses
  %i.apm = phi ptr [ %i.ajd, %bb.mj ], [ %i.ano, %bb.mo ] ; 3 uses
  %i.apn = phi ptr [ %i.aje, %bb.mj ], [ %i.anp, %bb.mo ] ; 3 uses
  %i.apo = phi ptr [ %i.ajf, %bb.mj ], [ %i.anq, %bb.mo ] ; 3 uses
  %i.app = phi ptr [ %i.ajg, %bb.mj ], [ %i.anr, %bb.mo ] ; 3 uses
  %.pn20.i.i.i.i = phi { ptr, i32 } [ %i.apt, %bb.mj ], [ %.pn17.pn.i.i.i.i, %bb.mo ] ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 2065
  %i.apr = load i8, ptr %i.apq, align 1, !range !243, !noalias !1741, !noundef !4
  %i.aps = trunc nuw i8 %i.apr to i1
  br i1 %i.aps, label %bb.mp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i.i.i.i

bb.mj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 2065 ; 2 uses
  %i.apv = load i8, ptr %i.apu, align 1, !range !243, !noalias !1741, !noundef !4
  %i.apw = trunc nuw i8 %i.apv to i1
  br i1 %i.apw, label %bb.mk, label %bb.ms

bb.mk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit.i.i.i.i
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 1864 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  %i.apy = load ptr, ptr %i.apx, align 8, !alias.scope !1817, !noalias !1741, !nonnull !4, !noundef !4
  %i.apz = atomicrmw sub ptr %i.apy, i64 1 release, align 8, !noalias !1818
  %i.aqa = icmp eq i64 %i.apz, 1
  br i1 %i.aqa, label %bb.ml, label %bb.ms

bb.ml:                                            ; preds = %bb.mk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.apx) #33
          to label %bb.ms unwind label %bb.mm, !noalias !1745

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i.i.i.i: ; preds = %bb.mq, %bb.mp, %bb.mm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i
  %i.aqb = phi ptr [ %i.aiz, %bb.mm ], [ %i.api, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.api, %bb.mq ], [ %i.api, %bb.mp ]
  %i.aqc = phi ptr [ %i.aja, %bb.mm ], [ %i.apj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apj, %bb.mq ], [ %i.apj, %bb.mp ]
  %i.aqd = phi ptr [ %i.ajb, %bb.mm ], [ %i.apk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apk, %bb.mq ], [ %i.apk, %bb.mp ]
  %i.aqe = phi ptr [ %i.ajc, %bb.mm ], [ %i.apl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apl, %bb.mq ], [ %i.apl, %bb.mp ]
  %i.aqf = phi ptr [ %i.ajd, %bb.mm ], [ %i.apm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apm, %bb.mq ], [ %i.apm, %bb.mp ]
  %i.aqg = phi ptr [ %i.aje, %bb.mm ], [ %i.apn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apn, %bb.mq ], [ %i.apn, %bb.mp ]
  %i.aqh = phi ptr [ %i.ajf, %bb.mm ], [ %i.apo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.apo, %bb.mq ], [ %i.apo, %bb.mp ]
  %i.aqi = phi ptr [ %i.ajg, %bb.mm ], [ %i.app, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %i.app, %bb.mq ], [ %i.app, %bb.mp ]
  %.pn22.i.i.i.i = phi { ptr, i32 } [ %i.aqk, %bb.mm ], [ %.pn20.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i ], [ %.pn20.i.i.i.i, %bb.mq ], [ %.pn20.i.i.i.i, %bb.mp ]
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 2065
  store i8 0, ptr %i.aqj, align 1, !noalias !1741
  store i8 2, ptr %i.aqh, align 8, !noalias !1741
  br label %.body89.i.i.i

bb.mm:                                            ; preds = %bb.ml
  %i.aqk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i.i.i.i

bb.mn:                                            ; preds = %bb.lh
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 1952
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.aql) #31
          to label %.body.i82.i.i.i unwind label %bb.jn, !noalias !1745

bb.mo:                                            ; preds = %bb.li
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 1904
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i unwind label %bb.jn, !noalias !1745

bb.mp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit54.i.i.i.i
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 1864 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.aqo = load ptr, ptr %i.aqn, align 8, !alias.scope !1825, !noalias !1741, !nonnull !4, !noundef !4
  %i.aqp = atomicrmw sub ptr %i.aqo, i64 1 release, align 8, !noalias !1826
  %i.aqq = icmp eq i64 %i.aqp, 1
  br i1 %i.aqq, label %bb.mq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i.i.i.i

bb.mq:                                            ; preds = %bb.mp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqn) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i.i.i.i unwind label %bb.jn, !noalias !1745

bb.mr:                                            ; preds = %bb.lk, %bb.lj
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  br label %.body89.i.i.i

bb.ms:                                            ; preds = %bb.ml, %bb.mk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent12OldEntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit.i.i.i.i
  store i8 0, ptr %i.apu, align 1, !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.8140.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.02.i.sroa.4.i.i.i, i64 38, i1 false), !noalias !1827
  store i8 1, ptr %i.ajf, align 8, !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.sroa.4.i.i.i)
  %i.aqs = icmp eq i16 %.sroa.02.i.sroa.0.0.copyload.i.i.i, 2
  br i1 %i.aqs, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms, %.thread147.i.i.i
  %i.aqt = phi ptr [ %i.aiz, %bb.ms ], [ %i.ant, %.thread147.i.i.i ]
  %i.aqu = phi ptr [ %i.ajb, %bb.ms ], [ %i.anv, %.thread147.i.i.i ]
  %i.aqv = phi ptr [ %i.ajd, %bb.ms ], [ %i.anx, %.thread147.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8140.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0132.i.i.i)
  br label %.thread.i.i

bb.mu:                                            ; preds = %bb.ms
  store i16 %.sroa.02.i.sroa.0.0.copyload.i.i.i, ptr %i.p, align 8, !noalias !1664
  %.sroa.8140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.8140.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.8140.i.i.i, i64 38, i1 false), !noalias !1664
  %.sroa.8141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.apg, ptr %.sroa.8141.0..sroa_idx.i.i.i, align 8, !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8140.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20do_post_update_steps0EB2q_(ptr noundef nonnull align 8 %i.ajg)
          to label %bb.mw unwind label %bb.mv, !noalias !1668

bb.mv:                                            ; preds = %bb.mu
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.mw:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0132.i.i.i)
  br label %bb.ip

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i: ; preds = %bb.mx, %bb.is, %bb.ir
  %i.aqx = phi ptr [ %i.aex, %bb.mx ], [ %i.aff, %bb.is ], [ %i.aff, %bb.ir ]
  %i.aqy = phi ptr [ %i.aey, %bb.mx ], [ %i.afg, %bb.is ], [ %i.afg, %bb.ir ]
  %i.aqz = phi ptr [ %i.aez, %bb.mx ], [ %i.afh, %bb.is ], [ %i.afh, %bb.ir ]
  %i.ara = phi ptr [ %i.afa, %bb.mx ], [ %i.afi, %bb.is ], [ %i.afi, %bb.ir ]
  %i.arb = phi ptr [ %i.afb, %bb.mx ], [ %i.afj, %bb.is ], [ %i.afj, %bb.ir ]
  %i.arc = phi ptr [ %i.afc, %bb.mx ], [ %i.afk, %bb.is ], [ %i.afk, %bb.ir ]
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.are, %bb.mx ], [ %.pn30.i.i.i, %bb.is ], [ %.pn30.i.i.i, %bb.ir ]
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 1544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock7KeyLockNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.ard) #31
          to label %bb.my unwind label %bb.gy, !noalias !1668

bb.mx:                                            ; preds = %bb.iq
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit76.i.i.i: ; preds = %bb.iq, %bb.ip
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 1544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock7KeyLockNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.arf)
          to label %bb.nb unwind label %bb.na, !noalias !1668

bb.my:                                            ; preds = %bb.na, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i
  %i.arg = phi ptr [ %i.aex, %bb.na ], [ %i.aqx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.arh = phi ptr [ %i.aey, %bb.na ], [ %i.aqy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.ari = phi ptr [ %i.aez, %bb.na ], [ %i.aqz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.arj = phi ptr [ %i.afa, %bb.na ], [ %i.ara, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.ark = phi ptr [ %i.afb, %bb.na ], [ %i.arb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.arl = phi ptr [ %i.afc, %bb.na ], [ %i.arc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %.pn34.i.i.i = phi { ptr, i32 } [ %i.arq, %bb.na ], [ %.pn32.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78.i.i.i ] ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.arn = load ptr, ptr %i.arm, align 8, !alias.scope !1834, !noalias !1664, !nonnull !4, !noundef !4
  %i.aro = atomicrmw sub ptr %i.arn, i64 1 release, align 8, !noalias !1835
  %i.arp = icmp eq i64 %i.aro, 1
  br i1 %i.arp, label %bb.mz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit92.i.i.i

bb.mz:                                            ; preds = %bb.my
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomichEE9drop_slowCscEIReFzlGbb_26datafusion_catalog_listing(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.arm) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit92.i.i.i unwind label %bb.gy, !noalias !1668

bb.na:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit76.i.i.i
  %i.arq = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.nb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs7kfTgH1B6X1_10async_lock5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit76.i.i.i
  %i.arr = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  %i.ars = load ptr, ptr %i.arr, align 8, !alias.scope !1842, !noalias !1664, !nonnull !4, !noundef !4
  %i.art = atomicrmw sub ptr %i.ars, i64 1 release, align 8, !noalias !1843
  %i.aru = icmp eq i64 %i.art, 1
  br i1 %i.aru, label %bb.nc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit94.i.i.i

bb.nc:                                            ; preds = %bb.nb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomichEE9drop_slowCscEIReFzlGbb_26datafusion_catalog_listing(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.arr) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit94.i.i.i unwind label %bb.ne, !noalias !1668

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomichEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit92.i.i.i: ; preds = %bb.ne, %bb.mz, %bb.my
  %i.arv = phi ptr [ %i.aex, %bb.ne ], [ %i.arg, %bb.mz ], [ %i.arg, %bb.my ] ; 2 uses
  %i.arw = phi ptr [ %i.aey, %bb.ne ], [ %i.arh, %bb.mz ], [ %i.arh, %bb.my ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  br label %bb.qh

bb.pt:                                            ; preds = %bb.pl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ayy = phi ptr [ %i.ayb, %bb.pl ], [ %i.uc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 3 uses
  %i.ayz = phi ptr [ %i.ayc, %bb.pl ], [ %i.ud, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 3 uses
  %i.aza = phi ptr [ %i.ayd, %bb.pl ], [ %i.uh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %i.azb = phi ptr [ %i.aye, %bb.pl ], [ %i.ui, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1653
  store i8 1, ptr %i.aza, align 8, !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i191.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.sroa.2.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtBO_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE16insert_with_hash0EB2g_(ptr noundef nonnull align 8 %i.azb)
          to label %bb.pv unwind label %bb.pu, !noalias !1464

bb.pu:                                            ; preds = %bb.pt
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.pv:                                            ; preds = %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0261.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1460
  %i.azd = getelementptr inbounds nuw i8, ptr %1, i64 530
  store i8 0, ptr %i.azd, align 2, !noalias !1460
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.aze, i64 56, i1 false), !noalias !1460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1460
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  invoke fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.azf)
          to label %bb.pw unwind label %bb.qb, !noalias !1464

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.au, ptr noundef nonnull align 8 dereferenceable(256) %i.at, i64 256, i1 false), !noalias !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1460
  invoke void @_RNvMs_NtNtCs95DO3lnzZ3L_4moka6future17value_initializerINtB4_11WaiterGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16set_waiter_valueB1Q_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.av, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.au)
          to label %bb.py unwind label %bb.px, !noalias !1464

bb.px:                                            ; preds = %bb.pw
  %i.azg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1460
  br label %bb.qa

bb.py:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1460
  %.sroa.025.0.copyload.i = load ptr, ptr %i.azf, align 8, !noalias !1460
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %.sroa.11.i.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1460
  %.sroa.11.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.11.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.11.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, i64 240, i1 false), !noalias !1460
  br label %bb.fi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i: ; preds = %bb.qd, %bb.pz
  %i.azh = phi ptr [ %i.tl, %bb.pz ], [ %i.tq, %bb.qd ]
  %i.azi = phi ptr [ %i.tm, %bb.pz ], [ %i.tr, %bb.qd ]
  %.pn66.pn.pn.i = phi { ptr, i32 } [ %i.azk, %bb.pz ], [ %.pn66.pn.i, %bb.qd ]
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.azj, align 1, !noalias !1460
  br label %bb.qf

bb.pz:                                            ; preds = %bb.fi
  %i.azk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i: ; preds = %bb.fi
  %i.azl = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.azl, align 1, !noalias !1460
  br label %bb.qi

bb.qa:                                            ; preds = %bb.qb, %bb.px
  %.pn57321.i = phi { ptr, i32 } [ %i.azm, %bb.qb ], [ %i.azg, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1460
  br label %bb.qc

bb.qb:                                            ; preds = %bb.pv
  %i.azm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1460
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2p_(ptr noalias noundef align 8 dereferenceable(56) %i.av) #31
          to label %bb.qa unwind label %bb.z, !noalias !1464

bb.qc:                                            ; preds = %bb.qa, %bb.fd
  %i.azn = phi ptr [ %i.ayy, %bb.qa ], [ %i.tb, %bb.fd ]
  %i.azo = phi ptr [ %i.ayz, %bb.qa ], [ %i.tc, %bb.fd ]
  %.pn57.pn.i = phi { ptr, i32 } [ %.pn57321.i, %bb.qa ], [ %.pn55.i, %bb.fd ]
  %i.azp = getelementptr inbounds nuw i8, ptr %1, i64 2432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.azp) #31
          to label %bb.fk unwind label %bb.z, !noalias !1464

.body202.i:                                       ; preds = %bb.pr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35.i.i
  %i.azq = phi ptr [ %i.vh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35.i.i ], [ %i.cs, %bb.pr ]
  %i.azr = phi ptr [ %i.vi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35.i.i ], [ %i.cr, %bb.pr ]
  %i.azs = phi ptr [ %i.vk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35.i.i ], [ %i.ub, %bb.pr ]
  %.pn53.i = phi { ptr, i32 } [ %.pn25.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit35.i.i ], [ %i.ayv, %bb.pr ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtBO_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE16insert_with_hash0EB2g_(ptr noundef nonnull align 8 %i.azs) #31
          to label %bb.fd unwind label %bb.z, !noalias !1464

bb.qd:                                            ; preds = %bb.qe, %bb.fk
  store i8 0, ptr %i.ts, align 2, !noalias !1460
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i8 0, ptr %i.azt, align 8, !noalias !1460
  %i.azu = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.azu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i unwind label %bb.z, !noalias !1464

bb.qe:                                            ; preds = %bb.fk
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2p_(ptr noalias noundef align 8 dereferenceable(56) %i.azv) #31
          to label %bb.qd unwind label %bb.z, !noalias !1464

bb.qf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit190.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit171.i, %.body121.i
  %i.azw = phi ptr [ %i.qx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit171.i ], [ %i.azh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i ], [ %i.rn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit190.i ], [ %i.ct, %.body121.i ]
  %i.azx = phi ptr [ %i.qy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit171.i ], [ %i.azi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i ], [ %i.ro, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit190.i ], [ %i.cu, %.body121.i ]
  %.pn93.pn.i = phi { ptr, i32 } [ %.pn93.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit171.i ], [ %.pn66.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit207.i ], [ %i.rq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit190.i ], [ %i.dx, %.body121.i ]
  store i8 2, ptr %i.azw, align 1, !noalias !1460
  br label %.body

bb.qg:                                            ; preds = %bb.u, %bb.t
  %i.azy = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55, %bb.qh
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55 ], [ 3, %bb.qh ]
  store i8 %storemerge, ptr %i.bp, align 1
  ret void

bb.qh:                                            ; preds = %.noexc.i, %.noexc126.i, %bb.ps, %bb.dr, %bb.ep
  %i.azz = phi ptr [ %i.rn, %bb.ep ], [ %i.eo, %.noexc.i ], [ %i.qe, %bb.dr ], [ %i.fg, %.noexc126.i ], [ %i.ayw, %bb.ps ]
  %.sink.i.ph = phi i8 [ 6, %bb.ep ], [ 3, %.noexc.i ], [ 5, %bb.dr ], [ 4, %.noexc126.i ], [ 7, %bb.ps ]
  store i8 %.sink.i.ph, ptr %i.azz, align 1, !noalias !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  br label %common.ret

bb.qi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i
  %i.baa = phi ptr [ %i.tl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i ], [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i ]
  %i.bab = phi ptr [ %i.tm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i ], [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i ]
  %.sroa.584.0.copyload = phi ptr [ %.sroa.11.i.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i ], [ %.sroa.11.i.sroa.0.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i ] ; 2 uses
  %.sroa.019.2.i = phi i64 [ %.sroa.019.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i ], [ %.sroa.019.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i ]
  %i.bac = phi ptr [ %.sroa.620.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_.exit186.i ], [ %.sroa.620.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit167.i ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1375.sroa.6, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.11.i.sroa.6, i64 240, i1 false)
  store i8 1, ptr %i.baa, align 1, !noalias !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs95DO3lnzZ3L_4moka6future17value_initializerINtBP_16ValueInitializerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16try_init_or_readQFG_RL0_B2C_EbINtNtB4_6result6ResultB2C_NtB2G_17UnityCatalogErrorEB5B_NCNvMs3_NtB2G_10datafusionNtB6d_19UnitySchemaProvider9get_creds0E0EB2G_(ptr noundef nonnull align 8 %i.bab)
          to label %bb.qn unwind label %bb.qm

bb.qj:                                            ; preds = %.body, %bb.qm
  %.pn20 = phi { ptr, i32 } [ %i.bai, %bb.qm ], [ %.pn18, %.body ] ; 3 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  %i.bae = load ptr, ptr %i.bad, align 8, !alias.scope !1900, !noundef !4 ; 2 uses
  %i.baf = icmp eq ptr %i.bae, null
  br i1 %i.baf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bag = atomicrmw sub ptr %i.bae, i64 1 release, align 8, !noalias !1903
  %i.bah = icmp eq i64 %i.bag, 1
  br i1 %i.bah, label %bb.ql, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61

bb.ql:                                            ; preds = %bb.qk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bad) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61 unwind label %bb.e

bb.qm:                                            ; preds = %bb.qi
  %i.bai = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.qn:                                            ; preds = %bb.qi
  switch i64 %.sroa.019.2.i, label %default.unreachable133 [
    i64 0, label %bb.qo
    i64 1, label %bb.rc
    i64 2, label %bb.qp
  ]

bb.qo:                                            ; preds = %bb.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.bac, ptr %i.bo, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.584.0.copyload, ptr %.sroa.5.8..sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.sroa.3.0..sroa.5.8..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1375.sroa.6, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.baj = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.qr unwind label %bb.qq     ; 7 uses

bb.qp:                                            ; preds = %bb.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bac) ]
  store ptr %i.bac, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bak = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.re unwind label %bb.rd     ; 7 uses

bb.qq:                                            ; preds = %bb.qo
  %i.bal = landingpad { ptr, i32 }
          cleanup
  br label %bb.ra

bb.qr:                                            ; preds = %bb.qo
  store ptr %i.baj, ptr %i.bn, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %5 unwind label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bam = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.baj) #31
          to label %bb.ra unwind label %bb.e

5:                                                ; preds = %bb.qr
  %6 = icmp eq ptr %i.baj, null
  br i1 %6, label %bb.qx, label %bb.qt

bb.qt:                                            ; preds = %5
  %i.ban = getelementptr inbounds nuw i8, ptr %i.baj, i64 2072 ; 2 uses
  %i.bao = load i64, ptr %i.ban, align 8, !noundef !4 ; 2 uses
  %i.bap = add i64 %i.bao, -1
  store i64 %i.bap, ptr %i.ban, align 8
  %i.baq = icmp eq i64 %i.bao, 1
  br i1 %i.baq, label %bb.qu, label %bb.qx

bb.qu:                                            ; preds = %bb.qt
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baj, i64 2176
  store atomic i64 0, ptr %i.bar release, align 8
  %i.bas = getelementptr inbounds nuw i8, ptr %i.baj, i64 2080
  %i.bat = load i64, ptr %i.bas, align 8, !noundef !4
  %i.bau = icmp eq i64 %i.bat, 0
  br i1 %i.bau, label %bb.qv, label %bb.qx, !prof !11

bb.qv:                                            ; preds = %bb.qu
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.baj)
          to label %bb.qx unwind label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bav = landingpad { ptr, i32 }
          cleanup
  br label %bb.ra

bb.qx:                                            ; preds = %bb.qv, %5, %bb.qt, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.baw = getelementptr inbounds nuw i8, ptr %1, i64 2712
  store i8 0, ptr %i.baw, align 8
  %i.bax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bay = load ptr, ptr %i.bax, align 8, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.sroa.3.0..sroa.5.8..sroa_idx.sroa_idx, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %.thread134

.thread134:                                       ; preds = %bb.qx, %bb.rc
  %.sroa.511.sroa.3.0.ph = phi ptr [ %i.bbf, %bb.rc ], [ %i.bay, %bb.qx ]
  %.sroa.511.sroa.5.0.ph = phi i8 [ 0, %bb.rc ], [ 1, %bb.qx ]
  %.sroa.04.0.ph = ptrtoint ptr %i.bac to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58

bb.qy:                                            ; preds = %bb.ri, %7, %bb.rg, %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %.pre107 = load i8, ptr %.phi.trans.insert106, align 8, !range !243
  %i.baz = trunc nuw i8 %.pre107 to i1
  br i1 %i.baz, label %bb.rn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58

bb.qz:                                            ; preds = %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.rb

bb.ra:                                            ; preds = %bb.qq, %bb.qw, %bb.qs
  %.pn24 = phi { ptr, i32 } [ %i.bav, %bb.qw ], [ %i.bam, %bb.qs ], [ %i.bal, %bb.qq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.bo) #31
          to label %bb.qz unwind label %bb.e

bb.rb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEEB1g_.exit, %bb.qz
  %.pn26.pn = phi { ptr, i32 } [ %.pn24, %bb.qz ], [ %.pn22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEEB1g_.exit ] ; 4 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.bbb = load i8, ptr %i.bba, align 8, !range !243, !noundef !4
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %bb.rs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61

bb.rc:                                            ; preds = %bb.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.511.sroa.0, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1375.sroa.6, i64 240, i1 false)
  %i.bbd = getelementptr inbounds nuw i8, ptr %1, i64 2712
  store i8 0, ptr %i.bbd, align 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbf = load ptr, ptr %i.bbe, align 8, !noundef !4
  br label %.thread134

bb.rd:                                            ; preds = %bb.qp
  %i.bbg = landingpad { ptr, i32 }
          cleanup
  br label %bb.rj

bb.re:                                            ; preds = %bb.qp
  store ptr %i.bak, ptr %i.bl, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %7 unwind label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.bak) #31
          to label %bb.rj unwind label %bb.e

7:                                                ; preds = %bb.re
  %8 = icmp eq ptr %i.bak, null
  br i1 %8, label %bb.qy, label %bb.rg

bb.rg:                                            ; preds = %7
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bak, i64 2072 ; 2 uses
  %i.bbj = load i64, ptr %i.bbi, align 8, !noundef !4 ; 2 uses
  %i.bbk = add i64 %i.bbj, -1
  store i64 %i.bbk, ptr %i.bbi, align 8
  %i.bbl = icmp eq i64 %i.bbj, 1
  br i1 %i.bbl, label %bb.rh, label %bb.qy

bb.rh:                                            ; preds = %bb.rg
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bak, i64 2176
  store atomic i64 0, ptr %i.bbm release, align 8
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bak, i64 2080
  %i.bbo = load i64, ptr %i.bbn, align 8, !noundef !4
  %i.bbp = icmp eq i64 %i.bbo, 0
  br i1 %i.bbp, label %bb.ri, label %bb.qy, !prof !11

bb.ri:                                            ; preds = %bb.rh
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bak)
          to label %bb.qy unwind label %bb.rl

bb.rj:                                            ; preds = %bb.rf, %bb.rl, %bb.rd
  %.pn22 = phi { ptr, i32 } [ %i.bbs, %bb.rl ], [ %i.bbh, %bb.rf ], [ %i.bbg, %bb.rd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.bbq = atomicrmw sub ptr %i.bac, i64 1 release, align 8, !noalias !1908
  %i.bbr = icmp eq i64 %i.bbq, 1
  br i1 %i.bbr, label %bb.rk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEEB1g_.exit

bb.rk:                                            ; preds = %bb.rj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorE9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEEB1g_.exit unwind label %bb.e

bb.rl:                                            ; preds = %bb.ri
  %i.bbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.rj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58: ; preds = %.thread134, %bb.ro, %bb.rn, %bb.rp, %bb.qy
  %.sroa.04.0142 = phi i64 [ %.sroa.04.0.ph, %.thread134 ], [ -9223372036854775808, %bb.ro ], [ -9223372036854775808, %bb.rn ], [ -9223372036854775808, %bb.rp ], [ -9223372036854775808, %bb.qy ]
  %.sroa.4.0141 = phi ptr [ %.sroa.584.0.copyload, %.thread134 ], [ %i.bac, %bb.ro ], [ %i.bac, %bb.rn ], [ %i.bac, %bb.rp ], [ %i.bac, %bb.qy ]
  %.sroa.511.sroa.5.0140 = phi i8 [ %.sroa.511.sroa.5.0.ph, %.thread134 ], [ undef, %bb.ro ], [ undef, %bb.rn ], [ undef, %bb.rp ], [ undef, %bb.qy ]
  %.sroa.511.sroa.3.0139 = phi ptr [ %.sroa.511.sroa.3.0.ph, %.thread134 ], [ undef, %bb.ro ], [ undef, %bb.rn ], [ undef, %bb.rp ], [ undef, %bb.qy ]
  %i.bbt = getelementptr inbounds nuw i8, ptr %1, i64 2712
  store i8 0, ptr %i.bbt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  %i.bbu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %i.bbv = load ptr, ptr %i.bbu, align 8, !alias.scope !1919, !nonnull !4, !noundef !4
  %i.bbw = atomicrmw sub ptr %i.bbv, i64 1 release, align 8, !noalias !1919
  %i.bbx = icmp eq i64 %i.bbw, 1
  br i1 %i.bbx, label %bb.rm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55

bb.rm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bbu) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55 unwind label %bb.rr

bb.rn:                                            ; preds = %bb.qy
  %i.bby = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.bbz = load ptr, ptr %i.bby, align 8, !alias.scope !1920, !noundef !4 ; 2 uses
  %i.bca = icmp eq ptr %i.bbz, null
  br i1 %i.bca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bcb = atomicrmw sub ptr %i.bbz, i64 1 release, align 8, !noalias !1923
  %i.bcc = icmp eq i64 %i.bcb, 1
  br i1 %i.bcc, label %bb.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58

bb.rp:                                            ; preds = %bb.ro
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bby) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58 unwind label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bcd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61, %bb.f, %bb.rr
  %.pn33 = phi { ptr, i32 } [ %i.bce, %bb.rr ], [ %.pn29.pn, %bb.f ], [ %.pn29.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61 ]
  store i8 2, ptr %i.bp, align 1
  resume { ptr, i32 } %.pn33

bb.rr:                                            ; preds = %bb.rm
  %i.bce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58, %bb.rm
  store i64 %.sroa.04.0142, ptr %0, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0141, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.511.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.511.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.511.sroa.0, i64 240, i1 false)
  %.sroa.511.sroa.3.0..sroa.511.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.511.sroa.3.0139, ptr %.sroa.511.sroa.3.0..sroa.511.0..sroa_idx13.sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %.sroa.511.sroa.5.0140, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx13.sroa_idx, align 8
  %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 0, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx13.sroa_idx, align 1
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEEB1g_.exit: ; preds = %bb.rj, %bb.rk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.rb

bb.rs:                                            ; preds = %bb.rb
  %i.bcf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  %i.bcg = load ptr, ptr %i.bcf, align 8, !alias.scope !1928, !noundef !4 ; 2 uses
  %i.bch = icmp eq ptr %i.bcg, null
  br i1 %i.bch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bci = atomicrmw sub ptr %i.bcg, i64 1 release, align 8, !noalias !1931
  %i.bcj = icmp eq i64 %i.bci, 1
  br i1 %i.bcj, label %bb.ru, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61

bb.ru:                                            ; preds = %bb.rt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bcf) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit61 unwind label %bb.e

.body:                                            ; preds = %bb.qg, %bb.qf
  %i.bck = phi ptr [ %i.azx, %bb.qf ], [ %i.cr, %bb.qg ]
  %.pn18 = phi { ptr, i32 } [ %.pn93.pn.i, %bb.qf ], [ %i.azy, %bb.qg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs95DO3lnzZ3L_4moka6future17value_initializerINtBP_16ValueInitializerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16try_init_or_readQFG_RL0_B2C_EbINtNtB4_6result6ResultB2C_NtB2G_17UnityCatalogErrorEB5B_NCNvMs3_NtB2G_10datafusionNtB6d_19UnitySchemaProvider9get_creds0E0EB2G_(ptr noundef nonnull align 8 %i.bck) #31
          to label %bb.qj unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB9_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0s3_0Bb_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB9_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table010___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB9_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table010___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !4, !nonnull !4
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable12load_version0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef nonnull writable align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !4
  switch i8 %i.b, label %default.unreachable15 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.l
  ]

default.unreachable15:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !93, !noundef !4
  %.not = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259 unwind label %bb.aao

bb.aao:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257
  %i.bso = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsn)
          to label %.body260 unwind label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.bsp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263 unwind label %bb.aaq

.body260:                                         ; preds = %bb.aaq, %bb.aao, %.body254
  %.pn54 = phi { ptr, i32 } [ %.pn52, %.body254 ], [ %i.bsr, %bb.aaq ], [ %i.bso, %bb.aao ]
  %i.bsq = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.bsq) #31
          to label %.body266 unwind label %bb.im

bb.aaq:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  br label %.body260

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259
  %i.bss = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bss)
          to label %bb.aas unwind label %bb.aar

bb.aar:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263
  %i.bst = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bss)
          to label %.body266 unwind label %bb.aat

bb.aas:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bss)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268 unwind label %bb.aau

bb.aat:                                           ; preds = %bb.aar
  %i.bsu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body266:                                         ; preds = %bb.aau, %bb.aar, %.body260
  %.pn56 = phi { ptr, i32 } [ %.pn54, %.body260 ], [ %i.bsw, %bb.aau ], [ %i.bst, %bb.aar ]
  %i.bsv = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsv) #31
          to label %.body271 unwind label %bb.im

bb.aau:                                           ; preds = %bb.aas
  %i.bsw = landingpad { ptr, i32 }
          cleanup
  br label %.body266

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268: ; preds = %bb.aas
  %i.bsx = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270 unwind label %bb.aav

bb.aav:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268
  %i.bsy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsx)
          to label %.body271 unwind label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.bsz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274 unwind label %bb.aax

.body271:                                         ; preds = %bb.aax, %bb.aav, %.body266
  %.pn58 = phi { ptr, i32 } [ %.pn56, %.body266 ], [ %i.btb, %bb.aax ], [ %i.bsy, %bb.aav ]
  %i.bta = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bta) #31
          to label %.body277 unwind label %bb.im

bb.aax:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270
  %i.btb = landingpad { ptr, i32 }
          cleanup
  br label %.body271

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270
  %i.btc = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.btd = load i64, ptr %i.btc, align 8, !range !93, !alias.scope !2782, !noundef !4
  %i.bte = icmp eq i64 %i.btd, -9223372036854775808
  br i1 %i.bte, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke, label %bb.aay

bb.aay:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i276 unwind label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.btf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btc)
          to label %.body277 unwind label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.btg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i276: ; preds = %bb.aay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke unwind label %bb.abb

.body277:                                         ; preds = %bb.abb, %bb.aaz, %.body271
  %.pn60 = phi { ptr, i32 } [ %.pn58, %.body271 ], [ %i.bti, %bb.abb ], [ %i.btf, %bb.aaz ]
  %i.bth = getelementptr inbounds nuw i8, ptr %1, i64 776
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bth)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.im

bb.abb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i276
  %i.bti = landingpad { ptr, i32 }
          cleanup
  br label %.body277

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i276, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit237
  %i.btj = getelementptr inbounds nuw i8, ptr %1, i64 776
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.btj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit243 unwind label %bb.zy

bb.abc:                                           ; preds = %.body209
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(88) %i.cq) #31
          to label %bb.ov unwind label %bb.im

bb.abd:                                           ; preds = %bb.ov
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ct)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit286 unwind label %bb.im

bb.abe:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit286
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.cu) #31
          to label %.body146 unwind label %bb.im

bb.abf:                                           ; preds = %.body146
  %i.btk = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btk) #31
          to label %bb.abg unwind label %bb.im

bb.abg:                                           ; preds = %bb.abf
  %i.btl = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btl) #31
          to label %bb.abh unwind label %bb.im

bb.abh:                                           ; preds = %bb.abg
  %i.btm = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.btm) #31
          to label %bb.abi unwind label %bb.im

bb.abi:                                           ; preds = %bb.abh
  %i.btn = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btn) #31
          to label %bb.abj unwind label %bb.im

bb.abj:                                           ; preds = %bb.abi
  %i.bto = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bto) #31
          to label %bb.abk unwind label %bb.im

bb.abk:                                           ; preds = %bb.abj
  %i.btp = getelementptr inbounds nuw i8, ptr %1, i64 776
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.btp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.im

bb.abl:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.btq = getelementptr inbounds nuw i8, ptr %1, i64 867
  %i.btr = load i8, ptr %i.btq, align 1, !range !243, !noundef !4
  %i.bts = trunc nuw i8 %i.btr to i1
  br i1 %i.bts, label %bb.abn, label %.body97

bb.abm:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.btt = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.btu = load i8, ptr %i.btt, align 4, !range !243, !noundef !4
  %i.btv = trunc nuw i8 %i.btu to i1
  br i1 %i.btv, label %bb.abo, label %.body97

bb.abn:                                           ; preds = %bb.abl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models5TableEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.adm) #31
          to label %.body97 unwind label %bb.im

bb.abo:                                           ; preds = %bb.abm
  %i.btw = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.btw) #31
          to label %.body97 unwind label %bb.im
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !1587, !noalias !2785, !noundef !4
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, !prof !1503

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.a
  %i.g = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsee2lL6QbnsJ_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c, ptr noalias noundef align 8 dereferenceable_or_null(16) null) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.g, %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.c, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val.i.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i
  %i.l = add nuw i64 %i.j, 1
  store i64 %i.l, ptr %i.i, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.e, label %bb.u

bb.c:                                             ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #30
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 128 %.val.i.i) #31
          to label %common.resume.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = or i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2176
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.s seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2088 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  %i.y = and i64 %i.w, 127
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.u, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  invoke void @_RNvMs5_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.d

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %bb.q, %.body.i.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ak, %bb.q ], [ %i.ak, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default9collector()
  %i.ae = tail call noundef ptr @_RNvMs1_NtCsee2lL6QbnsJ_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2072 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ai = add nuw i64 %i.ag, 1
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %bb.m, label %bb.r

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #30
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 128 %i.ae) #31
          to label %.body.i.i unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %i.ap = or i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 2088 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = and i64 %i.at, 127
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.r, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  invoke void @_RNvMs5_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.r unwind label %bb.l

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body.i.i:                                        ; preds = %bb.l
  %i.ba = load i64, ptr %i.af, align 8, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.ba, 0
  %i.bf = icmp eq i64 %i.bc, 1
  %or.cond.i.i.i.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i.i, label %bb.q, label %common.resume.i, !prof !2792

bb.q:                                             ; preds = %.body.i.i
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
          to label %common.resume.i unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.af, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4 ; 2 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i64 %i.bg, 0
  %i.bl = icmp eq i64 %i.bi, 1
  %or.cond.i.i.i3.i.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i3.i.i, label %bb.s, label %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !2792

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
  br label %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.s, %bb.u
  %.sroa.0.0.i = phi ptr [ %.val.i.i, %bb.u ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB2_3Any7type_idCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @110, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorNtB2_3Any7type_idBt_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1247, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 6, label %bb.i
    i64 7, label %bb.i
    i64 8, label %bb.i
    i64 9, label %bb.i
    i64 10, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.g
    i64 13, label %bb.h
    i64 14, label %bb.i
    i64 15, label %bb.i
    i64 16, label %bb.i
    i64 17, label %bb.i
    i64 18, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !18, !noundef !4
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.20.0 = phi ptr [ @112, %bb.c ], [ undef, %bb.a ], [ %i.j, %bb.d ], [ @114, %bb.e ], [ @116, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @118, %bb.g ], [ @120, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %0, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.20.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [96 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !93, !noundef !4
  %.not = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2796
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q), !noalias !2798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2796
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.e unwind label %bb.d, !noalias !2798

bb.c:                                             ; preds = %bb.i, %bb.d
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %i.t, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #31
          to label %common.resume unwind label %bb.o, !noalias !2798

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2796
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !93, !alias.scope !2793, !noalias !2798, !noundef !4
  %.not.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2796
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.k unwind label %bb.j, !noalias !2798

bb.g:                                             ; preds = %bb.e
  store i64 -9223372036854775808, ptr %i.f, align 8, !noalias !2796
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !93, !alias.scope !2793, !noalias !2798, !noundef !4
  %.not4.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not4.i, label %_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.l

bb.i:                                             ; preds = %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.y, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %bb.c unwind label %bb.o, !noalias !2798

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2796
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2796
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.n unwind label %bb.m, !noalias !2798

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #31
          to label %bb.i unwind label %bb.o, !noalias !2798

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload1.i = load i64, ptr %i.d, align 8, !noalias !2796
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2796
  br label %_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2798
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.c ], [ %.pn.pn.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op
end_hunk_3
