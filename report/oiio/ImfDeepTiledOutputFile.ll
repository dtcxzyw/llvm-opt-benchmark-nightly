inline.NumInlined: 1001
inline.NumDeleted: 476
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
.preheader:                                       ; preds = %bb.ap, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 25 uses
  %i.bs = phi ptr [ %i.eu, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 10 uses
  %.val58130 = phi ptr [ %.val58131, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 7 uses
  %.sroa.091.0 = phi ptr [ %i.ev, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ %i.br, %bb.ap ] ; 4 uses
  %i.bt = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.aq unwind label %bb.as
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.cj, ptr %.val58130, align 8, !tbaa !115
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.az:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i: ; preds = %bb.bb, %.noexc65
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bc

end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
  %.sroa.0.1 = phi ptr [ %i.el, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %.sroa.0.0, %bb.bh ]
  %i.eq = phi ptr [ %i.eo, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %i.bs, %bb.bh ]
  %.pn = phi ptr [ %i.em, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %.val58130, %bb.bh ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.cg, i64 296
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !178
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ay, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76
  %.sroa.0.2 = phi ptr [ %i.db, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ay ], [ %.sroa.0.1, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %i.eu = phi ptr [ %i.de, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.bs, %bb.ay ], [ %i.eq, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %.val58131.a = phi ptr [ %i.dc, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.val58130, %bb.ay ], [ %.pn, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %.val58131 = getelementptr inbounds nuw i8, ptr %.val58131.a, i64 8
  %i.ev = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.0) #29
  br label %.preheader, !llvm.loop !198

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.at, %bb.ar, %bb.ap
  %.19.i.i.i.i = phi ptr [ %.084.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.05.i.i.i.i, %bb.ar ], [ %.05.i.i.i.i, %bb.at ], [ %.05.i.i.i.i, %bb.ap ], [ %.05.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ] ; 6 uses
  %.pn.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ar ], [ 16, %bb.at ], [ 16, %bb.ap ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ]
  %i.ey = getelementptr i8, ptr %.05.i.i.i.i, i64 %.pn.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !219
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a

.lr.ph.i.i.i104.i:                                ; preds = %.noexc152, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i
  %.05.i.i.i105.i = phi ptr [ %.1.i.i.i110.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i ], [ %.val.i.i102.i, %.noexc152 ] ; 9 uses
  %.084.i.i.i106.i = phi ptr [ %.19.i.i.i108.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i ], [ %i.ei, %.noexc152 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i105.i, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i105.i, i64 44
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !214 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i117.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i116.i, %bb.bp, %bb.bn, %bb.bl
  %.19.i.i.i108.i = phi ptr [ %.084.i.i.i106.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i117.i ], [ %.05.i.i.i105.i, %bb.bn ], [ %.05.i.i.i105.i, %bb.bp ], [ %.05.i.i.i105.i, %bb.bl ], [ %.05.i.i.i105.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i116.i ] ; 7 uses
  %.pn.i.i.i109.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i117.i ], [ 16, %bb.bn ], [ 16, %bb.bp ], [ 16, %bb.bl ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i116.i ]
  %i.hl = getelementptr i8, ptr %.05.i.i.i105.i, i64 %.pn.i.i.i109.i
  %.1.i.i.i110.i = load ptr, ptr %i.hl, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i111.i = icmp eq ptr %.1.i.i.i110.i, null
  br i1 %.not.i.i.i111.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i112.i, label %.lr.ph.i.i.i104.i, !llvm.loop !219

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i112.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i107.i
  %i.hm = icmp eq ptr %.19.i.i.i108.i, %i.ei
  br i1 %i.hm, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i112.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.19.i.i.i108.i, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %.19.i.i.i108.i, i64 44
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !214 ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, %i.gr
  br i1 %i.hq, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.br
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br i1 %i.hr, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.hs = getelementptr inbounds nuw i8, ptr %.19.i.i.i108.i, i64 40
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !215 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, %i.gs
  br i1 %i.hu, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bt
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br i1 %i.hv, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.hw = getelementptr inbounds nuw i8, ptr %.19.i.i.i108.i, i64 36
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !216 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, %i.gu
  br i1 %i.hy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bv
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %i.id = phi i32 [ %i.hp, %.lr.ph.i ], [ %i.kh, %.backedge.backedge ]
  %storemerge160.i = phi ptr [ %.19.i.i.i108.i, %.lr.ph.i ], [ %.19.i.i.i126.i, %.backedge.backedge ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %storemerge160.i, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !220
  %i.ig = getelementptr inbounds nuw i8, ptr %storemerge160.i, i64 36
end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i124.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i, %bb.cf, %bb.cd, %bb.cb
  %.19.i.i.i126.i = phi ptr [ %.084.i.i.i123.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i ], [ %.05.i.i.i122.i, %bb.cd ], [ %.05.i.i.i122.i, %bb.cf ], [ %.05.i.i.i122.i, %bb.cb ], [ %.05.i.i.i122.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i ] ; 7 uses
  %.pn.i.i.i127.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i134.i ], [ 16, %bb.cd ], [ 16, %bb.cf ], [ 16, %bb.cb ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i133.i ]
  %i.kd = getelementptr i8, ptr %.05.i.i.i122.i, i64 %.pn.i.i.i127.i
  %.1.i.i.i127.i = load ptr, ptr %i.kd, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i128.i = icmp eq ptr %.1.i.i.i127.i, null
  br i1 %.not.i.i.i128.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i129.i, label %.lr.ph.i.i.i121.i, !llvm.loop !219
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cr, %bb.cp, %bb.cn
  %.19.i.i.i.i.i = phi ptr [ %.084.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.05.i.i.i.i.i, %bb.cp ], [ %.05.i.i.i.i.i, %bb.cr ], [ %.05.i.i.i.i.i, %bb.cn ], [ %.05.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ] ; 15 uses
  %.pn.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.cp ], [ 16, %bb.cr ], [ 16, %bb.cn ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ]
  %i.lt = getelementptr i8, ptr %.05.i.i.i.i.i, i64 %.pn.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.lt, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !219
end_hunk_12
