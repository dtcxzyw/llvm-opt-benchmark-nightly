Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner10visitBSWAPEPN4llvm6SDNodeE:bb.a
  %i.gh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.fk, i32 noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #36
  br label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit

.sink.split.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEES7_Lb1ELb0EEES8_S8_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEES7_Lb1ELb0EEES8_S8_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEES9_Lb1ELb0EEESA_SA_EEEEEEEbNS_7SDValueEOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 195, ptr %8, align 8
  %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.fm, ptr %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4108.sroa.6.0..sroa.4108.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %5, ptr %.sroa.4108.sroa.6.0..sroa.4108.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4108.sroa.7.0..sroa.4108.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %.sroa.4108.sroa.7.0..sroa.4108.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4108.sroa.8.0..sroa.4108.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %.sroa.4108.sroa.8.0..sroa.4108.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4108.sroa.10.0..sroa.4108.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %.sroa.4108.sroa.10.0..sroa.4108.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %6, ptr %.sroa.5109.0..sroa_idx.i, align 8
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %.sroa.6110.0..sroa_idx.i, align 8
  %.sroa.7111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %.sroa.7111.0..sroa_idx.i, align 8
  %.sroa.9113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %.sroa.9113.0..sroa_idx.i, align 8
  %.sroa.10115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  store i32 194, ptr %.sroa.10115.0..sroa_idx.i, align 8
  %.sroa.11116.sroa.4.0..sroa.11116.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i32 %i.fm, ptr %.sroa.11116.sroa.4.0..sroa.11116.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.11116.sroa.6.0..sroa.11116.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store ptr %5, ptr %.sroa.11116.sroa.6.0..sroa.11116.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.11116.sroa.7.0..sroa.11116.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr null, ptr %.sroa.11116.sroa.7.0..sroa.11116.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.11116.sroa.8.0..sroa.11116.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i32 0, ptr %.sroa.11116.sroa.8.0..sroa.11116.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.11116.sroa.10.0..sroa.11116.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i32 0, ptr %.sroa.11116.sroa.10.0..sroa.11116.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.12117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store ptr %6, ptr %.sroa.12117.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 136
  store ptr null, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i32 0, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i32 0, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  store i32 193, ptr %.sroa.17118.0..sroa_idx.i, align 8
  %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 %i.fm, ptr %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr %5, ptr %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 184
  store ptr null, ptr %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.18.sroa.8.0..sroa.18.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i32 0, ptr %.sroa.18.sroa.8.0..sroa.18.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.18.sroa.10.0..sroa.18.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 200
  store i32 0, ptr %.sroa.18.sroa.10.0..sroa.18.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 208
  store ptr %6, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 216
  store ptr null, ptr %.sroa.20.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i32 0, ptr %.sroa.21.0..sroa_idx.i236, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 232
  store i32 0, ptr %.sroa.23.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.gi = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES6_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %.sroa.17118.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0199.0.copyload.i, i32 %.sroa.7201.0.copyload.i)
  br i1 %i.gi, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES6_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %.sroa.10115.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0199.0.copyload.i, i32 %.sroa.7201.0.copyload.i)
  br i1 %i.gj, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.gk = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES6_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(240) %8, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0199.0.copyload.i, i32 %.sroa.7201.0.copyload.i)
  br i1 %i.gk, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282.sink.split

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i: ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i, %bb.ag, %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0199.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i.i.i58.i = load ptr, ptr %i.gl, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i.i.i59.i = icmp eq ptr %.sroa.018.022.i.i.i.i.i58.i, null
  br i1 %.not23.i.i.i.i.i59.i, label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282.sink.split, label %.lr.ph.i.i.i.i.i60.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i60.i
  %.214.i.i.i.i.i63.i = select i1 %i.gp, i32 %.01224.i.i.i.i.i62.i, i32 0 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i61.i, i64 32
  %.sroa.018.0.i.i.i.i.i66.i = load ptr, ptr %i.gm, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i.i.i67.i = icmp eq ptr %.sroa.018.0.i.i.i.i.i66.i, null
  br i1 %.not.i.i.i.i.i67.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS2_ILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES8_Lb1ELb0EEESB_SB_EEEEEEEbNS_7SDValueEOT_.exit.i, label %.lr.ph.i.i.i.i.i60.i

