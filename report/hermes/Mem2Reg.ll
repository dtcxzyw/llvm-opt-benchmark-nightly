inline.NumInlined: 2091
inline.NumDeleted: 876
begin_hunk_0_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.ayd = getelementptr inbounds i8, ptr %i.ayc, i64 -16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.ayd, align 8
  %.sroa.4.0..sroa_idx.i.i.i335 = getelementptr inbounds i8, ptr %i.ayc, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i336 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i335, align 8 ; 2 uses
  store ptr %.sroa.062.0.copyload.i, ptr %i.ayd, align 8, !tbaa !186
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i335, align 8, !tbaa !184
  %.idx.i337 = shl nuw nsw i64 %i.ayb, 4
  %i.aye = add nsw i64 %.idx.i337, -16            ; 2 uses
  %i.ayf = lshr exact i64 %i.aye, 4               ; 2 uses
  %i.ayg = add nsw i64 %i.ayf, -1
  %i.ayh = lshr i64 %i.ayg, 1
  %i.ayi = icmp ugt i32 %i.axy, 3
  br i1 %i.ayi, label %.lr.ph.i.i.i.i341, label %._crit_edge.i.i.i.i338

.lr.ph.i.i.i.i341:                                ; preds = %bb.fy, %.lr.ph.i.i.i.i341
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i342, %.lr.ph.i.i.i.i341 ], [ 0, %bb.fy ] ; 2 uses
  %i.ayj = shl i64 %.030.i.i.i.i, 1               ; 3 uses
  %i.ayk = add i64 %i.ayj, 2                      ; 2 uses
  %i.ayl = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %i.ayk
  %i.aym = getelementptr [16 x i8], ptr %i.axz, i64 %i.ayj
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  %i.ayo = load i32, ptr %i.ayn, align 8, !tbaa !184
  %i.ayp = getelementptr i8, ptr %i.aym, i64 24
  %i.ayq = load i32, ptr %i.ayp, align 8, !tbaa !184
  %i.ayr = icmp ult i32 %i.ayo, %i.ayq
  %i.ays = or disjoint i64 %i.ayj, 1
  %spec.select.i.i.i.i342 = select i1 %i.ayr, i64 %i.ays, i64 %i.ayk ; 4 uses
  %i.ayt = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %spec.select.i.i.i.i342 ; 2 uses
  %i.ayu = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.030.i.i.i.i ; 2 uses
  %i.ayv = load ptr, ptr %i.ayt, align 8, !tbaa !24
  store ptr %i.ayv, ptr %i.ayu, align 8, !tbaa !186
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  %i.ayx = load i32, ptr %i.ayw, align 8, !tbaa !3
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  store i32 %i.ayx, ptr %i.ayy, align 8, !tbaa !184
  %i.ayz = icmp slt i64 %spec.select.i.i.i.i342, %i.ayh
  br i1 %i.ayz, label %.lr.ph.i.i.i.i341, label %._crit_edge.i.i.i.i338, !llvm.loop !189

._crit_edge.i.i.i.i338:                           ; preds = %.lr.ph.i.i.i.i341, %bb.fy
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %spec.select.i.i.i.i342, %.lr.ph.i.i.i.i341 ] ; 5 uses
  %i.aza = and i64 %i.aye, 16
  %i.azb = icmp eq i64 %i.aza, 0
  br i1 %i.azb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %._crit_edge.i.i.i.i338
  %i.azc = add nsw i64 %i.ayf, -2
  %i.azd = ashr exact i64 %i.azc, 1
  %i.aze = icmp eq i64 %.0.lcssa.i.i.i.i, %i.azd
  br i1 %i.aze, label %.thread.i.i.i, label %bb.ga

.thread.i.i.i:                                    ; preds = %bb.fz
  %i.azf = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.azg = or disjoint i64 %i.azf, 1              ; 2 uses
  %i.azh = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %i.azg ; 2 uses
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %.0.lcssa.i.i.i.i ; 2 uses
  %i.azj = load ptr, ptr %i.azh, align 8, !tbaa !24
  store ptr %i.azj, ptr %i.azi, align 8, !tbaa !186
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azl = load i32, ptr %i.azk, align 8, !tbaa !3
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  store i32 %i.azl, ptr %i.azm, align 8, !tbaa !184
  br label %.lr.ph.i.i.i.i.i340.preheader

bb.ga:                                            ; preds = %bb.fz, %._crit_edge.i.i.i.i338
  %.not.i.i.i339 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i339, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i340.preheader

.lr.ph.i.i.i.i.i340.preheader:                    ; preds = %bb.ga, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ga ], [ %i.azg, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i340

.lr.ph.i.i.i.i.i340:                              ; preds = %.lr.ph.i.i.i.i.i340.preheader, %bb.gb
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i910.i.i.i, %bb.gb ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i340.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i910.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %.018.i.i910.i.i.i ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azp = load i32, ptr %i.azo, align 8, !tbaa !184 ; 2 uses
  %i.azq = icmp ult i32 %i.azp, %.sroa.4.0.copyload.i.i.i336
  br i1 %i.azq, label %bb.gb, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i

bb.gb:                                            ; preds = %.lr.ph.i.i.i.i.i340
  %i.azr = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.01317.i.i.i.i.i ; 2 uses
  %i.azs = load ptr, ptr %i.azn, align 8, !tbaa !24
  store ptr %i.azs, ptr %i.azr, align 8, !tbaa !186
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  store i32 %i.azp, ptr %i.azt, align 8, !tbaa !184
  %.not11.i.i.i = icmp eq i64 %.018.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i340, !llvm.loop !187

_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.gb, %.lr.ph.i.i.i.i.i340, %bb.ga
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ga ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i340 ], [ 0, %bb.gb ]
  %i.azu = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.azu, align 8, !tbaa !186
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i336, ptr %i.azv, align 8, !tbaa !184
  br label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit: ; preds = %bb.fx, %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i
  %i.azw = add i32 %i.axy, -1
  store i32 %i.azw, ptr %i.aog, align 8, !tbaa !22
  store i32 0, ptr %i.aot, align 8, !tbaa !22
  %i.azx = load i32, ptr %i.aou, align 4, !tbaa !23
  %.not.i101.not.i = icmp eq i32 %i.azx, 0
  br i1 %.not.i101.not.i, label %bb.gc, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115, !prof !190

