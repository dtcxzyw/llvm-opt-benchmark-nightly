Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuloSchedule?download=true
inline.NumInlined: 5635
inline.NumDeleted: 2250
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm29PeelingModuloScheduleExpander20peelPrologAndEpilogsEv:bb.a
  %.pn558 = phi i64 [ %i.acd, %bb.cw ], [ %i.abn, %bb.cv ]
  %.024.i.i255 = phi i32 [ %i.acc, %bb.cw ], [ %i.abm, %bb.cv ]
  %i.abu = getelementptr inbounds nuw [24 x i8], ptr %i.aas, i64 %.pn558 ; 3 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !431
  %i.abw = icmp eq ptr %i.xf, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8
  %i.abz = icmp eq ptr %i.aar, %i.aby
  %i.aca = select i1 %i.abw, i1 %i.abz, i1 false
  br i1 %i.aca, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_.exit.loopexit, label %bb.cw, !prof !69

bb.cw:                                            ; preds = %.lr.ph.i.i254
  %i.acb = add nuw i32 %.024.i.i255, 1
  %i.acc = and i32 %i.acb, %i.aaw                 ; 3 uses
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = lshr i64 %i.acd, 5
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !67
  %i.ach = and i32 %i.acc, 31
  %i.aci = lshr i32 %i.acg, %i.ach
  %i.acj = trunc i32 %i.aci to i1
  br i1 %i.acj, label %.lr.ph.i.i254, label %.loopexit.i244, !prof !70, !llvm.loop !16

.loopexit.i244:                                   ; preds = %bb.cv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit269, %bb.cw
  %i.ack = shl i32 %i.aau, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.mu, i32 noundef %i.ack)
  unreachable

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i254
  %.phi.trans.insert445 = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %.pre446.a = load ptr, ptr %.phi.trans.insert445, align 8, !tbaa !54
  %i.acl = getelementptr inbounds nuw i8, ptr %.pre446.a, i64 32
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !129
  %i.acn = zext i32 %i.xi to i64
  %i.aco = getelementptr inbounds nuw [32 x i8], ptr %i.acm, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !131
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_.exit.loopexit, %bb.ci, %.lr.ph387
  %.sroa.023.1 = phi i32 [ %i.acq, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_.exit.loopexit ], [ %i.ro, %bb.ci ], [ %i.ro, %.lr.ph387 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %i.mx, align 8, !tbaa !143, !alias.scope !1527
  store i32 %.sroa.023.1, ptr %i.my, align 4, !tbaa !131, !alias.scope !1527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i8 0, i64 16, i1 false), !alias.scope !1527
  store i32 0, ptr %7, align 8, !alias.scope !1527
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0307.0385, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.acr = load ptr, ptr %.085390, align 8, !tbaa !110
  store ptr null, ptr %i.na, align 8, !tbaa !143, !alias.scope !1528
  store ptr %i.acr, ptr %i.nb, align 8, !tbaa !131, !alias.scope !1528
  store i32 4, ptr %8, align 8, !alias.scope !1528
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0307.0385, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i202 = load i64, ptr %.sroa.0307.0385, align 8
  %i.acs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i202, 4
  %.not.i.i.i203 = icmp eq i64 %i.acs, 0
  br i1 %.not.i.i.i203, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit210

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205: ; preds = %bb.cx
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.0307.0385, i64 44
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !253
  %i.acv = and i32 %i.acu, 8
  %.not34.i.i.i206 = icmp eq i32 %i.acv, 0
  br i1 %.not34.i.i.i206, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit210, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207
  %.sroa.0.05.i.i.i208 = phi ptr [ %i.acx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207 ], [ %.sroa.0307.0385, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205 ]
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i208, i64 8
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !251 ; 3 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 44
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !253
  %i.ada = and i32 %i.acz, 8
  %.not3.i.i.i209 = icmp eq i32 %i.ada, 0
  br i1 %.not3.i.i.i209, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit210, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit210: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207, %bb.cx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205
  %.sroa.0.1.i.i.i204 = phi ptr [ %.sroa.0307.0385, %bb.cx ], [ %.sroa.0307.0385, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i205 ], [ %i.acx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i207 ]
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i204, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !251 ; 2 uses
  %.not335 = icmp eq ptr %i.adc, %i.re
  br i1 %.not335, label %._crit_edge388, label %.lr.ph387