.lr.ph.i.i.i.i.i60.i:                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, %bb.ah
  %.sroa.018.025.i.i.i.i.i61.i = phi ptr [ %.sroa.018.0.i.i.i.i.i66.i, %bb.ah ], [ %.sroa.018.022.i.i.i.i.i58.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i ] ; 2 uses
  %.01224.i.i.i.i.i62.i = phi i32 [ %.214.i.i.i.i.i63.i, %bb.ah ], [ 1, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i61.i, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !211
  %i.gp = icmp ne i32 %i.go, %.sroa.7201.0.copyload.i ; 2 uses
  %i.gq = icmp ne i32 %.01224.i.i.i.i.i62.i, 0
  %cond.i.i.i.i.i64.i = select i1 %i.gp, i1 true, i1 %i.gq
  br i1 %cond.i.i.i.i.i64.i, label %bb.ah, label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282.sink.split

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS2_ILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES8_Lb1ELb0EEESB_SB_EEEEEEEbNS_7SDValueEOT_.exit.i: ; preds = %bb.ah
  %i.gr = icmp eq i32 %.214.i.i.i.i.i63.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br i1 %i.gr, label %bb.ai, label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282

bb.ai:                                            ; preds = %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS2_ILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES8_Lb1ELb0EEESB_SB_EEEEEEEbNS_7SDValueEOT_.exit.i
  %i.gs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.fk, i32 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #36 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.gs, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.gs, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0199.0.copyload.i, i64 24
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !72
  store ptr %.fca.0.extract5.i, ptr %9, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !198
  %i.gv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.fk, i32 noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #36
  br label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit

_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282.sink.split: ; preds = %.lr.ph.i.i.i.i.i60.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES7_Lb1ELb0EEESA_SA_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282

_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282: ; preds = %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282.sink.split, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS2_ILj1ENS0_14UnaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEELb0EEEEES8_Lb1ELb0EEESB_SB_EEEEEEEbNS_7SDValueEOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.sink.split

_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit: ; preds = %bb.ae, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.ae ], [ %i.gv, %bb.ai ] ; 2 uses
  %.sroa.0203.0.i = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not294 = icmp eq ptr %.sroa.0203.0.i, null
  br i1 %.not294, label %bb.aj, label %bb.au

.sink.split:                                      ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit229.thread, %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread282
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.gw = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %20, ptr noundef nonnull align 8 dereferenceable(920) %i.gw, ptr %.sroa.0241.0.copyload, i32 %.sroa.22.0.copyload, i32 noundef 0) #36
  %i.gx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !405 ; 4 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ha = icmp ult i32 %i.gy, 65
  br i1 %i.ha, label %_ZNK4llvm9KnownBits6isZeroEv.exit, label %.split

.split:                                           ; preds = %bb.ak
  %i.hb = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #37 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, %i.gy
  br i1 %i.hc, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread, label %bb.am

_ZNK4llvm9KnownBits6isZeroEv.exit:                ; preds = %bb.ak
  %i.hd = load i64, ptr %20, align 8, !tbaa !75   ; 3 uses
  %i.he = sub nuw nsw i32 64, %i.gy
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = lshr i64 -1, %i.hf
  %i.hh = icmp eq i64 %i.hd, %i.hg
  br i1 %i.hh, label %_ZNK4llvm9KnownBits6isZeroEv.exit.thread, label %bb.al

_ZNK4llvm9KnownBits6isZeroEv.exit.thread:         ; preds = %bb.aj, %.split, %_ZNK4llvm9KnownBits6isZeroEv.exit
  %i.hi = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.030.0.copyload = load i16, ptr %11, align 8, !tbaa !214
  %.sroa.232.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.hi, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.030.0.copyload, ptr %.sroa.232.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.hj, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.hj, 1
  br label %bb.ap

