Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64SpeculationHardening?download=true
inline.NumInlined: 821
inline.NumDeleted: 436
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_127AArch64SpeculationHardening20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i78: ; preds = %bb.bb
  %i.zz = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i75, i64 noundef 128, i32 noundef 1) #17
  br i1 %i.zz, label %bb.bc, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i, !llvm.loop !154

bb.bc:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i78, %.split94.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i, %.split.i93
  %i.aaa = load ptr, ptr %i.yr, align 8, !tbaa !60
  %i.aab = icmp eq ptr %.sroa.0.1.i.i.i.i75, %i.aaa
  br i1 %i.aab, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4llvm12RegScavenger15enterBasicBlockERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0130.0217) #17
  br label %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.aac = load ptr, ptr %i.wr, align 8, !tbaa !343
  %.not1.i.i = icmp eq ptr %i.aac, %.sroa.0.1.i.i.i.i75
  br i1 %.not1.i.i, label %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be, %.lr.ph.i.i
  call void @_ZN4llvm12RegScavenger8backwardEv(ptr noundef nonnull align 8 dereferenceable(168) %11) #17
  %i.aad = load ptr, ptr %i.wr, align 8, !tbaa !343
  %.not.i.i92 = icmp eq ptr %i.aad, %.sroa.0.1.i.i.i.i75
  br i1 %.not.i.i92, label %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i, !llvm.loop !155

_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i: ; preds = %.lr.ph.i.i, %bb.be, %bb.bd
  %i.aae = call i32 @_ZNK4llvm12RegScavenger13FindUnusedRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3712)) #17 ; 5 uses
  %i.aaf = icmp eq i32 %i.aae, 0
  %spec.select.i = select i1 %i.aaf, i1 true, i1 %.049108.i ; 6 uses
  %i.aag = load i32, ptr %i.zf, align 4, !tbaa !304 ; 3 uses
  %i.aah = and i32 %i.aag, 12                     ; 2 uses
  %i.aai = icmp eq i32 %i.aah, 0
  %i.aaj = and i32 %i.aag, 4
  %i.aak = icmp ne i32 %i.aaj, 0
  %or.cond.i.i60.i = or i1 %i.aai, %i.aak
  br i1 %or.cond.i.i60.i, label %.split95.i, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62.i

.split95.i:                                       ; preds = %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i75, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !305
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !307
  %i.aap = and i64 %i.aao, 32
  %.not101.i = icmp eq i64 %i.aap, 0
  br i1 %.not101.i, label %bb.bi, label %bb.bf

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62.i: ; preds = %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i
  %i.aaq = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i75, i64 noundef 32, i32 noundef 1) #17
  br i1 %i.aaq, label %bb.bf, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62._crit_edge.i

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62._crit_edge.i: ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62.i
  %.pre125.i = load i32, ptr %i.zf, align 4, !tbaa !304 ; 2 uses
  %.pre127.i = and i32 %.pre125.i, 12
  br label %bb.bi

bb.bf:                                            ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62.i, %.split95.i
  %i.aar = load i32, ptr %i.wc, align 8, !tbaa !29 ; 2 uses
  %i.aas = load i32, ptr %i.wd, align 4, !tbaa !30
  %.not.i63.i = icmp ult i32 %i.aar, %i.aas
  br i1 %.not.i63.i, label %bb.bh, label %bb.bg, !prof !336

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %.sroa.0.1.i.i.i.i75, i32 %i.aae)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.aat = zext i32 %i.aar to i64
  %i.aau = load ptr, ptr %9, align 8, !tbaa !16
  %i.aav = getelementptr inbounds nuw [16 x i8], ptr %i.aau, i64 %i.aat ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i75, ptr %i.aav, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  store i32 %i.aae, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.aaw = load i32, ptr %i.wc, align 8, !tbaa !29
  %i.aax = add i32 %i.aaw, 1
  store i32 %i.aax, ptr %i.wc, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i

bb.bi:                                            ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62._crit_edge.i, %.split95.i
  %.pre-phi128.i = phi i32 [ %.pre127.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62._crit_edge.i ], [ %i.aah, %.split95.i ]
  %i.aay = phi i32 [ %.pre125.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit62._crit_edge.i ], [ %i.aag, %.split95.i ]
  %i.aaz = icmp eq i32 %.pre-phi128.i, 0
  %i.aba = and i32 %i.aay, 4
  %i.abb = icmp ne i32 %i.aba, 0
  %or.cond.i.i64.i = or i1 %i.aaz, %i.abb
  br i1 %or.cond.i.i64.i, label %.split96.i, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit66.i

.split96.i:                                       ; preds = %bb.bi
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i75, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !305
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !307
  %i.abg = and i64 %i.abf, 128
  %.not102.i = icmp eq i64 %i.abg, 0
  br i1 %.not102.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i, label %bb.bj

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit66.i: ; preds = %bb.bi
  %i.abh = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i75, i64 noundef 128, i32 noundef 1) #17
  br i1 %i.abh, label %bb.bj, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i

