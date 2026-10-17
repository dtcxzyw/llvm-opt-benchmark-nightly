Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScalarEvolution?download=true
inline.NumInlined: 24488
inline.NumDeleted: 8078
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK4llvm15ScalarEvolution6verifyEv:bb.a
bb.gt:                                            ; preds = %._crit_edge.i466
  store i64 %i.bdc, ptr %i.bhe, align 8
  %i.bhk = load i32, ptr %i.bhf, align 8, !tbaa !137
  %i.bhl = add i32 %i.bhk, 1
  store i32 %i.bhl, ptr %i.bhf, align 8, !tbaa !137
  br label %_ZN4llvm15SmallVectorImplINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES8_EEEEE12emplace_backIJRS4_S6_EEERSB_DpOT_.exit.i

_ZN4llvm15SmallVectorImplINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES8_EEEEE12emplace_backIJRS4_S6_EEERSB_DpOT_.exit.i: ; preds = %bb.gs, %bb.gt
  %i.bhm = call noundef i32 @_ZN4llvm15ScalarEvolution23computeBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef %i.bdh, ptr noundef %i.bdd) #33, !inline_history !3619 ; 4 uses
  %i.bhn = load ptr, ptr %i.aqw, align 8, !tbaa !686, !noalias !3620 ; 3 uses
  %i.bho = load ptr, ptr %i.aqx, align 8, !tbaa !687, !noalias !3620 ; 3 uses
  %i.bhp = load i32, ptr %i.aqy, align 4, !tbaa !685, !noalias !3620 ; 4 uses
  %i.bhq = icmp eq i32 %i.bhp, 0
  br i1 %i.bhq, label %.loopexit.i592, label %bb.gu

bb.gu:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES8_EEEEE12emplace_backIJRS4_S6_EEERSB_DpOT_.exit.i
  %i.bhr = add i32 %i.bhp, -1                     ; 2 uses
  %i.bhs = ptrtoint ptr %i.bdh to i64
  %i.bht = mul i64 %i.bhs, -4658895280553007687   ; 2 uses
  %i.bhu = lshr i64 %i.bht, 31
  %i.bhv = xor i64 %i.bhu, %i.bht
  %i.bhw = trunc i64 %i.bhv to i32
  %i.bhx = and i32 %i.bhr, %i.bhw                 ; 3 uses
  %i.bhy = zext i32 %i.bhx to i64                 ; 2 uses
  %i.bhz = getelementptr inbounds nuw [40 x i8], ptr %i.bhn, i64 %i.bhy ; 2 uses
  %i.bia = lshr i64 %i.bhy, 5
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.bia
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !271
  %i.bid = and i32 %i.bhx, 31
  %i.bie = lshr i32 %i.bic, %i.bid
  %i.bif = trunc i32 %i.bie to i1
  br i1 %i.bif, label %.lr.ph.i.i602, label %.loopexit.i592, !prof !272

.lr.ph.i.i602:                                    ; preds = %bb.gu, %bb.gv
  %i.big = phi ptr [ %i.bim, %bb.gv ], [ %i.bhz, %bb.gu ] ; 3 uses
  %.024.i.i603 = phi i32 [ %i.bik, %bb.gv ], [ %i.bhx, %bb.gu ]
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !257
  %i.bii = icmp eq ptr %i.bdh, %i.bih
  br i1 %i.bii, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit.loopexit, label %bb.gv, !prof !143

bb.gv:                                            ; preds = %.lr.ph.i.i602
  %i.bij = add nuw i32 %.024.i.i603, 1
  %i.bik = and i32 %i.bij, %i.bhr                 ; 3 uses
  %i.bil = zext i32 %i.bik to i64                 ; 2 uses
  %i.bim = getelementptr inbounds nuw [40 x i8], ptr %i.bhn, i64 %i.bil ; 2 uses
  %i.bin = lshr i64 %i.bil, 5
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.bin
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !271
  %i.biq = and i32 %i.bik, 31
  %i.bir = lshr i32 %i.bip, %i.biq
  %i.bis = trunc i32 %i.bir to i1
  br i1 %i.bis, label %.lr.ph.i.i602, label %.loopexit.i592, !prof !276, !llvm.loop !56

.loopexit.i592:                                   ; preds = %bb.gv, %bb.gu, %_ZN4llvm15SmallVectorImplINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES8_EEEEE12emplace_backIJRS4_S6_EEERSB_DpOT_.exit.i
  %.lcssa28.sink.i.ph.i593 = phi ptr [ %i.bhz, %bb.gu ], [ null, %_ZN4llvm15SmallVectorImplINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES8_EEEEE12emplace_backIJRS4_S6_EEERSB_DpOT_.exit.i ], [ %i.bim, %bb.gv ]
  %i.bit = load i32, ptr %i.aqz, align 8, !tbaa !684
  %i.biu = shl i32 %i.bit, 2
  %i.biv = add i32 %i.biu, 4
  %i.biw = mul i32 %i.bhp, 3
  %.not.i.i594 = icmp ult i32 %i.biv, %i.biw
  br i1 %.not.i.i594, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i, label %bb.gw, !prof !143

bb.gw:                                            ; preds = %.loopexit.i592
  %i.bix = shl i32 %i.bhp, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.aqw, i32 noundef %i.bix)
  %i.biy = load ptr, ptr %i.aqw, align 8, !tbaa !686, !noalias !3621 ; 5 uses
  %i.biz = load ptr, ptr %i.aqx, align 8, !tbaa !687, !noalias !3621 ; 5 uses
  %i.bja = load i32, ptr %i.aqy, align 4, !tbaa !685, !noalias !3621 ; 2 uses
  %i.bjb = icmp ne i32 %i.bja, 0
  call void @llvm.assume(i1 %i.bjb)
  %i.bjc = add i32 %i.bja, -1                     ; 2 uses
  %i.bjd = ptrtoint ptr %i.bdh to i64
  %i.bje = mul i64 %i.bjd, -4658895280553007687   ; 2 uses
  %i.bjf = lshr i64 %i.bje, 31
  %i.bjg = xor i64 %i.bjf, %i.bje
  %i.bjh = trunc i64 %i.bjg to i32
  %i.bji = and i32 %i.bjc, %i.bjh                 ; 3 uses
  %i.bjj = zext i32 %i.bji to i64                 ; 2 uses
  %i.bjk = getelementptr inbounds nuw [40 x i8], ptr %i.biy, i64 %i.bjj ; 2 uses
  %i.bjl = lshr i64 %i.bjj, 5
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bjl
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !271
  %i.bjo = and i32 %i.bji, 31
  %i.bjp = lshr i32 %i.bjn, %i.bjo
  %i.bjq = trunc i32 %i.bjp to i1
  br i1 %i.bjq, label %.lr.ph.i629, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i, !prof !272