bb.al:                                            ; preds = %_ZNK4llvm9KnownBits6isZeroEv.exit
  %i.hk = xor i64 %i.hd, -1
  %i.hl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hk, i1 false)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = and i32 %i.hm, 120
  %i.ho = shl i64 %i.hd, %i.hf
  %i.hp = xor i64 %i.ho, -1
  %i.hq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hp, i1 false)
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

bb.am:                                            ; preds = %.split
  %i.hs = and i32 %i.hb, -8
  %i.ht = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #37
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit: ; preds = %bb.al, %bb.am
  %i.hu = phi i32 [ %i.hs, %bb.am ], [ %i.hn, %bb.al ] ; 3 uses
  %.0.i.i239 = phi i32 [ %i.ht, %bb.am ], [ %i.hr, %bb.al ]
  %i.hv = and i32 %.0.i.i239, -8                  ; 3 uses
  %i.hw = add i32 %i.hu, %i.hv
  %i.hx = sub i32 %i.ba, %i.hw
  %i.hy = icmp eq i32 %i.hx, 8
  br i1 %i.hy, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit
  %i.hz = icmp ugt i32 %i.hv, %i.hu               ; 2 uses
  %i.ia = select i1 %i.hz, i32 198, i32 200       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !324, !range !52, !noundef !53
  %i.id = trunc nuw i8 %i.ic to i1
  %.sroa.011.0.copyload.pre = load i16, ptr %11, align 8, !tbaa !214 ; 3 uses
  %.sroa.213.0.copyload.pre = load ptr, ptr %i.f, align 8, !tbaa !216 ; 3 uses
  br i1 %i.id, label %bb.ao, label %.critedge195

bb.ao:                                            ; preds = %bb.an
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ie, align 8, !tbaa !347
  %i.if = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE(ptr %.val, i8 1, i32 noundef %i.ia, i16 %.sroa.011.0.copyload.pre, ptr %.sroa.213.0.copyload.pre)
  br i1 %i.if, label %.critedge195, label %bb.ap