bb.bj:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit66.i, %.split96.i
  %i.abi = load i32, ptr %i.wf, align 8, !tbaa !29 ; 2 uses
  %i.abj = load i32, ptr %i.wg, align 4, !tbaa !30
  %.not.i67.i = icmp ult i32 %i.abi, %i.abj
  br i1 %.not.i67.i, label %bb.bl, label %bb.bk, !prof !336

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %.sroa.0.1.i.i.i.i75, i32 %i.aae)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.abk = zext i32 %i.abi to i64
  %i.abl = load ptr, ptr %10, align 8, !tbaa !16
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.abk ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i75, ptr %i.abm, align 1
  %.sroa.32.0..sroa_idx.i68.i = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store i32 %i.aae, ptr %.sroa.32.0..sroa_idx.i68.i, align 1
  %i.abn = load i32, ptr %i.wf, align 8, !tbaa !29
  %i.abo = add i32 %i.abn, 1
  store i32 %i.abo, ptr %i.wf, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrEjELb1EE9push_backES4_.exit.i: ; preds = %bb.bl, %bb.bk, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit66.i, %.split96.i, %bb.bh, %bb.bg, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i78, %.split94.i
  %.251.i = phi i1 [ %.049108.i, %.split94.i ], [ %.049108.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i78 ], [ %spec.select.i, %bb.bl ], [ %spec.select.i, %bb.bk ], [ %spec.select.i, %.split96.i ], [ %spec.select.i, %bb.bh ], [ %spec.select.i, %bb.bg ], [ %spec.select.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit66.i ] ; 2 uses
  %i.abp = load ptr, ptr %i.yr, align 8, !tbaa !60 ; 3 uses
  %.not98.i = icmp eq ptr %.sroa.0.1.i.i.i.i75, %i.abp
  br i1 %.not98.i, label %._crit_edge.i79, label %.lr.ph.i72

bb.bm:                                            ; preds = %._crit_edge.i79
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 72
  %.sroa.016.0.copyload.i = load ptr, ptr %i.abq, align 8, !tbaa !338
  call fastcc void @_ZNK12_GLOBAL__N_127AArch64SpeculationHardening28insertFullSpeculationBarrierERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0130.0217, ptr %i.abp, ptr %.sroa.016.0.copyload.i)
  br label %.loopexit.i86

.critedge.i:                                      ; preds = %._crit_edge.i79, %bb.ba
  %i.abr = load ptr, ptr %9, align 8, !tbaa !16   ; 2 uses
  %i.abs = load i32, ptr %i.wc, align 8, !tbaa !29 ; 2 uses
  %i.abt = zext i32 %i.abs to i64
  %.idx.i = shl nuw nsw i64 %i.abt, 4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 %.idx.i
  %.not110.i = icmp eq i32 %i.abs, 0
  br i1 %.not110.i, label %._crit_edge114.i, label %.lr.ph113.i

._crit_edge114.i:                                 ; preds = %.lr.ph113.i, %.critedge.i
  %.1.lcssa.i = phi i1 [ %.0.i.i, %.critedge.i ], [ true, %.lr.ph113.i ]
  %i.abv = load ptr, ptr %10, align 8, !tbaa !16  ; 2 uses
  %i.abw = load i32, ptr %i.wf, align 8, !tbaa !29 ; 2 uses
  %i.abx = zext i32 %i.abw to i64
  %.idx121.i = shl nuw nsw i64 %i.abx, 4
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 %.idx121.i
  %.not54116.i = icmp eq i32 %i.abw, 0
  br i1 %.not54116.i, label %.loopexit.i86, label %.lr.ph119.i

.lr.ph113.i:                                      ; preds = %.critedge.i, %.lr.ph113.i
  %.053111.i = phi ptr [ %i.abz, %.lr.ph113.i ], [ %i.abr, %.critedge.i ] ; 3 uses
  %.sroa.08.0.copyload.i = load ptr, ptr %.053111.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.053111.i, i64 8
  %.sroa.4.0.copyload.i80 = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  call fastcc void @_ZNK12_GLOBAL__N_127AArch64SpeculationHardening29insertRegToSPTaintPropagationERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0130.0217, ptr %.sroa.08.0.copyload.i, i32 noundef %.sroa.4.0.copyload.i80)
  %i.abz = getelementptr inbounds nuw i8, ptr %.053111.i, i64 16 ; 2 uses
  %.not.i81 = icmp eq ptr %i.abz, %i.abu
  br i1 %.not.i81, label %._crit_edge114.i, label %.lr.ph113.i