.lr.ph.i629:                                      ; preds = %bb.gw, %bb.gx
  %i.bjr = phi ptr [ %i.bjx, %bb.gx ], [ %i.bjk, %bb.gw ] ; 2 uses
  %.024.i630 = phi i32 [ %i.bjv, %bb.gx ], [ %i.bji, %bb.gw ]
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !257
  %i.bjt = icmp eq ptr %i.bdh, %i.bjs
  br i1 %i.bjt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i, label %bb.gx, !prof !143

bb.gx:                                            ; preds = %.lr.ph.i629
  %i.bju = add nuw i32 %.024.i630, 1
  %i.bjv = and i32 %i.bju, %i.bjc                 ; 3 uses
  %i.bjw = zext i32 %i.bjv to i64                 ; 2 uses
  %i.bjx = getelementptr inbounds nuw [40 x i8], ptr %i.biy, i64 %i.bjw ; 2 uses
  %i.bjy = lshr i64 %i.bjw, 5
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bjy
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !271
  %i.bkb = and i32 %i.bjv, 31
  %i.bkc = lshr i32 %i.bka, %i.bkb
  %i.bkd = trunc i32 %i.bkc to i1
  br i1 %i.bkd, label %.lr.ph.i629, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i, !prof !276, !llvm.loop !56

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i: ; preds = %bb.gx, %.lr.ph.i629, %bb.gw, %.loopexit.i592
  %i.bke = phi ptr [ %i.bhn, %.loopexit.i592 ], [ %i.biy, %bb.gw ], [ %i.biy, %.lr.ph.i629 ], [ %i.biy, %bb.gx ]
  %i.bkf = phi ptr [ %i.bho, %.loopexit.i592 ], [ %i.biz, %bb.gw ], [ %i.biz, %.lr.ph.i629 ], [ %i.biz, %bb.gx ]
  %i.bkg = phi ptr [ %.lcssa28.sink.i.ph.i593, %.loopexit.i592 ], [ %i.bjk, %bb.gw ], [ %i.bjx, %bb.gx ], [ %i.bjr, %.lr.ph.i629 ] ; 6 uses
  %i.bkh = ptrtoint ptr %i.bkg to i64
  %i.bki = ptrtoint ptr %i.bke to i64
  %i.bkj = sub i64 %i.bkh, %i.bki
  %i.bkk = sdiv exact i64 %i.bkj, 40              ; 2 uses
  %i.bkl = trunc i64 %i.bkk to i32
  %i.bkm = and i32 %i.bkl, 31
  %i.bkn = shl nuw i32 1, %i.bkm
  %i.bko = lshr i64 %i.bkk, 5
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %i.bkf, i64 %i.bko ; 2 uses
  %i.bkq = load i32, ptr %i.bkp, align 4, !tbaa !271
  %i.bkr = or i32 %i.bkn, %i.bkq
  store i32 %i.bkr, ptr %i.bkp, align 4, !tbaa !271
  %i.bks = load i32, ptr %i.aqz, align 8, !tbaa !684
  %i.bkt = add i32 %i.bks, 1
  store i32 %i.bkt, ptr %i.aqz, align 8, !tbaa !684
  store ptr %i.bdh, ptr %i.bkg, align 8, !tbaa !257
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkg, i64 24 ; 2 uses
  store ptr %i.bkv, ptr %i.bku, align 8, !tbaa !110
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkg, i64 16
  store i32 0, ptr %i.bkw, align 8, !tbaa !137
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkg, i64 20
  store i32 2, ptr %i.bkx, align 4, !tbaa !138
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i602
  %.phi.trans.insert1394 = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %.pre1395 = load ptr, ptr %.phi.trans.insert1394, align 8, !tbaa !110, !noalias !3622
  %.phi.trans.insert1396 = getelementptr inbounds nuw i8, ptr %i.big, i64 16
  %.pre1397 = load i32, ptr %.phi.trans.insert1396, align 8, !tbaa !137, !noalias !3622
  %i.bky = zext i32 %.pre1397 to i64
  %i.bkz = shl nuw nsw i64 %i.bky, 3
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i
  %.idx2141 = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i ], [ %i.bkz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.bla = phi ptr [ %i.bkv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E22findBucketForInsertionIS4_EEPSM_RKT_SQ_.exit.i ], [ %.pre1395, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %.not40.i4722126 = icmp samesign eq i64 %.idx2141, 0
  br i1 %.not40.i4722126, label %_ZN4llvm15ScalarEvolution19getBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE.exit, label %.lr.ph2128

.lr.ph2128:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 %.idx2141
  br label %bb.gy

.critedge.i470:                                   ; preds = %bb.gy
  %.not40.i472 = icmp eq ptr %i.blc, %i.bla
  br i1 %.not40.i472, label %_ZN4llvm15ScalarEvolution19getBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE.exit, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph2128, %.critedge.i470
  %.sroa.033.0.i4712127 = phi ptr [ %i.blb, %.lr.ph2128 ], [ %i.blc, %.critedge.i470 ]
  %i.blc = getelementptr inbounds i8, ptr %.sroa.033.0.i4712127, i64 -8 ; 4 uses
  %.0.copyload.i.i.i31.i473 = load i64, ptr %i.blc, align 8 ; 2 uses
  %i.bld = and i64 %.0.copyload.i.i.i31.i473, -8
  %.not28.i474 = icmp eq i64 %i.bdc, %i.bld
  br i1 %.not28.i474, label %bb.gz, label %.critedge.i470

bb.gz:                                            ; preds = %bb.gy
  %i.ble = and i64 %.0.copyload.i.i.i31.i473, -7
  %i.blf = shl nuw nsw i32 %i.bhm, 1
  %i.blg = zext nneg i32 %i.blf to i64
  %i.blh = or disjoint i64 %i.ble, %i.blg
  store i64 %i.blh, ptr %i.blc, align 8
  br label %_ZN4llvm15ScalarEvolution19getBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE.exit

_ZN4llvm15ScalarEvolution19getBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE.exit: ; preds = %.critedge.i470, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit, %bb.gr, %bb.gz
  %.3.i475 = phi i32 [ %i.bhd, %bb.gr ], [ %i.bhm, %bb.gz ], [ %i.bhm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_14PointerIntPairIPKNS_10BasicBlockELj2ENS_15ScalarEvolution16BlockDispositionENS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj2ESD_EEEELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SH_EEEES4_SH_SJ_SM_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSM_bEOT_DpOT0_.exit ], [ %i.bhm, %.critedge.i470 ] ; 2 uses
  %.not202 = icmp eq i32 %i.bdg, %.3.i475
  br i1 %.not202, label %bb.gk, label %bb.ha

bb.ha:                                            ; preds = %_ZN4llvm15ScalarEvolution19getBlockDispositionEPKNS_4SCEVEPKNS_10BasicBlockE.exit
  %i.bli = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #29
  %i.blj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bli, ptr noundef nonnull @.str.124)
  %i.blk = load ptr, ptr %.sroa.0673.01154, align 8, !tbaa !3616
  %i.bll = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.blj, ptr noundef nonnull align 8 dereferenceable(40) %i.blk)
  %i.blm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bll, ptr noundef nonnull @.str.128)
  %i.bln = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bdd) #29 ; 2 uses
  %i.blo = extractvalue { ptr, i64 } %i.bln, 0
  %i.blp = extractvalue { ptr, i64 } %i.bln, 1
  %i.blq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.blm, ptr %i.blo, i64 %i.blp)
  %i.blr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.blq, ptr noundef nonnull @.str.126) ; 2 uses
  %i.bls = call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamENS_15ScalarEvolution16BlockDispositionE(ptr noundef nonnull align 8 dereferenceable(48) %i.blr, i32 noundef %i.bdg) ; 0 uses
  %i.blt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.blr, ptr noundef nonnull @.str.127) ; 2 uses
  %i.blu = call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamENS_15ScalarEvolution16BlockDispositionE(ptr noundef nonnull align 8 dereferenceable(48) %i.blt, i32 noundef %.3.i475) ; 0 uses
  %i.blv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.blt, ptr noundef nonnull @.str.93) ; 0 uses
  call void @abort() #31
  unreachable