bb.gc:                                            ; preds = %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aos, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i167 = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.azy = zext i32 %.pre.i.i167 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115: ; preds = %bb.gc, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit
  %i.azz = phi i64 [ %i.azy, %bb.gc ], [ 0, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit ]
  %i.baa = load ptr, ptr %6, align 8, !tbaa !21
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.baa, i64 %i.azz
  %i.bac = ptrtoint ptr %.sroa.062.0.copyload.i to i64
  store i64 %i.bac, ptr %i.bab, align 1
  %i.bad = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.bae = add i32 %i.bad, 1                      ; 3 uses
  store i32 %i.bae, ptr %i.aot, align 8, !tbaa !22
  %.not.i102375.i = icmp eq i32 %i.bae, 0
  br i1 %.not.i102375.i, label %.loopexit.i123, label %.lr.ph376.i

.lr.ph376.i:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115, %._crit_edge374.i
  %i.baf = phi i32 [ %.pr.i122, %._crit_edge374.i ], [ %i.bae, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115 ] ; 2 uses
  %i.bag = load ptr, ptr %6, align 8, !tbaa !21
  %i.bah = zext i32 %i.baf to i64
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.bag, i64 %i.bah
  %i.baj = getelementptr inbounds i8, ptr %i.bai, i64 -8
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !24 ; 4 uses
  %i.bal = add i32 %i.baf, -1
  store i32 %i.bal, ptr %i.aot, align 8, !tbaa !22
  %i.bam = load ptr, ptr %i.bak, align 8, !tbaa !191 ; 2 uses
  %i.ban = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bam) #10, !noalias !196
  %i.bao = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bam) #10, !noalias !196 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.bao, null
  br i1 %.not.i.i.i.i116, label %._crit_edge369.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %.lr.ph376.i
  %i.bap = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bao) #10, !noalias !196 ; 2 uses
  %.not333366.i = icmp eq i32 %i.bap, 0
  br i1 %.not333366.i, label %._crit_edge369.i, label %.lr.ph368.i

._crit_edge369.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %.lr.ph376.i
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bak, i64 24
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !26 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bak, i64 32
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !26 ; 2 uses
  %.not334370.i = icmp eq ptr %i.bar, %i.bat
  br i1 %.not334370.i, label %._crit_edge374.i, label %.lr.ph373.i

.lr.ph368.i:                                      ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i
  %.sroa.4304.0367.i = phi i32 [ %i.bip, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.bau = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ban, i32 noundef %.sroa.4304.0367.i) #10 ; 10 uses
  %i.bav = load ptr, ptr %i.aoi, align 8, !tbaa !171 ; 4 uses
  %i.baw = load i32, ptr %i.aoj, align 8, !tbaa !170 ; 4 uses
  %i.bax = icmp eq i32 %i.baw, 0
  br i1 %i.bax, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph368.i
  %i.bay = ptrtoint ptr %i.bau to i64
  %i.baz = trunc i64 %i.bay to i32                ; 2 uses
  %i.bba = lshr i32 %i.baz, 4
  %i.bbb = lshr i32 %i.baz, 9
  %i.bbc = xor i32 %i.bba, %i.bbb
  %i.bbd = add i32 %i.baw, -1                     ; 2 uses
  %.02944.i.i.i110.i = and i32 %i.bbc, %i.bbd     ; 2 uses
  %i.bbe = zext nneg i32 %.02944.i.i.i110.i to i64
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbe ; 2 uses
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !172 ; 2 uses
  %i.bbh = icmp eq ptr %i.bau, %i.bbg
  br i1 %i.bbh, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i, label %.lr.ph.i.i.i111.i, !prof !35

.lr.ph.i.i.i111.i:                                ; preds = %bb.gd, %bb.ge
  %i.bbi = phi ptr [ %i.bbo, %bb.ge ], [ %i.bbg, %bb.gd ]
  %.02947.i.i.i112.i = phi i32 [ %.029.i.i.i114.i, %bb.ge ], [ %.02944.i.i.i110.i, %bb.gd ]
  %.02746.i.i.i113.i = phi i32 [ %i.bbk, %bb.ge ], [ 1, %bb.gd ] ; 2 uses
  %i.bbj = icmp eq ptr %i.bbi, inttoptr (i64 -8 to ptr)
  br i1 %i.bbj, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, label %bb.ge, !prof !25

bb.ge:                                            ; preds = %.lr.ph.i.i.i111.i
  %i.bbk = add i32 %.02746.i.i.i113.i, 1
  %i.bbl = add i32 %.02746.i.i.i113.i, %.02947.i.i.i112.i
  %.029.i.i.i114.i = and i32 %i.bbl, %i.bbd       ; 2 uses
  %i.bbm = zext i32 %.029.i.i.i114.i to i64
  %i.bbn = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbm ; 2 uses
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !172 ; 2 uses
  %i.bbp = icmp eq ptr %i.bau, %i.bbo
  br i1 %i.bbp, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i, label %.lr.ph.i.i.i111.i, !prof !36, !llvm.loop !183

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i: ; preds = %.lr.ph.i.i.i111.i, %.lr.ph368.i
  %i.bbq = zext i32 %i.baw to i64
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbq
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i: ; preds = %bb.ge, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, %bb.gd
  %.sink.i.ph.pn.i.i116.i = phi ptr [ %i.bbr, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i ], [ %i.bbf, %bb.gd ], [ %i.bbn, %bb.ge ] ; 2 uses
  %i.bbs = zext i32 %i.baw to i64
  %i.bbt = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbs
  %.not.i117.i.a = icmp eq ptr %.sink.i.ph.pn.i.i116.i, %i.bbt
  br i1 %.not.i117.i.a, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i, label %30

30:                                               ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %31 = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i116.i, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i: ; preds = %30, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %.0.i118.i = phi ptr [ %32, %30 ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i ] ; 14 uses
  %33 = getelementptr inbounds nuw i8, ptr %.0.i118.i, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = icmp eq ptr %34, %i.bak
  br i1 %35, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gf

