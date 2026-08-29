Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZNK4llvm17X86TargetLowering21EmitSjLjDispatchBlockERNS_12MachineInstrEPNS_17MachineBasicBlockE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br label %.loopexit511

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit
  %i.adg = phi ptr [ %i.aeh, %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit ], [ %.pre598, %.lr.ph564.preheader ] ; 2 uses
  %i.adh = phi i16 [ %i.ael, %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit ], [ %i.zu, %.lr.ph564.preheader ]
  %.0213563 = phi i32 [ %i.aei, %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit ], [ 0, %.lr.ph564.preheader ]
  %i.adi = zext i16 %i.adh to i32                 ; 3 uses
  %i.adj = load ptr, ptr %i.wb, align 8, !tbaa !2611, !noalias !2586 ; 2 uses
  %i.adk = load i32, ptr %i.wc, align 4, !tbaa !2591, !noalias !2586 ; 2 uses
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph564
  %i.adm = add i32 %i.adk, -1                     ; 2 uses
  %i.adn = mul nuw nsw i32 %i.adi, 37
  %.019.i.i.i = and i32 %i.adm, %i.adn            ; 3 uses
  %i.ado = zext nneg i32 %.019.i.i.i to i64       ; 2 uses
  %i.adp = lshr i64 %i.ado, 5
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !189
  %i.ads = and i32 %.019.i.i.i, 31
  %i.adt = lshr i32 %i.adr, %i.ads
  %i.adu = trunc i32 %i.adt to i1
  br i1 %i.adu, label %.lr.ph.i.i.i, label %.loopexit, !prof !1971

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.adv = add nuw i32 %.020.i.i.i, 1
  %.0.i.i.i = and i32 %i.adv, %i.adm              ; 3 uses
  %i.adw = zext i32 %.0.i.i.i to i64              ; 2 uses
  %i.adx = lshr i64 %i.adw, 5
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !189
  %i.aea = and i32 %.0.i.i.i, 31
  %i.aeb = lshr i32 %i.adz, %i.aea
  %i.aec = trunc i32 %i.aeb to i1
  br i1 %i.aec, label %.lr.ph.i.i.i, label %.loopexit, !prof !1972

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %bb.cj
  %i.aed = phi i64 [ %i.adw, %bb.cj ], [ %i.ado, %bb.ci ]
  %.020.i.i.i = phi i32 [ %.0.i.i.i, %bb.cj ], [ %.019.i.i.i, %bb.ci ]
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.aed
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !1973
  %i.aeg = icmp eq i32 %i.aef, %i.adi
  br i1 %i.aeg, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit, label %bb.cj, !prof !632

.loopexit:                                        ; preds = %bb.cj, %.lr.ph564, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr null, ptr %i.we, align 8, !tbaa !1788, !alias.scope !2612
  store i32 %i.adi, ptr %i.wf, align 4, !tbaa !314, !alias.scope !2612
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wg, i8 0, i64 16, i1 false), !alias.scope !2612
  store i32 117440512, ptr %3, align 8, !alias.scope !2612
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0363.0556, ptr noundef nonnull align 8 dereferenceable(1065) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %.pre597 = load ptr, ptr %49, align 8, !tbaa !2583, !noalias !2586
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit

_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %i.aeh = phi ptr [ %.pre597, %.loopexit ], [ %i.adg, %.lr.ph.i.i.i ] ; 2 uses
  %i.aei = add i32 %.0213563, 1                   ; 2 uses
  %i.aej = zext i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.vn, i64 %i.aej
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !294 ; 2 uses
  %.not225 = icmp eq i16 %i.ael, 0
  br i1 %.not225, label %._crit_edge565, label %.lr.ph564, !llvm.loop !2615

.critedge:                                        ; preds = %.split, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit
  %.0.copyload.i.i.i.i.i.i.i.i.i317 = load i64, ptr %.sroa.0363.0556, align 8
  %i.aem = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i317, -8
  %i.aen = inttoptr i64 %i.aem to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aen) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aen, align 8
  %i.aeo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i318 = icmp eq i64 %i.aeo, 0
  br i1 %.not.i.i.i.i318, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.critedge
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 44
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !1782
  %i.aer = and i32 %i.aeq, 4
  %.not45.i.i.i.i = icmp eq i32 %i.aer, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.aet, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.aen, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.aes = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.aet = inttoptr i64 %i.aes to ptr             ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 44
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !1782
  %i.aew = and i32 %i.aev, 4
  %.not4.i.i.i.i = icmp eq i32 %i.aew, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !2582

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %.critedge, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.aen, %.critedge ], [ %i.aen, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.aet, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 2 uses
  %.not508 = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.yd
  br i1 %.not508, label %.loopexit511, label %.lr.ph557

.loopexit511:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit
  %i.aex = load ptr, ptr %48, align 8, !tbaa !26  ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.vy
  br i1 %i.aey, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %.loopexit511
  call void @free(ptr noundef %i.aex) #38
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit: ; preds = %.loopexit511, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0371.0567, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.aez, %i.vt
  br i1 %.not1.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_17MachineBasicBlockEEppEv.exit, label %.lr.ph.i.i.i319

.lr.ph.i.i.i319:                                  ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit, %bb.cl
  %.sroa.0371.1 = phi ptr [ %i.afc, %bb.cl ], [ %i.aez, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit ] ; 3 uses
  %i.afa = load ptr, ptr %.sroa.0371.1, align 8, !tbaa !830
  %i.afb = icmp eq ptr %i.afa, inttoptr (i64 -1 to ptr)
  br i1 %i.afb, label %bb.cl, label %_ZN4llvm19SmallPtrSetIteratorIPNS_17MachineBasicBlockEEppEv.exit

bb.cl:                                            ; preds = %.lr.ph.i.i.i319
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.0371.1, i64 8 ; 3 uses
  %.not.i.i.i320 = icmp eq ptr %i.afc, %i.vt
  br i1 %.not.i.i.i320, label %_ZN4llvm19SmallPtrSetIteratorIPNS_17MachineBasicBlockEEppEv.exit, label %.lr.ph.i.i.i319, !llvm.loop !2571

_ZN4llvm19SmallPtrSetIteratorIPNS_17MachineBasicBlockEEppEv.exit: ; preds = %.lr.ph.i.i.i319, %bb.cl, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit
  %.sroa.0371.2 = phi ptr [ %i.aez, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit ], [ %.sroa.0371.1, %.lr.ph.i.i.i319 ], [ %i.afc, %bb.cl ] ; 2 uses
  %.not505 = icmp eq ptr %.sroa.0371.2, %i.vx
  br i1 %.not505, label %._crit_edge569, label %bb.bx

._crit_edge574:                                   ; preds = %.lr.ph573.prol.loopexit, %.lr.ph573, %._crit_edge569
  %i.afd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #38 ; 0 uses
  %i.afe = load ptr, ptr %47, align 8, !tbaa !26  ; 2 uses
  %i.aff = icmp eq ptr %i.afe, %i.vj
  br i1 %i.aff, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj64EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge574
  call void @free(ptr noundef %i.afe) #38
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj64EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj64EED2Ev.exit: ; preds = %._crit_edge574, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  %i.afg = load i8, ptr %i.vg, align 8, !tbaa !19, !range !23, !noundef !24
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj64EED2Ev.exit
  %i.afi = load ptr, ptr %46, align 8, !tbaa !25
  call void @free(ptr noundef %i.afi) #38
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj64EED2Ev.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  %i.afj = load i8, ptr %i.cg, align 8, !tbaa !19, !range !23, !noundef !24
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit321, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.afl = load ptr, ptr %44, align 8, !tbaa !25
  call void @free(ptr noundef %i.afl) #38
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit321

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit321:        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.afm = load ptr, ptr %43, align 8, !tbaa !2458 ; 3 uses
  %.not.i.i.i322 = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i322, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit321
  %i.afn = load ptr, ptr %i.ch, align 8, !tbaa !2460
  %i.afo = ptrtoint ptr %i.afn to i64
  %i.afp = ptrtoint ptr %i.afm to i64
  %i.afq = sub i64 %i.afo, %i.afp
  call void @_ZdlPvm(ptr noundef nonnull %i.afm, i64 noundef %i.afq) #41
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit321, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  %i.afr = getelementptr inbounds nuw i8, ptr %42, i64 20 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !2469 ; 2 uses
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit
  %i.afu = load ptr, ptr %42, align 8, !tbaa !2462
  %i.afv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !2468
  %i.afx = zext i32 %i.afs to i64
  %i.afy = add nuw nsw i64 %i.afx, 31
  %i.afz = lshr i64 %i.afy, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i324, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i324 ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv.i.i
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !189 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.agb, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i324, label %.lr.ph.i.i323

.lr.ph.i.i323:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.agc = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.cq

bb.cq:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i323
  %.0.i3.i.i = phi i32 [ %i.agb, %.lr.ph.i.i323 ], [ %i.agm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.agd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.age = or disjoint i32 %i.agd, %i.agc
  %i.agf = zext i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw [40 x i8], ptr %i.afu, i64 %i.agf ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !26 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  %i.agk = icmp eq ptr %i.agi, %i.agj
  br i1 %i.agk, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @free(ptr noundef %i.agi) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.cr, %bb.cq
  %i.agl = add i32 %.0.i3.i.i, -1
  %i.agm = and i32 %i.agl, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.agm, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i324, label %bb.cq, !llvm.loop !2616

._crit_edge.i.i324:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i325 = icmp eq i64 %indvars.iv.next.i.i, %i.afz
  br i1 %.not.i.i.i325, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2617

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i324
  %.pr.i = load i32, ptr %i.afr, align 4, !tbaa !2469 ; 2 uses
  %i.agn = icmp eq i32 %.pr.i, 0
  br i1 %i.agn, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i
  %i.ago = load ptr, ptr %42, align 8, !tbaa !2462
  %i.agp = zext i32 %.pr.i to i64                 ; 2 uses
  %i.agq = mul nuw nsw i64 %i.agp, 40
  %i.agr = add nuw nsw i64 %i.agp, 31
  %i.ags = lshr i64 %i.agr, 3
  %i.agt = and i64 %i.ags, 1073741820
  %i.agu = add nuw nsw i64 %i.agt, %i.agq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ago, i64 noundef %i.agu, i64 noundef 8) #38
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  ret ptr %2

.lr.ph573:                                        ; preds = %.lr.ph573.prol.loopexit, %.lr.ph573
  %.0571 = phi ptr [ %i.ahs, %.lr.ph573 ], [ %.0571.unr, %.lr.ph573.prol.loopexit ] ; 9 uses
  %i.agv = load ptr, ptr %.0571, align 8, !tbaa !2478
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 216
  store i8 0, ptr %i.agw, align 8, !tbaa !2159
  %i.agx = getelementptr inbounds nuw i8, ptr %.0571, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !2478
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 216
  store i8 0, ptr %i.agz, align 8, !tbaa !2159
  %i.aha = getelementptr inbounds nuw i8, ptr %.0571, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !2478
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 216
  store i8 0, ptr %i.ahc, align 8, !tbaa !2159
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0571, i64 24
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !2478
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 216
  store i8 0, ptr %i.ahf, align 8, !tbaa !2159
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0571, i64 32
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !2478
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 216
  store i8 0, ptr %i.ahi, align 8, !tbaa !2159
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0571, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !2478
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 216
  store i8 0, ptr %i.ahl, align 8, !tbaa !2159
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0571, i64 48
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !2478
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 216
  store i8 0, ptr %i.aho, align 8, !tbaa !2159
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0571, i64 56
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !2478
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 216
  store i8 0, ptr %i.ahr, align 8, !tbaa !2159
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0571, i64 64 ; 2 uses
  %.not222.7 = icmp eq ptr %i.ahs, %i.xb
  br i1 %.not222.7, label %._crit_edge574, label %.lr.ph573
}

declare noundef i32 @_ZNK4llvm17X86TargetLowering20getJumpTableEncodingEv(ptr noundef nonnull align 8 dereferenceable(518472)) unnamed_addr #4