._crit_edge1160:                                  ; preds = %.lr.ph.i.i.i445, %bb.hi, %_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit, %.lr.ph.i.i495.preheader, %.lr.ph.i.i495, %.lr.ph.i.i.i445.preheader, %._crit_edge1156, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5beginEv.exit
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !693, !noalias !3623
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !694, !noalias !3623 ; 4 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !692, !noalias !3623 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bmd = load i32, ptr %i.bmc, align 8, !tbaa !691, !noalias !3623
  %i.bme = icmp eq i32 %i.bmd, 0
  %i.bmf = zext i32 %i.bmb to i64                 ; 4 uses
  %.idx1888 = mul nuw nsw i64 %i.bmf, 72          ; 2 uses
  %.not.i.not.i.i476 = icmp eq i32 %i.bmb, 0
  %or.cond864 = select i1 %i.bme, i1 true, i1 %.not.i.not.i.i476
  br i1 %or.cond864, label %._crit_edge2137, label %bb.hb

bb.hb:                                            ; preds = %._crit_edge1160
  %17 = add nuw nsw i64 %i.bmf, 31
  %18 = lshr i64 %17, 5                           ; 2 uses
  %i.bmg = load i32, ptr %i.blz, align 4, !tbaa !271, !noalias !3624 ; 2 uses
  %i.bmh = icmp eq i32 %i.bmg, 0
  br i1 %i.bmh, label %.lr.ph.i.i.i481.preheader, label %._crit_edge.i.i.i477

.lr.ph.i.i.i481.preheader:                        ; preds = %bb.hb
  %i.bmi = icmp eq i64 %18, 1
  br i1 %i.bmi, label %._crit_edge2137, label %.lr.ph2132

.lr.ph.i.i.i481:                                  ; preds = %.lr.ph2132
  %i.bmj = add nuw nsw i64 %i.bml, 1              ; 2 uses
  %i.bmk = icmp eq i64 %i.bmj, %18
  br i1 %i.bmk, label %._crit_edge2137, label %.lr.ph2132, !llvm.loop !3530

.lr.ph2132:                                       ; preds = %.lr.ph.i.i.i481.preheader, %.lr.ph.i.i.i481
  %i.bml = phi i64 [ %i.bmj, %.lr.ph.i.i.i481 ], [ 1, %.lr.ph.i.i.i481.preheader ] ; 3 uses
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.blz, i64 %i.bml
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !271, !noalias !3624 ; 2 uses
  %i.bmo = icmp eq i32 %i.bmn, 0
  br i1 %i.bmo, label %.lr.ph.i.i.i481, label %._crit_edge.i.loopexit.i.i483, !llvm.loop !3530

._crit_edge.i.loopexit.i.i483:                    ; preds = %.lr.ph2132
  %i.bmp = mul i64 %i.bml, 2304
  br label %._crit_edge.i.i.i477

._crit_edge.i.i.i477:                             ; preds = %bb.hb, %._crit_edge.i.loopexit.i.i483
  %.012.lcssa.i.i.i478 = phi i64 [ 0, %bb.hb ], [ %i.bmp, %._crit_edge.i.loopexit.i.i483 ]
  %.0.lcssa.i.i.i479 = phi i32 [ %i.bmg, %bb.hb ], [ %i.bmn, %._crit_edge.i.loopexit.i.i483 ]
  %i.bmq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i479, i1 true)
  %narrow1889 = mul nuw nsw i32 %i.bmq, 72
  %i.bmr = zext nneg i32 %narrow1889 to i64
  %19 = add i64 %.012.lcssa.i.i.i478, %i.bmr      ; 2 uses
  %.not8751165 = icmp eq i64 %19, %.idx1888
  br i1 %.not8751165, label %._crit_edge2137, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E5beginEv.exit: ; preds = %._crit_edge.i.i.i477
  %i.bms = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %12, i64 20
  %20 = add nuw nsw i64 %i.bmf, 31
  %21 = lshr i64 %20, 5                           ; 2 uses
  br label %.lr.ph2136