.lr.ph119.i:                                      ; preds = %._crit_edge114.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84
  %.052117.i = phi ptr [ %i.acl, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84 ], [ %i.abv, %._crit_edge114.i ] ; 3 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %.052117.i, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.052117.i, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i82 = load i64, ptr %.sroa.01.0.copyload.i, align 8
  %i.aca = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i82, 4
  %.not.i.i.i.i.i83 = icmp eq i64 %i.aca, 0
  br i1 %.not.i.i.i.i.i83, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87: ; preds = %.lr.ph119.i
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 44
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !304
  %i.acd = and i32 %i.acc, 8
  %.not34.i.i.i.i.i88 = icmp eq i32 %i.acd, 0
  br i1 %.not34.i.i.i.i.i88, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89
  %.sroa.0.05.i.i.i.i.i90 = phi ptr [ %i.acf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89 ], [ %.sroa.01.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87 ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i90, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !60 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 44
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !304
  %i.aci = and i32 %i.ach, 8
  %.not3.i.i.i.i.i91 = icmp eq i32 %i.aci, 0
  br i1 %.not3.i.i.i.i.i91, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89, !llvm.loop !140

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87, %.lr.ph119.i
  %.sroa.0.1.i.i.i.i.i85 = phi ptr [ %.sroa.01.0.copyload.i, %.lr.ph119.i ], [ %.sroa.01.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i87 ], [ %i.acf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i89 ]
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i85, i64 8
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !60
  call fastcc void @_ZNK12_GLOBAL__N_127AArch64SpeculationHardening29insertSPToRegTaintPropagationERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0130.0217, ptr %i.ack)
  call fastcc void @_ZNK12_GLOBAL__N_127AArch64SpeculationHardening29insertRegToSPTaintPropagationERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0130.0217, ptr nonnull %.sroa.01.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i)
  %i.acl = getelementptr inbounds nuw i8, ptr %.052117.i, i64 16 ; 2 uses
  %.not54.i = icmp eq ptr %i.acl, %i.aby
  br i1 %.not54.i, label %.loopexit.i86, label %.lr.ph119.i

.loopexit.i86:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84, %._crit_edge114.i, %bb.bm
  %.0142 = phi i1 [ false, %._crit_edge114.i ], [ true, %bb.bm ], [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84 ] ; 3 uses
  %.3.i = phi i1 [ %.1.lcssa.i, %._crit_edge114.i ], [ true, %bb.bm ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i84 ]
  %i.acm = load ptr, ptr %i.wm, align 8, !tbaa !16 ; 2 uses
  %i.acn = icmp eq ptr %i.acm, %i.wn
  br i1 %i.acn, label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %.loopexit.i86
  call void @free(ptr noundef %i.acm) #17
  br label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i.i

_ZN4llvm12LiveRegUnitsD2Ev.exit.i.i:              ; preds = %bb.bn, %.loopexit.i86
  %i.aco = load ptr, ptr %i.wh, align 8, !tbaa !16 ; 2 uses
  %i.acp = icmp eq ptr %i.aco, %i.wi
  br i1 %i.acp, label %_ZN4llvm12RegScavengerD2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit.i.i
  call void @free(ptr noundef %i.aco) #17
  br label %_ZN4llvm12RegScavengerD2Ev.exit.i

_ZN4llvm12RegScavengerD2Ev.exit.i:                ; preds = %bb.bo, %_ZN4llvm12LiveRegUnitsD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.acq = load ptr, ptr %10, align 8, !tbaa !16  ; 2 uses
  %i.acr = icmp eq ptr %i.acq, %i.we
  br i1 %i.acr, label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrEjELj4EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm12RegScavengerD2Ev.exit.i
  call void @free(ptr noundef %i.acq) #17
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrEjELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrEjELj4EED2Ev.exit.i: ; preds = %bb.bp, %_ZN4llvm12RegScavengerD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.acs = load ptr, ptr %9, align 8, !tbaa !16   ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.wb
  br i1 %i.act, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening21instrumentControlFlowERN4llvm17MachineBasicBlockERb.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrEjELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.acs) #17
  br label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening21instrumentControlFlowERN4llvm17MachineBasicBlockERb.exit

_ZN12_GLOBAL__N_127AArch64SpeculationHardening21instrumentControlFlowERN4llvm17MachineBasicBlockERb.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrEjELj4EED2Ev.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.acu = load i32, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  %.not5.i.i.i.i.i.i.i95 = icmp eq i32 %i.acu, 0
  br i1 %.not5.i.i.i.i.i.i.i95, label %_ZN4llvm9BitVector5resetEv.exit.i98, label %.lr.ph.i.i.i.i.i.preheader.i.i96

.lr.ph.i.i.i.i.i.preheader.i.i96:                 ; preds = %_ZN12_GLOBAL__N_127AArch64SpeculationHardening21instrumentControlFlowERN4llvm17MachineBasicBlockERb.exit
  %i.acv = zext i32 %i.acu to i64
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.acv, 3
  %i.acw = load ptr, ptr %i.t, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 8 %i.acw, i8 0, i64 %.idx.i.i.i.i97, i1 false), !tbaa !22
  br label %_ZN4llvm9BitVector5resetEv.exit.i98