declare noundef ptr @_ZN4llvm15MachineFunction24getOrCreateJumpTableInfoEj(ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm20MachineJumpTableInfo20createJumpTableIndexERKSt6vectorIPNS_17MachineBasicBlockESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr noundef nonnull align 8 dereferenceable(520)) local_unnamed_addr #4

declare void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm17X86TargetLowering22emitPatchableEventCallERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef returned %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183, !nonnull !24, !align !184 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !735
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !314  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 7
  br i1 %i.h, label %bb.b, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.g, 7
  %.not.i.i = icmp eq i64 %i.i, 3
  %i.j = and i64 %i.g, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 14 uses
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1765, !range !23, !noundef !24
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.k, align 8, !tbaa !1767
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1768, !range !23, !noundef !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !1769, !range !23, !noundef !24
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.v, %i.t
  %i.w = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1770, !range !23, !noundef !24
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1771
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.i.ph.ph = phi ptr [ %i.ac, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !1775, !range !23, !noundef !24
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !1767
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !1768, !range !23, !noundef !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1769, !range !23, !noundef !24
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.an, %i.al
  %i.ao = zext nneg i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1770, !range !23, !noundef !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !1765, !range !23, !noundef !24
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.at, %i.ar
  %i.au = zext nneg i8 %narrow.i.i.i.i.i.i.i.i to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !1776, !range !23, !noundef !24
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ay
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ba, 7
  %i.bc = and i64 %i.bb, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1305
  br label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit: ; preds = %bb.b, %bb.a, %bb.e, %bb.f
  %.1.i.i43 = phi ptr [ %.1.i.i.ph.ph, %bb.e ], [ null, %bb.a ], [ %.1.i.i.ph.ph, %bb.f ], [ null, %bb.b ] ; 3 uses
  %.1.i4.i = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %i.be, %bb.f ], [ null, %bb.b ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1720 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !595
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 65
  store i8 1, ptr %i.bj, align 1, !tbaa !973
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !2618
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1784
  %i.bo = zext i32 %i.bl to i64
  %i.bp = sub nsw i64 0, %i.bo
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3886
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !3887
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3886
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3883
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3877
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !189
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !189
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !3887
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !3887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !189
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !189
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3877, !noalias !3888 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3883, !noalias !3888 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3884, !noalias !3888 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !189    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !189
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !1971

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !3885

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !189
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3886
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3884
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3877
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3883
  store i32 0, ptr %i.p, align 16, !tbaa !3887
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !830
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3886
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !830
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !830
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !189 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !189
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !189
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !189
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #38
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3877   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3883
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3884 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3883 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3877
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3884
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !189  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !189
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3893

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !189
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !189
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !189
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3894

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3895

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3884
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3887
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !3887
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #38
  store i32 0, ptr %i.d, align 4, !tbaa !3884
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(6) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not11.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !3896   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3896 ; 2 uses
  %i.i = icmp ult i32 %i.h, %i.d
  br i1 %i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.d, %i.h
  br i1 %i.j, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.l = load i16, ptr %i.k, align 4, !tbaa !3898
  %i.m = icmp ult i16 %i.l, %i.f
  br i1 %i.m, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i, %bb.b
  br label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.c ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i ] ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !3899 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !3900

_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3896 ; 2 uses
  %i.r = icmp ult i32 %i.d, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ult i32 %i.q, %i.d
  br i1 %i.s, label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.u = load i16, ptr %i.t, align 4, !tbaa !3898
  %i.v = icmp ult i16 %i.f, %i.u
  br i1 %i.v, label %.critedge, label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.d, %bb.a, %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit
  %.08.lcssa.i.i.i14 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit ], [ %.19.i.i.i, %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit ], [ %.19.i.i.i, %bb.d ]
  %i.w = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i16 0, ptr %i.z, align 4, !tbaa !3901
  %i.aa = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(6) %i.x) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.ab, null
  %i.ad = icmp eq ptr %i.ac, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.x, align 4, !tbaa !3896 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3896 ; 2 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i32 %i.ag, %i.af
  br i1 %i.ai, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !3898
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.am = load i16, ptr %i.al, align 4, !tbaa !3898
  %i.an = icmp ult i16 %i.ak, %i.am
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = phi i1 [ %i.an, %bb.i ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ao, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !744
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !744
  br label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.j:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 48) #41
  br label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.e, %bb.j, %.thread.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit
end_hunk_1
begin_hunk_2_@_ZL20matchScalarReductionN4llvm7SDValueENS_3ISD8NodeTypeERNS_15SmallVectorImplIS0_EEPNS3_INS_5APIntEEE:.lr.ph
  %spec.select.i.i.i.i.i = and i1 %i.gb, %i.gc
  br i1 %spec.select.i.i.i.i.i, label %bb.ae, label %.critedge.i.i.i, !prof !666

bb.ae:                                            ; preds = %bb.ad
  %i.gd = ptrtoint ptr %i.fv to i64
  %i.ge = ptrtoint ptr %.pre3.i to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.fy)
  %i.gg = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.gf
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.fy)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !26
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i: ; preds = %.critedge.i.i.i, %bb.ae, %bb.ac
  %i.gi = phi ptr [ %.pre3.i, %bb.ac ], [ %i.gg, %bb.ae ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %i.fv, %bb.ac ], [ %i.gh, %bb.ae ], [ %i.fv, %.critedge.i.i.i ] ; 3 uses
  %i.gj = load i32, ptr %i.fs, align 8, !tbaa !630
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gk ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !645 ; 2 uses
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !645
  %i.gp = icmp ult i32 %i.go, 65
  br i1 %i.gp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  %i.gq = load i64, ptr %.016.i.i.i, align 8, !tbaa !314
  store i64 %i.gq, ptr %i.gl, align 8, !tbaa !314
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backERKS1_.exit

bb.ag:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.gl, ptr noundef nonnull align 8 dereferenceable(12) %.016.i.i.i) #38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backERKS1_.exit: ; preds = %bb.af, %bb.ag
  %i.gr = load i32, ptr %i.fs, align 8, !tbaa !630
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.fs, align 8, !tbaa !630
  %i.gt = getelementptr inbounds nuw i8, ptr %.053159, i64 16 ; 2 uses
  %.not69 = icmp eq ptr %i.gt, %i.fr
  br i1 %.not69, label %.critedge73, label %bb.ac

bb.ah:                                            ; preds = %.critedge71
  %i.gu = load ptr, ptr %5, align 8, !tbaa !3993, !noalias !4029
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !4005, !noalias !4029 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4006, !noalias !4029 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !4008, !noalias !4029
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = zext i32 %i.gy to i64                   ; 4 uses
  %.idx224 = shl nuw nsw i64 %i.hc, 5             ; 2 uses
  %.not.i.not.i.i94 = icmp eq i32 %i.gy, 0
  %or.cond = select i1 %i.hb, i1 true, i1 %.not.i.not.i.i94
  br i1 %or.cond, label %.critedge73, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hd = add nuw nsw i64 %i.hc, 31
  %i.he = lshr i64 %i.hd, 5                       ; 2 uses
  %i.hf = load i32, ptr %i.gw, align 4, !tbaa !189, !noalias !4032 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i.i.i100.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103

.lr.ph.i.i.i100.preheader:                        ; preds = %bb.ai
  %i.hh = icmp eq i64 %i.he, 1
  br i1 %i.hh, label %.critedge73, label %.lr.ph14

.lr.ph.i.i.i100:                                  ; preds = %.lr.ph14
  %i.hi = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %i.hj = icmp eq i64 %i.hi, %i.he
  br i1 %i.hj, label %.critedge73, label %.lr.ph14, !llvm.loop !4014

.lr.ph14:                                         ; preds = %.lr.ph.i.i.i100.preheader, %.lr.ph.i.i.i100
  %i.hk = phi i64 [ %i.hi, %.lr.ph.i.i.i100 ], [ 1, %.lr.ph.i.i.i100.preheader ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !189, !noalias !4032 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i.i.i100, label %._crit_edge.i.loopexit.i.i102, !llvm.loop !4014

._crit_edge.i.loopexit.i.i102:                    ; preds = %.lr.ph14
  %i.ho = shl i64 %i.hk, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103: ; preds = %bb.ai, %._crit_edge.i.loopexit.i.i102
  %.012.lcssa.i.i.i96 = phi i64 [ 0, %bb.ai ], [ %i.ho, %._crit_edge.i.loopexit.i.i102 ]
  %.0.lcssa.i.i.i97 = phi i32 [ %i.hf, %bb.ai ], [ %i.hm, %._crit_edge.i.loopexit.i.i102 ]
  %i.hp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i97, i1 true)
  %i.hq = shl nuw nsw i32 %i.hp, 5
  %.idx223 = zext nneg i32 %i.hq to i64
  %i.hr = or disjoint i64 %.012.lcssa.i.i.i96, %.idx223 ; 2 uses
  %.not143161 = icmp eq i64 %i.hr, %.idx224
  br i1 %.not143161, label %.critedge73, label %.lr.ph163

.lr.ph163:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103
  %i.hs = add nuw nsw i64 %i.hc, 31
  %i.ht = lshr i64 %i.hs, 5                       ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph163, %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.hr, %.lr.ph163 ], [ %i.ja, %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0107.0162 = getelementptr i8, ptr %i.gu, i64 %.pn ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0107.0162, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0107.0162, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !645 ; 4 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hy = icmp ult i32 %i.hw, 65
  br i1 %i.hy, label %_ZNK4llvm5APInt9isAllOnesEv.exit, label %.split

.split:                                           ; preds = %bb.ak
  %i.hz = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.hu) #39
  %i.ia = icmp eq i32 %i.hz, %i.hw
  br i1 %i.ia, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %.critedge73

_ZNK4llvm5APInt9isAllOnesEv.exit:                 ; preds = %bb.ak
  %i.ib = load i64, ptr %i.hu, align 8, !tbaa !314
  %i.ic = sub nuw nsw i32 64, %i.hw
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = lshr i64 -1, %i.id
  %i.if = icmp eq i64 %i.ib, %i.ie
  br i1 %i.if, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %.critedge73

_ZNK4llvm5APInt9isAllOnesEv.exit.thread:          ; preds = %bb.aj, %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit
  %i.ig = add i64 %.pn, 32
  %i.ih = ashr exact i64 %i.ig, 5                 ; 3 uses
  %.not.i.i104 = icmp ult i64 %i.ih, %i.hc
  br i1 %.not.i.i104, label %bb.al, label %.critedge73

bb.al:                                            ; preds = %_ZNK4llvm5APInt9isAllOnesEv.exit.thread
  %i.ii = lshr i64 %i.ih, 5                       ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !189
  %i.il = trunc nuw i64 %i.ih to i32
  %i.im = and i32 %i.il, 31
  %i.in = shl nsw i32 -1, %i.im
  %i.io = and i32 %i.ik, %i.in                    ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.al
  %i.iq = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %i.ir = icmp eq i64 %i.iq, %i.ht
  br i1 %i.ir, label %.critedge73, label %.lr.ph15

.lr.ph.i.i:                                       ; preds = %.lr.ph15
  %i.is = add i64 %i.iu, 1                        ; 2 uses
  %i.it = icmp eq i64 %i.is, %i.ht
  br i1 %i.it, label %.critedge73, label %.lr.ph15, !llvm.loop !4014