bb.hc:                                            ; preds = %.lr.ph1159, %_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit
  %.pn1881 = phi i64 [ %i.bbt, %.lr.ph1159 ], [ %i.bpv, %_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.0661.01158 = getelementptr i8, ptr %i.baw, i64 %.pn1881
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0661.01158, i64 32, i1 false)
  %i.bmw = load ptr, ptr %i.bbv, align 8, !tbaa !390 ; 2 uses
  %i.bmx = load ptr, ptr %i.bbu, align 8, !tbaa !693, !noalias !3625 ; 3 uses
  %i.bmy = load ptr, ptr %i.bbw, align 8, !tbaa !694, !noalias !3625 ; 2 uses
  %i.bmz = load i32, ptr %i.bbx, align 4, !tbaa !692, !noalias !3625 ; 4 uses
  %i.bna = icmp eq i32 %i.bmz, 0
  br i1 %i.bna, label %.loopexit.i.i484, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bnb = add i32 %i.bmz, -1                     ; 2 uses
  %i.bnc = ptrtoint ptr %i.bmw to i64
  %i.bnd = mul i64 %i.bnc, -4658895280553007687   ; 2 uses
  %i.bne = lshr i64 %i.bnd, 31
  %i.bnf = xor i64 %i.bne, %i.bnd
  %i.bng = trunc i64 %i.bnf to i32
  %i.bnh = and i32 %i.bnb, %i.bng                 ; 3 uses
  %i.bni = zext i32 %i.bnh to i64                 ; 2 uses
  %i.bnj = lshr i64 %i.bni, 5
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bmy, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !271, !noalias !3626
  %i.bnm = and i32 %i.bnh, 31
  %i.bnn = lshr i32 %i.bnl, %i.bnm
  %i.bno = trunc i32 %i.bnn to i1
  br i1 %i.bno, label %.lr.ph.i.i.i487, label %.loopexit.i.i484, !prof !272

.lr.ph.i.i.i487:                                  ; preds = %bb.hd, %bb.he
  %i.bnp = phi i64 [ %i.bnv, %bb.he ], [ %i.bni, %bb.hd ]
  %.017.i.i.i488 = phi i32 [ %i.bnu, %bb.he ], [ %i.bnh, %bb.hd ]
  %i.bnq = getelementptr inbounds nuw [72 x i8], ptr %i.bmx, i64 %i.bnp ; 2 uses
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !257, !noalias !3626
  %i.bns = icmp eq ptr %i.bmw, %i.bnr
  br i1 %i.bns, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit, label %bb.he, !prof !143

bb.he:                                            ; preds = %.lr.ph.i.i.i487
  %i.bnt = add nuw i32 %.017.i.i.i488, 1
  %i.bnu = and i32 %i.bnt, %i.bnb                 ; 3 uses
  %i.bnv = zext i32 %i.bnu to i64                 ; 2 uses
  %i.bnw = lshr i64 %i.bnv, 5
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.bmy, i64 %i.bnw
  %i.bny = load i32, ptr %i.bnx, align 4, !tbaa !271, !noalias !3626
  %i.bnz = and i32 %i.bnu, 31
  %i.boa = lshr i32 %i.bny, %i.bnz
  %i.bob = trunc i32 %i.boa to i1
  br i1 %i.bob, label %.lr.ph.i.i.i487, label %.loopexit.i.i484, !prof !276

.loopexit.i.i484:                                 ; preds = %bb.he, %bb.hd, %bb.hc
  %i.boc = zext i32 %i.bmz to i64                 ; 2 uses
  %i.bod = getelementptr inbounds nuw [72 x i8], ptr %i.bmx, i64 %i.boc
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i487
  %.pre1401 = zext i32 %i.bmz to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit, %.loopexit.i.i484
  %.pre-phi = phi i64 [ %.pre1401, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit ], [ %i.boc, %.loopexit.i.i484 ]
  %.lcssa.sink.i.i485 = phi ptr [ %i.bnq, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit ], [ %i.bod, %.loopexit.i.i484 ] ; 3 uses
  %i.boe = getelementptr inbounds nuw [72 x i8], ptr %i.bmx, i64 %.pre-phi
  %i.bof = icmp eq ptr %.lcssa.sink.i.i485, %i.boe
  br i1 %i.bof, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit
  %i.bog = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #29
  %i.boh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bog, ptr noundef nonnull @.str.129)
  %i.boi = load ptr, ptr %i.bbv, align 8, !tbaa !390
  %i.boj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.boh, ptr noundef nonnull align 8 dereferenceable(40) %i.boi)
  %i.bok = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.boj, ptr noundef nonnull @.str.130) ; 0 uses
  call void @abort() #31
  unreachable

bb.hg:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit
  %i.bol = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i485, i64 8 ; 2 uses
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !110 ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i485, i64 16 ; 2 uses
  %i.boo = load i32, ptr %i.bon, align 8, !tbaa !137
  %i.bop = zext i32 %i.boo to i64
  %i.boq = getelementptr inbounds nuw [24 x i8], ptr %i.bom, i64 %i.bop
  %i.bor = call noundef ptr @_ZSt9__find_ifIPKN4llvm15ScalarEvolution6FoldIDEN9__gnu_cxx5__ops16_Iter_equals_valIS3_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %i.bom, ptr noundef %i.boq, ptr nonnull align 8 dereferenceable(18) %11)
  %i.bos = load ptr, ptr %i.bol, align 8, !tbaa !110
  %i.bot = load i32, ptr %i.bon, align 8, !tbaa !137
  %i.bou = zext i32 %i.bot to i64
  %i.bov = getelementptr inbounds nuw [24 x i8], ptr %i.bos, i64 %i.bou
  %.not880 = icmp eq ptr %i.bor, %i.bov
  br i1 %.not880, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bow = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #29
  %i.box = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bow, ptr noundef nonnull @.str.131)
  %i.boy = load ptr, ptr %i.bbv, align 8, !tbaa !390
  %i.boz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.box, ptr noundef nonnull align 8 dereferenceable(40) %i.boy)
  %i.bpa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.boz, ptr noundef nonnull @.str.130) ; 0 uses
  call void @abort() #31
  unreachable

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.bpb = add i64 %.pn1881, 32
  %i.bpc = ashr exact i64 %i.bpb, 5               ; 3 uses
  %.not.i.i489 = icmp ult i64 %i.bpc, %i.bbe
  br i1 %.not.i.i489, label %bb.hj, label %._crit_edge1160