_ZN4llvm9BitVector5resetEv.exit.i98:              ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i96, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening21instrumentControlFlowERN4llvm17MachineBasicBlockERb.exit
  %i.acx = load ptr, ptr %i.yr, align 8, !tbaa !60 ; 3 uses
  %.not102119.i = icmp eq ptr %i.acx, %i.yq
  br i1 %.not102119.i, label %._crit_edge.i115, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %_ZN4llvm9BitVector5resetEv.exit.i98
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.0130.0217, i64 32 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.sroa.0130.0217, i64 40 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i, %.lr.ph123.i
  %.0122.i = phi i1 [ false, %.lr.ph123.i ], [ %.0.i.i113, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i ] ; 3 uses
  %.sroa.088.0120.i = phi ptr [ %i.acx, %.lr.ph123.i ], [ %i.adn, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i ] ; 27 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 72 ; 2 uses
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !338
  %i.adc = inttoptr i64 %i.adb to ptr             ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i99 = load i64, ptr %.sroa.088.0120.i, align 8
  %i.add = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i99, 4
  %.not.i.i.i.i.i100 = icmp eq i64 %i.add, 0
  br i1 %.not.i.i.i.i.i100, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125: ; preds = %bb.br
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 44
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !304
  %i.adg = and i32 %i.adf, 8
  %.not34.i.i.i.i.i126 = icmp eq i32 %i.adg, 0
  br i1 %.not34.i.i.i.i.i126, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127
  %.sroa.0.05.i.i.i.i.i128 = phi ptr [ %i.adi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127 ], [ %.sroa.088.0120.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125 ]
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i128, i64 8
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !60 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 44
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !304
  %i.adl = and i32 %i.adk, 8
  %.not3.i.i.i.i.i129 = icmp eq i32 %i.adl, 0
  br i1 %.not3.i.i.i.i.i129, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127, !llvm.loop !140

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125, %bb.br
  %.sroa.0.1.i.i.i.i.i102 = phi ptr [ %.sroa.088.0120.i, %bb.br ], [ %.sroa.088.0120.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i125 ], [ %i.adi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i127 ]
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i102, i64 8
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !60 ; 3 uses
  %i.ado = load ptr, ptr %i.t, align 8, !tbaa !16 ; 4 uses
  %i.adp = load i32, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  %i.adq = zext i32 %i.adp to i64                 ; 2 uses
  %.idx2.i.i.i = shl nuw nsw i64 %i.adq, 3        ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 %.idx2.i.i.i
  %i.ads = lshr i64 %i.adq, 2                     ; 2 uses
  %.not.i.i.i103 = icmp eq i64 %i.ads, 0
  br i1 %.not.i.i.i103, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101
  %i.adt = and i64 %.idx2.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ado, i64 %i.adt
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bv, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i = phi i64 [ %i.aec, %bb.bv ], [ %i.ads, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i = phi ptr [ %i.aeb, %bb.bv ], [ %i.ado, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.adu = load i64, ptr %.02946.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %.not32.i.i.i.i.i.i.i.i = icmp eq i64 %i.adu, 0
  br i1 %.not32.i.i.i.i.i.i.i.i, label %bb.bs, label %_ZNK4llvm9BitVector3anyEv.exit.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 8
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !22
  %.not33.i.i.i.i.i.i.i.i = icmp eq i64 %i.adw, 0
  br i1 %.not33.i.i.i.i.i.i.i.i, label %bb.bt, label %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit

bb.bt:                                            ; preds = %bb.bs
  %i.adx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 16
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !22
  %.not34.i.i.i.i.i.i.i.i = icmp eq i64 %i.ady, 0
  br i1 %.not34.i.i.i.i.i.i.i.i, label %bb.bu, label %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit369

bb.bu:                                            ; preds = %bb.bt
  %i.adz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 24
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !22
  %.not35.i.i.i.i.i.i.i.i = icmp eq i64 %i.aea, 0
  br i1 %.not35.i.i.i.i.i.i.i.i, label %bb.bv, label %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit371

bb.bv:                                            ; preds = %bb.bu
  %i.aeb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 32
  %i.aec = add nsw i64 %.047.i.i.i.i.i.i.i.i, -1
  %i.aed = icmp sgt i64 %.047.i.i.i.i.i.i.i.i, 1
  br i1 %i.aed, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !156

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.bv
  %i.aee = and i32 %i.adp, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101
  %.pre-phi53.i.i.i.i.i.i.i.i = phi i32 [ %i.aee, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.adp, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101 ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.ado, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i101 ] ; 5 uses
  switch i32 %.pre-phi53.i.i.i.i.i.i.i.i, label %_ZNK4llvm9BitVector3anyEv.exit.thread.i [
    i32 3, label %bb.bw
    i32 2, label %bb.by
    i32 1, label %bb.ca
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.aef = load i64, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %.not.i.i.i.i.i.i.i.i124 = icmp eq i64 %i.aef, 0
  br i1 %.not.i.i.i.i.i.i.i.i124, label %bb.bx, label %_ZNK4llvm9BitVector3anyEv.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.aeg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.aeg, %bb.bx ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aeh = load i64, ptr %.1.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %.not30.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeh, 0
  br i1 %.not30.i.i.i.i.i.i.i.i, label %bb.bz, label %_ZNK4llvm9BitVector3anyEv.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.aei = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.aei, %bb.bz ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aej = load i64, ptr %.2.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %.not31.i.i.i.i.i.i.i.i = icmp eq i64 %i.aej, 0
  br i1 %.not31.i.i.i.i.i.i.i.i, label %_ZNK4llvm9BitVector3anyEv.exit.thread.i, label %_ZNK4llvm9BitVector3anyEv.exit.i

_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit: ; preds = %bb.bs
  %i.aek = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 8
  br label %_ZNK4llvm9BitVector3anyEv.exit.i

_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit369: ; preds = %bb.bt
  %i.ael = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 16
  br label %_ZNK4llvm9BitVector3anyEv.exit.i

_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit371: ; preds = %bb.bu
  %i.aem = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 24
  br label %_ZNK4llvm9BitVector3anyEv.exit.i

_ZNK4llvm9BitVector3anyEv.exit.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit369, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit371, %bb.ca, %bb.by, %bb.bw
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.by ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.bw ], [ %.2.i.i.i.i.i.i.i.i, %bb.ca ], [ %i.aem, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit371 ], [ %i.aek, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit ], [ %i.ael, %_ZNK4llvm9BitVector3anyEv.exit.i.loopexit.split.loop.exit369 ], [ %.02946.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not104.i = icmp eq ptr %i.adr, %.028.i.i.i.i.i.i.i.i
  br i1 %.not104.i, label %_ZNK4llvm9BitVector3anyEv.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNK4llvm9BitVector3anyEv.exit.i
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 44 ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !304 ; 3 uses
  %i.aep = and i32 %i.aeo, 12                     ; 2 uses
  %i.aeq = icmp eq i32 %i.aep, 0
  %i.aer = and i32 %i.aeo, 4
  %i.aes = icmp ne i32 %i.aer, 0
  %or.cond.i.i.i104 = or i1 %i.aeq, %i.aes
  br i1 %or.cond.i.i.i104, label %.split.i123, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i105

.split.i123:                                      ; preds = %bb.cb
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 16
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !305
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !307
  %i.aex = and i64 %i.aew, 128
  %.not105.i = icmp eq i64 %i.aex, 0
  br i1 %.not105.i, label %bb.cc, label %.loopexit.i119

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i105: ; preds = %bb.cb
  %i.aey = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0120.i, i64 noundef 128, i32 noundef 1) #17
  br i1 %i.aey, label %.loopexit.i119, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i: ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i105
  %.pre.i106 = load i32, ptr %i.aen, align 4, !tbaa !304 ; 2 uses
  %.pre145.i = and i32 %.pre.i106, 12
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i, %.split.i123
  %.pre-phi.i107 = phi i32 [ %.pre145.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i ], [ %i.aep, %.split.i123 ]
  %i.aez = phi i32 [ %.pre.i106, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i ], [ %i.aeo, %.split.i123 ]
  %i.afa = icmp eq i32 %.pre-phi.i107, 0
  %i.afb = and i32 %i.aez, 4
  %i.afc = icmp ne i32 %i.afb, 0
  %or.cond.i.i42.i = or i1 %i.afa, %i.afc
  br i1 %or.cond.i.i42.i, label %.split92.i, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i

.split92.i:                                       ; preds = %bb.cc
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !305
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !307
  %i.afh = and i64 %i.afg, 512
  %.not106.i = icmp eq i64 %i.afh, 0
  br i1 %.not106.i, label %_ZNK4llvm9BitVector3anyEv.exit.thread.i, label %.loopexit.i119

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i: ; preds = %bb.cc
  %i.afi = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0120.i, i64 noundef 512, i32 noundef 1) #17
  br i1 %i.afi, label %.loopexit.i119, label %_ZNK4llvm9BitVector3anyEv.exit.thread.i

_ZNK4llvm9BitVector3anyEv.exit.thread.i:          ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split92.i, %_ZNK4llvm9BitVector3anyEv.exit.i, %bb.ca, %._crit_edge.i.i.i.i.i.i.i.i
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 32
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !309 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 40
  %i.afm = load i24, ptr %i.afl, align 8
  %i.afn = zext i24 %i.afm to i64                 ; 2 uses
  %i.afo = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0120.i) #17
  %i.afp = zext i32 %i.afo to i64                 ; 2 uses
  %i.afq = getelementptr inbounds nuw [32 x i8], ptr %i.afk, i64 %i.afn
  %.not41117.i = icmp samesign eq i64 %i.afp, %i.afn
  br i1 %.not41117.i, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm9BitVector3anyEv.exit.thread.i
  %i.afr = getelementptr inbounds nuw [32 x i8], ptr %i.afk, i64 %i.afp
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %bb.ce, %.lr.ph.preheader.i
  %.039118.i = phi ptr [ %i.agd, %bb.ce ], [ %i.afr, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.082.0.copyload.i = load i32, ptr %.039118.i, align 8, !tbaa !74
  %i.afs = and i32 %.sroa.082.0.copyload.i, 255
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i108
  %.sroa.4.0..039.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.039118.i, i64 4
  %.sroa.4.0.copyload.i118 = load i32, ptr %.sroa.4.0..039.sroa_idx.i, align 4, !tbaa !74 ; 2 uses
  %i.afu = lshr i32 %.sroa.4.0.copyload.i118, 6
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.afv
  %i.afy = and i32 %.sroa.4.0.copyload.i118, 63
  %i.afz = load i64, ptr %i.afx, align 8, !tbaa !22
  %i.aga = zext nneg i32 %i.afy to i64
  %i.agb = shl nuw i64 1, %i.aga
  %i.agc = and i64 %i.agb, %i.afz
  %.not107.i = icmp eq i64 %i.agc, 0
  br i1 %.not107.i, label %bb.ce, label %.loopexit.i119

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i108
  %i.agd = getelementptr inbounds nuw i8, ptr %.039118.i, i64 32 ; 2 uses
  %.not41.i = icmp eq ptr %i.agd, %i.afq
  br i1 %.not41.i, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i, label %.lr.ph.i108

.loopexit.i119:                                   ; preds = %bb.cd, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split92.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i105, %.split.i123
  br i1 %.0142, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i, label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i119
  %i.age = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !76
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 -140096
  %i.agi = load ptr, ptr %i.acy, align 8, !tbaa !120 ; 2 uses
  %i.agj = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.agi, ptr noundef nonnull align 8 dereferenceable(32) %i.agh, ptr %i.adc, i1 noundef zeroext false) #17 ; 7 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.acz, ptr noundef %i.agj) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i120 = load i64, ptr %.sroa.088.0120.i, align 8
  %i.agk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i120, -8 ; 2 uses
  %i.agl = inttoptr i64 %i.agk to ptr
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  store ptr %.sroa.088.0120.i, ptr %i.agm, align 8, !tbaa !60
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i121 = load i64, ptr %i.agj, align 8
  %i.agn = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i121, 7
  %i.ago = or disjoint i64 %i.agn, %i.agk
  store i64 %i.ago, ptr %i.agj, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  store ptr %i.agj, ptr %i.agp, align 8, !tbaa !60
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i122 = load i64, ptr %.sroa.088.0120.i, align 8
  %i.agq = ptrtoint ptr %i.agj to i64
  %i.agr = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i122, 7
  %i.ags = or disjoint i64 %i.agr, %i.agq
  store i64 %i.ags, ptr %.sroa.088.0120.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 1, ptr %7, align 8, !alias.scope !344
  store ptr null, ptr %i.ws, align 8, !tbaa !123, !alias.scope !344
  store i64 20, ptr %i.wt, align 8, !tbaa !74, !alias.scope !344
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.agj, ptr noundef nonnull align 8 dereferenceable(1065) %i.agi, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.agt = load i32, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.agt, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i:                 ; preds = %bb.cf
  %i.agu = zext i32 %i.agt to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.agu, 3
  %i.agv = load ptr, ptr %i.t, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 8 %i.agv, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !22
  br label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i