.lr.ph15:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.iu = phi i64 [ %i.is, %.lr.ph.i.i ], [ %i.iq, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !189 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit, !llvm.loop !4014

_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit: ; preds = %.lr.ph15, %bb.al
  %.012.lcssa.i.i = phi i64 [ %i.ii, %bb.al ], [ %i.iu, %.lr.ph15 ]
  %.0.lcssa.i.i = phi i32 [ %i.io, %bb.al ], [ %i.iw, %.lr.ph15 ]
  %i.iy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 10
  %i.iz = shl nuw nsw i32 %i.iy, 5
  %.idx225 = zext nneg i32 %i.iz to i64
  %i.ja = or disjoint i64 %.idx.i.i, %.idx225     ; 2 uses
  %.not143 = icmp eq i64 %i.ja, %.idx224
  br i1 %.not143, label %.critedge73, label %bb.aj

.critedge73:                                      ; preds = %bb.h, %bb.x, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit, %bb.g, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backERKS1_.exit, %.lr.ph.i.i.i100, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit, %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i100.preheader, %bb.ah, %bb.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103
  %.9 = phi i1 [ false, %.split ], [ true, %bb.ab ], [ true, %.lr.ph.i.i ], [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit103 ], [ true, %.lr.ph.i.i.i100.preheader ], [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE9push_backERKS1_.exit ], [ true, %bb.ah ], [ true, %.lr.ph.i.i.i100 ], [ true, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread ], [ true, %_ZN4llvm16DenseMapIteratorINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit ], [ false, %_ZNK4llvm5APInt9isAllOnesEv.exit ], [ true, %.lr.ph.i.i.preheader ], [ false, %bb.g ], [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit ], [ false, %bb.x ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4006 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %.critedge73
  %i.je = load ptr, ptr %5, align 8, !tbaa !3993
  %i.jf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !4005
  %i.jh = zext i32 %i.jc to i64
  %i.ji = add nuw nsw i64 %i.jh, 31
  %i.jj = lshr i64 %i.ji, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i106, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i106 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !189 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i106, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.jm = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.am

bb.am:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i105
  %.0.i3.i.i = phi i32 [ %i.jl, %.lr.ph.i.i105 ], [ %i.jy, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.jn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.jo = or disjoint i32 %i.jn, %i.jm
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.je, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !645
  %i.jt = icmp ugt i32 %i.js, 64
  br i1 %i.jt, label %bb.an, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !314 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.jv) #41
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.jx = add i32 %.0.i3.i.i, -1
  %i.jy = and i32 %i.jx, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i106, label %bb.am, !llvm.loop !4035

._crit_edge.i.i106:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.jj
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4036

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i106
  %.pr.i = load i32, ptr %i.jb, align 4, !tbaa !4006 ; 2 uses
  %i.jz = icmp eq i32 %.pr.i, 0
  br i1 %i.jz, label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i
  %i.ka = load ptr, ptr %5, align 8, !tbaa !3993
  %i.kb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.kc = shl nuw nsw i64 %i.kb, 5
  %i.kd = add nuw nsw i64 %i.kb, 31
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = and i64 %i.ke, 1073741820
  %i.kg = add nuw nsw i64 %i.kf, %i.kc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ka, i64 noundef %i.kg, i64 noundef 8) #38
  br label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit: ; preds = %.critedge73, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.kh = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.a
  br i1 %i.ki, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit
  call void @free(ptr noundef %i.kh) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL19LowerVectorAllEqualRKN4llvm5SDLocENS_7SDValueES3_NS_3ISD8CondCodeERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGERNS_3X868CondCodeE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %7, ptr noundef nonnull align 8 dereferenceable(920) %8, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %9) unnamed_addr #1 {
bb.a:
  %10 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %12 = alloca %"struct.std::pair.520", align 8   ; 5 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %16 = alloca %"struct.std::pair.520", align 8   ; 5 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %19 = alloca %"struct.llvm::EVT", align 8       ; 4 uses
  %20 = alloca %"struct.std::pair.520", align 8   ; 5 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 17 uses
  %28 = alloca %"struct.llvm::EVT", align 8       ; 38 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 21 uses
  %30 = alloca %class.anon.1198, align 8          ; 15 uses
  %31 = alloca %"struct.std::pair.513", align 8   ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %34 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %35 = alloca %"struct.std::pair.513", align 8   ; 5 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %38 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %46 = alloca %"struct.std::pair.513", align 8   ; 7 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 10 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %50 = alloca %"struct.std::pair.513", align 8   ; 7 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %55 = alloca %"struct.std::pair.513", align 8   ; 7 uses
  %56 = alloca %"class.llvm::MVT", align 2        ; 6 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store ptr %1, ptr %27, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 11 uses
  store i32 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !454
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !299 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !455 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %28, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 13 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.g = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.g, 197
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #39
  br i1 %i.h, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.b:                                             ; preds = %.split.i.i
  %i.i = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.j = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !299
  %i.m = insertvalue { i16, ptr } poison, i16 %i.l, 0
  %i.n = insertvalue { i16, ptr } %i.m, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.o = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.o, %bb.c ], [ %i.n, %bb.b ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i, %.split.i.i ] ; 2 uses
  %i.p = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.p, ptr %26, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.r = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.r, ptr %i.q, align 8
  %.not.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.s = zext i16 %i.p to i64
  %i.t = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.u, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.v = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #39
  %i.w = extractvalue { i64, i8 } %i.v, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.d, %bb.e
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %i.x = trunc i64 %.pn.i.i to i32                ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !645
  %.not647 = icmp eq i32 %i.z, %i.x
  br i1 %.not647, label %bb.f, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E24lookupOrInsertIntoBucketIS2_JS3_EEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !457
  %i.ak = icmp eq ptr %i.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.p, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit, label %bb.c, !prof !632

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !4055
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !4008
  %i.ar = shl i32 %i.aq, 2
  %i.as = add i32 %i.ar, 4
  %i.at = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.au = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.au)
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4055
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4005
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !3993
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aw = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ax = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ay = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !189
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !189
  %i.bk = load i32, ptr %i.ap, align 8, !tbaa !4008
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ap, align 8, !tbaa !4008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !745
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !645
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !645
  %i.bq = load i64, ptr %2, align 8
  store i64 %i.bq, ptr %i.bm, align 8
  store i32 0, ptr %i.bo, align 8, !tbaa !645
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ai, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3993, !noalias !4056 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4005, !noalias !4056 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4006, !noalias !4056 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !451  ; 2 uses
  %i.p = add i32 %i.o, %i.m
  %.024 = and i32 %i.p, %i.g                      ; 3 uses
  %i.q = zext i32 %.024 to i64                    ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = lshr i64 %i.q, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !189
  %i.v = and i32 %.024, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph, label %.thread, !prof !1971

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.025, 1
  %.0 = and i32 %i.y, %i.g                        ; 3 uses
  %i.z = zext i32 %.0 to i64                      ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !189
  %i.ae = and i32 %.0, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !4054

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.aa, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !457
  %i.aj = icmp eq ptr %i.h, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.o, %i.al
  %i.an = select i1 %i.aj, i1 %i.am, i1 false     ; 3 uses
  br i1 %i.an, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.ah, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.an, %bb.c ], [ %i.an, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !4055
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1183", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4006
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3993
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4005
  store i32 0, ptr %i.p, align 16, !tbaa !4008
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4055   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !695 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store ptr %i.z, ptr %2, align 16, !tbaa !4055
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !830
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !695
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !189
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !189
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !189
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !189 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !645
  %i.av = icmp ugt i32 %i.au, 64
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !314 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #41
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.az = add i32 %.0.i3.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !4035

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4036

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !4006 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i
  %i.bc = load ptr, ptr %2, align 16, !tbaa !3993
  %i.bd = zext i32 %.pr.i to i64                  ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #38
  br label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3993
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4005
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4006 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4005 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3993
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4006
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !457
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !451
  %i.ad = add i32 %i.ac, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ad, %bb.b ], [ %i.al, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ae = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.af = lshr i64 %i.ae, 5                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !189
  %i.ai = and i32 %.0.i7, 31                      ; 2 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  %i.al = add i32 %.0.i7, 1
  br i1 %i.ak, label %bb.c, label %bb.d, !llvm.loop !4061

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.ae ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !745
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !645
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !645
  %i.at = load i64, ptr %i.ap, align 8
  store i64 %i.at, ptr %i.ao, align 8
  store i32 0, ptr %i.ar, align 8, !tbaa !645
  %i.au = shl nuw i32 1, %i.ai
  %i.av = load i32, ptr %i.am, align 4, !tbaa !189
  %i.aw = or i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.am, align 4, !tbaa !189
  %i.ax = load i32, ptr %i.ar, align 8, !tbaa !645
  %i.ay = icmp ugt i32 %i.ax, 64
  br i1 %i.ay, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !314 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.az) #41
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.bb = add i32 %.0.i21, -1
  %i.bc = and i32 %i.bb, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4062

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !4063

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4006
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !4008
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !4008
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !3993
  %i.bj = zext i32 %i.bd to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 5
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bo, i64 noundef 8) #38
  store i32 0, ptr %i.d, align 4, !tbaa !4006
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEE4killEv.exit

_ZN4llvm8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3993, !noalias !4064 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4005, !noalias !4064 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4006, !noalias !4064 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !451  ; 2 uses
  %i.q = add i32 %i.p, %i.n
  %.024.i = and i32 %i.q, %i.h                    ; 3 uses
  %i.r = zext i32 %.024.i to i64                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !189
  %i.w = and i32 %.024.i, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %.loopexit, !prof !1971

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.z, %i.h                      ; 3 uses
  %i.aa = zext i32 %.0.i to i64                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !189
  %i.af = and i32 %.0.i, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !1972, !llvm.loop !4054

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.ab, %bb.c ], [ %i.s, %bb.b ] ; 3 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !457
  %i.ak = icmp eq ptr %i.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.p, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit, label %bb.c, !prof !632

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !4055
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !4008
  %i.ar = shl i32 %i.aq, 2
  %i.as = add i32 %i.ar, 4
  %i.at = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.au = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.au)
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4055
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4005
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3993
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueENS_5APIntENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aw = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ax = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ay = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !189
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !189
  %i.bk = load i32, ptr %i.ap, align 8, !tbaa !4008
  %i.bl = add i32 %i.bk, 1
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E15LookupBucketForIiEEbRKT_RPS6_:bb.a
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !4539
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEC2EjNS_12DenseMapBaseIS6_iiS2_S5_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !314
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !314
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !314
  br label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEC2EjNS_12DenseMapBaseIS6_iiS2_S5_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEC2EjNS_12DenseMapBaseIS6_iiS2_S5_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit.thread, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEC2EjNS_12DenseMapBaseIS6_iiS2_S5_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4546
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !314
  br label %bb.b

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit: ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEC2EjNS_12DenseMapBaseIS6_iiS2_S5_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 4) #38 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !314
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !314
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !314
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE13maybeMoveFastEOS6_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !314 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !314
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 4) #38
  br label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !189 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !4547

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.al ; 2 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !189
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !189
  %i.ay = shl nuw i32 1, %i.ap
  %i.az = load i32, ptr %i.at, align 4, !tbaa !189
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !189
  %i.bb = add i32 %.0.i21, -1
  %i.bc = and i32 %i.bb, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4548

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !4549

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.be = and i32 %i.bd, -2
  %i.bf = or disjoint i32 %.pre-phi, %i.be
  store i32 %i.bf, ptr %0, align 8
  %i.bg = load i32, ptr %1, align 8               ; 3 uses
  %i.bh = and i32 %i.bg, 1
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !314 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.bl = zext i32 %i.bi to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 4) #38
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit

_ZN4llvm13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.br = phi i32 [ %i.bg, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiiLj8ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit ], [ %i.bg, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bs = and i32 %i.br, -2
  store i32 %i.bs, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL25lowerShuffleWithUndefHalfRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %2, i32 %3, ptr %4, i32 %5, ptr nofree readonly captures(address) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %6, ptr noundef nonnull align 8 dereferenceable(920) %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %20 = alloca %"class.llvm::SmallVector.429", align 8 ; 14 uses
  %21 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %i.c = trunc i64 %.8.val to i32
  %i.d = lshr i32 %i.c, 1                         ; 5 uses
  %i.e = zext nneg i32 %i.d to i64                ; 3 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.e, 2          ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx3.i.i.i
  %i.g = lshr i64 %i.e, 2                         ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0               ; 2 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.h = and i64 %.idx3.i.i.i, 8589934576
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.h
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.018.i.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.02917.i.i.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i = load i32, ptr %.02917.i.i.i.i.i.i.i, align 4, !tbaa !189
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %.029.val39.i.i.i.i.i.i.i, -1
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.b, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !189
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %.val37.i.i.i.i.i.i.i, -1
  br i1 %.not4.i.i.i.i.i.i.i, label %bb.c, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !189
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %.val35.i.i.i.i.i.i.i, -1
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.d, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit86

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !189
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %.val33.i.i.i.i.i.i.i, -1
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.e, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit88

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 16
  %i.m = add nsw i64 %.018.i.i.i.i.i.i.i, -1
  %i.n = icmp sgt i64 %.018.i.i.i.i.i.i.i, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !2931

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.e
  %i.o = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.a
  %.pre-phi24.i.i.i.i.i.i.i = phi i32 [ %i.o, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  switch i32 %.pre-phi24.i.i.i.i.i.i.i, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.thread [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !189
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.029.val.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.p, %bb.g ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i.i, align 4, !tbaa !189
  %.not1.i.i.i.i.i.i.i = icmp eq i32 %.1.val.i.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.i, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i, align 4, !tbaa !189
  %.not2.i.i.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i.i, -1
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.thread, label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 4
  br label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit86: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 8
  br label %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit
end_hunk_4
begin_hunk_5_@"_ZZL10LowerShiftN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_1clENS_3MVTES0_S0_S0_":bb.a
  %.pn = phi { ptr, i32 } [ %i.an, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ %i.bh, %bb.f ], [ %i.bz, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit167 ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZL10LowerShiftN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_2clES0_S0_S0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %5) unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4779, !nonnull !24
  %i.b = load i8, ptr %i.a, align 1, !tbaa !692, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4781, !nonnull !24, !align !3912
  %i.f = load i32, ptr %i.e, align 4, !tbaa !189
  %i.g = and i32 %i.f, 2147483647
  switch i32 %i.g, label %bb.c [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split88
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split89
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split90
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split91
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split92
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split93
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split94
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split95
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split96
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split:   ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split88: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split89: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split90: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split91: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split92: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split93: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split94: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split95: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split96: ; preds = %bb.b
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.b, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split96, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split95, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split94, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split93, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split92, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split91, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split90, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split89, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split88, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split, %bb.c
  %.sroa.0.0.i = phi i16 [ 0, %bb.c ], [ 41, %bb.b ], [ 51, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split93 ], [ 50, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split92 ], [ 52, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split94 ], [ 43, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split ], [ 53, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split95 ], [ 45, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split88 ], [ 47, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split89 ], [ 48, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split90 ], [ 49, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split91 ], [ 54, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split96 ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4782, !nonnull !24, !align !184
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.i, i16 %.sroa.0.0.i, ptr null, ptr %3, i32 %4) #38 ; 2 uses
  %.fca.0.extract46 = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract47 = extractvalue { ptr, i32 } %i.j, 1
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !4782, !nonnull !24, !align !184
  %.sroa.039.0.copyload = load ptr, ptr %5, align 8, !tbaa !449
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.240.0.copyload = load i32, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !189
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.k, i16 %.sroa.0.0.i, ptr null, ptr %.sroa.039.0.copyload, i32 %.sroa.240.0.copyload) #38 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.l, 1
  store ptr %.fca.0.extract35, ptr %5, align 8, !tbaa !449
  store i32 %.fca.1.extract36, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !189
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !4782, !nonnull !24, !align !184
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.m, i16 %.sroa.0.0.i, ptr null, ptr %1, i32 %2) #38 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.n, 1
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !4782, !nonnull !24, !align !184 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4783, !nonnull !24, !align !3950
  %.sroa.024.0.copyload = load i16, ptr %i.q, align 2, !tbaa !299
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4784, !nonnull !24, !align !184
  store ptr %.fca.0.extract25, ptr %9, align 8, !tbaa !449
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.569.0..sroa_idx, align 8, !tbaa !189
  store ptr %.fca.0.extract46, ptr %10, align 8, !tbaa !449
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract47, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !189
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.o, i32 noundef 553, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #38 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.t, 1
  %i.u = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.o, i16 %.sroa.024.0.copyload, ptr null, ptr %.fca.0.extract17, i32 %.fca.1.extract18) #38
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4784, !nonnull !24, !align !184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4783, !nonnull !24, !align !3950
  %.sroa.011.0.copyload = load i16, ptr %i.y, align 2, !tbaa !299
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !4782, !nonnull !24, !align !184
  %i.ab = tail call fastcc { ptr, i32 } @_ZL26getTargetVShiftByConstNodejRKN4llvm5SDLocENS_3MVTENS_7SDValueEmRNS_12SelectionDAGE(i32 noundef 974, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i16 %.sroa.011.0.copyload, ptr %1, i32 %2, i64 noundef 15, ptr noundef nonnull align 8 dereferenceable(920) %i.aa) ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.ab, 0 ; 2 uses
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.ab, 1 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !4782, !nonnull !24, !align !184
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !4784, !nonnull !24, !align !184
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !4783, !nonnull !24, !align !3950
  %.sroa.03.0.copyload = load i16, ptr %i.ae, align 2, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %3, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.af = getelementptr inbounds nuw i8, ptr %.fca.0.extract4, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !454
  %i.ah = zext i32 %.fca.1.extract5 to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ai, align 8, !tbaa !299 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.aj, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.ak, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

bb.f:                                             ; preds = %bb.d
  %i.al = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit: ; preds = %bb.e, %bb.f
  %i.am = phi i1 [ %spec.select.i.i.i, %bb.e ], [ %i.al, %bb.f ]
  %i.an = select i1 %i.am, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  store ptr %.fca.0.extract4, ptr %7, align 8, !tbaa !449
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !189
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ac, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i16 %.sroa.03.0.copyload, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 0) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit, %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %.pn = phi { ptr, i32 } [ %i.u, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %i.ao, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 16  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !189  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !645
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !314 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #41
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i5.i, -1
  %i.ae = and i32 %i.ad, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !4785

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !4786

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit.loopexit, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !314 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #38
  br label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E10destroyAllEv.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4787 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4787 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4787 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4787
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 16 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !189    ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !189
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !1971

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !189
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !1972, !llvm.loop !4792

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !189
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !632

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !4793
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !4793
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !189
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !189
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %1, align 4, !tbaa !189
  store i32 %i.bj, ptr %i.aq, align 4, !tbaa !189
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 1, ptr %i.bl, align 8, !tbaa !645
  store i64 0, ptr %i.bk, align 8, !tbaa !314
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4794
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4794
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4794
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4794
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_:bb.a
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !189
  %i.s = and i32 %.024, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !1971

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.025, 1
  %.0 = and i32 %i.v, %i.k                        ; 3 uses
  %i.w = zext i32 %.0 to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !189
  %i.ab = and i32 %.0, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !4792

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !4793
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1672", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 392
  br label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEC2EjNS_12DenseMapBaseIS7_jS1_S3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !314
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !314
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !314
  br label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEC2EjNS_12DenseMapBaseIS7_jS1_S3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEC2EjNS_12DenseMapBaseIS7_jS1_S3_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEC2EjNS_12DenseMapBaseIS7_jS1_S3_S6_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4799
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !314
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEEC2EjNS_12DenseMapBaseIS7_jS1_S3_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #38 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !314
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !314
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !314
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(400) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 16
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 15
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i25 = icmp eq i64 %i.ab, 0
  br i1 %.not.i25, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !189 ; 2 uses
  %.not11.i23 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !4800

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !645
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !645
  %i.ba = load i64, ptr %i.aw, align 8
  store i64 %i.ba, ptr %i.av, align 8
  store i32 0, ptr %i.ay, align 8, !tbaa !645
  %i.bb = shl nuw i32 1, %i.ap
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !189
  %i.bd = or i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.at, align 4, !tbaa !189
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !645
  %i.bf = icmp ugt i32 %i.be, 64
  br i1 %i.bf, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !314 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #41
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.bi = add i32 %.0.i24, -1
  %i.bj = and i32 %i.bi, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4801

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph28, !llvm.loop !4802

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre32 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre32, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bl = and i32 %i.bk, -2
  %i.bm = or disjoint i32 %.pre-phi, %i.bl
  store i32 %i.bm, ptr %0, align 8
  %i.bn = load i32, ptr %1, align 8               ; 3 uses
  %i.bo = and i32 %i.bn, 1
  %.not.i.i12 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i12, label %bb.g, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !314 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bs, 31
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741820
  %i.bx = add nuw nsw i64 %i.bw, %i.bt
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.br, i64 noundef %i.bx, i64 noundef 8) #38
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.g, %bb.h
  %i.by = phi i32 [ %i.bn, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_5APIntELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bn, %bb.g ], [ %.pre.i, %bb.h ]
  %i.bz = and i32 %i.by, -2
  store i32 %i.bz, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt9__advanceIN4llvm16DenseMapIteratorIjNS0_5APIntENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS2_EELb0EEElEvRT_T0_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %.not4 = icmp eq i64 %1, 0
  br i1 %.not4, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4750 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4751 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 2 uses
  %i.i = add nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit
  %.06 = phi i64 [ %1, %.lr.ph ], [ %i.m, %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit ]
  %storemerge16.i.i35 = phi ptr [ %.promoted, %.lr.ph ], [ %storemerge16.i.i, %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit ]
  %i.m = add nsw i64 %.06, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge16.i.i35, i64 24
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.f
  %i.q = sdiv exact i64 %i.p, 24                  ; 3 uses
  %.not.i.i = icmp ult i64 %i.q, %i.h
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.q, 5                         ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !189
  %i.u = trunc i64 %i.q to i32
  %i.v = and i32 %i.u, 31
  %i.w = shl nsw i32 -1, %i.v
  %i.x = and i32 %i.t, %i.w                       ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.j
  br i1 %i.aa, label %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit, label %.lr.ph18

.lr.ph.i.i:                                       ; preds = %.lr.ph18
  %i.ab = add i64 %i.ad, 1                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.j
  br i1 %i.ac, label %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit, label %.lr.ph18, !llvm.loop !4753

.lr.ph18:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ad = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.z, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !4753

._crit_edge.i.i:                                  ; preds = %.lr.ph18, %bb.c
  %.012.lcssa.i.i = phi i64 [ %i.r, %bb.c ], [ %i.ad, %.lr.ph18 ]
  %.0.lcssa.i.i = phi i32 [ %i.x, %bb.c ], [ %i.af, %.lr.ph18 ]
  %i.ah = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %i.aj = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %i.ak = getelementptr [24 x i8], ptr %i.aj, i64 %i.ai
  br label %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit

_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %bb.b, %._crit_edge.i.i
  %storemerge16.i.i = phi ptr [ %i.b, %bb.b ], [ %i.ak, %._crit_edge.i.i ], [ %i.b, %.lr.ph.i.i.preheader ], [ %i.b, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4803

._crit_edge:                                      ; preds = %_ZN4llvm16DenseMapIteratorIjNS_5APIntENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EELb0EEppEv.exit
  store ptr %storemerge16.i.i, ptr %0, align 8, !tbaa !1594
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm15SmallVectorImplINS_7SDValueEE4swapERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JEEES3_IPS9_bEOT_DpOT0_:bb.a
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4823
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4822
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1969
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1959
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !189
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !189
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !4823
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !4823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !189
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !1973
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.bd, align 4, !tbaa !1973
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1959, !noalias !4824 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1969, !noalias !4824 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1956, !noalias !4824 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !1973   ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !189
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !1971

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !4821

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1973
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !4822
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1710", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1956
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 12                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1959
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1969
  store i32 0, ptr %i.p, align 16, !tbaa !4823
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !830
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4822
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !830
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !830
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !189 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !189
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !189
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !189
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 12
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #38
  br label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1959
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1969
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1956 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1969 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1959
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1956
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1973 ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !189
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !4829

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !189
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !189
  %i.an = add i32 %.0.i18, -1
  %i.ao = and i32 %i.an, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4830

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS2_S2_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !4831

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1956
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !4823
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !4823
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !1959
  %i.av = zext i32 %i.ap to i64                   ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 12
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 4) #38
  store i32 0, ptr %i.d, align 4, !tbaa !1956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterESt4pairIS1_S1_ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIS5_S5_ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !4832, !noalias !4833 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4838, !noalias !4833 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4839, !noalias !4833 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !2461   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !189
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1971

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2461
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !632

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !189
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1972, !llvm.loop !4840

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !4841
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4842
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4841
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4838
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4832
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !189
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !189
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4842
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2461
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2461
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !630
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 4, ptr %i.bl, align 4, !tbaa !631
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4832, !noalias !4843 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4838, !noalias !4843 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4839, !noalias !4843 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2461   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !189
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1971

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2461
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !632

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !4840

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4841
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.261", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4839
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4832
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4838
  store i32 0, ptr %i.p, align 16, !tbaa !4842
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4841   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !695 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store ptr %i.z, ptr %2, align 16, !tbaa !4841
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !830
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !695
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !189
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !189
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !189
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !189 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !4848

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4849

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !4839 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !4832
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #38
  br label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4832
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4838
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4839 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4838 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4832
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4839
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2461 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4850

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !2461
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !630
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !631
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !630 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !26
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !630
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !631
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !631
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !26
  store i32 0, ptr %i.be, align 4, !tbaa !631
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp ugt i32 %i.ay, 4
  br i1 %i.bg, label %bb.f, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