bb.hj:                                            ; preds = %bb.hi
  %i.bpd = lshr i64 %i.bpc, 5                     ; 3 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %i.bpd
  %i.bpf = load i32, ptr %i.bpe, align 4, !tbaa !271
  %i.bpg = trunc nuw i64 %i.bpc to i32
  %i.bph = and i32 %i.bpg, 31
  %i.bpi = shl nsw i32 -1, %i.bph
  %i.bpj = and i32 %i.bpf, %i.bpi                 ; 2 uses
  %i.bpk = icmp eq i32 %i.bpj, 0
  br i1 %i.bpk, label %.lr.ph.i.i495.preheader, label %_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit

.lr.ph.i.i495.preheader:                          ; preds = %bb.hj
  %i.bpl = add nuw nsw i64 %i.bpd, 1              ; 2 uses
  %i.bpm = icmp eq i64 %i.bpl, %i.bbz
  br i1 %i.bpm, label %._crit_edge1160, label %.lr.ph2131

.lr.ph.i.i495:                                    ; preds = %.lr.ph2131
  %i.bpn = add i64 %i.bpp, 1                      ; 2 uses
  %i.bpo = icmp eq i64 %i.bpn, %i.bbz
  br i1 %i.bpo, label %._crit_edge1160, label %.lr.ph2131, !llvm.loop !3501

.lr.ph2131:                                       ; preds = %.lr.ph.i.i495.preheader, %.lr.ph.i.i495
  %i.bpp = phi i64 [ %i.bpn, %.lr.ph.i.i495 ], [ %i.bpl, %.lr.ph.i.i495.preheader ] ; 3 uses
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %i.bpp
  %i.bpr = load i32, ptr %i.bpq, align 4, !tbaa !271 ; 2 uses
  %i.bps = icmp eq i32 %i.bpr, 0
  br i1 %i.bps, label %.lr.ph.i.i495, label %_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit, !llvm.loop !3501

_ZN4llvm16DenseMapIteratorINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EELb1EEppEv.exit: ; preds = %.lr.ph2131, %bb.hj
  %.012.lcssa.i.i492 = phi i64 [ %i.bpd, %bb.hj ], [ %i.bpp, %.lr.ph2131 ]
  %.0.lcssa.i.i493 = phi i32 [ %i.bpj, %bb.hj ], [ %i.bpr, %.lr.ph2131 ]
  %i.bpt = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i493, i1 true)
  %.idx.i.i494 = shl i64 %.012.lcssa.i.i492, 10
  %i.bpu = shl nuw nsw i32 %i.bpt, 5
  %.idx1880 = zext nneg i32 %i.bpu to i64
  %i.bpv = or disjoint i64 %.idx.i.i494, %.idx1880 ; 2 uses
  %.not874 = icmp eq i64 %i.bpv, %.idx1879
  br i1 %.not874, label %._crit_edge1160, label %bb.hc

._crit_edge2137:                                  ; preds = %.lr.ph.i.i.i481, %_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit, %._crit_edge.i.i509, %.lr.ph.i.i513.preheader, %.lr.ph.i.i513, %.lr.ph.i.i.i481.preheader, %._crit_edge1160, %._crit_edge.i.i.i477
  %i.bpw = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !394, !noalias !3627
  %i.bpy = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !395, !noalias !3627 ; 4 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !396, !noalias !3627 ; 2 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bqd = load i32, ptr %i.bqc, align 8, !tbaa !689, !noalias !3627
  %i.bqe = icmp eq i32 %i.bqd, 0
  %i.bqf = zext i32 %i.bqb to i64                 ; 4 uses
  %.idx1883 = mul nuw nsw i64 %i.bqf, 24          ; 2 uses
  %.not.i.not.i.i497 = icmp eq i32 %i.bqb, 0
  %or.cond865 = select i1 %i.bqe, i1 true, i1 %.not.i.not.i.i497
  br i1 %or.cond865, label %._crit_edge1168, label %bb.hk

bb.hk:                                            ; preds = %._crit_edge2137
  %i.bqg = add nuw nsw i64 %i.bqf, 31
  %i.bqh = lshr i64 %i.bqg, 5                     ; 2 uses
  %i.bqi = load i32, ptr %i.bpz, align 4, !tbaa !271, !noalias !3628 ; 2 uses
  %i.bqj = icmp eq i32 %i.bqi, 0
  br i1 %i.bqj, label %.lr.ph.i.i.i502.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit

.lr.ph.i.i.i502.preheader:                        ; preds = %bb.hk
  %i.bqk = icmp eq i64 %i.bqh, 1
  br i1 %i.bqk, label %._crit_edge1168, label %.lr.ph2138

.lr.ph.i.i.i502:                                  ; preds = %.lr.ph2138
  %i.bql = add nuw nsw i64 %i.bqn, 1              ; 2 uses
  %i.bqm = icmp eq i64 %i.bql, %i.bqh
  br i1 %i.bqm, label %._crit_edge1168, label %.lr.ph2138, !llvm.loop !3543

.lr.ph2138:                                       ; preds = %.lr.ph.i.i.i502.preheader, %.lr.ph.i.i.i502
  %i.bqn = phi i64 [ %i.bql, %.lr.ph.i.i.i502 ], [ 1, %.lr.ph.i.i.i502.preheader ] ; 3 uses
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bpz, i64 %i.bqn
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !271, !noalias !3628 ; 2 uses
  %i.bqq = icmp eq i32 %i.bqp, 0
  br i1 %i.bqq, label %.lr.ph.i.i.i502, label %._crit_edge.i.loopexit.i.i504, !llvm.loop !3543

._crit_edge.i.loopexit.i.i504:                    ; preds = %.lr.ph2138
  %i.bqr = mul i64 %i.bqn, 768
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit: ; preds = %bb.hk, %._crit_edge.i.loopexit.i.i504
  %.012.lcssa.i.i.i499 = phi i64 [ 0, %bb.hk ], [ %i.bqr, %._crit_edge.i.loopexit.i.i504 ]
  %.0.lcssa.i.i.i500 = phi i32 [ %i.bqi, %bb.hk ], [ %i.bqp, %._crit_edge.i.loopexit.i.i504 ]
  %i.bqs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i500, i1 true)
  %narrow1884 = mul nuw nsw i32 %i.bqs, 24
  %.idx1882 = zext nneg i32 %narrow1884 to i64
  %i.bqt = add i64 %.012.lcssa.i.i.i499, %.idx1882 ; 2 uses
  %.not8761165 = icmp eq i64 %i.bqt, %.idx1883
  br i1 %.not8761165, label %._crit_edge1168, label %.lr.ph1167