_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i: ; preds = %bb.ce, %.lr.ph.i.i.i.i.i.preheader.i.i.i, %bb.cf, %.loopexit.i119, %_ZNK4llvm9BitVector3anyEv.exit.thread.i
  %.1.i = phi i1 [ %.0122.i, %.loopexit.i119 ], [ true, %bb.cf ], [ true, %.lr.ph.i.i.i.i.i.preheader.i.i.i ], [ %.0122.i, %_ZNK4llvm9BitVector3anyEv.exit.thread.i ], [ %.0122.i, %bb.ce ]
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 52
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !308
  switch i32 %i.agx, label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i [
    i32 1471, label %bb.cg
    i32 1472, label %bb.ch
  ]

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i
  %.026.i.i = phi i1 [ false, %bb.cg ], [ true, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i ] ; 2 uses
  %i.agy = load i8, ptr %i.em, align 8, !tbaa !67, !range !13, !noundef !14
  %i.agz = trunc nuw i8 %i.agy to i1
  %or.cond.i.i109 = or i1 %.0142, %i.agz
  br i1 %or.cond.i.i109, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 32
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !309 ; 4 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !74
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 36
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !74
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.088.0120.i, i64 40
  %i.ahh = load i24, ptr %i.ahg, align 8
  %i.ahi = zext i24 %i.ahh to i64
  %i.ahj = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0120.i) #17
  %i.ahk = zext i32 %i.ahj to i64
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ahk, i64 %i.ahi) ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %..i.i.i.i, 5
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.idx.i.i
  %.not52.i.i = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not52.i.i, label %._crit_edge56.i.i, label %.lr.ph55.i.i