bb.f:                                             ; preds = %bb.e
  %i.bh = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bh, i64 noundef 4) #38
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.e, %bb.f
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !630 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !26
  %gepdiff.i = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 4 %i.bk, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !630
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !630
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bm = shl nuw i32 1, %.lcssa.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !189
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !189
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.br) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EOS1_.exit.i, %bb.h
  %i.bu = add i32 %.0.i16, -1
  %i.bv = and i32 %i.bu, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4851

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !4852

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4839
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !4842
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !4842
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !4832
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 40
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #38
  store i32 0, ptr %i.d, align 4, !tbaa !4839
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

declare void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm9KnownBits4abduERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm9KnownBits8sadd_satERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt19isInverseOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN4llvm5APInt17clearBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm35getHorizDemandedEltsForFirstOperandEjRKNS_5APIntERS0_S3_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZL38computeKnownBitsForHorizontalOperationN4llvm7SDValueERKNS_5APIntEjRKNS_12SelectionDAGENS_12function_refIFNS_9KnownBitsERKS8_SA_EEEENK3$_0clES0_RS1_"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #2 align 2 {
end_hunk_7
begin_hunk_8_@_ZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE:bb.a
  %.sroa.2113.0.copyload.i = load i32, ptr %i.aty, align 8, !tbaa !189
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %67, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr %.sroa.0112.0.copyload.i, i32 %.sroa.2113.0.copyload.i, i32 noundef 0) #38
  %i.avx = call noundef i32 @_ZNK4llvm9KnownBits20countMinLeadingZerosEv(ptr noundef nonnull align 8 dereferenceable(32) %67) ; 2 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %67) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #38
  %.sroa.0107.0.copyload.i = load ptr, ptr %141, align 8, !tbaa !449
  %.sroa.2108.0.copyload.i = load i32, ptr %i.auy, align 8, !tbaa !189
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %68, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr %.sroa.0107.0.copyload.i, i32 %.sroa.2108.0.copyload.i, i32 noundef 0) #38
  %i.avy = call noundef i32 @_ZNK4llvm9KnownBits20countMinLeadingZerosEv(ptr noundef nonnull align 8 dereferenceable(32) %68) ; 2 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %68) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #38
  %i.avz = load i32, ptr %i.att, align 8, !tbaa !297
  %i.awa = icmp sgt i32 %i.avz, 4
  %i.awb = icmp ugt i32 %i.avx, 47
  %or.cond.i2059 = and i1 %i.awb, %i.awa
  %i.awc = icmp ugt i32 %i.avy, 47
  %or.cond20.i = and i1 %i.awc, %or.cond.i2059
  br i1 %or.cond20.i, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  store i16 73, ptr %117, align 2, !tbaa !299
  store i16 62, ptr %118, align 2, !tbaa !299
  store i32 760, ptr %i.t, align 4, !tbaa !189
  br label %bb.rz

bb.nt:                                            ; preds = %bb.nr
  %i.awd = icmp ugt i32 %i.avx, 55
  %i.awe = icmp ugt i32 %i.avy, 55
  %or.cond22.i = and i1 %i.awd, %i.awe
  br i1 %or.cond22.i, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  store i16 62, ptr %117, align 2, !tbaa !299
  store i16 48, ptr %118, align 2, !tbaa !299
  store i32 760, ptr %i.t, align 4, !tbaa !189
  br label %bb.rz

bb.nv:                                            ; preds = %bb.nt
  %.sroa.0104.0.copyload.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.2105.0.copyload.i = load i32, ptr %i.aty, align 8, !tbaa !189
  %i.awf = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %11, ptr %.sroa.0104.0.copyload.i, i32 %.sroa.2105.0.copyload.i, i32 noundef 0) #38
  %i.awg = icmp ugt i32 %i.awf, 48
  br i1 %i.awg, label %bb.nw, label %bb.ny

bb.nw:                                            ; preds = %bb.nv
  %.sroa.0101.0.copyload.i = load ptr, ptr %141, align 8, !tbaa !449
  %.sroa.2102.0.copyload.i = load i32, ptr %i.auy, align 8, !tbaa !189
  %i.awh = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %11, ptr %.sroa.0101.0.copyload.i, i32 %.sroa.2102.0.copyload.i, i32 noundef 0) #38
  %i.awi = icmp ugt i32 %i.awh, 48
  br i1 %i.awi, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  store i16 73, ptr %117, align 2, !tbaa !299
  store i16 62, ptr %118, align 2, !tbaa !299
  store i32 759, ptr %i.t, align 4, !tbaa !189
  br label %bb.rz

.critedge17.i:                                    ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i2057, %bb.ng, %bb.nf, %.critedge15.i, %.critedge15.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  br label %bb.ny

bb.ny:                                            ; preds = %.critedge17.i, %bb.nw, %bb.nv, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit330.i
  %i.awj = load i16, ptr %54, align 2, !tbaa !634 ; 16 uses
  %i.awk = icmp eq i16 %i.awj, 136
  br i1 %i.awk, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.awl = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.awm = load i32, ptr %i.awl, align 8, !tbaa !297
  %i.awn = icmp sgt i32 %i.awm, 0
  br i1 %i.awn, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit333.i

bb.oa:                                            ; preds = %bb.ny
  %i.awo = add i16 %i.awj, -19
  %spec.select.i.i331.i = icmp ult i16 %i.awo, 144
  br i1 %spec.select.i.i331.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit333.i, label %.critedge28.i

_ZNK4llvm3MVT14is128BitVectorEv.exit333.i:        ; preds = %bb.oa, %bb.nz
  %i.awp = zext nneg i16 %i.awj to i64            ; 6 uses
  %i.awq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.awp
  %i.awr = getelementptr i8, ptr %i.awq, i64 -16
  %.sroa.0.0.copyload.i.i.i332.i = load i64, ptr %i.awr, align 16 ; 3 uses
  %i.aws = icmp eq i64 %.sroa.0.0.copyload.i.i.i332.i, 128
  br i1 %i.aws, label %bb.ob, label %_ZNK4llvm3MVT14is256BitVectorEv.exit.i

bb.ob:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit333.i
  %i.awt = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.awu = load i32, ptr %i.awt, align 8, !tbaa !297
  %i.awv = icmp sgt i32 %i.awu, 1
  br i1 %i.awv, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %.critedge28.i

_ZNK4llvm3MVT14is256BitVectorEv.exit.i:           ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit333.i
  %i.aww = icmp eq i64 %.sroa.0.0.copyload.i.i.i332.i, 256 ; 2 uses
  %i.awx = icmp ugt i32 %i.aru, 31                ; 2 uses
  %or.cond24.i = and i1 %i.awx, %i.aww
  br i1 %or.cond24.i, label %bb.oc, label %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i

bb.oc:                                            ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit.i
  %i.awy = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.awz = load i32, ptr %i.awy, align 8, !tbaa !297
  %i.axa = icmp sgt i32 %i.awz, 6
  br i1 %i.axa, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %.critedge28.i

_ZNK4llvm3MVT14is256BitVectorEv.exit338.i:        ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit.i
  br i1 %i.aww, label %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i.thread, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.i

_ZNK4llvm3MVT14is256BitVectorEv.exit338.i.thread: ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 360
  %.pre3184 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !297
  %i.axb = icmp sgt i32 %.pre3184, 7
  br i1 %i.axb, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %.critedge28.i

_ZNK4llvm3MVT14is512BitVectorEv.exit.i:           ; preds = %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i
  %i.axc = icmp eq i64 %.sroa.0.0.copyload.i.i.i332.i, 512
  br i1 %i.axc, label %bb.od, label %.critedge28.i

bb.od:                                            ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit.i
  %i.axd = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.axe = load i32, ptr %i.axd, align 8, !tbaa !297
  %i.axf = icmp sgt i32 %i.axe, 8
  br i1 %i.axf, label %bb.oe, label %.critedge28.i

