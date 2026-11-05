Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TileUsingInterface?download=true
inline.NumInlined: 8395
inline.NumDeleted: 4414
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4mlir3scf12tileUsingSCFERNS_12RewriterBaseENS_15TilingInterfaceERKNS0_16SCFTilingOptionsE:bb.a
  br i1 %i.bax, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz
  %i.bay = zext i32 %i.baw to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(128) %68, ptr noundef nonnull %i.bat, i64 noundef %i.bay, i64 noundef 8) #19
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.azx, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i106.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i106.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %68, align 8, !tbaa !27, !alias.scope !574, !noalias !571
  br label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.gz
  %i.baz = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.bat, %bb.gz ]
  %i.bba = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.baw, %bb.gz ]
  %i.bbb = zext i32 %i.bba to i64
  %i.bbc = load ptr, ptr %40, align 8, !tbaa !27, !noalias !575
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bbb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.baz, ptr align 8 %i.bbc, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.baw, ptr %i.bau, align 8, !tbaa !28, !alias.scope !574, !noalias !571
  br label %_ZNSt11_Tuple_implILm1EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEEEEC2IRS4_EEOT_.exit.i.i.i.i.i

_ZNSt11_Tuple_implILm1EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEEEEC2IRS4_EEOT_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i
  %i.bbd = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 3 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %68, i64 80 ; 3 uses
  store ptr %i.bbe, ptr %i.bbd, align 8, !tbaa !27, !alias.scope !574, !noalias !571
  %i.bbf = getelementptr inbounds nuw i8, ptr %68, i64 72 ; 2 uses
  store i32 0, ptr %i.bbf, align 8, !tbaa !28, !alias.scope !574, !noalias !571
  %i.bbg = getelementptr inbounds nuw i8, ptr %68, i64 76
  store i32 6, ptr %i.bbg, align 4, !tbaa !29, !alias.scope !574, !noalias !571
  %i.bbh = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575 ; 5 uses
  %.not.i.i.i.i.i.i.i75.i = icmp eq i32 %i.bbh, 0
  br i1 %.not.i.i.i.i.i.i.i75.i, label %_ZNSt5tupleIJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EEC2IRS4_S7_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS9_T0_EEEbE4typeELb1EEEOS9_OSA_.exit.i.i.i, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt11_Tuple_implILm1EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEEEEC2IRS4_EEOT_.exit.i.i.i.i.i
  %i.bbi = icmp ugt i32 %i.bbh, 6
  br i1 %i.bbi, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i: ; preds = %bb.ha
  %i.bbj = zext i32 %i.bbh to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bbd, ptr noundef nonnull %i.bbe, i64 noundef %i.bbj, i64 noundef 8) #19
  %.pre.i.i3.i.i.i.i.i = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %.not.i.i.i.i4.i.i.i.i.i = icmp eq i32 %.pre.i.i3.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i4.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i105.i = load ptr, ptr %i.bbd, align 8, !tbaa !27, !alias.scope !574, !noalias !571
  br label %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i, %bb.ha
  %i.bbk = phi ptr [ %.pre.i.i.i.i.i105.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.bbe, %bb.ha ]
  %i.bbl = phi i32 [ %.pre.i.i3.i.i.i.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.bbh, %bb.ha ]
  %i.bbm = zext i32 %i.bbl to i64
  %i.bbn = load ptr, ptr %39, align 8, !tbaa !27, !noalias !575
  %gepdiff.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bbm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbk, ptr align 8 %i.bbn, i64 %gepdiff.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir12OpFoldResultEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i
  store i32 %i.bbh, ptr %i.bbf, align 8, !tbaa !28, !alias.scope !574, !noalias !571
  br label %_ZNSt5tupleIJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EEC2IRS4_S7_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS9_T0_EEEbE4typeELb1EEEOS9_OSA_.exit.i.i.i