.critedge195:                                     ; preds = %bb.ao, %bb.an
  %i.ig = sub nsw i32 %i.hv, %i.hu
  %23 = call noundef i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.ih = select i1 %i.hz, i32 1, i32 4
  %i.ii = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  store ptr %.sroa.0241.0.copyload, ptr %21, align 8, !tbaa !74
  %.sroa.22.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x i32> %i.c, ptr %.sroa.22.0..sroa_idx259, align 8
  %i.ij = zext nneg i32 %23 to i64
  %i.ik = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i64 noundef %i.ij, i16 %.sroa.011.0.copyload.pre, ptr %.sroa.213.0.copyload.pre, ptr noundef nonnull align 8 dereferenceable(12) %12) #36 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.ik, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.ik, 1
  store ptr %.fca.0.extract4, ptr %22, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.27.0..sroa_idx, align 8
  %i.il = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ii, i32 noundef %i.ia, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.011.0.copyload.pre, ptr %.sroa.213.0.copyload.pre, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, i32 %i.ih) #36 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.il, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.il, 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit, %bb.ao, %.critedge195, %_ZNK4llvm9KnownBits6isZeroEv.exit.thread
  %.sroa.13.0 = phi i32 [ %.fca.1.extract27, %_ZNK4llvm9KnownBits6isZeroEv.exit.thread ], [ %.fca.1.extract, %.critedge195 ], [ 0, %bb.ao ], [ 0, %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit ]
  %.sroa.0267.0 = phi ptr [ %.fca.0.extract26, %_ZNK4llvm9KnownBits6isZeroEv.exit.thread ], [ %.fca.0.extract, %.critedge195 ], [ null, %bb.ao ], [ null, %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit ]
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.in = load i32, ptr %i.im, align 8, !tbaa !405
  %i.io = icmp ugt i32 %i.in, 64
  br i1 %i.io, label %bb.aq, label %_ZN4llvm5APIntD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !75 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.iq) #38
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.is = load i32, ptr %i.gx, align 8, !tbaa !405
  %i.it = icmp ugt i32 %i.is, 64
  br i1 %i.it, label %bb.as, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.as:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.iu = load ptr, ptr %20, align 8, !tbaa !75   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.iu) #38
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.iw = insertvalue { ptr, i32 } poison, ptr %.sroa.0267.0, 0
  %i.ix = insertvalue { ptr, i32 } %i.iw, i32 %.sroa.13.0, 1
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit, %.critedge, %.critedge193, %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit, %bb.a, %bb.f, %bb.c
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.n, %bb.a ], [ %i.t, %bb.c ], [ %i.ag, %bb.f ], [ %.pn, %_ZL24foldBitOrderCrossLogicOpPN4llvm6SDNodeERNS_12SelectionDAGE.exit ], [ %i.ix, %_ZN4llvm9KnownBitsD2Ev.exit ], [ %i.fj, %.critedge193 ], [ %i.dw, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner15visitBITREVERSEEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(952) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %5 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 10 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 10 uses
  %8 = alloca %"struct.llvm::SDPatternMatch::BinaryOpc_match.888", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.sroa.0169.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !74 ; 6 uses
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9172.0.copyload = load i32, ptr %.sroa.9172.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !214 ; 13 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !216 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !352
  store i64 %i.f, ptr %3, align 8, !tbaa !352
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !351
  store i32 %i.i, ptr %i.g, align 8, !tbaa !396
  %i.j = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %.sroa.0169.0.copyload, ptr %5, align 8, !tbaa !74
  %.sroa.9172.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.9172.0.copyload, ptr %.sroa.9172.0..sroa_idx173, align 8, !tbaa !198
  store ptr %5, ptr %4, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !384
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.j, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4, i32 0) #36 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not = icmp eq ptr %.fca.0.extract39, null
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.copyload, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72   ; 3 uses
  %i.o = icmp eq i32 %i.n, 214
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.copyload, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !204  ; 2 uses
  %.sroa.0176.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !74
  %.sroa.9177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9177.0.copyload = load i32, ptr %.sroa.9177.0..sroa_idx, align 8, !tbaa !198
  %i.r = insertvalue { ptr, i32 } poison, ptr %.sroa.0176.0.copyload, 0
  %i.s = insertvalue { ptr, i32 } %i.r, i32 %.sroa.9177.0.copyload, 1
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr null, ptr %6, align 8, !tbaa !193
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr null, ptr %7, align 8, !tbaa !193
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.w = load i8, ptr %i.v, align 1, !tbaa !324, !range !52, !noundef !53
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !347, !nonnull !53, !align !197 ; 5 uses
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 1
  %i.aa = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.aa, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %.critedge2.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.ac = zext i16 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !398
  %.not.i.not = icmp eq ptr %i.ae, null
  br i1 %.not.i.not, label %.critedge.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.e
  %.pre-phi.i = phi i64 [ %i.ac, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.e ]
  %i.af = getelementptr inbounds nuw [537 x i8], ptr %i.z, i64 %.pre-phi.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6382
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !400
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.d
  %i.aj = icmp eq i32 %i.n, 200
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.copyload, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !72
  %i.ao = icmp eq i32 %i.an, 214
  br i1 %i.ao, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i.i, label %.critedge

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.copyload.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i: ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !198
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %6, align 8, !tbaa !74
  store i32 %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.t, align 8, !tbaa !198
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.02.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.2.0.copyload.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !198
  store ptr %.sroa.02.0.copyload.i.i.i.i, ptr %7, align 8, !tbaa !74
  store i32 %.sroa.2.0.copyload.i.i.i.i, ptr %i.u, align 8, !tbaa !198
  %i.as = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.as, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #36 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.at, 1
  br label %bb.r