._crit_edge394:                                   ; preds = %._crit_edge388, %._crit_edge383
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.add = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.add, ptr %9, align 8, !tbaa !50
  %i.ade = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.ade, align 8, !tbaa !198
  %i.adf = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 8, ptr %i.adf, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.adh = load <2 x ptr>, ptr %i.adg, align 8, !tbaa !439, !noalias !1532
  store <2 x ptr> %i.adh, ptr %3, align 16, !tbaa !439, !alias.scope !1532
  %i.adi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.adk = load <2 x ptr>, ptr %i.adj, align 8, !tbaa !524, !noalias !1532
  store <2 x ptr> %i.adk, ptr %i.adi, align 16, !tbaa !524, !alias.scope !1532
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.adm = load <2 x ptr>, ptr %i.adl, align 8, !tbaa !439, !noalias !1536
  store <2 x ptr> %i.adm, ptr %4, align 16, !tbaa !439, !alias.scope !1536
  %i.adn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.adp = load <2 x ptr>, ptr %i.ado, align 8, !tbaa !524, !noalias !1536
  store <2 x ptr> %i.adp, ptr %i.adn, align 16, !tbaa !524, !alias.scope !1536
  %i.adq = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE6insertISt15_Deque_iteratorIS2_RS2_PS2_EvEES7_S7_T_S9_(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.add, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.adr = load ptr, ptr %i.ar, align 8, !tbaa !423 ; 2 uses
  %i.ads = load i32, ptr %i.ade, align 8, !tbaa !198 ; 2 uses
  %i.adt = load i32, ptr %i.adf, align 4, !tbaa !199
  %.not.i211 = icmp ult i32 %i.ads, %i.adt
  br i1 %.not.i211, label %bb.cz, label %bb.cy, !prof !69

bb.cy:                                            ; preds = %._crit_edge394
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.adr)
  %.pre447 = load i32, ptr %i.ade, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit212