_ZNSt5tupleIJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EEC2IRS4_S7_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS9_T0_EEEbE4typeELb1EEEOS9_OSA_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %_ZNSt11_Tuple_implILm1EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEEEEC2IRS4_EEOT_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !575
  %i.bbo = load ptr, ptr %40, align 8, !tbaa !27, !noalias !575 ; 2 uses
  %i.bbp = icmp eq ptr %i.bbo, %i.azw
  br i1 %i.bbp, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i76.i, label %bb.hb

bb.hb:                                            ; preds = %_ZNSt5tupleIJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EEC2IRS4_S7_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS9_T0_EEEbE4typeELb1EEEOS9_OSA_.exit.i.i.i
  call void @free(ptr noundef %i.bbo) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i76.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i76.i: ; preds = %bb.hb, %_ZNSt5tupleIJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EEC2IRS4_S7_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS9_T0_EEEbE4typeELb1EEEOS9_OSA_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !575
  %i.bbq = load ptr, ptr %39, align 8, !tbaa !27, !noalias !575 ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, %i.azt
  br i1 %i.bbr, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit79.i.i.i, label %bb.hc

bb.hc:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i76.i
  call void @free(ptr noundef %i.bbq) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit79.i.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit79.i.i.i: ; preds = %bb.hc, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !575
  br label %_ZL33getTileOffsetAndSizesWithForAllOpRN4mlir12RewriterBaseENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_5RangeEEENS5_INS_12OpFoldResultEEES9_.exit.i.i

bb.hd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i, %.lr.ph.i.i72.i
  %.0116.i.i.i = phi i32 [ 0, %.lr.ph.i.i72.i ], [ %.1.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i ] ; 4 uses
  %.sroa.10.0115.i.i.i = phi ptr [ %i.ace, %.lr.ph.i.i72.i ], [ %i.beg, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i ] ; 4 uses
  %.sroa.6100.0114.i.i.i = phi ptr [ %.sroa.0159.0.copyload.i, %.lr.ph.i.i72.i ], [ %i.beh, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i ] ; 6 uses
  %.sroa.098.0113.i.i.i = phi ptr [ %i.aby, %.lr.ph.i.i72.i ], [ %i.bei, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i ] ; 6 uses
  %.sroa.040.0.copyload.i.i.i = load i64, ptr %.sroa.10.0115.i.i.i, align 8, !noalias !574
  %i.bbs = call noundef zeroext i1 @_ZN4mlir13isZeroIntegerENS_12OpFoldResultE(i64 %.sroa.040.0.copyload.i.i.i) #19, !noalias !574
  br i1 %i.bbs, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %bb.hd
  %.sroa.039.0.copyload.i.i.i = load i64, ptr %.sroa.098.0113.i.i.i, align 8, !noalias !575 ; 2 uses
  %i.bbt = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %i.bbu = load i32, ptr %i.azv, align 4, !tbaa !29, !noalias !575
  %.not.i.i.i107.i = icmp ult i32 %i.bbt, %i.bbu
  br i1 %.not.i.i.i107.i, label %bb.hg, label %bb.hf, !prof !125

bb.hf:                                            ; preds = %bb.he
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 %.sroa.039.0.copyload.i.i.i), !noalias !574
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.bbv = zext i32 %i.bbt to i64
  %i.bbw = load ptr, ptr %39, align 8, !tbaa !27, !noalias !575
  %i.bbx = getelementptr inbounds nuw [8 x i8], ptr %i.bbw, i64 %i.bbv
  store i64 %.sroa.039.0.copyload.i.i.i, ptr %i.bbx, align 1, !noalias !574
  %i.bby = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575
  %i.bbz = add i32 %i.bby, 1
  store i32 %i.bbz, ptr %i.azu, align 8, !tbaa !28, !noalias !575
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i.i: ; preds = %bb.hg, %bb.hf
  %i.bca = getelementptr inbounds nuw i8, ptr %.sroa.098.0113.i.i.i, i64 8
  %.sroa.038.0.copyload.i.i.i = load i64, ptr %i.bca, align 8, !noalias !575 ; 2 uses
  %i.bcb = load i32, ptr %i.azx, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %i.bcc = load i32, ptr %i.azy, align 4, !tbaa !29, !noalias !575
  %.not.i80.i.i.i = icmp ult i32 %i.bcb, %i.bcc
  br i1 %.not.i80.i.i.i, label %bb.hi, label %bb.hh, !prof !125