.critedge:                                        ; preds = %bb.g, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i.i, %bb.h
  br i1 %i.x, label %.critedge..critedge.thread_crit_edge, label %bb.k

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_DAGCombiner.cpp:bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17StressLoadSlicing, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17StressLoadSlicing, i64 137), align 1, !tbaa !1005
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17StressLoadSlicing, i64 136), align 8, !tbaa !2902
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17StressLoadSlicing) #36
  %i.an = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17StressLoadSlicing, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17MaySplitLoadIndex, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL17MaySplitLoadIndex, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17MaySplitLoadIndex, ptr nonnull align 1 dereferenceable(26) @.str.12, i64 25) #36
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 32
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 137), align 1, !tbaa !1005
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 136), align 8, !tbaa !2902
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 32), align 8, !tbaa !366
  store i64 42, ptr getelementptr inbounds nuw (i8, ptr @_ZL17MaySplitLoadIndex, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17MaySplitLoadIndex) #36
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17MaySplitLoadIndex, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL18EnableStoreMerging, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL18EnableStoreMerging, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18EnableStoreMerging, ptr nonnull align 1 dereferenceable(23) @.str.15, i64 22) #36
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 32
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 137), align 1, !tbaa !1005
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 136), align 8, !tbaa !2902
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 32), align 8, !tbaa !366
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL18EnableStoreMerging, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18EnableStoreMerging) #36
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL18EnableStoreMerging, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22TokenFactorInlineLimit, i32 noundef 0, i32 noundef 0) #36
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 120), align 8, !tbaa !447
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL22TokenFactorInlineLimit, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22TokenFactorInlineLimit, ptr nonnull align 1 dereferenceable(34) @.str.18, i64 33) #36
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 32
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 10), align 2
  store i32 2048, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 120), align 8, !tbaa !447
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 140), align 4, !tbaa !1006
  store i32 2048, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 136), align 8, !tbaa !2903
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 32), align 8, !tbaa !366
  store i64 56, ptr getelementptr inbounds nuw (i8, ptr @_ZL22TokenFactorInlineLimit, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22TokenFactorInlineLimit) #36
  %i.az = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL22TokenFactorInlineLimit, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL25StoreMergeDependenceLimit, i32 noundef 0, i32 noundef 0) #36
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 120), align 8, !tbaa !447
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL25StoreMergeDependenceLimit, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL25StoreMergeDependenceLimit, ptr nonnull align 1 dereferenceable(38) @.str.21, i64 37) #36
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 10), align 2
  %i.bb = and i16 %i.ba, -97
  %i.bc = or disjoint i16 %i.bb, 32
  store i16 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 10), align 2
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 120), align 8, !tbaa !447
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 140), align 4, !tbaa !1006
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 136), align 8, !tbaa !2903
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 32), align 8, !tbaa !366
  store i64 107, ptr getelementptr inbounds nuw (i8, ptr @_ZL25StoreMergeDependenceLimit, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL25StoreMergeDependenceLimit) #36
  %i.bd = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL25StoreMergeDependenceLimit, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL28EnableReduceLoadOpStoreWidth, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL28EnableReduceLoadOpStoreWidth, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28EnableReduceLoadOpStoreWidth, ptr nonnull align 1 dereferenceable(36) @.str.24, i64 35) #36
  %i.be = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 10), align 2
  %i.bf = and i16 %i.be, -97
  %i.bg = or disjoint i16 %i.bf, 32
  store i16 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 137), align 1, !tbaa !1005
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 136), align 8, !tbaa !2902
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 32), align 8, !tbaa !366
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EnableReduceLoadOpStoreWidth, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28EnableReduceLoadOpStoreWidth) #36
  %i.bh = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL28EnableReduceLoadOpStoreWidth, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, ptr nonnull align 1 dereferenceable(63) @.str.27, i64 62) #36
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 10), align 2
  %i.bj = and i16 %i.bi, -97
  %i.bk = or disjoint i16 %i.bj, 32
  store i16 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 10), align 2
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 137), align 1, !tbaa !1005
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 136), align 8, !tbaa !2902
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 32), align 8, !tbaa !366
  store i64 109, ptr getelementptr inbounds nuw (i8, ptr @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable) #36
  %i.bl = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL46ReduceLoadOpStoreWidthForceNarrowingProfitable, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL37EnableShrinkLoadReplaceStoreWithStore, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL37EnableShrinkLoadReplaceStoreWithStore, ptr nonnull align 1 dereferenceable(46) @.str.30, i64 45) #36
  %i.bm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 10), align 2
  %i.bn = and i16 %i.bm, -97
  %i.bo = or disjoint i16 %i.bn, 32
  store i16 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 137), align 1, !tbaa !1005
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 136), align 8, !tbaa !2902
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 32), align 8, !tbaa !366
  store i64 68, ptr getelementptr inbounds nuw (i8, ptr @_ZL37EnableShrinkLoadReplaceStoreWithStore, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL37EnableShrinkLoadReplaceStoreWithStore) #36
  %i.bp = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL37EnableShrinkLoadReplaceStoreWithStore, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL24EnableTopologicalSorting, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL24EnableTopologicalSorting, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24EnableTopologicalSorting, ptr nonnull align 1 dereferenceable(29) @.str.33, i64 28) #36
  %i.bq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 10), align 2
  %i.br = and i16 %i.bq, -97
  %i.bs = or disjoint i16 %i.br, 32
  store i16 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 10), align 2
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 137), align 1, !tbaa !1005
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 136), align 8, !tbaa !2902
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 32), align 8, !tbaa !366
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL24EnableTopologicalSorting, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL24EnableTopologicalSorting) #36
  %i.bt = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL24EnableTopologicalSorting, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15DisableCombines, i32 noundef 0, i32 noundef 0) #36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 120), align 8, !tbaa !335
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL15DisableCombines, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 144), align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15DisableCombines, ptr nonnull align 1 dereferenceable(18) @.str.36, i64 17) #36
  %i.bu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 10), align 2
  %i.bv = and i16 %i.bu, -97
  %i.bw = or disjoint i16 %i.bv, 32
  store i16 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 10), align 2
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 120), align 8, !tbaa !335
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 137), align 1, !tbaa !1005
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 136), align 8, !tbaa !2902
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 32), align 8, !tbaa !366
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableCombines, i64 40), align 8, !tbaa !367
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15DisableCombines) #36
  %i.bx = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL15DisableCombines, ptr nonnull @__dso_handle) #36 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { builtin nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(0) }