.lr.ph1167:                                       ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit
  %i.bqu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 9 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bqz = add nuw nsw i64 %i.bqf, 31
  %i.bra = lshr i64 %i.bqz, 5                     ; 2 uses
  br label %bb.hy

.lr.ph2136:                                       ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E5beginEv.exit, %._crit_edge.i.i509
  %.pn1892 = phi i64 [ %19, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallVectorINS_15ScalarEvolution6FoldIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E5beginEv.exit ], [ %23, %._crit_edge.i.i509 ] ; 2 uses
  %.sroa.0643.01166 = getelementptr i8, ptr %i.blx, i64 %.pn1892 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.brb = load ptr, ptr %.sroa.0643.01166, align 8, !tbaa !3635
  store ptr %i.brb, ptr %12, align 8, !tbaa !3635
  %i.brc = getelementptr inbounds nuw i8, ptr %.sroa.0643.01166, i64 8
  store ptr %i.bmt, ptr %i.bms, align 8, !tbaa !110
  store i32 0, ptr %i.bmu, align 8, !tbaa !137
  store i32 2, ptr %i.bmv, align 4, !tbaa !138
  %i.brd = getelementptr inbounds nuw i8, ptr %.sroa.0643.01166, i64 16 ; 2 uses
  %i.bre = load i32, ptr %i.brd, align 8, !tbaa !137 ; 6 uses
  %.not.i.i.i.i = icmp eq i32 %i.bre, 0
  %i.brf = icmp eq ptr %12, %.sroa.0643.01166
  %or.cond.i.i.i = or i1 %i.brf, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph2136
  %i.brg = icmp ugt i32 %i.bre, 2
  br i1 %i.brg, label %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, label %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %bb.hl
  %i.brh = zext i32 %i.bre to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bms, ptr noundef nonnull %i.bmt, i64 noundef %i.brh, i64 noundef 24) #29
  %.pre.i.i.i = load i32, ptr %i.brd, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i.i.i505 = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i505, label %.lr.ph1163, label %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %.pre.i.i506 = load ptr, ptr %i.bms, align 8, !tbaa !110
  br label %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i, %bb.hl
  %i.bri = phi ptr [ %.pre.i.i506, %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bmt, %bb.hl ]
  %i.brj = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bre, %bb.hl ]
  %i.brk = zext i32 %i.brj to i64
  %i.brl = load ptr, ptr %i.brc, align 8, !tbaa !110
  %gepdiff.i.i.i.i = mul nuw nsw i64 %i.brk, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bri, ptr align 8 %i.brl, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.lr.ph1163

.lr.ph1163:                                       ; preds = %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i, %_ZSt4copyIPKN4llvm15ScalarEvolution6FoldIDEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  store i32 %i.bre, ptr %i.bmu, align 8, !tbaa !137
  %.pre1398 = load ptr, ptr %i.bms, align 8, !tbaa !110 ; 4 uses
  %i.brm = zext i32 %i.bre to i64
  %.idx1175 = mul nuw nsw i64 %i.brm, 24
  %i.brn = getelementptr inbounds nuw i8, ptr %.pre1398, i64 %.idx1175
  %i.bro = load ptr, ptr %i.bav, align 8, !tbaa !268, !noalias !3636
  %i.brp = load ptr, ptr %i.bax, align 8, !tbaa !269, !noalias !3636 ; 2 uses
  %i.brq = load i32, ptr %i.baz, align 4, !tbaa !270, !noalias !3636 ; 2 uses
  %i.brr = icmp eq i32 %i.brq, 0
  %i.brs = add i32 %i.brq, -1                     ; 2 uses
  %i.brt = load ptr, ptr %12, align 8
  br i1 %i.brr, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit.thread, label %.lr.ph1163.split

bb.hm:                                            ; preds = %bb.hq
  %i.bru = getelementptr inbounds nuw i8, ptr %.01781162, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bru, %i.brn
  br i1 %.not, label %._crit_edge1164, label %.lr.ph1163.split

._crit_edge1164:                                  ; preds = %bb.hm
  %i.brv = icmp eq ptr %.pre1398, %i.bmt
  br i1 %i.brv, label %_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge1164
  call void @free(ptr noundef %.pre1398) #29
  br label %_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit

_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit: ; preds = %.lr.ph2136, %._crit_edge1164, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %22 = add i64 %.pn1892, 72
  %i.brw = sdiv exact i64 %22, 72                 ; 3 uses
  %.not.i.i507 = icmp ult i64 %i.brw, %i.bmf
  br i1 %.not.i.i507, label %bb.ho, label %._crit_edge2137

bb.ho:                                            ; preds = %_ZNSt4pairIPKN4llvm4SCEVENS0_11SmallVectorINS0_15ScalarEvolution6FoldIDELj2EEEED2Ev.exit
  %i.brx = lshr i64 %i.brw, 5                     ; 3 uses
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %i.blz, i64 %i.brx
  %i.brz = load i32, ptr %i.bry, align 4, !tbaa !271
  %i.bsa = trunc nuw i64 %i.brw to i32
  %i.bsb = and i32 %i.bsa, 31
  %i.bsc = shl nsw i32 -1, %i.bsb
  %i.bsd = and i32 %i.brz, %i.bsc                 ; 2 uses
  %i.bse = icmp eq i32 %i.bsd, 0
  br i1 %i.bse, label %.lr.ph.i.i513.preheader, label %._crit_edge.i.i509

.lr.ph.i.i513.preheader:                          ; preds = %bb.ho
  %i.bsf = add nuw nsw i64 %i.brx, 1              ; 2 uses
  %i.bsg = icmp eq i64 %i.bsf, %21
  br i1 %i.bsg, label %._crit_edge2137, label %.lr.ph2133

.lr.ph.i.i513:                                    ; preds = %.lr.ph2133
  %i.bsh = add i64 %i.bsj, 1                      ; 2 uses
  %i.bsi = icmp eq i64 %i.bsh, %21
  br i1 %i.bsi, label %._crit_edge2137, label %.lr.ph2133, !llvm.loop !3530