bb.hh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 %.sroa.038.0.copyload.i.i.i), !noalias !574
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i

bb.hi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i.i
  %i.bcd = zext i32 %i.bcb to i64
  %i.bce = load ptr, ptr %40, align 8, !tbaa !27, !noalias !575
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.bce, i64 %i.bcd
  store i64 %.sroa.038.0.copyload.i.i.i, ptr %i.bcf, align 1, !noalias !574
  %i.bcg = load i32, ptr %i.azx, align 8, !tbaa !28, !noalias !575
  %i.bch = add i32 %i.bcg, 1
  store i32 %i.bch, ptr %i.azx, align 8, !tbaa !28, !noalias !575
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i

bb.hj:                                            ; preds = %bb.hd
  %i.bci = add nsw i32 %.0116.i.i.i, 1            ; 2 uses
  %i.bcj = sext i32 %.0116.i.i.i to i64
  %i.bck = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %38, i64 noundef %i.bcj) #19, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !575
  %i.bcl = load i64, ptr %.sroa.098.0113.i.i.i, align 8, !noalias !575
  store i64 %i.bcl, ptr %45, align 8, !noalias !575
  %i.bcm = ptrtoint ptr %i.bck to i64
  %i.bcn = or i64 %i.bcm, 4
  store i64 %i.bcn, ptr %i.bal, align 8, !noalias !575
  %i.bco = load i64, ptr %.sroa.6100.0114.i.i.i, align 8, !noalias !574
  store i64 %i.bco, ptr %i.bam, align 8, !noalias !575
  %i.bcp = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr %.sroa.0.0.copyload.i.i116, ptr %i.bag, ptr nonnull %45, i64 3, i1 noundef zeroext false) #19, !noalias !574 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !575
  %i.bcq = load i64, ptr %.sroa.098.0113.i.i.i, align 8, !noalias !575
  store i64 %i.bcq, ptr %46, align 8, !noalias !575
  %i.bcr = load i64, ptr %.sroa.10.0115.i.i.i, align 8, !noalias !574
  store i64 %i.bcr, ptr %i.ban, align 8, !noalias !575
  %i.bcs = load i64, ptr %.sroa.6100.0114.i.i.i, align 8, !noalias !574
  store i64 %i.bcs, ptr %i.bao, align 8, !noalias !575
  %i.bct = getelementptr inbounds nuw i8, ptr %.sroa.098.0113.i.i.i, i64 8 ; 3 uses
  %i.bcu = load i64, ptr %i.bct, align 8, !noalias !575
  store i64 %i.bcu, ptr %i.bap, align 8, !noalias !575
  %i.bcv = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr %.sroa.0.0.copyload.i.i116, ptr %i.baj, ptr nonnull %46, i64 4, i1 noundef zeroext false) #19, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !575
  %.sroa.024.0.copyload.i.i.i = load i64, ptr %.sroa.6100.0114.i.i.i, align 8, !noalias !574
  %i.bcw = call noundef zeroext i1 @_ZN4mlir13isZeroIntegerENS_12OpFoldResultE(i64 %i.bcv) #19, !noalias !574
  br i1 %i.bcw, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.sroa.019.0.copyload.i.i.i = load ptr, ptr %41, align 8, !tbaa !81, !noalias !575
  %i.bcx = call ptr @_ZNK4mlir10AffineExprmiES0_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr %.sroa.019.0.copyload.i.i.i) #19, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !575
  store i64 %i.bcp, ptr %47, align 8, !noalias !575
  %i.bcy = load i64, ptr %i.bct, align 8, !noalias !575
  store i64 %i.bcy, ptr %i.baq, align 8, !noalias !575
  %i.bcz = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr %.sroa.0.0.copyload.i.i116, ptr %i.bcx, ptr nonnull %47, i64 2, i1 noundef zeroext false) #19, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !575
  %i.bda = load ptr, ptr %i.ai, align 8, !tbaa !79, !noalias !575
  %i.bdb = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.bda) #19, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19, !noalias !575
  store i64 %i.bcz, ptr %48, align 8, !noalias !575
  %i.bdc = load i64, ptr %.sroa.6100.0114.i.i.i, align 8, !noalias !574
  store i64 %i.bdc, ptr %i.bar, align 8, !noalias !575
  %i.bdd = call i64 @_ZN4mlir6affine27makeComposedFoldedAffineMinERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr %.sroa.0.0.copyload.i.i116, ptr %i.bdb, ptr nonnull %48, i64 2) #19, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19, !noalias !575
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.sroa.024.0.i.i.i = phi i64 [ %.sroa.024.0.copyload.i.i.i, %bb.hj ], [ %i.bdd, %bb.hk ] ; 2 uses
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %.sroa.6100.0114.i.i.i, align 8, !noalias !574
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %.sroa.10.0115.i.i.i, align 8, !noalias !574
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.bct, align 8, !noalias !575
  %i.bde = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.011.0.copyload.i.i.i) #19, !noalias !574 ; 2 uses
  %198 = extractvalue { i64, i8 } %i.bde, 0
  %i.bdf = extractvalue { i64, i8 } %i.bde, 1
  %i.bdg = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.010.0.copyload.i.i.i) #19, !noalias !574 ; 2 uses
  %199 = extractvalue { i64, i8 } %i.bdg, 0
  %i.bdh = extractvalue { i64, i8 } %i.bdg, 1
  %i.bdi = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.09.0.copyload.i.i.i) #19, !noalias !574 ; 2 uses
  %200 = extractvalue { i64, i8 } %i.bdi, 0
  %i.bdj = extractvalue { i64, i8 } %i.bdi, 1
  %i.bdk = trunc nuw i8 %i.bdf to i1
  %i.bdl = trunc nuw i8 %i.bdh to i1
  %or.cond.i.i.i.i = select i1 %i.bdk, i1 %i.bdl, i1 false
  %i.bdm = trunc nuw i8 %i.bdj to i1
  %or.cond12.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.bdm, i1 false
  %201 = add nsw i64 %199, -1
  %202 = mul nsw i64 %201, %198
  %203 = icmp slt i64 %202, %200
  %.0.i.i.i.i = select i1 %or.cond12.i.i.i.i, i1 %203, i1 false
  br i1 %.0.i.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bdn = load ptr, ptr %i.ai, align 8, !tbaa !79, !noalias !575
  %i.bdo = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.bdn) #19, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19, !noalias !575
  %i.bdp = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef 0) #19, !noalias !574
  %i.bdq = ptrtoint ptr %i.bdp to i64
  store i64 %i.bdq, ptr %49, align 8, !noalias !575
  store i64 %.sroa.024.0.i.i.i, ptr %i.bas, align 8, !noalias !575
  %i.bdr = call i64 @_ZN4mlir6affine27makeComposedFoldedAffineMaxERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr %.sroa.0.0.copyload.i.i116, ptr %i.bdo, ptr nonnull %49, i64 2) #19, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19, !noalias !575
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.sroa.024.1.i.i.i = phi i64 [ %.sroa.024.0.i.i.i, %bb.hl ], [ %i.bdr, %bb.hm ] ; 2 uses
  %i.bds = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %i.bdt = load i32, ptr %i.azv, align 4, !tbaa !29, !noalias !575
  %.not.i82.i.i.i = icmp ult i32 %i.bds, %i.bdt
  br i1 %.not.i82.i.i.i, label %bb.hp, label %bb.ho, !prof !125