bb.gf:                                            ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i
  %i.bbu = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bbv = load i32, ptr %i.aok, align 8, !tbaa !34 ; 7 uses
  %i.bbw = icmp eq i32 %i.bbv, 0
  br i1 %i.bbw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bbx = ptrtoint ptr %.0.i118.i to i64
  %i.bby = trunc i64 %i.bbx to i32                ; 2 uses
  %i.bbz = lshr i32 %i.bby, 4
  %i.bca = lshr i32 %i.bby, 9
  %i.bcb = xor i32 %i.bbz, %i.bca
  %i.bcc = add i32 %i.bbv, -1                     ; 2 uses
  %.02944.i.i.i214.i = and i32 %i.bcc, %i.bcb     ; 2 uses
  %i.bcd = zext nneg i32 %.02944.i.i.i214.i to i64
  %i.bce = getelementptr inbounds nuw [16 x i8], ptr %i.bbu, i64 %i.bcd ; 3 uses
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !24 ; 2 uses
  %i.bcg = icmp eq ptr %.0.i118.i, %i.bcf
  br i1 %i.bcg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !35

.lr.ph.i.i.i215.i:                                ; preds = %bb.gg, %bb.gi
  %i.bch = phi ptr [ %i.bcr, %bb.gi ], [ %i.bcf, %bb.gg ] ; 2 uses
  %i.bci = phi ptr [ %i.bcq, %bb.gi ], [ %i.bce, %bb.gg ] ; 2 uses
  %.02947.i.i.i216.i = phi i32 [ %.029.i.i.i218.i, %bb.gi ], [ %.02944.i.i.i214.i, %bb.gg ]
  %.02746.i.i.i217.i = phi i32 [ %i.bcn, %bb.gi ], [ 1, %bb.gg ] ; 2 uses
  %.03245.i.i.i.i117 = phi ptr [ %spec.select.i.i.i.i119, %bb.gi ], [ null, %bb.gg ] ; 4 uses
  %i.bcj = icmp eq ptr %i.bch, inttoptr (i64 -8 to ptr)
  br i1 %i.bcj, label %bb.gh, label %bb.gi, !prof !25

bb.gh:                                            ; preds = %.lr.ph.i.i.i215.i
  %.not.i.i.i220.i = icmp eq ptr %.03245.i.i.i.i117, null
  %i.bck = select i1 %.not.i.i.i220.i, ptr %i.bci, ptr %.03245.i.i.i.i117
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151

bb.gi:                                            ; preds = %.lr.ph.i.i.i215.i
  %i.bcl = icmp eq ptr %i.bch, inttoptr (i64 -16 to ptr)
  %i.bcm = icmp eq ptr %.03245.i.i.i.i117, null
  %or.cond.not.i.i.i.i118 = select i1 %i.bcl, i1 %i.bcm, i1 false
  %spec.select.i.i.i.i119 = select i1 %or.cond.not.i.i.i.i118, ptr %i.bci, ptr %.03245.i.i.i.i117
  %i.bcn = add i32 %.02746.i.i.i217.i, 1
  %i.bco = add i32 %.02746.i.i.i217.i, %.02947.i.i.i216.i
  %.029.i.i.i218.i = and i32 %i.bco, %i.bcc       ; 2 uses
  %i.bcp = zext i32 %.029.i.i.i218.i to i64
  %i.bcq = getelementptr inbounds nuw [16 x i8], ptr %i.bbu, i64 %i.bcp ; 3 uses
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !24 ; 2 uses
  %i.bcs = icmp eq ptr %.0.i118.i, %i.bcr
  br i1 %i.bcs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151: ; preds = %bb.gh, %bb.gf
  %.sink.i.i.i221.i = phi ptr [ %i.bck, %bb.gh ], [ null, %bb.gf ]
  %i.bct = load i32, ptr %i.aol, align 8, !tbaa !38 ; 3 uses
  %i.bcu = shl i32 %i.bct, 2
  %i.bcv = add i32 %i.bcu, 4
  %i.bcw = mul i32 %i.bbv, 3
  %.not.i.i4.i.i152 = icmp ult i32 %i.bcv, %i.bcw
  br i1 %.not.i.i4.i.i152, label %bb.gk, label %bb.gj, !prof !25

bb.gj:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bcx = shl i32 %i.bbv, 1
  br label %.sink.split.i.i.i.i153

bb.gk:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bcy = load i32, ptr %i.aom, align 4, !tbaa !39
  %.neg.i.i.i.i164 = xor i32 %i.bct, -1
  %.neg12.i.i.i.i165 = add i32 %i.bbv, %.neg.i.i.i.i164
  %i.bcz = sub i32 %.neg12.i.i.i.i165, %i.bcy
  %i.bda = lshr i32 %i.bbv, 3
  %.not10.i.i.i.i166 = icmp ugt i32 %i.bcz, %i.bda
  br i1 %.not10.i.i.i.i166, label %bb.go, label %.sink.split.i.i.i.i153, !prof !25

.sink.split.i.i.i.i153:                           ; preds = %bb.gk, %bb.gj
  %.sink.i.i5.i.i154 = phi i32 [ %i.bcx, %bb.gj ], [ %i.bbv, %bb.gk ]
  call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %27, i32 noundef %.sink.i.i5.i.i154)
  %i.bdb = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bdc = load i32, ptr %i.aok, align 8, !tbaa !34 ; 2 uses
  %i.bdd = icmp eq i32 %i.bdc, 0
  br i1 %i.bdd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %bb.gl

bb.gl:                                            ; preds = %.sink.split.i.i.i.i153
  %i.bde = ptrtoint ptr %.0.i118.i to i64
  %i.bdf = trunc i64 %i.bde to i32                ; 2 uses
  %i.bdg = lshr i32 %i.bdf, 4
  %i.bdh = lshr i32 %i.bdf, 9
  %i.bdi = xor i32 %i.bdg, %i.bdh
  %i.bdj = add i32 %i.bdc, -1                     ; 2 uses
  %.02944.i.i.i155 = and i32 %i.bdj, %i.bdi       ; 2 uses
  %i.bdk = zext nneg i32 %.02944.i.i.i155 to i64
  %i.bdl = getelementptr inbounds nuw [16 x i8], ptr %i.bdb, i64 %i.bdk ; 3 uses
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !24 ; 2 uses
  %i.bdn = icmp eq ptr %.0.i118.i, %i.bdm
  br i1 %i.bdn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !35