._crit_edge56.i.i:                                ; preds = %._crit_edge.i.i111, %bb.ci
  %.sroa.04.0.copyload.i.i = load ptr, ptr %i.ada, align 8, !tbaa !338
  %i.ahm = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !76
  %..i.i = select i1 %.026.i.i, i64 -60512, i64 -60448
  %.59.i.i = select i1 %.026.i.i, i64 72, i64 76
  %i.ahp = getelementptr inbounds i8, ptr %i.aho, i64 %..i.i
  %i.ahq = load ptr, ptr %i.acy, align 8, !tbaa !120 ; 5 uses
  %i.ahr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %i.ahp, ptr %.sroa.04.0.copyload.i.i, i1 noundef zeroext false) #17 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.acz, ptr noundef %i.ahr) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i46.i = load i64, ptr %.sroa.088.0120.i, align 8
  %i.ahs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i46.i, -8 ; 2 uses
  %i.aht = inttoptr i64 %i.ahs to ptr
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store ptr %.sroa.088.0120.i, ptr %i.ahu, align 8, !tbaa !60
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i47.i = load i64, ptr %i.ahr, align 8
  %i.ahv = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i47.i, 7
  %i.ahw = or disjoint i64 %i.ahv, %i.ahs
  store i64 %i.ahw, ptr %i.ahr, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store ptr %i.ahr, ptr %i.ahx, align 8, !tbaa !60
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i48.i = load i64, ptr %.sroa.088.0120.i, align 8
  %i.ahy = ptrtoint ptr %i.ahr to i64
  %i.ahz = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i48.i, 7
  %i.aia = or disjoint i64 %i.ahz, %i.ahy
  store i64 %i.aia, ptr %.sroa.088.0120.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %i.wu, align 8, !tbaa !123, !alias.scope !345
  store i32 %i.ahd, ptr %i.wv, align 4, !tbaa !74, !alias.scope !345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i8 0, i64 16, i1 false), !alias.scope !345
  store i32 16777216, ptr %6, align 8, !alias.scope !345
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahr, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %i.wx, align 8, !tbaa !123, !alias.scope !346
  store i32 %i.ahf, ptr %i.wy, align 4, !tbaa !74, !alias.scope !346
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wz, i8 0, i64 16, i1 false), !alias.scope !346
  store i32 67108864, ptr %5, align 8, !alias.scope !346
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahr, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.59.i.i
  %i.aib = load i32, ptr %.in.i.i, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %i.xa, align 8, !tbaa !123, !alias.scope !347
  store i32 %i.aib, ptr %i.xb, align 4, !tbaa !74, !alias.scope !347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false), !alias.scope !347
  store i32 0, ptr %4, align 8, !alias.scope !347
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahr, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 1, ptr %3, align 8, !alias.scope !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ahr, ptr noundef nonnull align 8 dereferenceable(1065) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.cj