bb.ho:                                            ; preds = %bb.hn
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 %i.bcp), !noalias !574
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit83.i.i.i

bb.hp:                                            ; preds = %bb.hn
  %i.bdu = zext i32 %i.bds to i64
  %i.bdv = load ptr, ptr %39, align 8, !tbaa !27, !noalias !575
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %i.bdu
  store i64 %i.bcp, ptr %i.bdw, align 1, !noalias !574
  %i.bdx = load i32, ptr %i.azu, align 8, !tbaa !28, !noalias !575
  %i.bdy = add i32 %i.bdx, 1
  store i32 %i.bdy, ptr %i.azu, align 8, !tbaa !28, !noalias !575
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit83.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit83.i.i.i: ; preds = %bb.hp, %bb.ho
  %i.bdz = load i32, ptr %i.azx, align 8, !tbaa !28, !noalias !575 ; 2 uses
  %i.bea = load i32, ptr %i.azy, align 4, !tbaa !29, !noalias !575
  %.not.i84.i.i.i = icmp ult i32 %i.bdz, %i.bea
  br i1 %.not.i84.i.i.i, label %bb.hr, label %bb.hq, !prof !125

bb.hq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit83.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 %.sroa.024.1.i.i.i), !noalias !574
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i

bb.hr:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit83.i.i.i
  %i.beb = zext i32 %i.bdz to i64
  %i.bec = load ptr, ptr %40, align 8, !tbaa !27, !noalias !575
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.bec, i64 %i.beb
  store i64 %.sroa.024.1.i.i.i, ptr %i.bed, align 1, !noalias !574
  %i.bee = load i32, ptr %i.azx, align 8, !tbaa !28, !noalias !575
  %i.bef = add i32 %i.bee, 1
  store i32 %i.bef, ptr %i.azx, align 8, !tbaa !28, !noalias !575
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit81.i.i.i: ; preds = %bb.hr, %bb.hq, %bb.hi, %bb.hh
  %.1.i.i.i = phi i32 [ %.0116.i.i.i, %bb.hi ], [ %.0116.i.i.i, %bb.hh ], [ %i.bci, %bb.hq ], [ %i.bci, %bb.hr ]
  %i.beg = getelementptr inbounds nuw i8, ptr %.sroa.10.0115.i.i.i, i64 8 ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.6100.0114.i.i.i, i64 8
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.098.0113.i.i.i, i64 24
  %.not.i55.i.i = icmp eq ptr %i.beg, %i.bak
  br i1 %.not.i55.i.i, label %._crit_edge.i.i.i, label %bb.hd