.lr.ph.i.i242.i:                                  ; preds = %bb.gl, %bb.gn
  %i.bdo = phi ptr [ %i.bdy, %bb.gn ], [ %i.bdm, %bb.gl ] ; 2 uses
  %i.bdp = phi ptr [ %i.bdx, %bb.gn ], [ %i.bdl, %bb.gl ] ; 2 uses
  %.02947.i.i.i156 = phi i32 [ %.029.i.i.i160, %bb.gn ], [ %.02944.i.i.i155, %bb.gl ]
  %.02746.i.i.i157 = phi i32 [ %i.bdu, %bb.gn ], [ 1, %bb.gl ] ; 2 uses
  %.03245.i.i.i158 = phi ptr [ %spec.select.i.i243.i, %bb.gn ], [ null, %bb.gl ] ; 4 uses
  %i.bdq = icmp eq ptr %i.bdo, inttoptr (i64 -8 to ptr)
  br i1 %i.bdq, label %bb.gm, label %bb.gn, !prof !25

bb.gm:                                            ; preds = %.lr.ph.i.i242.i
  %.not.i.i244.i = icmp eq ptr %.03245.i.i.i158, null
  %i.bdr = select i1 %.not.i.i244.i, ptr %i.bdp, ptr %.03245.i.i.i158
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161

bb.gn:                                            ; preds = %.lr.ph.i.i242.i
  %i.bds = icmp eq ptr %i.bdo, inttoptr (i64 -16 to ptr)
  %i.bdt = icmp eq ptr %.03245.i.i.i158, null
  %or.cond.not.i.i.i159 = select i1 %i.bds, i1 %i.bdt, i1 false
  %spec.select.i.i243.i = select i1 %or.cond.not.i.i.i159, ptr %i.bdp, ptr %.03245.i.i.i158
  %i.bdu = add i32 %.02746.i.i.i157, 1
  %i.bdv = add i32 %.02746.i.i.i157, %.02947.i.i.i156
  %.029.i.i.i160 = and i32 %i.bdv, %i.bdj         ; 2 uses
  %i.bdw = zext i32 %.029.i.i.i160 to i64
  %i.bdx = getelementptr inbounds nuw [16 x i8], ptr %i.bdb, i64 %i.bdw ; 3 uses
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !24 ; 2 uses
  %i.bdz = icmp eq ptr %.0.i118.i, %i.bdy
  br i1 %i.bdz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161: ; preds = %bb.gn, %bb.gm, %bb.gl, %.sink.split.i.i.i.i153
  %.sink.i.i.i162 = phi ptr [ %i.bdr, %bb.gm ], [ null, %.sink.split.i.i.i.i153 ], [ %i.bdl, %bb.gl ], [ %i.bdx, %bb.gn ]
  %.pre.i.i222.i = load i32, ptr %i.aol, align 8, !tbaa !38
  br label %bb.go

bb.go:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, %bb.gk
  %i.bea = phi ptr [ %.sink.i.i.i162, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %.sink.i.i.i221.i, %bb.gk ] ; 4 uses
  %i.beb = phi i32 [ %.pre.i.i222.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %i.bct, %bb.gk ]
  %i.bec = add i32 %i.beb, 1
  store i32 %i.bec, ptr %i.aol, align 8, !tbaa !38
  %i.bed = load ptr, ptr %i.bea, align 8, !tbaa !24
  %i.bee = icmp eq ptr %i.bed, inttoptr (i64 -8 to ptr)
  br i1 %i.bee, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bef = load i32, ptr %i.aom, align 4, !tbaa !39
  %i.beg = add i32 %i.bef, -1
  store i32 %i.beg, ptr %i.aom, align 4, !tbaa !39
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163: ; preds = %bb.gp, %bb.go
  store ptr %.0.i118.i, ptr %i.bea, align 8, !tbaa !24
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  store i32 0, ptr %i.beh, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120: ; preds = %bb.gi, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163, %bb.gg
  %.0.i219.i = phi ptr [ %i.bea, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163 ], [ %i.bce, %bb.gg ], [ %i.bcq, %bb.gi ]
  %i.bei = getelementptr inbounds nuw i8, ptr %.0.i219.i, i64 8
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !3 ; 2 uses
  %i.bek = icmp ugt i32 %i.bej, %.sroa.4.0.copyload.i
  br i1 %i.bek, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gq

bb.gq:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120
  %i.bel = load ptr, ptr %i.aoo, align 8, !tbaa !179, !noalias !200
  %i.bem = load ptr, ptr %5, align 8, !tbaa !177, !noalias !200 ; 3 uses
  %i.ben = icmp eq ptr %i.bel, %i.bem
  br i1 %i.ben, label %bb.gr, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i

bb.gr:                                            ; preds = %bb.gq
  %i.beo = load i32, ptr %i.aoq, align 4, !tbaa !181, !noalias !200 ; 4 uses
  %i.bep = zext i32 %i.beo to i64
  %.idx.i.i.i148 = shl nuw nsw i64 %i.bep, 3
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bem, i64 %.idx.i.i.i148 ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.beo, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i149

.lr.ph.i.i.i149:                                  ; preds = %bb.gr, %bb.gs
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i150, %bb.gs ], [ null, %bb.gr ]
  %.04964.i.i.i = phi ptr [ %i.bet, %bb.gs ], [ %i.bem, %bb.gr ] ; 3 uses
  %i.ber = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !203, !noalias !200 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ber, %.0.i118.i
  br i1 %.not27.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i149
  %i.bes = icmp eq ptr %i.ber, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i150 = select i1 %i.bes, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i121.i = icmp eq ptr %i.bet, %i.beq
  br i1 %.not.i.i121.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i149, !llvm.loop !204

.critedge.i.i.i:                                  ; preds = %bb.gs
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i150, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %.critedge.i.i.i
  store ptr %.0.i118.i, ptr %spec.select.i.i.i150, align 8, !tbaa !203, !noalias !200
  %i.beu = load i32, ptr %i.aor, align 8, !tbaa !182, !noalias !200
  %i.bev = add i32 %i.beu, -1
  store i32 %i.bev, ptr %i.aor, align 8, !tbaa !182, !noalias !200
  br label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.gr
  %i.bew = load i32, ptr %i.aop, align 8, !tbaa !180, !noalias !200
  %i.bex = icmp ult i32 %i.beo, %i.bew
  br i1 %i.bex, label %bb.gu, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i