.lr.ph2133:                                       ; preds = %.lr.ph.i.i513.preheader, %.lr.ph.i.i513
  %i.bsj = phi i64 [ %i.bsh, %.lr.ph.i.i513 ], [ %i.bsf, %.lr.ph.i.i513.preheader ] ; 3 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.blz, i64 %i.bsj
  %i.bsl = load i32, ptr %i.bsk, align 4, !tbaa !271 ; 2 uses
  %i.bsm = icmp eq i32 %i.bsl, 0
  br i1 %i.bsm, label %.lr.ph.i.i513, label %._crit_edge.i.i509, !llvm.loop !3530

._crit_edge.i.i509:                               ; preds = %.lr.ph2133, %bb.ho
  %.012.lcssa.i.i510 = phi i64 [ %i.brx, %bb.ho ], [ %i.bsj, %.lr.ph2133 ]
  %.0.lcssa.i.i511 = phi i32 [ %i.bsd, %bb.ho ], [ %i.bsl, %.lr.ph2133 ]
  %i.bsn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i511, i1 true)
  %.idx.i.i512 = mul i64 %.012.lcssa.i.i510, 2304
  %narrow1891 = mul nuw nsw i32 %i.bsn, 72
  %.idx1890 = zext nneg i32 %narrow1891 to i64
  %23 = add i64 %.idx.i.i512, %.idx1890           ; 2 uses
  %.not875 = icmp eq i64 %23, %.idx1888
  br i1 %.not875, label %._crit_edge2137, label %.lr.ph2136

.lr.ph1163.split:                                 ; preds = %.lr.ph1163, %bb.hm
  %.01781162 = phi ptr [ %i.bru, %bb.hm ], [ %.pre1398, %.lr.ph1163 ] ; 4 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.01781162, i64 16
  %i.bsp = load i16, ptr %i.bso, align 8, !tbaa !267 ; 2 uses
  %i.bsq = load ptr, ptr %.01781162, align 8, !tbaa !265 ; 2 uses
  %i.bsr = ptrtoint ptr %i.bsq to i64
  %i.bss = getelementptr inbounds nuw i8, ptr %.01781162, i64 8
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !266 ; 2 uses
  %i.bsu = ptrtoint ptr %i.bst to i64
  %i.bsv = shl i64 %i.bsr, 32
  %i.bsw = and i64 %i.bsu, 4294967295
  %i.bsx = or disjoint i64 %i.bsw, %i.bsv
  %i.bsy = mul i64 %i.bsx, -4658895280553007687   ; 2 uses
  %i.bsz = lshr i64 %i.bsy, 31
  %i.bta = xor i64 %i.bsz, %i.bsy
  %i.btb = zext i16 %i.bsp to i64
  %i.btc = shl nuw nsw i64 %i.btb, 32
  %i.btd = and i64 %i.bta, 4294967295
  %i.bte = or disjoint i64 %i.btd, %i.btc
  %i.btf = mul i64 %i.bte, -4658895280553007687   ; 2 uses
  %i.btg = lshr i64 %i.btf, 31
  %i.bth = xor i64 %i.btg, %i.btf
  %i.bti = trunc i64 %i.bth to i32
  %i.btj = and i32 %i.brs, %i.bti                 ; 3 uses
  %i.btk = zext i32 %i.btj to i64                 ; 2 uses
  %i.btl = lshr i64 %i.btk, 5
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %i.brp, i64 %i.btl
  %i.btn = load i32, ptr %i.btm, align 4, !tbaa !271
  %i.bto = and i32 %i.btj, 31
  %i.btp = lshr i32 %i.btn, %i.bto
  %i.btq = trunc i32 %i.btp to i1
  br i1 %i.btq, label %.lr.ph.i.i515, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit.thread, !prof !272

.lr.ph.i.i515:                                    ; preds = %.lr.ph1163.split, %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i
  %i.btr = phi i64 [ %i.bud, %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i ], [ %i.btk, %.lr.ph1163.split ]
  %.017.i.i516 = phi i32 [ %i.buc, %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i ], [ %i.btj, %.lr.ph1163.split ]
  %i.bts = getelementptr inbounds nuw [32 x i8], ptr %i.bro, i64 %i.btr ; 4 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 16
  %i.btu = load ptr, ptr %i.bts, align 8, !tbaa !257
  %i.btv = icmp eq ptr %i.bsq, %i.btu
  br i1 %i.btv, label %bb.hp, label %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i, !prof !273

bb.hp:                                            ; preds = %.lr.ph.i.i515
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bts, i64 8
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !234
  %i.bty = icmp eq ptr %i.bst, %i.btx
  br i1 %i.bty, label %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i, !prof !273

_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.i.i: ; preds = %bb.hp
  %i.btz = load i16, ptr %i.btt, align 8, !tbaa !274
  %i.bua = icmp eq i16 %i.bsp, %i.btz
  br i1 %i.bua, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit, label %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i, !prof !275

_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.i.i, %bb.hp, %.lr.ph.i.i515
  %i.bub = add nuw i32 %.017.i.i516, 1
  %i.buc = and i32 %i.bub, %i.brs                 ; 3 uses
  %i.bud = zext i32 %i.buc to i64                 ; 2 uses
  %i.bue = lshr i64 %i.bud, 5
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.brp, i64 %i.bue
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !271
  %i.buh = and i32 %i.buc, 31
  %i.bui = lshr i32 %i.bug, %i.buh
  %i.buj = trunc i32 %i.bui to i1
  br i1 %i.buj, label %.lr.ph.i.i515, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit.thread, !prof !276

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.i.i
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bts, i64 24
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !257 ; 3 uses
  %.not199 = icmp eq ptr %i.bul, null
  br i1 %.not199, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit.thread, label %bb.hq

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit.thread: ; preds = %.lr.ph1163, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit, %.lr.ph1163.split, %_ZN4llvm12DenseMapInfoINS_15ScalarEvolution6FoldIDEvE7isEqualERKS2_S5_.exit.thread.i.i
  %i.bum = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #29
  %i.bun = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bum, ptr noundef nonnull @.str.132)
  %i.buo = load ptr, ptr %12, align 8, !tbaa !3635
  %i.bup = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.bun, ptr noundef nonnull align 8 dereferenceable(40) %i.buo)
  %i.buq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bup, ptr noundef nonnull @.str.130) ; 0 uses
  call void @abort() #31
  unreachable