_ZL33getTileOffsetAndSizesWithForAllOpRN4mlir12RewriterBaseENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_5RangeEEENS5_INS_12OpFoldResultEEES9_.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit79.i.i.i, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %50), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !571
  %i.bej = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 2 uses
  %i.bek = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %66, ptr noundef nonnull align 8 dereferenceable(64) %i.bej) ; 0 uses
  %i.bel = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %67, ptr noundef nonnull align 8 dereferenceable(128) %68) ; 0 uses
  %i.bem = load ptr, ptr %i.bej, align 8, !tbaa !27, !noalias !571 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %68, i64 80
  %i.beo = icmp eq ptr %i.bem, %i.ben
  br i1 %i.beo, label %_ZNSt10_Head_baseILm0EN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EED2Ev.exit.i56.i.i, label %bb.hs

bb.hs:                                            ; preds = %_ZL33getTileOffsetAndSizesWithForAllOpRN4mlir12RewriterBaseENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_5RangeEEENS5_INS_12OpFoldResultEEES9_.exit.i.i
  call void @free(ptr noundef %i.bem) #19
  br label %_ZNSt10_Head_baseILm0EN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EED2Ev.exit.i56.i.i

_ZNSt10_Head_baseILm0EN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EED2Ev.exit.i56.i.i: ; preds = %bb.hs, %_ZL33getTileOffsetAndSizesWithForAllOpRN4mlir12RewriterBaseENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_5RangeEEENS5_INS_12OpFoldResultEEES9_.exit.i.i
  %i.bep = load ptr, ptr %68, align 8, !tbaa !27, !noalias !571 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.ber = icmp eq ptr %i.bep, %i.beq
  br i1 %i.ber, label %_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EED2Ev.exit.i77.i, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt10_Head_baseILm0EN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EED2Ev.exit.i56.i.i
  call void @free(ptr noundef %i.bep) #19
  br label %_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EED2Ev.exit.i77.i