bb.gu:                                            ; preds = %.critedge.thread.i.i.i
  %i.bey = add nuw i32 %i.beo, 1
  store i32 %i.bey, ptr %i.aoq, align 4, !tbaa !181, !noalias !200
  store ptr %.0.i118.i, ptr %i.beq, align 8, !tbaa !203, !noalias !200
  br label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i: ; preds = %bb.gq, %.critedge.thread.i.i.i
  %i.bez = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %.0.i118.i) #10, !noalias !200
  %i.bfa = extractvalue { ptr, i8 } %i.bez, 1
  %i.bfb = trunc nuw i8 %i.bfa to i1
  br i1 %i.bfb, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread: ; preds = %bb.gt, %bb.gu, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i
  %i.bfc = load ptr, ptr %i.atb, align 8, !tbaa !113
  %i.bfd = load ptr, ptr %.0.i118.i, align 8, !tbaa !191
  %i.bfe = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef %i.bfc, ptr noundef %i.bfd) #10
  br i1 %i.bfe, label %bb.gv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

bb.gv:                                            ; preds = %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread
  %i.bff = load ptr, ptr %3, align 8, !tbaa !205, !noalias !208 ; 2 uses
  %i.bfg = load i32, ptr %i.aov, align 8, !tbaa !213, !noalias !208 ; 7 uses
  %i.bfh = icmp eq i32 %i.bfg, 0
  br i1 %i.bfh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bfi = ptrtoint ptr %i.bau to i64
  %i.bfj = trunc i64 %i.bfi to i32                ; 2 uses
  %i.bfk = lshr i32 %i.bfj, 4
  %i.bfl = lshr i32 %i.bfj, 9
  %i.bfm = xor i32 %i.bfk, %i.bfl
  %i.bfn = add i32 %i.bfg, -1                     ; 2 uses
  %.02944.i.i.i223.i = and i32 %i.bfn, %i.bfm     ; 2 uses
  %i.bfo = zext nneg i32 %.02944.i.i.i223.i to i64
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %i.bfo ; 2 uses
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bfr = icmp eq ptr %i.bau, %i.bfq
  br i1 %i.bfr, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !35

.lr.ph.i.i.i224.i:                                ; preds = %bb.gw, %bb.gy
  %i.bfs = phi ptr [ %i.bgc, %bb.gy ], [ %i.bfq, %bb.gw ] ; 2 uses
  %i.bft = phi ptr [ %i.bgb, %bb.gy ], [ %i.bfp, %bb.gw ] ; 2 uses
  %.02947.i.i.i225.i = phi i32 [ %.029.i.i.i230.i, %bb.gy ], [ %.02944.i.i.i223.i, %bb.gw ]
  %.02746.i.i.i226.i = phi i32 [ %i.bfy, %bb.gy ], [ 1, %bb.gw ] ; 2 uses
  %.03245.i.i.i227.i = phi ptr [ %spec.select.i.i.i229.i, %bb.gy ], [ null, %bb.gw ] ; 4 uses
  %i.bfu = icmp eq ptr %i.bfs, inttoptr (i64 -8 to ptr)
  br i1 %i.bfu, label %bb.gx, label %bb.gy, !prof !25

bb.gx:                                            ; preds = %.lr.ph.i.i.i224.i
  %.not.i.i.i232.i = icmp eq ptr %.03245.i.i.i227.i, null
  %i.bfv = select i1 %.not.i.i.i232.i, ptr %i.bft, ptr %.03245.i.i.i227.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i

bb.gy:                                            ; preds = %.lr.ph.i.i.i224.i
  %i.bfw = icmp eq ptr %i.bfs, inttoptr (i64 -16 to ptr)
  %i.bfx = icmp eq ptr %.03245.i.i.i227.i, null
  %or.cond.not.i.i.i228.i = select i1 %i.bfw, i1 %i.bfx, i1 false
  %spec.select.i.i.i229.i = select i1 %or.cond.not.i.i.i228.i, ptr %i.bft, ptr %.03245.i.i.i227.i
  %i.bfy = add i32 %.02746.i.i.i226.i, 1
  %i.bfz = add i32 %.02746.i.i.i226.i, %.02947.i.i.i225.i
  %.029.i.i.i230.i = and i32 %i.bfz, %i.bfn       ; 2 uses
  %i.bga = zext i32 %.029.i.i.i230.i to i64
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %i.bga ; 2 uses
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bgd = icmp eq ptr %i.bau, %i.bgc
  br i1 %i.bgd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i: ; preds = %bb.gx, %bb.gv
  %.sink.i.i.i233.i = phi ptr [ %i.bfv, %bb.gx ], [ null, %bb.gv ]
  %i.bge = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208 ; 3 uses
  %i.bgf = shl i32 %i.bge, 2
  %i.bgg = add i32 %i.bgf, 4
  %i.bgh = mul i32 %i.bfg, 3
  %.not.i.i4.i234.i = icmp ult i32 %i.bgg, %i.bgh
  br i1 %.not.i.i4.i234.i, label %bb.ha, label %bb.gz, !prof !25

bb.gz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgi = shl i32 %i.bfg, 1
  br label %.sink.split.i.i.i235.i

bb.ha:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgj = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %.neg.i.i.i239.i = xor i32 %i.bge, -1
  %.neg12.i.i.i240.i = add i32 %i.bfg, %.neg.i.i.i239.i
  %i.bgk = sub i32 %.neg12.i.i.i240.i, %i.bgj
  %i.bgl = lshr i32 %i.bfg, 3
  %.not10.i.i.i241.i = icmp ugt i32 %i.bgk, %i.bgl
  br i1 %.not10.i.i.i241.i, label %bb.he, label %.sink.split.i.i.i235.i, !prof !25

.sink.split.i.i.i235.i:                           ; preds = %bb.ha, %bb.gz
  %.sink.i.i5.i236.i = phi i32 [ %i.bgi, %bb.gz ], [ %i.bfg, %bb.ha ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %.sink.i.i5.i236.i), !noalias !208
  %i.bgm = load ptr, ptr %3, align 8, !tbaa !205, !noalias !208 ; 2 uses
  %i.bgn = load i32, ptr %i.aov, align 8, !tbaa !213, !noalias !208 ; 2 uses
  %i.bgo = icmp eq i32 %i.bgn, 0
  br i1 %i.bgo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.hb