attributes #42 = { noreturn }

!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}
!llvm.errno.tbaa = !{!40}

!0 = distinct !{null}
!1 = distinct !{!1, !194}
!2 = distinct !{!2, !194}
!3 = distinct !{!3, !194}
!4 = distinct !{!4, !194}
!5 = distinct !{!5, !194}
!6 = distinct !{ptr @_ZN4llvm3ISD19matchUnaryPredicateENS_7SDValueESt8functionIFbPNS_14ConstantSDNodeEEEbb, null}
!7 = distinct !{ptr @_ZNK4llvm14TargetLowering27getCheaperNegatedExpressionENS_7SDValueERNS_12SelectionDAGEbbj, null}
!8 = distinct !{null}
!9 = distinct !{!9, !194}
!10 = distinct !{ptr @_ZNK4llvm18TargetLoweringBase19isLoadLegalOrCustomENS_3EVTES1_NS_5AlignEjjb, null}
!11 = distinct !{!11, !194}
!12 = distinct !{!12, !194}
!13 = distinct !{!13, !194}
!14 = distinct !{!14, !194}
!15 = distinct !{!15, !194}
!16 = distinct !{!16, !194}
!17 = distinct !{null, ptr @_ZN4llvm3ISD19matchUnaryPredicateENS_7SDValueESt8functionIFbPNS_14ConstantSDNodeEEEbb, null}
!18 = distinct !{null}
!19 = distinct !{ptr @_ZNK4llvm18TargetLoweringBase11isLoadLegalENS_3EVTES1_NS_5AlignEjjb, null}
!20 = distinct !{!20, !194}
!21 = distinct !{null}
!22 = distinct !{!22, !194}
!23 = distinct !{!23, !194}
!24 = distinct !{!24, !194}
!25 = distinct !{!25, !194}
!26 = distinct !{!26, !194}
!27 = distinct !{!27, !194}
!28 = distinct !{!28, !194}
!29 = distinct !{!29, !194}
!30 = distinct !{!30, !194}
!31 = distinct !{!31, !194}
!32 = distinct !{!32, !194}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!"omnipotent char", !36, i64 0}
!38 = !{!"int", !37, i64 0}
!39 = !{!"__libc_errno", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !41, i64 0, !38, i64 8, !38, i64 12}
!43 = !{!42, !41, i64 0}
!44 = !{!"vtable pointer", !36, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSSt14_Function_base", !37, i64 0, !41, i64 16}
!47 = !{!46, !41, i64 16}
!48 = !{!"any p2 pointer", !41, i64 0}
!49 = !{!"bool", !37, i64 0}
!50 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !48, i64 0, !38, i64 8, !38, i64 12, !49, i64 16}
!51 = !{!50, !49, i64 16}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!50, !48, i64 0}
!55 = !{!"_ZTSN4llvm12CombineLevelE", !37, i64 0}
!56 = !{!"p1 _ZTSN4llvm12SelectionDAGE", !41, i64 0}
!57 = !{!"_ZTSN4llvm14TargetLowering15DAGCombinerInfoE", !41, i64 0, !55, i64 8, !49, i64 12, !56, i64 16}
!58 = !{!57, !41, i64 0}
!59 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !41, i64 0}
!60 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !41, i64 0}
!61 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !60, i64 0, !60, i64 8}
!62 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !61, i64 0}
!63 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_6SDNodeELb0ELb0EvLb0EvEEEE", !62, i64 0}
!64 = !{!"_ZTSN4llvm10ilist_nodeINS_6SDNodeEJEEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm11SDNodeFlagsE", !38, i64 0}
!66 = !{!"short", !37, i64 0}
!67 = !{!"p1 _ZTSN4llvm5SDUseE", !41, i64 0}
!68 = !{!"p1 _ZTSN4llvm3EVTE", !41, i64 0}
!69 = !{!"p1 _ZTSN4llvm10DILocationE", !41, i64 0}
!70 = !{!"_ZTSN4llvm8DebugLocE", !69, i64 0}
!71 = !{!"_ZTSN4llvm6SDNodeE", !59, i64 0, !64, i64 8, !38, i64 24, !65, i64 28, !37, i64 32, !66, i64 34, !38, i64 36, !67, i64 40, !68, i64 48, !67, i64 56, !66, i64 64, !66, i64 66, !38, i64 68, !70, i64 72, !37, i64 80, !38, i64 84}
!72 = !{!71, !38, i64 24}
!73 = !{!"p1 _ZTSN4llvm6SDNodeE", !41, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!37, !37, i64 0}
!76 = !{!42, !38, i64 8}
!77 = !{!42, !38, i64 12}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!"p1 _ZTSN4llvm14TargetLoweringE", !41, i64 0}
!80 = !{!"p1 _ZTSN4llvm22SelectionDAGTargetInfoE", !41, i64 0}
!81 = !{!"_ZTSN4llvm15CodeGenOptLevelE", !37, i64 0}
!82 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_6SDNodeEvEE", !42, i64 0}
!83 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_6SDNodeEEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_6SDNodeELj64EEE", !37, i64 0}
!86 = !{!"_ZTSN4llvm11SmallVectorIPNS_6SDNodeELj64EEE", !84, i64 0, !85, i64 16}
!87 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_6SDNodeEEE", !41, i64 0}
!88 = !{!"p1 int", !41, i64 0}
!89 = !{!"_ZTSN4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !87, i64 0, !88, i64 8, !38, i64 16, !38, i64 20}
!90 = !{!"_ZTSN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !89, i64 0}
!91 = !{!"_ZTSN4llvm8DenseSetIPNS_6SDNodeENS_12DenseMapInfoIS2_vEEEE", !90, i64 0}
!92 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_6SDNodeELj32EEE", !37, i64 0}
!93 = !{!"_ZTSN4llvm11SmallVectorIPNS_6SDNodeELj32EEE", !84, i64 0, !92, i64 16}
!94 = !{!"_ZTSN4llvm9SetVectorIPNS_6SDNodeENS_11SmallVectorIS2_Lj32EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj32EEE", !91, i64 0, !93, i64 24}
!95 = !{!"_ZTSN4llvm14SmallSetVectorIPNS_6SDNodeELj32EEE", !94, i64 0}
!96 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_6SDNodeESt4pairIS3_jEEE", !41, i64 0}
!97 = !{!"_ZTSN4llvm8DenseMapIPNS_6SDNodeESt4pairIS2_jENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !96, i64 0, !88, i64 8, !38, i64 16, !38, i64 20}
!98 = !{!"p1 _ZTSN4llvm14BatchAAResultsE", !41, i64 0}
!99 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_6SDNodeEEE", !50, i64 0}
!100 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_6SDNodeELj4EEE", !99, i64 0, !37, i64 24}
!101 = !{!"_ZTSN12_GLOBAL__N_111DAGCombinerE", !56, i64 0, !79, i64 8, !80, i64 16, !55, i64 24, !81, i64 28, !49, i64 32, !49, i64 33, !49, i64 34, !49, i64 35, !49, i64 36, !86, i64 40, !95, i64 568, !97, i64 864, !98, i64 888, !100, i64 896}
!102 = !{!101, !56, i64 0}
!103 = !{!"p1 _ZTSN4llvm13TargetMachineE", !41, i64 0}
!104 = !{!"p1 _ZTSN4llvm17TargetLibraryInfoE", !41, i64 0}
!105 = !{!"p1 _ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !41, i64 0}
!106 = !{!"p1 _ZTSN4llvm19LibcallLoweringInfoE", !41, i64 0}
!107 = !{!"p1 _ZTSN4llvm15FunctionVarLocsE", !41, i64 0}
!108 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !41, i64 0}
!109 = !{!"p1 _ZTSN4llvm15AnalysisManagerINS_15MachineFunctionEJEEE", !41, i64 0}
!110 = !{!"p1 _ZTSN4llvm4PassE", !41, i64 0}
!111 = !{!"p1 _ZTSN4llvm11LLVMContextE", !41, i64 0}
!112 = !{!"p1 _ZTSN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEE", !41, i64 0}
!113 = !{!"p1 _ZTSN4llvm20FunctionLoweringInfoE", !41, i64 0}
!114 = !{!"p1 _ZTSN4llvm25OptimizationRemarkEmitterE", !41, i64 0}
!115 = !{!"p1 _ZTSN4llvm18ProfileSummaryInfoE", !41, i64 0}
!116 = !{!"p1 _ZTSN4llvm18BlockFrequencyInfoE", !41, i64 0}
!117 = !{!"p1 _ZTSN4llvm17MachineModuleInfoE", !41, i64 0}
!118 = !{!"_ZTSN4llvm3EVT14compareRawBitsE"}
!119 = !{!"_ZTSSt20_Rb_tree_key_compareIN4llvm3EVT14compareRawBitsEE", !118, i64 0}
!120 = !{!"_ZTSSt14_Rb_tree_color", !37, i64 0}
!121 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !41, i64 0}
!122 = !{!"_ZTSSt18_Rb_tree_node_base", !120, i64 0, !121, i64 8, !121, i64 16, !121, i64 24}
!123 = !{!"long", !37, i64 0}
!124 = !{!"_ZTSSt15_Rb_tree_header", !122, i64 0, !123, i64 32}
!125 = !{!"_ZTSNSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE13_Rb_tree_implIS4_Lb1EEE", !119, i64 0, !124, i64 8}
!126 = !{!"_ZTSSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE", !125, i64 0}
!127 = !{!"_ZTSSt3setIN4llvm3EVTENS1_14compareRawBitsESaIS1_EE", !126, i64 0}
!128 = !{!"_ZTSN4llvm14FoldingSetBaseE", !48, i64 0, !38, i64 8, !38, i64 12}
!129 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetINS_12SDVTListNodeEEES2_EE", !128, i64 0}
!130 = !{!"_ZTSN4llvm10FoldingSetINS_12SDVTListNodeEEE", !129, i64 0}
!131 = !{!"p1 omnipotent char", !41, i64 0}
!132 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !42, i64 0}
!133 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !132, i64 0}
!134 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !37, i64 0}
!136 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !134, i64 0, !135, i64 16}
!137 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !42, i64 0}
!138 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !138, i64 0}
end_hunk_1