_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EED2Ev.exit.i77.i: ; preds = %bb.ht, %_ZNSt10_Head_baseILm0EN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0EED2Ev.exit.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #19, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19, !noalias !571
  %i.bes = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  store ptr %i.bes, ptr %70, align 8, !tbaa !27, !noalias !571
  %i.bet = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  store i32 0, ptr %i.bet, align 8, !tbaa !28, !noalias !571
  %i.beu = getelementptr inbounds nuw i8, ptr %70, i64 12
  store i32 6, ptr %i.beu, align 4, !tbaa !29, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19, !noalias !571
  %i.bev = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  store ptr %i.bev, ptr %71, align 8, !tbaa !27, !noalias !571
  %i.bew = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  store i32 0, ptr %i.bew, align 8, !tbaa !28, !noalias !571
  %i.bex = getelementptr inbounds nuw i8, ptr %71, i64 12
  store i32 1, ptr %i.bex, align 4, !tbaa !29, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19, !noalias !571
  %i.bey = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  store ptr %i.bey, ptr %72, align 8, !tbaa !27, !noalias !571
  %i.bez = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  store i32 0, ptr %i.bez, align 8, !tbaa !28, !noalias !571
  %i.bfa = getelementptr inbounds nuw i8, ptr %72, i64 12
  store i32 1, ptr %i.bfa, align 4, !tbaa !29, !noalias !571
  %i.bfb = load ptr, ptr %65, align 8, !tbaa !27, !noalias !571
  %i.bfc = load i32, ptr %i.ayq, align 8, !tbaa !28, !noalias !571
  %i.bfd = zext i32 %i.bfc to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr %i.bfb, i64 %i.bfd) #19
  %i.bfe = load ptr, ptr %66, align 8, !tbaa !27, !noalias !571
  %i.bff = load i32, ptr %i.azi, align 8, !tbaa !28, !noalias !571
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = load ptr, ptr %67, align 8, !tbaa !27, !noalias !571
  %i.bfi = load i32, ptr %i.azl, align 8, !tbaa !28, !noalias !571
  %i.bfj = zext i32 %i.bfi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %37), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %36), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %33), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !571
  store ptr %i.bfh, ptr %36, align 8, !noalias !571
  %.sroa.217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.bfj, ptr %.sroa.217.0..sroa_idx.i.i, align 8, !noalias !571
  store ptr %i.bfe, ptr %37, align 8, !noalias !571
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.bfg, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !noalias !571
  store ptr %.sroa.0.0.copyload.i.i116, ptr %33, align 8, !noalias !571
  %i.bfk = load <2 x i64>, ptr %73, align 16, !noalias !571
  store <2 x i64> %i.bfk, ptr %34, align 16, !noalias !571
  %i.bfl = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 2 uses
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !34, !noalias !571
  %.not.i.i57.i.i = icmp eq ptr %i.bfm, null
  br i1 %.not.i.i57.i.i, label %bb.hu, label %_ZNKSt8functionIFN4llvm13LogicalResultERN4mlir12RewriterBaseENS2_8LocationENS2_10ValueRangeENS0_8ArrayRefINS2_12OpFoldResultEEES9_S6_RNS0_11SmallVectorINS2_5ValueELj6EEERNSA_INSA_IS8_Lj6EEELj1EEESG_EEclES4_S5_S6_S9_S9_S6_SD_SG_SG_.exit.i78.i