bb.hb:                                            ; preds = %.sink.split.i.i.i235.i
  %i.bgp = ptrtoint ptr %i.bau to i64
  %i.bgq = trunc i64 %i.bgp to i32                ; 2 uses
  %i.bgr = lshr i32 %i.bgq, 4
  %i.bgs = lshr i32 %i.bgq, 9
  %i.bgt = xor i32 %i.bgr, %i.bgs
  %i.bgu = add i32 %i.bgn, -1                     ; 2 uses
  %.02944.i.i245.i = and i32 %i.bgu, %i.bgt       ; 2 uses
  %i.bgv = zext nneg i32 %.02944.i.i245.i to i64
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr %i.bgm, i64 %i.bgv ; 3 uses
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bgy = icmp eq ptr %i.bau, %i.bgx
  br i1 %i.bgy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !35

.lr.ph.i.i246.i:                                  ; preds = %bb.hb, %bb.hd
  %i.bgz = phi ptr [ %i.bhj, %bb.hd ], [ %i.bgx, %bb.hb ] ; 2 uses
  %i.bha = phi ptr [ %i.bhi, %bb.hd ], [ %i.bgw, %bb.hb ] ; 2 uses
  %.02947.i.i247.i = phi i32 [ %.029.i.i252.i, %bb.hd ], [ %.02944.i.i245.i, %bb.hb ]
  %.02746.i.i248.i = phi i32 [ %i.bhf, %bb.hd ], [ 1, %bb.hb ] ; 2 uses
  %.03245.i.i249.i = phi ptr [ %spec.select.i.i251.i, %bb.hd ], [ null, %bb.hb ] ; 4 uses
  %i.bhb = icmp eq ptr %i.bgz, inttoptr (i64 -8 to ptr)
  br i1 %i.bhb, label %bb.hc, label %bb.hd, !prof !25

bb.hc:                                            ; preds = %.lr.ph.i.i246.i
  %.not.i.i255.i = icmp eq ptr %.03245.i.i249.i, null
  %i.bhc = select i1 %.not.i.i255.i, ptr %i.bha, ptr %.03245.i.i249.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.hd:                                            ; preds = %.lr.ph.i.i246.i
  %i.bhd = icmp eq ptr %i.bgz, inttoptr (i64 -16 to ptr)
  %i.bhe = icmp eq ptr %.03245.i.i249.i, null
  %or.cond.not.i.i250.i = select i1 %i.bhd, i1 %i.bhe, i1 false
  %spec.select.i.i251.i = select i1 %or.cond.not.i.i250.i, ptr %i.bha, ptr %.03245.i.i249.i
  %i.bhf = add i32 %.02746.i.i248.i, 1
  %i.bhg = add i32 %.02746.i.i248.i, %.02947.i.i247.i
  %.029.i.i252.i = and i32 %i.bhg, %i.bgu         ; 2 uses
  %i.bhh = zext i32 %.029.i.i252.i to i64
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bgm, i64 %i.bhh ; 3 uses
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bhk = icmp eq ptr %i.bau, %i.bhj
  br i1 %i.bhk, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %.sink.split.i.i.i235.i
  %.sink.i.i253.i = phi ptr [ %i.bhc, %bb.hc ], [ null, %.sink.split.i.i.i235.i ], [ %i.bgw, %bb.hb ], [ %i.bhi, %bb.hd ]
  %.pre.i.i237.i = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  br label %bb.he

bb.he:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.ha
  %i.bhl = phi ptr [ %.sink.i.i253.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %.sink.i.i.i233.i, %bb.ha ] ; 2 uses
  %i.bhm = phi i32 [ %.pre.i.i237.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %i.bge, %bb.ha ]
  %i.bhn = add i32 %i.bhm, 1
  store i32 %i.bhn, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  %i.bho = load ptr, ptr %i.bhl, align 8, !tbaa !172, !noalias !208
  %i.bhp = icmp eq ptr %i.bho, inttoptr (i64 -8 to ptr)
  br i1 %i.bhp, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bhq = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %i.bhr = add i32 %i.bhq, -1
  store i32 %i.bhr, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  store ptr %i.bau, ptr %i.bhl, align 8, !tbaa !172, !noalias !208
  %i.bhs = load i32, ptr %i.aog, align 8, !tbaa !22 ; 2 uses
  %i.bht = load i32, ptr %i.aoh, align 4, !tbaa !23
  %.not.i.i124.i = icmp ult i32 %i.bhs, %i.bht
  br i1 %.not.i.i124.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, label %bb.hh, !prof !25

bb.hh:                                            ; preds = %bb.hg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(529) %4, ptr noundef nonnull %i.aof, i64 noundef 0, i64 noundef 16) #10
  %.pre.i.i125.i = load i32, ptr %i.aog, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i: ; preds = %bb.hh, %bb.hg
  %i.bhu = phi i32 [ %.pre.i.i125.i, %bb.hh ], [ %i.bhs, %bb.hg ]
  %i.bhv = load ptr, ptr %4, align 8, !tbaa !21
  %i.bhw = zext i32 %i.bhu to i64
  %i.bhx = getelementptr inbounds nuw [16 x i8], ptr %i.bhv, i64 %i.bhw ; 2 uses
  store ptr %.0.i118.i, ptr %i.bhx, align 1
  %.sroa.4283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  store i32 %i.bej, ptr %.sroa.4283.0..sroa_idx.i, align 1
  %i.bhy = load i32, ptr %i.aog, align 8, !tbaa !22
  %i.bhz = add i32 %i.bhy, 1                      ; 3 uses
  store i32 %i.bhz, ptr %i.aog, align 8, !tbaa !22
  %i.bia = load ptr, ptr %4, align 8, !tbaa !21   ; 4 uses
  %i.bib = zext i32 %i.bhz to i64                 ; 2 uses
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %i.bia, i64 %i.bib ; 2 uses
  %i.bid = getelementptr inbounds i8, ptr %i.bic, i64 -16
  %.sroa.01.0.copyload.i.i127.i = load ptr, ptr %i.bid, align 8
  %.sroa.4.0..sroa_idx.i.i128.i = getelementptr inbounds i8, ptr %i.bic, i64 -8
  %.sroa.4.0.copyload.i.i129.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i128.i, align 8 ; 2 uses
  %i.bie = add nsw i64 %i.bib, -1                 ; 2 uses
  %i.bif = icmp ugt i32 %i.bhz, 1
  br i1 %i.bif, label %.lr.ph.i.i.i131.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