.lr.ph55.i.i:                                     ; preds = %bb.ci, %._crit_edge.i.i111
  %.02753.i.i = phi ptr [ %i.aiw, %._crit_edge.i.i111 ], [ %i.ahb, %bb.ci ] ; 2 uses
  %.sroa.3.0..027.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02753.i.i, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..027.sroa_idx.i.i, align 4, !tbaa !74
  %i.aic = load ptr, ptr %i.s, align 8, !tbaa !279
  %i.aid = call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.aic, i32 %.sroa.3.0.copyload.i.i) #17 ; 2 uses
  %i.aie = extractvalue { ptr, i64 } %i.aid, 0    ; 4 uses
  %i.aif = extractvalue { ptr, i64 } %i.aid, 1    ; 2 uses
  %.idx57.i.i = shl i64 %i.aif, 1                 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 %.idx57.i.i
  %.not4950.i.i = icmp eq i64 %i.aif, 0
  br i1 %.not4950.i.i, label %._crit_edge.i.i111, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %.lr.ph55.i.i
  %i.aih = load ptr, ptr %i.t, align 8, !tbaa !16 ; 3 uses
  %i.aii = add i64 %.idx57.i.i, -2                ; 2 uses
  %i.aij = and i64 %i.aii, 2
  %lcmp.mod447.not.not = icmp eq i64 %i.aij, 0
  br i1 %lcmp.mod447.not.not, label %.prol.loopexit445.unr-lcssa, label %.prol.loopexit445

.prol.loopexit445.unr-lcssa:                      ; preds = %.lr.ph.i.i110
  %i.aik = load i16, ptr %i.aie, align 2, !tbaa !314
  %i.ail = zext i16 %i.aik to i32                 ; 2 uses
  %i.aim = and i32 %i.ail, 63
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = shl nuw i64 1, %i.ain
  %i.aip = lshr i32 %i.ail, 6
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %i.aiq ; 2 uses
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !22
  %i.ait = or i64 %i.aio, %i.ais
  store i64 %i.ait, ptr %i.air, align 8, !tbaa !22
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  br label %.prol.loopexit445

.prol.loopexit445:                                ; preds = %.prol.loopexit445.unr-lcssa, %.lr.ph.i.i110
  %.sroa.040.051.i.i.unr = phi ptr [ %i.aie, %.lr.ph.i.i110 ], [ %i.aiu, %.prol.loopexit445.unr-lcssa ]
  %i.aiv = icmp eq i64 %i.aii, 0
  br i1 %i.aiv, label %._crit_edge.i.i111, label %.lr.ph.i.i110.new

._crit_edge.i.i111:                               ; preds = %.prol.loopexit445, %.lr.ph.i.i110.new, %.lr.ph55.i.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %.02753.i.i, i64 32 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.aiw, %i.ahl
  br i1 %.not.i.i112, label %._crit_edge56.i.i, label %.lr.ph55.i.i