bb.hq:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_15ScalarEvolution6FoldIDEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6lookupERKS3_.exit
  %.not200 = icmp eq ptr %i.bul, %i.brt
  br i1 %.not200, label %bb.hm, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bur = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #29
  %i.bus = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bur, ptr noundef nonnull @.str.133)
  %i.but = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.bus, ptr noundef nonnull align 8 dereferenceable(40) %i.bul)
  %i.buu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.but, ptr noundef nonnull @.str.134)
  %i.buv = load ptr, ptr %12, align 8, !tbaa !3635
  %i.buw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(48) %i.buu, ptr noundef nonnull align 8 dereferenceable(40) %i.buv)
  %i.bux = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.buw, ptr noundef nonnull @.str.130) ; 0 uses
  call void @abort() #31
  unreachable

._crit_edge1168:                                  ; preds = %.lr.ph.i.i.i502, %_ZNSt4pairIPKN4llvm4SCEVENS0_5APIntEED2Ev.exit, %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb1EEppEv.exit, %.lr.ph.i.i538.preheader, %.lr.ph.i.i538, %.lr.ph.i.i.i502.preheader, %._crit_edge2137, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit
  %i.buy = load ptr, ptr %8, align 8, !tbaa !110  ; 2 uses
  %i.buz = icmp eq ptr %i.buy, %i.lk
  br i1 %i.buz, label %_ZN4llvm11SmallVectorIPNS_4LoopELj32EED2Ev.exit, label %bb.hs

bb.hs:                                            ; preds = %._crit_edge1168
  call void @free(ptr noundef %i.buy) #29
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4LoopELj32EED2Ev.exit:  ; preds = %._crit_edge1168, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bva = load i8, ptr %i.le, align 8, !tbaa !105, !range !106, !noundef !107
  %i.bvb = trunc nuw i8 %i.bva to i1
  br i1 %i.bvb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.ht

bb.ht:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj32EED2Ev.exit
  %i.bvc = load ptr, ptr %7, align 8, !tbaa !108
  call void @free(ptr noundef %i.bvc) #29
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj32EED2Ev.exit, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bvd = load i8, ptr %i.ak, align 8, !tbaa !105, !range !106, !noundef !107
  %i.bve = trunc nuw i8 %i.bvd to i1
  br i1 %i.bve, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit517, label %bb.hu

bb.hu:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.bvf = load ptr, ptr %6, align 8, !tbaa !108
  call void @free(ptr noundef %i.bvf) #29
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit517

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit517:        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bvg = load i32, ptr %i.af, align 8
  %i.bvh = and i32 %i.bvg, 1
  %.not.i.i.i = icmp eq i32 %i.bvh, 0
  br i1 %.not.i.i.i, label %bb.hv, label %_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit

bb.hv:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit517
  %i.bvi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bvj = load i32, ptr %i.bvi, align 8, !tbaa !121 ; 2 uses
  %i.bvk = icmp eq i32 %i.bvj, 0
  br i1 %i.bvk, label %_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bvl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !121
  %i.bvn = zext i32 %i.bvj to i64                 ; 2 uses
  %i.bvo = shl nuw nsw i64 %i.bvn, 4
  %i.bvp = add nuw nsw i64 %i.bvn, 31
  %i.bvq = lshr i64 %i.bvp, 3
  %i.bvr = and i64 %i.bvq, 1073741820
  %i.bvs = add nuw nsw i64 %i.bvr, %i.bvo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bvm, i64 noundef %i.bvs, i64 noundef 8) #29
  br label %_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit

_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit517, %bb.hv, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bvt = load ptr, ptr %4, align 8, !tbaa !110  ; 2 uses
  %i.bvu = icmp eq ptr %i.bvt, %i.o
  br i1 %i.bvu, label %_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit, label %bb.hx

bb.hx:                                            ; preds = %_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit
  call void @free(ptr noundef %i.bvt) #29
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit:   ; preds = %_ZN4llvm18SCEVRewriteVisitorIZNKS_15ScalarEvolution6verifyEvE10SCEVMapperED2Ev.exit, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN4llvm15ScalarEvolutionD1Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.hy:                                            ; preds = %.lr.ph1167, %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb1EEppEv.exit
  %.pn1887 = phi i64 [ %i.bqt, %.lr.ph1167 ], [ %i.byu, %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVENS_5APIntENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.0636.01166 = getelementptr i8, ptr %i.bpx, i64 %.pn1887 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.bvv = load ptr, ptr %.sroa.0636.01166, align 8, !tbaa !597 ; 2 uses
  store ptr %i.bvv, ptr %13, align 8, !tbaa !597
  %i.bvw = getelementptr inbounds nuw i8, ptr %.sroa.0636.01166, i64 8 ; 2 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr %.sroa.0636.01166, i64 16
  %i.bvy = load i32, ptr %i.bvx, align 8, !tbaa !277 ; 2 uses
  store i32 %i.bvy, ptr %i.bqv, align 8, !tbaa !277
  %i.bvz = icmp ult i32 %i.bvy, 65
  br i1 %i.bvz, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.bwa = load i64, ptr %i.bvw, align 8, !tbaa !121
  store i64 %i.bwa, ptr %i.bqu, align 8, !tbaa !121
  br label %_ZN4llvm6detail12DenseMapPairIPKNS_4SCEVENS_5APIntEEC2ERKS6_.exit

bb.ia:                                            ; preds = %bb.hy
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bqu, ptr noundef nonnull align 8 dereferenceable(12) %i.bvw) #29
  %.pre1399 = load ptr, ptr %13, align 8, !tbaa !597
  br label %_ZN4llvm6detail12DenseMapPairIPKNS_4SCEVENS_5APIntEEC2ERKS6_.exit

_ZN4llvm6detail12DenseMapPairIPKNS_4SCEVENS_5APIntEEC2ERKS6_.exit: ; preds = %bb.hz, %bb.ia
  %i.bwb = phi ptr [ %i.bvv, %bb.hz ], [ %.pre1399, %bb.ia ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZN4llvm15ScalarEvolution19getConstantMultipleEPKNS_4SCEVEPKNS_11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef %i.bwb, ptr noundef null)
  %i.bwc = load i32, ptr %i.bqv, align 8, !tbaa !277 ; 2 uses
  %i.bwd = icmp ult i32 %i.bwc, 65                ; 2 uses
  br i1 %i.bwd, label %_ZNK4llvm5APIntneEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

end_hunk_0