bb.cz:                                            ; preds = %._crit_edge394
  %i.adu = zext i32 %i.ads to i64
  %i.adv = load ptr, ptr %9, align 8, !tbaa !50
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.adu
  store ptr %i.adr, ptr %i.adw, align 1
  %i.adx = load i32, ptr %i.ade, align 8, !tbaa !198
  %i.ady = add i32 %i.adx, 1                      ; 2 uses
  store i32 %i.ady, ptr %i.ade, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit212

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit212: ; preds = %bb.cy, %bb.cz
  %i.adz = phi i32 [ %.pre447, %bb.cy ], [ %i.ady, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aea = load ptr, ptr %9, align 8, !tbaa !50
  %i.aeb = zext i32 %i.adz to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aeb
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aee = load <2 x ptr>, ptr %i.aed, align 8, !tbaa !439, !noalias !1540
  store <2 x ptr> %i.aee, ptr %1, align 16, !tbaa !439, !alias.scope !1540
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aeh = load <2 x ptr>, ptr %i.aeg, align 8, !tbaa !524, !noalias !1540
  store <2 x ptr> %i.aeh, ptr %i.aef, align 16, !tbaa !524, !alias.scope !1540
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.aej = load <2 x ptr>, ptr %i.aei, align 8, !tbaa !439, !noalias !1544
  store <2 x ptr> %i.aej, ptr %2, align 16, !tbaa !439, !alias.scope !1544
  %i.aek = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aem = load <2 x ptr>, ptr %i.ael, align 8, !tbaa !524, !noalias !1544
  store <2 x ptr> %i.aem, ptr %i.aek, align 16, !tbaa !524, !alias.scope !1544
  %i.aen = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE6insertISt15_Deque_iteratorIS2_RS2_PS2_EvEES7_S7_T_S9_(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef %i.aec, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aeo = load ptr, ptr %9, align 8, !tbaa !50, !noalias !1545 ; 2 uses
  %i.aep = load i32, ptr %i.ade, align 8, !tbaa !198, !noalias !1545 ; 2 uses
  %.not336395 = icmp eq i32 %i.aep, 0
  br i1 %.not336395, label %._crit_edge398, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit212
  %i.aeq = zext i32 %i.aep to i64
  %.idx = shl nuw nsw i64 %i.aeq, 3
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %.idx
  br label %.lr.ph397

.loopexit:                                        ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph397
  %.not336 = icmp eq ptr %i.aey, %i.aeo
  br i1 %.not336, label %._crit_edge398, label %.lr.ph397

._crit_edge398:                                   ; preds = %.loopexit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit212
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !50 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 8, !tbaa !198 ; 2 uses
  %i.aew = zext i32 %i.aev to i64
  %.idx410 = shl nuw nsw i64 %i.aew, 3
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 %.idx410
  %.not89399 = icmp eq i32 %i.aev, 0
  br i1 %.not89399, label %._crit_edge403, label %.lr.ph402

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %.loopexit
  %.sroa.0298.0396 = phi ptr [ %i.aey, %.loopexit ], [ %i.aer, %.lr.ph397.preheader ]
  %i.aey = getelementptr inbounds i8, ptr %.sroa.0298.0396, i64 -8 ; 3 uses
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !110 ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 48
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.afa, align 8
  %10 = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.aez) #19
  %.0.copyload.i.i.i.i.i.i.i596 = load i64, ptr %10, align 8
  %11 = and i64 %.0.copyload.i.i.i.i.i.i.i596, -8
  %.sroa.0296.0.in597 = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.not338598 = icmp eq i64 %.sroa.0296.0.in597, %11
  br i1 %.not338598, label %.loopexit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph397, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0296.0.in599 = phi i64 [ %.sroa.0296.0.in.a, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.0296.0.in597, %.lr.ph397 ]
  %.sroa.0296.0 = inttoptr i64 %.sroa.0296.0.in599 to ptr ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i214 = load i64, ptr %.sroa.0296.0, align 8
  call void @_ZN4llvm29PeelingModuloScheduleExpander13rewriteUsesOfEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull %.sroa.0296.0)
  %i.afb = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.aez) #19
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.afb, align 8
  %12 = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %.sroa.0296.0.in.a = and i64 %.0.copyload.i.i.i.i.i.i.i214, -8 ; 2 uses
  %.not338 = icmp eq i64 %.sroa.0296.0.in.a, %12
  br i1 %.not338, label %.loopexit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, !llvm.loop !1510

._crit_edge403:                                   ; preds = %bb.db, %._crit_edge398
  store i32 0, ptr %i.aeu, align 8, !tbaa !198
  %i.afc = load ptr, ptr %9, align 8, !tbaa !50, !noalias !1546 ; 2 uses
  %i.afd = load i32, ptr %i.ade, align 8, !tbaa !198, !noalias !1546 ; 2 uses
  %.not337404 = icmp eq i32 %i.afd, 0
  br i1 %.not337404, label %._crit_edge408, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %._crit_edge403
  %i.afe = zext i32 %i.afd to i64
  %.idx411 = shl nuw nsw i64 %i.afe, 3
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 %.idx411
  br label %.lr.ph407

.lr.ph402:                                        ; preds = %._crit_edge398, %bb.db
  %.080400 = phi ptr [ %i.afl, %bb.db ], [ %i.aet, %._crit_edge398 ] ; 2 uses
  %i.afg = load ptr, ptr %.080400, align 8, !tbaa !54 ; 2 uses
  %i.afh = load ptr, ptr %i.di, align 8, !tbaa !440 ; 2 uses
  %.not90 = icmp eq ptr %i.afh, null
  br i1 %.not90, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph402
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 32
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !250
  call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.afj, ptr noundef nonnull align 8 dereferenceable(80) %i.afg, i1 noundef zeroext false) #19
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.lr.ph402
  %i.afk = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.afg) #19 ; 0 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.080400, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.afl, %i.aex
  br i1 %.not89, label %._crit_edge403, label %.lr.ph402