.lr.ph.i.i.i131.i:                                ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, %bb.hi
  %.01317.i.i.i132.i = phi i64 [ %.018.i56.i.i134.i, %bb.hi ], [ %i.bie, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ] ; 3 uses
  %.018.in.i.i.i133.i = add nsw i64 %.01317.i.i.i132.i, -1
  %.018.i56.i.i134.i = lshr i64 %.018.in.i.i.i133.i, 1 ; 3 uses
  %i.big = getelementptr inbounds nuw [16 x i8], ptr %i.bia, i64 %.018.i56.i.i134.i ; 2 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !184 ; 2 uses
  %i.bij = icmp ult i32 %i.bii, %.sroa.4.0.copyload.i.i129.i
  br i1 %i.bij, label %bb.hi, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

bb.hi:                                            ; preds = %.lr.ph.i.i.i131.i
  %i.bik = getelementptr inbounds [16 x i8], ptr %i.bia, i64 %.01317.i.i.i132.i ; 2 uses
  %i.bil = load ptr, ptr %i.big, align 8, !tbaa !24
  store ptr %i.bil, ptr %i.bik, align 8, !tbaa !186
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  store i32 %i.bii, ptr %i.bim, align 8, !tbaa !184
  %.not.i2.i135.i = icmp eq i64 %.018.i56.i.i134.i, 0
  br i1 %.not.i2.i135.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, label %.lr.ph.i.i.i131.i, !llvm.loop !187

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i: ; preds = %bb.hi, %.lr.ph.i.i.i131.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i
  %.013.lcssa.i.i.i130.i = phi i64 [ %i.bie, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ], [ 0, %bb.hi ], [ %.01317.i.i.i132.i, %.lr.ph.i.i.i131.i ]
  %i.bin = getelementptr inbounds [16 x i8], ptr %i.bia, i64 %.013.lcssa.i.i.i130.i ; 2 uses
  store ptr %.sroa.01.0.copyload.i.i127.i, ptr %i.bin, align 8, !tbaa !186
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 8
  store i32 %.sroa.4.0.copyload.i.i129.i, ptr %i.bio, align 8, !tbaa !184
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i: ; preds = %.lr.ph.i.i.i149, %bb.gy, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, %bb.gw, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i
  %i.bip = add nuw nsw i32 %.sroa.4304.0367.i, 1  ; 2 uses
  %.not333.i = icmp eq i32 %i.bip, %i.bap
  br i1 %.not333.i, label %._crit_edge369.i, label %.lr.ph368.i

._crit_edge374.i:                                 ; preds = %bb.ho, %._crit_edge369.i
  %.pr.i122 = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %.not.i102.i = icmp eq i32 %.pr.i122, 0
  br i1 %.not.i102.i, label %.loopexit.i123, label %.lr.ph376.i, !llvm.loop !217

.lr.ph373.i:                                      ; preds = %._crit_edge369.i, %bb.ho
  %.sroa.0279.0371.i = phi ptr [ %i.bjz, %bb.ho ], [ %i.bar, %._crit_edge369.i ] ; 3 uses
  %i.biq = load ptr, ptr %.sroa.0279.0371.i, align 8, !tbaa !24 ; 3 uses
  %i.bir = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 6 uses
  %i.bis = load ptr, ptr %5, align 8, !tbaa !177  ; 3 uses
  %i.bit = icmp eq ptr %i.bir, %i.bis
  br i1 %i.bit, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %.lr.ph373.i
  %i.biu = load i32, ptr %i.aoq, align 4, !tbaa !181 ; 4 uses
  %i.biv = zext i32 %i.biu to i64                 ; 2 uses
  %.idx.i.i.i.i147 = shl nuw nsw i64 %i.biv, 3
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bis, i64 %.idx.i.i.i.i147
  %.not18.i.i.i.i = icmp eq i32 %i.biu, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i

.lr.ph.i.i.i138.i:                                ; preds = %bb.hj, %bb.hk
  %.01319.i.i.i.i = phi ptr [ %i.biz, %bb.hk ], [ %i.bis, %bb.hj ] ; 3 uses
  %i.bix = load ptr, ptr %.01319.i.i.i.i, align 8, !tbaa !203
  %i.biy = icmp eq ptr %i.bix, %i.biq
  br i1 %i.biy, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i.i.i138.i
  %i.biz = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i139.i = icmp eq ptr %i.biz, %i.biw
  br i1 %.not.i.i.i139.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i, !llvm.loop !218

._crit_edge.i.i.i.i:                              ; preds = %bb.hk, %bb.hj
  %i.bja = getelementptr inbounds nuw [8 x i8], ptr %i.bir, i64 %i.biv
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hl:                                            ; preds = %.lr.ph373.i
  %i.bjb = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.biq) #10 ; 2 uses
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !203
  %i.bjd = icmp eq ptr %i.bjc, %i.biq
  %.pre.i.i137.i121 = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %5, align 8, !tbaa !177 ; 3 uses
  br i1 %i.bjd, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.hm

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.hl
  %.pre5.i.i.i = load i32, ptr %i.aoq, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.bje = icmp eq ptr %.pre.i.i137.i121, %.pre4.i.i.i
  %i.bjf = load i32, ptr %i.aoq, align 4          ; 2 uses
  %i.bjg = load i32, ptr %i.aop, align 8
  %.v.v.i14.i.i.i.i = select i1 %i.bje, i32 %i.bjf, i32 %i.bjg
  %.v.i15.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i to i64
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i137.i121, i64 %.v.i15.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i: ; preds = %.lr.ph.i.i.i138.i, %bb.hm, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, %._crit_edge.i.i.i.i
  %i.bji = phi ptr [ %i.bir, %._crit_edge.i.i.i.i ], [ %.pre4.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre4.i.i.i, %bb.hm ], [ %i.bir, %.lr.ph.i.i.i138.i ]
  %i.bjj = phi i32 [ %i.biu, %._crit_edge.i.i.i.i ], [ %.pre5.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjf, %bb.hm ], [ %i.biu, %.lr.ph.i.i.i138.i ]
  %i.bjk = phi ptr [ %i.bir, %._crit_edge.i.i.i.i ], [ %.pre.i.i137.i121, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre.i.i137.i121, %bb.hm ], [ %i.bir, %.lr.ph.i.i.i138.i ] ; 2 uses
  %.2.i.i.i.i = phi ptr [ %i.bja, %._crit_edge.i.i.i.i ], [ %i.bjb, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjh, %bb.hm ], [ %.01319.i.i.i.i, %.lr.ph.i.i.i138.i ] ; 2 uses
  %i.bjl = icmp eq ptr %i.bjk, %i.bji
  %i.bjm = load i32, ptr %i.aop, align 8
  %.v.v.i4.i.i.i.i = select i1 %i.bjl, i32 %i.bjj, i32 %i.bjm
  %.v.i5.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i to i64
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.bjk, i64 %.v.i5.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i = icmp eq ptr %.2.i.i.i.i, %i.bjn
  br i1 %.not3.i4.i.i6.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i:                           ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, %.critedge2.i7.i.i9.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi ptr [ %i.bjp, %.critedge2.i7.i.i9.i.i.i.i ], [ %.2.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i ] ; 3 uses
  %i.bjo = load ptr, ptr %.sroa.0.3.i.i.i.i, align 8, !tbaa !203
  %switch.i6.i.i8.i.i.i.i = icmp ugt ptr %i.bjo, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i