.lr.ph.i.i110.new:                                ; preds = %.prol.loopexit445, %.lr.ph.i.i110.new
  %.sroa.040.051.i.i = phi ptr [ %i.ajs, %.lr.ph.i.i110.new ], [ %.sroa.040.051.i.i.unr, %.prol.loopexit445 ] ; 3 uses
  %i.aix = load i16, ptr %.sroa.040.051.i.i, align 2, !tbaa !314
  %i.aiy = zext i16 %i.aix to i32                 ; 2 uses
  %i.aiz = and i32 %i.aiy, 63
  %i.aja = zext nneg i32 %i.aiz to i64
  %i.ajb = shl nuw i64 1, %i.aja
  %i.ajc = lshr i32 %i.aiy, 6
  %i.ajd = zext nneg i32 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %i.ajd ; 2 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !22
  %i.ajg = or i64 %i.ajb, %i.ajf
  store i64 %i.ajg, ptr %i.aje, align 8, !tbaa !22
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.040.051.i.i, i64 2
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !314
  %i.ajj = zext i16 %i.aji to i32                 ; 2 uses
  %i.ajk = and i32 %i.ajj, 63
  %i.ajl = zext nneg i32 %i.ajk to i64
  %i.ajm = shl nuw i64 1, %i.ajl
  %i.ajn = lshr i32 %i.ajj, 6
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %i.ajo ; 2 uses
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !22
  %i.ajr = or i64 %i.ajm, %i.ajq
  store i64 %i.ajr, ptr %i.ajp, align 8, !tbaa !22
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.040.051.i.i, i64 4 ; 2 uses
  %.not49.i.i.1 = icmp eq ptr %i.ajs, %i.aig
  br i1 %.not49.i.i.1, label %._crit_edge.i.i111, label %.lr.ph.i.i110.new, !llvm.loop !167

bb.cj:                                            ; preds = %._crit_edge56.i.i, %bb.ch
  %i.ajt = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0120.i) #17 ; 0 uses
  br label %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i

_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i: ; preds = %bb.cj, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i
  %.0.i.i113 = phi i1 [ true, %bb.cj ], [ %.1.i, %_ZN12_GLOBAL__N_127AArch64SpeculationHardening10insertCSDBERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocE.exit.i ] ; 2 uses
  %.not102.i114 = icmp eq ptr %i.adn, %i.yq
  br i1 %.not102.i114, label %._crit_edge.loopexit.i, label %bb.br, !llvm.loop !168

._crit_edge.loopexit.i:                           ; preds = %_ZN12_GLOBAL__N_127AArch64SpeculationHardening26expandSpeculationSafeValueERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i
  %.pre144.i = load i32, ptr %i.ao, align 8, !tbaa !29
  br label %._crit_edge.i115

._crit_edge.i115:                                 ; preds = %._crit_edge.loopexit.i, %_ZN4llvm9BitVector5resetEv.exit.i98
  %i.aju = phi i32 [ %i.acu, %_ZN4llvm9BitVector5resetEv.exit.i98 ], [ %.pre144.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.sroa.088.0.lcssa.i = phi ptr [ %i.acx, %_ZN4llvm9BitVector5resetEv.exit.i98 ], [ %i.adn, %._crit_edge.loopexit.i ] ; 4 uses
  %.sroa.086.0.lcssa.i = phi ptr [ null, %_ZN4llvm9BitVector5resetEv.exit.i98 ], [ %i.adc, %._crit_edge.loopexit.i ]
  %.0.lcssa.i116 = phi i1 [ false, %_ZN4llvm9BitVector5resetEv.exit.i98 ], [ %.0.i.i113, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ajv = load ptr, ptr %i.t, align 8, !tbaa !16 ; 4 uses
  %i.ajw = zext i32 %i.aju to i64                 ; 2 uses
  %.idx2.i.i49.i = shl nuw nsw i64 %i.ajw, 3      ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %.idx2.i.i49.i
  %i.ajy = lshr i64 %i.ajw, 2                     ; 2 uses
  %.not.i.i50.i = icmp eq i64 %i.ajy, 0
  br i1 %.not.i.i50.i, label %._crit_edge.i.i.i.i.i.i.i65.i, label %.lr.ph.preheader.i.i.i.i.i.i.i51.i

.lr.ph.preheader.i.i.i.i.i.i.i51.i:               ; preds = %._crit_edge.i115
  %i.ajz = and i64 %.idx2.i.i49.i, 34359738336
  %scevgep.i.i.i.i.i.i.i52.i = getelementptr i8, ptr %i.ajv, i64 %i.ajz
  br label %.lr.ph.i.i.i.i.i.i.i53.i

.lr.ph.i.i.i.i.i.i.i53.i:                         ; preds = %bb.cn, %.lr.ph.preheader.i.i.i.i.i.i.i51.i
  %.047.i.i.i.i.i.i.i54.i = phi i64 [ %i.aki, %bb.cn ], [ %i.ajy, %.lr.ph.preheader.i.i.i.i.i.i.i51.i ] ; 2 uses
  %.02946.i.i.i.i.i.i.i55.i = phi ptr [ %i.akh, %bb.cn ], [ %i.ajv, %.lr.ph.preheader.i.i.i.i.i.i.i51.i ] ; 9 uses
end_hunk_0