bb.oe:                                            ; preds = %bb.od
  br i1 %i.awx, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.axg = getelementptr inbounds nuw i8, ptr %13, i64 395
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !333, !range !23, !noundef !24
  %i.axi = trunc nuw i8 %i.axh to i1
  br i1 %i.axi, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %.critedge28.i

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.of, %bb.oe, %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i.thread, %bb.oc, %bb.ob, %bb.nz
  %.pre-phi497.i = phi i64 [ %i.awp, %_ZNK4llvm3MVT14is256BitVectorEv.exit338.i.thread ], [ %i.awp, %bb.of ], [ %i.awp, %bb.oe ], [ %i.awp, %bb.ob ], [ %i.awp, %bb.oc ], [ 136, %bb.nz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  %i.axj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %.pre-phi497.i
  %i.axk = getelementptr i8, ptr %i.axj, i64 -2
  %i.axl = load i16, ptr %i.axk, align 2, !tbaa !294 ; 4 uses
  %.not44.i.i = icmp eq i16 %i.axl, 0             ; 3 uses
  br i1 %.not44.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.axm = zext i16 %i.axl to i64                 ; 2 uses
  %i.axn = add nsw i64 %i.axm, -2                 ; 2 uses
  %i.axo = lshr i64 %i.axn, 1
  %i.axp = add nuw i64 %i.axo, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.axn, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.axp, -8                     ; 3 uses
  %i.axq = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.axx, %vector.body ]
  %vec.phi3584 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.axy, %vector.body ]
  %vec.phi3585 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayb, %vector.body ]
  %vec.phi3586 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayc, %vector.body ]
  %vec.phi3587 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayf, %vector.body ]
  %vec.phi3588 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayg, %vector.body ]
  %vec.phi3589 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayj, %vector.body ]
  %vec.phi3590 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ayk, %vector.body ]
  %i.axr = shl nuw i64 %index, 1                  ; 2 uses
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %i.axr
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %i.axr
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 32
  %wide.vec = load <8 x i32>, ptr %i.axs, align 4, !tbaa !189 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3591 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec3592 = load <8 x i32>, ptr %i.axu, align 4, !tbaa !189 ; 2 uses
  %strided.vec3593 = shufflevector <8 x i32> %wide.vec3592, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3594 = shufflevector <8 x i32> %wide.vec3592, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.axv = icmp eq <4 x i32> %strided.vec, splat (i32 -1)
  %i.axw = icmp eq <4 x i32> %strided.vec3593, splat (i32 -1)
  %i.axx = and <4 x i1> %vec.phi, %i.axv          ; 2 uses
  %i.axy = and <4 x i1> %vec.phi3584, %i.axw      ; 2 uses
  %i.axz = icmp eq <4 x i32> %strided.vec3591, splat (i32 -1)
  %i.aya = icmp eq <4 x i32> %strided.vec3594, splat (i32 -1)
  %i.ayb = and <4 x i1> %vec.phi3585, %i.axz      ; 2 uses
  %i.ayc = and <4 x i1> %vec.phi3586, %i.aya      ; 2 uses
  %i.ayd = icmp ugt <4 x i32> %strided.vec, splat (i32 -3)
  %i.aye = icmp ugt <4 x i32> %strided.vec3593, splat (i32 -3)
  %i.ayf = and <4 x i1> %vec.phi3587, %i.ayd      ; 2 uses
  %i.ayg = and <4 x i1> %vec.phi3588, %i.aye      ; 2 uses
  %i.ayh = icmp ugt <4 x i32> %strided.vec3591, splat (i32 -3)
  %i.ayi = icmp ugt <4 x i32> %strided.vec3594, splat (i32 -3)
  %i.ayj = and <4 x i1> %vec.phi3589, %i.ayh      ; 2 uses
  %i.ayk = and <4 x i1> %vec.phi3590, %i.ayi      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ayl = icmp eq i64 %index.next, %n.vec
  br i1 %i.ayl, label %middle.block, label %vector.body, !llvm.loop !4971

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.axy, %i.axx
  %i.aym = bitcast <4 x i1> %bin.rdx to i4
  %bin.rdx3595 = and <4 x i1> %i.ayc, %i.ayb
  %i.ayn = bitcast <4 x i1> %bin.rdx3595 to i4
  %bin.rdx3596 = and <4 x i1> %i.ayg, %i.ayf
  %174 = bitcast <4 x i1> %bin.rdx3596 to i4
  %bin.rdx3596.a = and <4 x i1> %i.ayk, %i.ayj
  %i.ayo = bitcast <4 x i1> %bin.rdx3596.a to i4
  %175 = insertelement <4 x i4> poison, i4 %i.ayn, i64 0
  %176 = insertelement <4 x i4> %175, i4 %i.aym, i64 1
  %177 = insertelement <4 x i4> %176, i4 %i.ayo, i64 2
  %178 = insertelement <4 x i4> %177, i4 %174, i64 3
  %179 = icmp eq <4 x i4> %178, splat (i4 -1)     ; 2 uses
  %cmp.n = icmp eq i64 %i.axp, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.axq, %middle.block ]
  %.ph = phi <4 x i1> [ splat (i1 true), %.lr.ph.preheader.i.i ], [ %179, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %180 = phi <4 x i1> [ splat (i1 true), %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %179, %middle.block ], [ %185, %.lr.ph.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  %i.ayp = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  store ptr %i.ayp, ptr %42, align 8, !tbaa !26
  %i.ayq = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  store i32 0, ptr %i.ayq, align 8, !tbaa !630
  %i.ayr = getelementptr inbounds nuw i8, ptr %42, i64 12
  store i32 64, ptr %i.ayr, align 4, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38
  %i.ays = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr %i.ays, ptr %43, align 8, !tbaa !26
  %i.ayt = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  store i32 0, ptr %i.ayt, align 8, !tbaa !630
  %i.ayu = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 64, ptr %i.ayu, align 4, !tbaa !631
  call void @_ZN4llvm23createUnpackShuffleMaskENS_3EVTERNS_15SmallVectorImplIiEEbb(i16 %i.awj, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %42, i1 noundef zeroext true, i1 noundef zeroext %i.al)
  %i.ayv = load ptr, ptr %42, align 8, !tbaa !26
  %i.ayw = load i32, ptr %i.ayq, align 8, !tbaa !630
  %i.ayx = zext i32 %i.ayw to i64
  %i.ayy = select i1 %i.al, ptr %140, ptr %141    ; 4 uses
  %i.ayz = call fastcc noundef zeroext i1 @_ZL25isTargetShuffleEquivalentN4llvm3MVTENS_8ArrayRefIiEES2_RKNS_12SelectionDAGENS_7SDValueES6_(i16 %i.awj, ptr readonly %i.arl, i64 %i.arn, ptr %i.ayv, i64 %i.ayx, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ayy)
  br i1 %i.ayz, label %bb.og, label %bb.on

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %181 = phi <4 x i1> [ %185, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.i.i
  %182 = load <2 x i32>, ptr %i.aza, align 4, !tbaa !189
  %183 = shufflevector <2 x i32> %182, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %184 = icmp ugt <4 x i32> %183, <i32 -2, i32 -2, i32 -3, i32 -3>
  %185 = and <4 x i1> %181, %184                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %.not.i.i2036 = icmp eq i64 %indvars.iv.next.i.i, %i.axm
  br i1 %.not.i.i2036, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4972

bb.og:                                            ; preds = %._crit_edge.i.i
  store i32 840, ptr %i.t, align 4, !tbaa !189
  %186 = extractelement <4 x i1> %180, i64 0
  br i1 %186, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %i.azb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %11, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %i.awj, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  %.fca.0.extract90.i.i = extractvalue { ptr, i32 } %i.azb, 0
  %.fca.1.extract91.i.i = extractvalue { ptr, i32 } %i.azb, 1
  br label %bb.oj

bb.oi:                                            ; preds = %bb.og
  %.sroa.095.0.copyload.i.i = load ptr, ptr %i.ayy, align 8, !tbaa !449
  %.sroa.sel2448.v.sroa.sel.v.sroa.sel.v = select i1 %i.al, ptr %140, ptr %141
  %.sroa.sel2448.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel2448.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.597.0.copyload.i.i = load i32, ptr %.sroa.sel2448.v.sroa.sel.v.sroa.sel, align 8, !tbaa !189
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %.sroa.095.0.i.i = phi ptr [ %.fca.0.extract90.i.i, %bb.oh ], [ %.sroa.095.0.copyload.i.i, %bb.oi ]
  %.sroa.597.0.i.i = phi i32 [ %.fca.1.extract91.i.i, %bb.oh ], [ %.sroa.597.0.copyload.i.i, %bb.oi ]
  store ptr %.sroa.095.0.i.i, ptr %141, align 8, !tbaa !449
  %.sroa.597.0..sroa_idx98.i.i = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i32 %.sroa.597.0.i.i, ptr %.sroa.597.0..sroa_idx98.i.i, align 8, !tbaa !189
  %187 = extractelement <4 x i1> %180, i64 1
  br i1 %187, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %i.azc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %11, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %i.awj, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  %.fca.0.extract79.i.i = extractvalue { ptr, i32 } %i.azc, 0
  %.fca.1.extract80.i.i = extractvalue { ptr, i32 } %i.azc, 1
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  %.sroa.084.0.copyload.i.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.586.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  %.sroa.586.0.copyload.i.i = load i32, ptr %.sroa.586.0..sroa_idx.i.i, align 8, !tbaa !189
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %.sroa.084.0.i.i = phi ptr [ %.fca.0.extract79.i.i, %bb.ok ], [ %.sroa.084.0.copyload.i.i, %bb.ol ]
  %.sroa.586.0.i.i = phi i32 [ %.fca.1.extract80.i.i, %bb.ok ], [ %.sroa.586.0.copyload.i.i, %bb.ol ]
  store ptr %.sroa.084.0.i.i, ptr %140, align 8, !tbaa !449
  %.sroa.586.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 %.sroa.586.0.i.i, ptr %.sroa.586.0..sroa_idx87.i.i, align 8, !tbaa !189
  br label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i

bb.on:                                            ; preds = %._crit_edge.i.i
  call void @_ZN4llvm23createUnpackShuffleMaskENS_3EVTERNS_15SmallVectorImplIiEEbb(i16 %i.awj, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %43, i1 noundef zeroext false, i1 noundef zeroext %i.al)
  %i.azd = load ptr, ptr %43, align 8, !tbaa !26
  %i.aze = load i32, ptr %i.ayt, align 8, !tbaa !630
  %i.azf = zext i32 %i.aze to i64
  %i.azg = call fastcc noundef zeroext i1 @_ZL25isTargetShuffleEquivalentN4llvm3MVTENS_8ArrayRefIiEES2_RKNS_12SelectionDAGENS_7SDValueES6_(i16 %i.awj, ptr readonly %i.arl, i64 %i.arn, ptr %i.azd, i64 %i.azf, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ayy)
  br i1 %i.azg, label %bb.oo, label %bb.ov

bb.oo:                                            ; preds = %bb.on
  store i32 839, ptr %i.t, align 4, !tbaa !189
  %188 = extractelement <4 x i1> %180, i64 0
  br i1 %188, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.azh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %11, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %39, i16 %i.awj, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  %.fca.0.extract63.i.i = extractvalue { ptr, i32 } %i.azh, 0
  %.fca.1.extract64.i.i = extractvalue { ptr, i32 } %i.azh, 1
  br label %bb.or

bb.oq:                                            ; preds = %bb.oo
  %.sroa.068.0.copyload.i.i = load ptr, ptr %i.ayy, align 8, !tbaa !449
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.al, ptr %140, ptr %141
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.570.0.copyload.i.i = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !189
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  %.sroa.068.0.i.i = phi ptr [ %.fca.0.extract63.i.i, %bb.op ], [ %.sroa.068.0.copyload.i.i, %bb.oq ]
  %.sroa.570.0.i.i = phi i32 [ %.fca.1.extract64.i.i, %bb.op ], [ %.sroa.570.0.copyload.i.i, %bb.oq ]
  store ptr %.sroa.068.0.i.i, ptr %141, align 8, !tbaa !449
  %.sroa.570.0..sroa_idx71.i.i = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i32 %.sroa.570.0.i.i, ptr %.sroa.570.0..sroa_idx71.i.i, align 8, !tbaa !189
  %189 = extractelement <4 x i1> %180, i64 1
  br i1 %189, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %i.azi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %11, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %i.awj, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  %.fca.0.extract52.i.i = extractvalue { ptr, i32 } %i.azi, 0
  %.fca.1.extract53.i.i = extractvalue { ptr, i32 } %i.azi, 1
  br label %bb.ou

bb.ot:                                            ; preds = %bb.or
  %.sroa.057.0.copyload.i.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  %.sroa.559.0.copyload.i.i = load i32, ptr %.sroa.559.0..sroa_idx.i.i, align 8, !tbaa !189
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.sroa.057.0.i.i = phi ptr [ %.fca.0.extract52.i.i, %bb.os ], [ %.sroa.057.0.copyload.i.i, %bb.ot ]
  %.sroa.559.0.i.i = phi i32 [ %.fca.1.extract53.i.i, %bb.os ], [ %.sroa.559.0.copyload.i.i, %bb.ot ]
  store ptr %.sroa.057.0.i.i, ptr %140, align 8, !tbaa !449
  %.sroa.559.0..sroa_idx60.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 %.sroa.559.0.i.i, ptr %.sroa.559.0..sroa_idx60.i.i, align 8, !tbaa !189
  br label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i

bb.ov:                                            ; preds = %bb.on
  %190 = extractelement <4 x i1> %180, i64 2      ; 3 uses
  %191 = extractelement <4 x i1> %180, i64 3      ; 3 uses
  %or.cond.i.i2037 = select i1 %191, i1 true, i1 %190
  %or.cond195.i.i = select i1 %i.al, i1 %or.cond.i.i2037, i1 false
  br i1 %or.cond195.i.i, label %bb.ow, label %.critedge200.i.i

bb.ow:                                            ; preds = %bb.ov
  %i.azj = getelementptr inbounds nuw i8, ptr %13, i64 360 ; 2 uses
  %i.azk = load i32, ptr %i.azj, align 8, !tbaa !297
  %.fr.i.i = freeze i32 %i.azk                    ; 2 uses
  %i.azl = icmp sgt i32 %.fr.i.i, 4
  br i1 %i.azl, label %bb.ox, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.ow
  switch i16 %i.awj, label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i [
    i16 154, label %bb.ox
    i16 94, label %bb.ox
  ]

bb.ox:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %bb.ow
  br i1 %.not44.i.i, label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i, label %.lr.ph.preheader.i.i.i2040

.lr.ph.preheader.i.i.i2040:                       ; preds = %bb.ox
  %i.azm = zext i16 %i.axl to i64
  br label %.lr.ph.i.i.i2041

.lr.ph.i.i.i2041:                                 ; preds = %bb.oy, %.lr.ph.preheader.i.i.i2040
  %indvars.iv.i.i.i2042 = phi i64 [ 0, %.lr.ph.preheader.i.i.i2040 ], [ %indvars.iv.next.i.i.i2043, %bb.oy ] ; 3 uses
  %indvars25.i.i.i = trunc i64 %indvars.iv.i.i.i2042 to i32
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.i.i.i2042
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !189 ; 2 uses
  %i.azp = icmp ugt i32 %i.azo, -3
  %.not15.i.i.i = icmp eq i32 %i.azo, %indvars25.i.i.i
  %or.cond.i.i.i = or i1 %i.azp, %.not15.i.i.i
  br i1 %or.cond.i.i.i, label %bb.oy, label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i

bb.oy:                                            ; preds = %.lr.ph.i.i.i2041
  %indvars.iv.next.i.i.i2043 = add nuw nsw i64 %indvars.iv.i.i.i2042, 1 ; 2 uses
  %.not.i.i.i2044 = icmp eq i64 %indvars.iv.next.i.i.i2043, %i.azm
  br i1 %.not.i.i.i2044, label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i, label %.lr.ph.i.i.i2041, !llvm.loop !4973

_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i: ; preds = %.lr.ph.i.i.i2041, %switch.early.test.i.i
  br i1 %.not44.i.i, label %.critedge3.thread.i.i, label %.lr.ph57.i.i

.lr.ph57.i.i:                                     ; preds = %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i
  %i.azq = load ptr, ptr %42, align 8
  %i.azr = load ptr, ptr %43, align 8
  %i.azs = zext i16 %i.axl to i64
  br label %bb.oz

.critedge3.i.i:                                   ; preds = %bb.pc
  %i.azt = select i1 %i.bam, i32 840, i32 839
  br i1 %i.bao, label %.critedge3.thread.i.i, label %.critedge200.i.i

bb.oz:                                            ; preds = %bb.pc, %.lr.ph57.i.i
  %indvars.iv66.i.i = phi i64 [ 0, %.lr.ph57.i.i ], [ %indvars.iv.next67.i.i, %bb.pc ] ; 6 uses
  %.018955.i.i = phi i8 [ 1, %.lr.ph57.i.i ], [ %.1190.i.i, %bb.pc ] ; 3 uses
  %.019154.i.i = phi i8 [ 1, %.lr.ph57.i.i ], [ %.1192.i.i, %bb.pc ] ; 3 uses
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv66.i.i
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !189 ; 3 uses
  %i.azw = and i64 %indvars.iv66.i.i, 1
  %i.azx = icmp eq i64 %i.azw, 0
  %or.cond5.i.i = select i1 %i.azx, i1 %191, i1 false
  br i1 %or.cond5.i.i, label %bb.pc, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.azy = trunc i64 %indvars.iv66.i.i to i1
  %or.cond7.i.i = select i1 %i.azy, i1 %190, i1 false
  %i.azz = icmp eq i32 %i.azv, -1
  %or.cond9.i.i = select i1 %or.cond7.i.i, i1 true, i1 %i.azz
  br i1 %or.cond9.i.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %indvars.iv66.i.i
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !189
  %i.bac = icmp eq i32 %i.azv, %i.bab
  %i.bad = icmp ne i8 %.019154.i.i, 0
  %i.bae = select i1 %i.bac, i1 %i.bad, i1 false
  %i.baf = zext i1 %i.bae to i8
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.azr, i64 %indvars.iv66.i.i
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !189
  %i.bai = icmp eq i32 %i.azv, %i.bah
  %i.baj = icmp ne i8 %.018955.i.i, 0
  %i.bak = select i1 %i.bai, i1 %i.baj, i1 false
  %i.bal = zext i1 %i.bak to i8
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %bb.oz
  %.1192.i.i = phi i8 [ %i.baf, %bb.pb ], [ %.019154.i.i, %bb.pa ], [ %.019154.i.i, %bb.oz ] ; 2 uses
  %.1190.i.i = phi i8 [ %i.bal, %bb.pb ], [ %.018955.i.i, %bb.pa ], [ %.018955.i.i, %bb.oz ] ; 2 uses
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %.not194.i.i = icmp ne i64 %indvars.iv.next67.i.i, %i.azs
  %i.bam = trunc nuw i8 %.1192.i.i to i1          ; 2 uses
  %i.ban = trunc nuw i8 %.1190.i.i to i1
  %i.bao = select i1 %i.bam, i1 true, i1 %i.ban   ; 2 uses
  %or.cond198.i.i = select i1 %.not194.i.i, i1 %i.bao, i1 false
  br i1 %or.cond198.i.i, label %bb.oz, label %.critedge3.i.i, !llvm.loop !4974

.critedge3.thread.i.i:                            ; preds = %.critedge3.i.i, %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i
  %.lcssa4378.i.i = phi i32 [ %i.azt, %.critedge3.i.i ], [ 840, %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.i.i ]
  store i32 %.lcssa4378.i.i, ptr %i.t, align 4, !tbaa !189
  br i1 %190, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %.critedge3.thread.i.i
  %i.bap = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %i.awj, i32 %.fr.i.i, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr noundef nonnull align 8 dereferenceable(12) %12) ; 2 uses
  %.fca.0.extract23.i.i = extractvalue { ptr, i32 } %i.bap, 0
  %.fca.1.extract24.i.i = extractvalue { ptr, i32 } %i.bap, 1
  br label %bb.pf

bb.pe:                                            ; preds = %.critedge3.thread.i.i
  %.sroa.028.0.copyload.i.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  %.sroa.530.0.copyload.i.i = load i32, ptr %.sroa.530.0..sroa_idx.i.i, align 8, !tbaa !189
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.sroa.530.0.i.i = phi i32 [ %.fca.1.extract24.i.i, %bb.pd ], [ %.sroa.530.0.copyload.i.i, %bb.pe ]
  %.sroa.028.0.i.i = phi ptr [ %.fca.0.extract23.i.i, %bb.pd ], [ %.sroa.028.0.copyload.i.i, %bb.pe ]
  store ptr %.sroa.028.0.i.i, ptr %141, align 8, !tbaa !449
  %.sroa.530.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i32 %.sroa.530.0.i.i, ptr %.sroa.530.0..sroa_idx31.i.i, align 8, !tbaa !189
  br i1 %191, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %.val.i.i = load i32, ptr %i.azj, align 8, !tbaa !297
  %i.baq = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %i.awj, i32 %.val.i.i, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr noundef nonnull align 8 dereferenceable(12) %12) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.baq, 0
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.baq, 1
  br label %bb.pi

bb.ph:                                            ; preds = %bb.pf
  %.sroa.019.0.copyload.i.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !189
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pg
  %.sroa.5.0.i.i = phi i32 [ %.fca.1.extract.i.i, %bb.pg ], [ %.sroa.5.0.copyload.i.i, %bb.ph ]
  %.sroa.019.0.i.i = phi ptr [ %.fca.0.extract.i.i, %bb.pg ], [ %.sroa.019.0.copyload.i.i, %bb.ph ]
  store ptr %.sroa.019.0.i.i, ptr %140, align 8, !tbaa !449
  %.sroa.5.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx21.i.i, align 8, !tbaa !189
  br label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i

.critedge200.i.i:                                 ; preds = %.critedge3.i.i, %bb.ov
  br i1 %i.al, label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i, label %bb.pj

bb.pj:                                            ; preds = %.critedge200.i.i
  %i.bar = load ptr, ptr %42, align 8, !tbaa !26  ; 10 uses
  %i.bas = load i32, ptr %i.ayq, align 8, !tbaa !630 ; 7 uses
  %i.bat = zext i32 %i.bas to i64                 ; 3 uses
  %.not17.i202.i.i = icmp eq i32 %i.bas, 0
  br i1 %.not17.i202.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i, label %.lr.ph.i204.preheader.i.i

.lr.ph.i204.preheader.i.i:                        ; preds = %bb.pj
  %i.bau = sub i32 0, %i.bas                      ; 2 uses
  %min.iters.check3602 = icmp ult i32 %i.bas, 8
  br i1 %min.iters.check3602, label %.lr.ph.i204.i.i.preheader, label %vector.ph3603

vector.ph3603:                                    ; preds = %.lr.ph.i204.preheader.i.i
  %n.vec3604 = and i64 %i.bat, 4294967288         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bau, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3605 = insertelement <4 x i32> poison, i32 %i.bas, i64 0
  %broadcast.splat3606 = shufflevector <4 x i32> %broadcast.splatinsert3605, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3607

vector.body3607:                                  ; preds = %pred.store.continue3623, %vector.ph3603
  %index3608 = phi i64 [ 0, %vector.ph3603 ], [ %index.next3624, %pred.store.continue3623 ] ; 9 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608 ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 16
  %wide.load = load <4 x i32>, ptr %i.bav, align 4, !tbaa !189 ; 3 uses
  %wide.load3609 = load <4 x i32>, ptr %i.baw, align 4, !tbaa !189 ; 3 uses
  %i.bax = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.bay = icmp sgt <4 x i32> %wide.load3609, splat (i32 -1) ; 4 uses
  %i.baz = icmp slt <4 x i32> %wide.load, %broadcast.splat3606
  %i.bba = icmp slt <4 x i32> %wide.load3609, %broadcast.splat3606
  %i.bbb = select <4 x i1> %i.baz, <4 x i32> %broadcast.splat3606, <4 x i32> %broadcast.splat
  %i.bbc = select <4 x i1> %i.bba, <4 x i32> %broadcast.splat3606, <4 x i32> %broadcast.splat
  %i.bbd = add <4 x i32> %i.bbb, %wide.load       ; 4 uses
  %i.bbe = add <4 x i32> %i.bbc, %wide.load3609   ; 4 uses
  %i.bbf = extractelement <4 x i1> %i.bax, i64 0
  br i1 %i.bbf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body3607
  %i.bbg = extractelement <4 x i32> %i.bbd, i64 0
  store i32 %i.bbg, ptr %i.bav, align 4, !tbaa !189
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body3607
  %i.bbh = extractelement <4 x i1> %i.bax, i64 1
  br i1 %i.bbh, label %pred.store.if3610, label %pred.store.continue3611

pred.store.if3610:                                ; preds = %pred.store.continue
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bbk = extractelement <4 x i32> %i.bbd, i64 1
  store i32 %i.bbk, ptr %i.bbj, align 4, !tbaa !189
  br label %pred.store.continue3611

pred.store.continue3611:                          ; preds = %pred.store.if3610, %pred.store.continue
  %i.bbl = extractelement <4 x i1> %i.bax, i64 2
  br i1 %i.bbl, label %pred.store.if3612, label %pred.store.continue3613

pred.store.if3612:                                ; preds = %pred.store.continue3611
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8
  %i.bbo = extractelement <4 x i32> %i.bbd, i64 2
  store i32 %i.bbo, ptr %i.bbn, align 4, !tbaa !189
  br label %pred.store.continue3613

pred.store.continue3613:                          ; preds = %pred.store.if3612, %pred.store.continue3611
  %i.bbp = extractelement <4 x i1> %i.bax, i64 3
  br i1 %i.bbp, label %pred.store.if3614, label %pred.store.continue3615

pred.store.if3614:                                ; preds = %pred.store.continue3613
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 12
  %i.bbs = extractelement <4 x i32> %i.bbd, i64 3
  store i32 %i.bbs, ptr %i.bbr, align 4, !tbaa !189
  br label %pred.store.continue3615

pred.store.continue3615:                          ; preds = %pred.store.if3614, %pred.store.continue3613
  %i.bbt = extractelement <4 x i1> %i.bay, i64 0
  br i1 %i.bbt, label %pred.store.if3616, label %pred.store.continue3617

pred.store.if3616:                                ; preds = %pred.store.continue3615
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16
  %i.bbw = extractelement <4 x i32> %i.bbe, i64 0
  store i32 %i.bbw, ptr %i.bbv, align 4, !tbaa !189
  br label %pred.store.continue3617

pred.store.continue3617:                          ; preds = %pred.store.if3616, %pred.store.continue3615
  %i.bbx = extractelement <4 x i1> %i.bay, i64 1
  br i1 %i.bbx, label %pred.store.if3618, label %pred.store.continue3619

pred.store.if3618:                                ; preds = %pred.store.continue3617
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 20
  %i.bca = extractelement <4 x i32> %i.bbe, i64 1
  store i32 %i.bca, ptr %i.bbz, align 4, !tbaa !189
  br label %pred.store.continue3619

pred.store.continue3619:                          ; preds = %pred.store.if3618, %pred.store.continue3617
  %i.bcb = extractelement <4 x i1> %i.bay, i64 2
  br i1 %i.bcb, label %pred.store.if3620, label %pred.store.continue3621

pred.store.if3620:                                ; preds = %pred.store.continue3619
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 24
  %i.bce = extractelement <4 x i32> %i.bbe, i64 2
  store i32 %i.bce, ptr %i.bcd, align 4, !tbaa !189
  br label %pred.store.continue3621

pred.store.continue3621:                          ; preds = %pred.store.if3620, %pred.store.continue3619
  %i.bcf = extractelement <4 x i1> %i.bay, i64 3
  br i1 %i.bcf, label %pred.store.if3622, label %pred.store.continue3623

pred.store.if3622:                                ; preds = %pred.store.continue3621
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %index3608
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 28
  %i.bci = extractelement <4 x i32> %i.bbe, i64 3
  store i32 %i.bci, ptr %i.bch, align 4, !tbaa !189
  br label %pred.store.continue3623

pred.store.continue3623:                          ; preds = %pred.store.if3622, %pred.store.continue3621
  %index.next3624 = add nuw i64 %index3608, 8     ; 2 uses
  %i.bcj = icmp eq i64 %index.next3624, %n.vec3604
  br i1 %i.bcj, label %middle.block3625, label %vector.body3607, !llvm.loop !4975

middle.block3625:                                 ; preds = %pred.store.continue3623
  %cmp.n3626 = icmp eq i64 %n.vec3604, %i.bat
  br i1 %cmp.n3626, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i, label %.lr.ph.i204.i.i.preheader

.lr.ph.i204.i.i.preheader:                        ; preds = %.lr.ph.i204.preheader.i.i, %middle.block3625
  %indvars.iv.i205.i.i.ph = phi i64 [ 0, %.lr.ph.i204.preheader.i.i ], [ %n.vec3604, %middle.block3625 ]
  br label %.lr.ph.i204.i.i

.lr.ph.i204.i.i:                                  ; preds = %.lr.ph.i204.i.i.preheader, %bb.pk
  %indvars.iv.i205.i.i = phi i64 [ %indvars.iv.next.i206.i.i, %bb.pk ], [ %indvars.iv.i205.i.i.ph, %.lr.ph.i204.i.i.preheader ] ; 2 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bar, i64 %indvars.iv.i205.i.i ; 2 uses
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !189 ; 3 uses
  %i.bcm = icmp slt i32 %i.bcl, 0
  br i1 %i.bcm, label %bb.pk, label %.sink.split.i.i.i2038

.sink.split.i.i.i2038:                            ; preds = %.lr.ph.i204.i.i
  %i.bcn = icmp slt i32 %i.bcl, %i.bas
  %.sink.p.i.i.i = select i1 %i.bcn, i32 %i.bas, i32 %i.bau
  %.sink.i.i.i = add i32 %.sink.p.i.i.i, %i.bcl
  store i32 %.sink.i.i.i, ptr %i.bck, align 4, !tbaa !189
  br label %bb.pk

bb.pk:                                            ; preds = %.sink.split.i.i.i2038, %.lr.ph.i204.i.i
  %indvars.iv.next.i206.i.i = add nuw nsw i64 %indvars.iv.i205.i.i, 1 ; 2 uses
  %.not.i207.i.i = icmp eq i64 %indvars.iv.next.i206.i.i, %i.bat
  br i1 %.not.i207.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i, label %.lr.ph.i204.i.i, !llvm.loop !4976

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i: ; preds = %bb.pk, %middle.block3625
  %.pre.i.i2039 = load i32, ptr %i.ayq, align 8, !tbaa !630
  %i.bco = zext i32 %.pre.i.i2039 to i64
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i, %bb.pj
  %i.bcp = phi i64 [ %i.bco, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i ], [ 0, %bb.pj ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %i.bcq = call fastcc noundef zeroext i1 @_ZL25isTargetShuffleEquivalentN4llvm3MVTENS_8ArrayRefIiEES2_RKNS_12SelectionDAGENS_7SDValueES6_(i16 %i.awj, ptr readonly %i.arl, i64 %i.arn, ptr %i.bar, i64 %i.bcp, ptr noundef nonnull align 8 dereferenceable(920) %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45)
  br i1 %i.bcq, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i
  store i32 840, ptr %i.t, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %140, i64 16, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %140, ptr noundef nonnull align 8 dereferenceable(12) %141, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %141, ptr noundef nonnull align 8 dereferenceable(12) %37, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  br label %_ZL32isSequentialOrUndefOrZeroInRangeN4llvm8ArrayRefIiEEjjii.exit.thread.i.i

bb.pm:                                            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i
  %i.bcr = load ptr, ptr %43, align 8, !tbaa !26  ; 10 uses
  %i.bcs = load i32, ptr %i.ayt, align 8, !tbaa !630 ; 7 uses
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !189
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !1972, !llvm.loop !2470

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !189
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit, label %bb.c, !prof !632

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !5482
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2453
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit, label %bb.d, !prof !632

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !5482
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2468
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2462
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 40                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !189
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !189
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2453
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !189
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !630
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 2, ptr %i.bf, align 4, !tbaa !631
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2462, !noalias !5483 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2468, !noalias !5483 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2469, !noalias !5483 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !189    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !189
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !1971

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !1972, !llvm.loop !2470

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !189
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !632

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !5482
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.877", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2469
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2462
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2468
  store i32 0, ptr %i.p, align 16, !tbaa !2453
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !5482   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !695 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store ptr %i.z, ptr %2, align 16, !tbaa !5482
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !830
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !695
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !189
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !189
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !189
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !189 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !2616

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2617

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2469 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !2462
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #38
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2462
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2468
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2469 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2468 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2462
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2469
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !189  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !189
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !5488

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.x ; 6 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !630
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  store i32 2, ptr %i.ak, align 4, !tbaa !631
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !630 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ao = icmp eq ptr %i.ag, %i.u
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE12assignRemoteEOS3_.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !26
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !630
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !631
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !631
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !26
  store i32 0, ptr %i.as, align 4, !tbaa !631
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.au = zext i32 %i.am to i64                   ; 2 uses
  %i.av = icmp ugt i32 %i.am, 2
  br i1 %i.av, label %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.au, i64 noundef 8) #38
  %.pre = load i32, ptr %i.al, align 8, !tbaa !630 ; 2 uses
  %.pre27 = zext i32 %.pre to i64
  %.not.i.i.i10 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.g, %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi38 = phi i64 [ %.pre27, %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i ], [ %i.au, %bb.g ]
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !26
  %gepdiff.i = shl nuw nsw i64 %.pre-phi38, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 8 %i.aw, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm17MachineBasicBlockES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !630
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.al, align 8, !tbaa !630
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i.sink.split, %bb.e, %bb.d
  %i.ay = shl nuw i32 1, %i.ab
  %i.az = load i32, ptr %i.af, align 4, !tbaa !189
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.af, align 4, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bc) #38
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEC2EOS3_.exit.i, %bb.h
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5489

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !5490

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !2469
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre26, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2453
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2453
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !2462
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 40
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #38
  store i32 0, ptr %i.d, align 4, !tbaa !2469
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !630
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #38
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = load i32, ptr %i.a, align 8, !tbaa !630
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !630
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !630
  ret void
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.906", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2591
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #38 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !2583
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2611
  store i32 0, ptr %i.p, align 16, !tbaa !2605
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !830
  %i.ac = load ptr, ptr %0, align 8, !tbaa !5491
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !830
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !830
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !830
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !189 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !189
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !189
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !189
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !189
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #38
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2583   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2611
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2591 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2611 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2583
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2591
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !189  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1973 ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !189
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !5492

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !189
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !189
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !189
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5493

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !5494

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2591
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2605
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !2605
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #38
  store i32 0, ptr %i.d, align 4, !tbaa !2591
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_9KnownBitsERKS1_S3_EE11callback_fnIZNKS_17X86TargetLowering29computeKnownBitsForTargetNodeENS_7SDValueERS1_RKNS_5APIntERKNS_12SelectionDAGEjE3$_0EES1_lS3_S3_"(ptr dead_on_unwind noalias writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #1 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %.val = load i32, ptr %i.a, align 4, !tbaa !2822
  %i.b = icmp eq i32 %.val, 699
  tail call void @_ZN4llvm9KnownBits16computeForAddSubEbbbRKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8 %0, i1 noundef zeroext %i.b, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #38
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_X86ISelLowering.cpp() #34 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL38ExperimentalPrefInnermostLoopAlignment, i32 noundef 0, i32 noundef 0) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 120), align 8, !tbaa !3872
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL38ExperimentalPrefInnermostLoopAlignment, ptr nonnull align 1 dereferenceable(47) @.str, i64 46) #38
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 120), align 8, !tbaa !3872
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 140), align 4, !tbaa !5459
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 136), align 8, !tbaa !5495
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 32), align 8, !tbaa !5496
  store i64 183, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 40), align 8, !tbaa !722
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL38ExperimentalPrefInnermostLoopAlignment, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL38ExperimentalPrefInnermostLoopAlignment) #38
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL38ExperimentalPrefInnermostLoopAlignment, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23BrMergingBaseCostThresh, i32 noundef 0, i32 noundef 0) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 120), align 8, !tbaa !3872
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL23BrMergingBaseCostThresh, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23BrMergingBaseCostThresh, ptr nonnull align 1 dereferenceable(25) @.str.3, i64 24) #38
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 120), align 8, !tbaa !3872
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 140), align 4, !tbaa !5459
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 136), align 8, !tbaa !5495
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 32), align 8, !tbaa !5496
  store i64 363, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 40), align 8, !tbaa !722
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23BrMergingBaseCostThresh) #38
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL23BrMergingBaseCostThresh, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17BrMergingCcmpBias, i32 noundef 0, i32 noundef 0) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 120), align 8, !tbaa !3872
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL17BrMergingCcmpBias, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17BrMergingCcmpBias, ptr nonnull align 1 dereferenceable(25) @.str.6, i64 24) #38
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 120), align 8, !tbaa !3872
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 140), align 4, !tbaa !5459
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 136), align 8, !tbaa !5495
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 32), align 8, !tbaa !5496
  store i64 104, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 40), align 8, !tbaa !722
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17BrMergingCcmpBias) #38
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL17BrMergingCcmpBias, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL10WidenShift, i32 noundef 0, i32 noundef 0) #38
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 120), align 8, !tbaa !1607
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL10WidenShift, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10WidenShift, ptr nonnull align 1 dereferenceable(16) @.str.9, i64 15) #38
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 120), align 8, !tbaa !1607
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 137), align 1, !tbaa !5460
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 136), align 8, !tbaa !5497
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 32), align 8, !tbaa !5496
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 40), align 8, !tbaa !722
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 10), align 2
  %i.n = and i16 %i.m, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WidenShift, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10WidenShift) #38
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL10WidenShift, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL19BrMergingLikelyBias, i32 noundef 0, i32 noundef 0) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 120), align 8, !tbaa !3872
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL19BrMergingLikelyBias, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19BrMergingLikelyBias, ptr nonnull align 1 dereferenceable(27) @.str.12, i64 26) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 120), align 8, !tbaa !3872
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 140), align 4, !tbaa !5459
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 136), align 8, !tbaa !5495
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 32), align 8, !tbaa !5496
  store i64 390, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 40), align 8, !tbaa !722
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 10), align 2
  %i.r = and i16 %i.q, -97
  %i.s = or disjoint i16 %i.r, 32
  store i16 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19BrMergingLikelyBias) #38
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL19BrMergingLikelyBias, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21BrMergingUnlikelyBias, i32 noundef 0, i32 noundef 0) #38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 120), align 8, !tbaa !3872
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 128), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL21BrMergingUnlikelyBias, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 144), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21BrMergingUnlikelyBias, ptr nonnull align 1 dereferenceable(29) @.str.15, i64 28) #38
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 120), align 8, !tbaa !3872
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 140), align 4, !tbaa !5459
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 136), align 8, !tbaa !5495
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 32), align 8, !tbaa !5496
  store i64 398, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 40), align 8, !tbaa !722
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 32
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21BrMergingUnlikelyBias) #38
end_hunk_9
