inline.NumInlined: 847
inline.NumDeleted: 418
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 25 uses
  %i.au = phi ptr [ %i.de, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 12 uses
  %i.av = phi ptr [ %i.df, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 20 uses
  %.sroa.0121.0 = phi ptr [ %i.dg, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ %i.i, %bb.e ] ; 4 uses
  %i.aw = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.ak unwind label %bb.am
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  store i32 0, ptr %.sroa.10103.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 0, ptr %.sroa.11106.0..sroa_idx, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.as:                                            ; preds = %bb.aq
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc42 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.au

end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  store i32 %i.ck, ptr %.sroa.1077.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 %i.cn, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.az:                                            ; preds = %bb.ax
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52: ; preds = %.lr.ph.i.i.i.i.i.i48, %.noexc57
  %.0.lcssa.i.i.i.i.i.i53 = phi ptr [ %i.cz, %.noexc57 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i48 ]
  %7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i53, i64 48
  %.not.i27.i.i.i54 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i54, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, label %bb.bb

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ay, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, %bb.ar, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.bt, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ar ], [ %i.cz, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %.sroa.0.0, %bb.ay ]
  %i.de = phi ptr [ %i.bx, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.au, %bb.ar ], [ %i.dd, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.au, %bb.ay ]
  %i.df = phi ptr [ %5, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %4, %bb.ar ], [ %7, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %6, %bb.ay ]
  %i.dg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0121.0) #29
  br label %.preheader, !llvm.loop !188

end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i, %bb.at, %bb.ar, %bb.ap
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ar ], [ 16, %bb.at ], [ 16, %bb.ap ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.084.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.05.i.i.i.i, %bb.ar ], [ %.05.i.i.i.i, %bb.at ], [ %.05.i.i.i.i, %bb.ap ], [ %.05.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i ] ; 6 uses
  %i.es = getelementptr i8, ptr %.05.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.es, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !208
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a

.lr.ph.i.i.i96.i:                                 ; preds = %.noexc149, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i
  %.05.i.i.i97.i = phi ptr [ %.1.i.i.i102.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i ], [ %.val.i.i94.i, %.noexc149 ] ; 9 uses
  %.084.i.i.i98.i = phi ptr [ %.19.i.i.i101.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i ], [ %i.ec, %.noexc149 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i97.i, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i97.i, i64 44
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !203 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i109.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i108.i, %bb.bp, %bb.bn, %bb.bl
  %.sink.i.i.i100.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i109.i ], [ 16, %bb.bn ], [ 16, %bb.bp ], [ 16, %bb.bl ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i108.i ]
  %.19.i.i.i101.i = phi ptr [ %.084.i.i.i98.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i109.i ], [ %.05.i.i.i97.i, %bb.bn ], [ %.05.i.i.i97.i, %bb.bp ], [ %.05.i.i.i97.i, %bb.bl ], [ %.05.i.i.i97.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i108.i ] ; 7 uses
  %i.hf = getelementptr i8, ptr %.05.i.i.i97.i, i64 %.sink.i.i.i100.i
  %.1.i.i.i102.i = load ptr, ptr %i.hf, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i103.i = icmp eq ptr %.1.i.i.i102.i, null
  br i1 %.not.i.i.i103.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i104.i, label %.lr.ph.i.i.i96.i, !llvm.loop !208

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i104.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i99.i
  %i.hg = icmp eq ptr %.19.i.i.i101.i, %i.ec
  br i1 %i.hg, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i104.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.19.i.i.i101.i, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.19.i.i.i101.i, i64 44
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !203 ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, %i.gl
  br i1 %i.hk, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.br
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br i1 %i.hl, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i101.i, i64 40
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !204 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, %i.gm
  br i1 %i.ho, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.bt
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br i1 %i.hp, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.hq = getelementptr inbounds nuw i8, ptr %.19.i.i.i101.i, i64 36
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !205 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, %i.go
  br i1 %i.hs, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, label %bb.bv
end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %i.hx = phi i32 [ %i.hj, %.lr.ph.i ], [ %i.jr, %.backedge.backedge ]
  %storemerge149.i = phi ptr [ %.19.i.i.i101.i, %.lr.ph.i ], [ %.19.i.i.i118.i, %.backedge.backedge ] ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge149.i, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !209
  %i.ia = getelementptr inbounds nuw i8, ptr %storemerge149.i, i64 36
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i116.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i, %bb.cd, %bb.cb, %bb.bz
  %.sink.i.i.i117.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i ], [ 16, %bb.cb ], [ 16, %bb.cd ], [ 16, %bb.bz ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i ]
  %.19.i.i.i118.i = phi ptr [ %.084.i.i.i115.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i126.i ], [ %.05.i.i.i114.i, %bb.cb ], [ %.05.i.i.i114.i, %bb.cd ], [ %.05.i.i.i114.i, %bb.bz ], [ %.05.i.i.i114.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i125.i ] ; 7 uses
  %i.jn = getelementptr i8, ptr %.05.i.i.i114.i, i64 %.sink.i.i.i117.i
  %.1.i.i.i119.i = load ptr, ptr %i.jn, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i120.i = icmp eq ptr %.1.i.i.i119.i, null
  br i1 %.not.i.i.i120.i, label %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i, label %.lr.ph.i.i.i113.i, !llvm.loop !208
end_hunk_12
begin_hunk_13_@_ZN27OpenImageIO_v3_1_Imf__3_3_515TiledOutputFile10writeTilesEiiiiii:bb.a
  br label %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i

_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread2.i.i.i.i.i: ; preds = %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cp, %bb.cn, %bb.cl
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.cn ], [ 16, %bb.cp ], [ 16, %bb.cl ], [ 16, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.084.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.05.i.i.i.i.i, %bb.cn ], [ %.05.i.i.i.i.i, %bb.cp ], [ %.05.i.i.i.i.i, %bb.cl ], [ %.05.i.i.i.i.i, %_ZNKSt4lessIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i.i.i ] ; 15 uses
  %i.kx = getelementptr i8, ptr %.05.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !208
end_hunk_13