._crit_edge408:                                   ; preds = %.lr.ph407, %._crit_edge403
  %i.afm = load ptr, ptr %i.dg, align 8, !tbaa !424, !nonnull !47, !align !101
  %i.afn = load ptr, ptr %i.di, align 8, !tbaa !440
  call fastcc void @_ZN12_GLOBAL__N_117EliminateDeadPhisEPN4llvm17MachineBasicBlockERNS0_19MachineRegisterInfoEPNS0_13LiveIntervalsEb(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(520) %i.afm, ptr noundef %i.afn, i1 noundef zeroext false)
  %i.afo = load ptr, ptr %9, align 8, !tbaa !50   ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.add
  br i1 %i.afp, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge408
  call void @free(ptr noundef %i.afo) #19
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit: ; preds = %._crit_edge408, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.afq = load ptr, ptr %6, align 8, !tbaa !50   ; 2 uses
  %i.afr = icmp eq ptr %i.afq, %i.ab
  br i1 %i.afr, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.afq) #19
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.afs = load ptr, ptr %5, align 8, !tbaa !50   ; 2 uses
  %i.aft = icmp eq ptr %i.afs, %i.g
  br i1 %i.aft, label %_ZN4llvm9BitVectorD2Ev.exit215, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.afs) #19
  br label %_ZN4llvm9BitVectorD2Ev.exit215

_ZN4llvm9BitVectorD2Ev.exit215:                   ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.sroa.0289.0405 = phi ptr [ %i.afu, %.lr.ph407 ], [ %i.aff, %.lr.ph407.preheader ]
  %i.afu = getelementptr inbounds i8, ptr %.sroa.0289.0405, i64 -8 ; 3 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !110
  %i.afw = load ptr, ptr %i.dg, align 8, !tbaa !424, !nonnull !47, !align !101
  %i.afx = load ptr, ptr %i.di, align 8, !tbaa !440
  call fastcc void @_ZN12_GLOBAL__N_117EliminateDeadPhisEPN4llvm17MachineBasicBlockERNS0_19MachineRegisterInfoEPNS0_13LiveIntervalsEb(ptr noundef %i.afv, ptr noundef nonnull align 8 dereferenceable(520) %i.afw, ptr noundef %i.afx, i1 noundef zeroext false)
  %.not337 = icmp eq ptr %i.afu, %i.afc
  br i1 %.not337, label %._crit_edge408, label %.lr.ph407
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm29PeelingModuloScheduleExpander23CreateLCSSAExitingBlockEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.345", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %5 = alloca %"struct.std::pair.350", align 8    ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.279", align 8 ; 9 uses
  %7 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  %8 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !423  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %bb.b, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.j, %bb.a ]  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196
  %i.p = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.g, ptr noundef %i.o, i64 undef, i8 0) #19 ; 15 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !201  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.p) #19
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !200  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.v, align 8, !tbaa !201
  store ptr %i.u, ptr %i.p, align 8, !tbaa !200
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.p, ptr %i.w, align 8, !tbaa !201
  store ptr %i.p, ptr %i.s, align 8, !tbaa !200
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !251  ; 2 uses
  %i.aa = tail call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.x) #19 ; 2 uses
  %.not8497 = icmp eq ptr %i.z, %i.aa
  br i1 %.not8497, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.d

._crit_edge100:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !423
  call void @_ZN4llvm17MachineBasicBlock16replaceSuccessorEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(360) %i.ap, ptr noundef %.0, ptr noundef nonnull %i.p) #19
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !423
  call void @_ZN4llvm17MachineBasicBlock18replacePhiUsesWithEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(360) %.0, ptr noundef %i.aq, ptr noundef nonnull %i.p) #19
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr noundef nonnull %.0, i32 -1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !198
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.at, align 4, !tbaa !199
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !425 ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 296
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(360) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false) #19 ; 0 uses
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !425 ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(360) %i.bc, ptr noundef null) #19 ; 0 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !425 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %.0
  %i.bl = select i1 %i.bk, ptr %i.p, ptr %i.bj
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %.0
  %i.bo = select i1 %i.bn, ptr %i.p, ptr %i.bm
  %i.bp = load ptr, ptr %6, align 8, !tbaa !50
  %i.bq = load i32, ptr %i.as, align 8, !tbaa !198
  %i.br = zext i32 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !278
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr noundef %i.bl, ptr noundef %i.bo, ptr %i.bp, i64 %i.br, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !425 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb:bb.a
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !253
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !253
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !2005

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !262
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !67, !noalias !2018
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !68

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54, !noalias !2018
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !69

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !67, !noalias !2018
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !70

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !131
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !200
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !251
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
  %i.bq = icmp eq i32 %.fr18.i, 0
  %i.br = add i32 %.fr18.i, -1                    ; 2 uses
  %i.bs = zext i32 %.fr18.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bs ; 3 uses
  br i1 %i.bq, label %.split16.us.i30, label %.split.i17