bb.hu:                                            ; preds = %_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EED2Ev.exit.i77.i
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFN4llvm13LogicalResultERN4mlir12RewriterBaseENS2_8LocationENS2_10ValueRangeENS0_8ArrayRefINS2_12OpFoldResultEEES9_S6_RNS0_11SmallVectorINS2_5ValueELj6EEERNSA_INSA_IS8_Lj6EEELj1EEESG_EEclES4_S5_S6_S9_S9_S6_SD_SG_SG_.exit.i78.i: ; preds = %_ZNSt11_Tuple_implILm0EJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES4_EED2Ev.exit.i77.i
  %i.bfn = getelementptr inbounds nuw i8, ptr %131, i64 24
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !544, !noalias !571
  %i.bfp = call i8 %i.bfo(ptr noundef nonnull align 8 dereferenceable(32) %131, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(64) %70, ptr noundef nonnull align 8 dereferenceable(80) %71, ptr noundef nonnull align 8 dereferenceable(80) %72) #19, !inline_history !486
  call void @llvm.lifetime.end.p0(ptr nonnull %37), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %36), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %33), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !571
  %i.bfq = trunc nuw i8 %i.bfp to i1
  br i1 %i.bfq, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %_ZNKSt8functionIFN4llvm13LogicalResultERN4mlir12RewriterBaseENS2_8LocationENS2_10ValueRangeENS0_8ArrayRefINS2_12OpFoldResultEEES9_S6_RNS0_11SmallVectorINS2_5ValueELj6EEERNSA_INSA_IS8_Lj6EEELj1EEESG_EEclES4_S5_S6_S9_S9_S6_SD_SG_SG_.exit.i78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19, !noalias !571
  %i.bfr = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.bfs = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.bfs, align 1, !tbaa !37, !noalias !571
  store ptr @.str.26, ptr %32, align 8, !tbaa !31, !noalias !571
  store i8 3, ptr %i.bfr, align 8, !tbaa !38, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19, !noalias !571
  store ptr %32, ptr %31, align 8, !tbaa !40, !noalias !571
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !48, !noalias !571 ; 4 uses
  %.not.i.i.i.i58.i.i = icmp eq ptr %i.bfu, null
  br i1 %.not.i.i.i.i58.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit.i79.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bfv = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bfu) #19
  br i1 %i.bfv, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i90.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit.i79.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i90.i: ; preds = %bb.hw
  %i.bfw = ptrtoint ptr %31 to i64
  %i.bfx = load ptr, ptr %i.bfu, align 8, !tbaa !50
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 88
  %i.bfz = load ptr, ptr %i.bfy, align 8
  call void %i.bfz(ptr noundef nonnull align 8 dereferenceable(12) %i.bfu, ptr %.sroa.0.0.copyload.i.i116, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bfw) #19, !inline_history !487
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit.i79.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit.i79.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i90.i, %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19, !noalias !571
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir19LoopLikeOpInterfaceELj3EEEEC2EOS4_.exit.i80.i

bb.hx:                                            ; preds = %_ZNKSt8functionIFN4llvm13LogicalResultERN4mlir12RewriterBaseENS2_8LocationENS2_10ValueRangeENS0_8ArrayRefINS2_12OpFoldResultEEES9_S6_RNS0_11SmallVectorINS2_5ValueELj6EEERNSA_INSA_IS8_Lj6EEELj1EEESG_EEclES4_S5_S6_S9_S9_S6_SD_SG_SG_.exit.i78.i
  %i.bga = call ptr @_ZN4mlir3scf8ForallOp13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #19 ; 3 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 44
  %i.bgc = load i32, ptr %i.bgb, align 4          ; 3 uses
  %i.bgd = and i32 %i.bgc, 8388607
  %i.bge = icmp ne i32 %i.bgd, 0
  call void @llvm.assume(i1 %i.bge)
  %i.bgf = lshr i32 %i.bgc, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i91.i = and i32 %i.bgf, 1
  %i.bgg = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i91.i to i64
  %i.bgh = getelementptr inbounds nuw [16 x i8], ptr %i.bga, i64 %i.bgg
  %i.bgi = lshr i32 %i.bgc, 21
  %i.bgj = and i32 %i.bgi, 2040
  %i.bgk = zext nneg i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bga, i64 40
  %i.bgn = load i32, ptr %i.bgm, align 8, !tbaa !159
  %i.bgo = zext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw [32 x i8], ptr %i.bgl, i64 %i.bgo
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 72
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !71 ; 2 uses
  %i.bgs = getelementptr inbounds i8, ptr %i.bgr, i64 -8
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgr, i64 32
  store ptr %i.bgs, ptr %i.aj, align 8, !tbaa !54, !noalias !571
  store ptr %i.bgt, ptr %i.ak, align 8, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19, !noalias !571
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
end_hunk_0