.critedge2.i7.i.i9.i.i.i.i:                       ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i = icmp eq ptr %i.bjp, %i.bjn
  br i1 %.not.i8.i.i10.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i, !llvm.loop !219

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %.not335.i = icmp eq ptr %.sroa.0.3.i.i.i.i, %i.bjn
  br i1 %.not335.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %bb.ho

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
  %i.bjq = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %i.bjr = load i32, ptr %i.aou, align 4, !tbaa !23
  %.not.i140.i = icmp ult i32 %i.bjq, %i.bjr
  br i1 %.not.i140.i, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, label %bb.hn, !prof !25

bb.hn:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aos, i64 noundef 0, i64 noundef 8) #10
  %.pre.i141.i = load i32, ptr %i.aot, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i: ; preds = %bb.hn, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  %i.bjs = phi i32 [ %.pre.i141.i, %bb.hn ], [ %i.bjq, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i ]
  %i.bjt = load ptr, ptr %6, align 8, !tbaa !21
  %i.bju = zext i32 %i.bjs to i64
  %i.bjv = getelementptr inbounds nuw [8 x i8], ptr %i.bjt, i64 %i.bju
  %i.bjw = load i64, ptr %.sroa.0279.0371.i, align 8
  store i64 %i.bjw, ptr %i.bjv, align 1
  %i.bjx = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.bjy = add i32 %i.bjx, 1
  store i32 %i.bjy, ptr %i.aot, align 8, !tbaa !22
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i
  %i.bjz = getelementptr inbounds nuw i8, ptr %.sroa.0279.0371.i, i64 8 ; 2 uses
  %.not334.i = icmp eq ptr %i.bjz, %i.bat
  br i1 %.not334.i, label %._crit_edge374.i, label %.lr.ph373.i

._crit_edge380.i:                                 ; preds = %.loopexit.i123, %._crit_edge.i114
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bka = getelementptr inbounds nuw i8, ptr %i.ass, i64 56
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !113
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 72
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !43
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 56
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !220
  store ptr %i.bkf, ptr %8, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoy, i8 0, i64 32, i1 false)
  %i.bkg = load i32, ptr %i.aow, align 8, !tbaa !215
  %i.bkh = icmp eq i32 %i.bkg, 0
  %i.bki = load ptr, ptr %3, align 8, !tbaa !205  ; 5 uses
  %i.bkj = load i32, ptr %i.aov, align 8, !tbaa !213 ; 2 uses
  %i.bkk = zext i32 %i.bkj to i64                 ; 3 uses
  br i1 %i.bkh, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %._crit_edge380.i
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.bki, i64 %i.bkk ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.hq:                                            ; preds = %._crit_edge380.i
  %.idx.i.i143.i = shl nuw nsw i64 %i.bkk, 3
  %i.bkm = getelementptr i8, ptr %i.bki, i64 %.idx.i.i143.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %i.bkj, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.hq, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.bko, %.critedge2.i8.i14.i6.i.i.i ], [ %i.bki, %bb.hq ] ; 3 uses
  %i.bkn = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !172
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.bkn to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.bko = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.bko, %i.bkm
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.hq, %bb.hp
  %.pn14.i.i.i = phi ptr [ %i.bkl, %bb.hp ], [ %i.bki, %bb.hq ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkm, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.bkl, %bb.hp ], [ %i.bkm, %bb.hq ], [ %i.bkm, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkm, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bki, i64 %i.bkk ; 2 uses
  %.not336381.i = icmp eq ptr %.pn14.i.i.i, %i.bkp
  br i1 %.not336381.i, label %._crit_edge384.i, label %.lr.ph383.i

._crit_edge384.i:                                 ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store ptr %i.apc, ptr %10, align 8, !tbaa !21
  store i32 0, ptr %i.apd, align 8, !tbaa !22
  store i32 16, ptr %i.ape, align 4, !tbaa !23
  %i.bkq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ast) #10 ; 2 uses
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !21 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8
  %i.bkt = load i32, ptr %i.bks, align 8, !tbaa !22 ; 2 uses
  %i.bku = zext i32 %i.bkt to i64
  %.idx407.i = shl nuw nsw i64 %i.bku, 3
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %.idx407.i
  %.not89385.i = icmp eq i32 %i.bkt, 0
  br i1 %.not89385.i, label %._crit_edge389.i, label %.lr.ph388.i

.lr.ph383.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.0274.0382.i = phi ptr [ %.sroa.0274.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.bkw = load ptr, ptr %.sroa.0274.0382.i, align 8, !tbaa !172 ; 8 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 64
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !40
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.bky) #10
  %i.bkz = call noundef ptr @_ZN6hermes9IRBuilder13createPhiInstEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #10
  %i.bla = load ptr, ptr %7, align 8, !tbaa !247  ; 2 uses
  %i.blb = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 7 uses
  %i.blc = icmp eq i32 %i.blb, 0
  br i1 %i.blc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph383.i
  %i.bld = ptrtoint ptr %i.bkw to i64
  %i.ble = trunc i64 %i.bld to i32                ; 2 uses
  %i.blf = lshr i32 %i.ble, 4
end_hunk_0