.split.i17:                                       ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %.sroa.010.0.i18 = phi ptr [ %.sroa.0.1.i.i.i.i20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21 ], [ %1, %bb.e ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.010.0.i18, %i.bj
  br i1 %i.bu, label %.split16.us.i30, label %bb.f

.split16.us.i30:                                  ; preds = %.split.i17, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !262
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %.split.i17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.010.0.i18, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !253
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !253
  %i.cl = and i32 %i.ck, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, !llvm.loop !7

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %bb.f
  %.sroa.0.1.i.i.i.i20 = phi ptr [ %i.cc, %bb.f ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ], [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ] ; 3 uses
  %i.cm = ptrtoint ptr %.sroa.0.1.i.i.i.i20 to i64
  %i.cn = mul i64 %i.cm, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.br, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !67, !noalias !2019
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !68

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %bb.g
  %i.cz = phi i64 [ %i.df, %bb.g ], [ %i.cs, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %.017.i.i.i.i27 = phi i32 [ %i.de, %bb.g ], [ %i.cr, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !54, !noalias !2019
  %i.dc = icmp eq ptr %.sroa.0.1.i.i.i.i20, %i.db
  br i1 %i.dc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, label %bb.g, !prof !69

bb.g:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.dd = add nuw i32 %.017.i.i.i.i27, 1
  %i.de = and i32 %i.dd, %i.br                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67, !noalias !2019
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !70

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21: ; preds = %bb.g, %.lr.ph.i.i.i.i26, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %.lcssa.sink.i.i.i22 = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.da, %.lr.ph.i.i.i.i26 ], [ %i.bt, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.lcssa.sink.i.i.i22, %i.bt
  br i1 %.not.i23, label %.split.i17, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit: ; preds = %.split16.us.i30, %.thread.i
  %.sroa.0.2.in.i24 = phi ptr [ %i.ca, %.split16.us.i30 ], [ %i.dm, %.thread.i ]
  %.sroa.0.2.i25 = load i64, ptr %.sroa.0.2.in.i24, align 8, !tbaa !131
  %i.dn = and i64 %.sroa.0.2.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !201
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit
  %.sroa.038.0 = phi ptr [ %i.bg, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.dq, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.bh, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.do, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !266
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !266 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 2147483644               ; 2 uses
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = load ptr, ptr %0, align 8, !tbaa !267   ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 32                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !268
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.h, label %bb.i, !prof !69

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ef = inttoptr i64 %i.eb to ptr
  store ptr %i.ef, ptr %0, align 8, !tbaa !267
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.dz, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.eh, align 8, !tbaa !269
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 %i.dy, ptr %i.ei, align 8, !tbaa !266
  %i.ej = load ptr, ptr %.sroa.038.0, align 8, !tbaa !200 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %.sroa.038.0, ptr %i.ek, align 8, !tbaa !201
  store ptr %i.ej, ptr %.0.i.i.i, align 8, !tbaa !200
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0.i.i.i, ptr %i.el, align 8, !tbaa !201
  store ptr %.0.i.i.i, ptr %.sroa.038.0, align 8, !tbaa !200
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  tail call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nonnull %.0.i.i.i) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  %i.en = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !2021
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !131
  %i.eq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !2022 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %i.en
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !272, !noalias !2027 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !273, !noalias !2027 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !274, !noalias !2027 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !68

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !70, !llvm.loop !8

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !602
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !275
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !602
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !273
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !272
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !67
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !67
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !275
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !131
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !131
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272, !noalias !2032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !2032 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !274, !noalias !2032 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !68

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
end_hunk_1
