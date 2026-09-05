Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIWholeQuadMode?download=true
inline.NumInlined: 3971
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_115SIWholeQuadMode3runERN4llvm15MachineFunctionE:bb.a
_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.preheader.preheader.i, %bb.hn
  %.sroa.014.1.i = phi ptr [ %.sroa.014.018.i, %bb.hn ], [ %i.bos, %.preheader.preheader.i ] ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bon, i64 52
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !256
  switch i32 %i.bou, label %bb.hx [
    i32 4377, label %bb.ho
    i32 4374, label %bb.hu
  ]

bb.ho:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.bov = load ptr, ptr %i.bno, align 8, !tbaa !201
  %i.bow = load ptr, ptr %i.bnp, align 8, !tbaa !200
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 329
  %i.boy = load i8, ptr %i.box, align 1, !tbaa !319, !range !296, !noundef !231
  %i.boz = trunc nuw i8 %i.boy to i1
  %i.bpa = select i1 %i.boz, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1408), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3776)
  %i.bpb = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.bov, ptr noundef nonnull %i.bpa, ptr nonnull @.str.4, i64 0) #18 ; 4 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bop, i64 56
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bon, i64 72
  %.sroa.055.0.copyload.i.i = load ptr, ptr %i.bpe, align 8, !tbaa !320
  store ptr %.sroa.055.0.copyload.i.i, ptr %39, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnq, i8 0, i64 24, i1 false)
  %i.bpf = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8
  %i.bph = load ptr, ptr %i.bmy, align 8, !tbaa !316, !nonnull !231, !align !317
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 72
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !1044
  %i.bpk = load ptr, ptr %i.bpg, align 8, !tbaa !259
  %i.bpl = zext i32 %i.bpj to i64
  %i.bpm = sub nsw i64 0, %i.bpl
  %i.bpn = getelementptr inbounds [32 x i8], ptr %i.bpk, i64 %i.bpm
  %i.bpo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr %i.bpd, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.bpn, i32 %i.bpb) ; 2 uses
  %i.bpp = extractvalue { ptr, ptr } %i.bpo, 0
  %i.bpq = extractvalue { ptr, ptr } %i.bpo, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  store i32 1, ptr %38, align 8, !alias.scope !1045
  store ptr null, ptr %i.bnr, align 8, !tbaa !323, !alias.scope !1045
  store i64 -1, ptr %i.bns, align 8, !tbaa !299, !alias.scope !1045
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bpq, ptr noundef nonnull align 8 dereferenceable(1065) %i.bpp, ptr noundef nonnull align 8 dereferenceable(32) %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  %i.bpr = load ptr, ptr %i.bno, align 8, !tbaa !201
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bon, i64 32
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !297
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 4
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !299
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.bpr, i32 %i.bpv, i32 %i.bpb) #18
  %i.bpw = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 2 uses
  %.not102.i.i = icmp eq ptr %i.bpw, null
  br i1 %.not102.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 32
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !359
  call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bpy, ptr noundef nonnull align 8 dereferenceable(80) %i.bon, i1 noundef zeroext false) #18
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.bpz = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bon) #18 ; 0 uses
  %i.bqa = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 2 uses
  %.not103.i.i = icmp eq ptr %i.bqa, null
  br i1 %.not103.i.i, label %_ZN12_GLOBAL__N_115SIWholeQuadMode13lowerInitExecERN4llvm12MachineInstrE.exit.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 32
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !359
  %i.bqd = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bqc, ptr noundef nonnull align 8 dereferenceable(80) %i.bpq, i1 noundef zeroext false) ; 0 uses
  %i.bqe = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 5 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 136 ; 3 uses
  %i.bqg = and i32 %i.bpb, 2147483647             ; 4 uses
  %i.bqh = add nuw i32 %i.bqg, 1
  %i.bqi = zext i32 %i.bqh to i64                 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqe, i64 144 ; 3 uses
  %i.bqk = load i32, ptr %i.bqj, align 8, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i77 = icmp ugt i32 %i.bqk, %i.bqg
  br i1 %.not.i.i.i.i.i77, label %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i.i, label %bb.hs

._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i.i: ; preds = %bb.hr
  %.pre.i.i.i.i = load ptr, ptr %i.bqf, align 8, !tbaa !210
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i

bb.hs:                                            ; preds = %bb.hr
  %i.bql = zext nneg i32 %i.bqk to i64            ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqe, i64 152 ; 2 uses
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !360
  %i.bqo = sub nuw nsw i64 %i.bqi, %i.bql         ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqe, i64 148
  %i.bqq = load i32, ptr %i.bqp, align 4, !tbaa !212
  %.not.i.i.i.i.i.not.i.i.i.i.i = icmp ult i32 %i.bqg, %i.bqq
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i, label %bb.ht, !prof !47

bb.ht:                                            ; preds = %bb.hs
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.bqf, ptr noundef nonnull %i.bqm, i64 noundef %i.bqi, i64 noundef 8) #18
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.bqj, align 8, !tbaa !211 ; 2 uses
  %.pre.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ht, %bb.hs
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.bql, %bb.hs ], [ %.pre.i.i.i.i.i.i.i, %bb.ht ]
  %i.bqr = phi i32 [ %i.bqk, %bb.hs ], [ %.pre.i.i.i.i.i.i.i.i, %bb.ht ]
  %i.bqs = load ptr, ptr %i.bqf, align 8, !tbaa !210 ; 2 uses
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bqs, i64 %.pre-phi.i.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bqo, 3
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bqv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bqt, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.bqn, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !361
  %i.bqv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bqv, %i.bqu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bqw = trunc nuw i64 %i.bqo to i32
  %i.bqx = add i32 %i.bqr, %i.bqw
  store i32 %i.bqx, ptr %i.bqj, align 8, !tbaa !211
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i.i
  %i.bqy = phi ptr [ %.pre.i.i.i.i, %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i.i ], [ %i.bqs, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ]
  %i.bqz = zext nneg i32 %i.bqg to i64
  %i.bra = getelementptr inbounds nuw [8 x i8], ptr %i.bqy, i64 %i.bqz
  %i.brb = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %i.bpb) #18 ; 2 uses
  store ptr %i.brb, ptr %i.bra, align 8, !tbaa !361
  %i.brc = call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.bqe, ptr noundef nonnull align 8 dereferenceable(120) %i.brb) #18 ; 0 uses
  br label %_ZN12_GLOBAL__N_115SIWholeQuadMode13lowerInitExecERN4llvm12MachineInstrE.exit.i

bb.hu:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bop, i64 56
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bon, i64 72
  %.sroa.046.0.copyload.i.i = load ptr, ptr %i.brf, align 8, !tbaa !320
  store ptr %.sroa.046.0.copyload.i.i, ptr %40, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnj, i8 0, i64 24, i1 false)
  %i.brg = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 8
  %i.bri = load ptr, ptr %i.bmy, align 8, !tbaa !316, !nonnull !231, !align !317 ; 2 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 52
  %i.brk = load i32, ptr %i.brj, align 4, !tbaa !362
  %i.brl = load ptr, ptr %i.brh, align 8, !tbaa !259
  %i.brm = zext i32 %i.brk to i64
  %i.brn = sub nsw i64 0, %i.brm
  %i.bro = getelementptr inbounds [32 x i8], ptr %i.brl, i64 %i.brn
  %.sroa.045.0.copyload.i.i = load i32, ptr %i.bri, align 4, !tbaa !44
  %i.brp = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr %i.bre, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.bro, i32 %.sroa.045.0.copyload.i.i) ; 2 uses
  %i.brq = extractvalue { ptr, ptr } %i.brp, 0
  %i.brr = extractvalue { ptr, ptr } %i.brp, 1    ; 2 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bon, i64 32
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !297
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 16
  %i.brv = load i64, ptr %i.bru, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  store i32 1, ptr %37, align 8, !alias.scope !1046
  store ptr null, ptr %i.bnl, align 8, !tbaa !323, !alias.scope !1046
  store i64 %i.brv, ptr %i.bnm, align 8, !tbaa !299, !alias.scope !1046
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.brr, ptr noundef nonnull align 8 dereferenceable(1065) %i.brq, ptr noundef nonnull align 8 dereferenceable(32) %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  %i.brw = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.brw, null
  br i1 %.not101.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 32
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !359
  call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bry, ptr noundef nonnull align 8 dereferenceable(80) %i.bon, i1 noundef zeroext false) #18
  %i.brz = load ptr, ptr %i.bnn, align 8, !tbaa !202
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 32
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !359
  %i.bsc = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bsb, ptr noundef nonnull align 8 dereferenceable(80) %i.brr, i1 noundef zeroext false) ; 0 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.bsd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bon) #18 ; 0 uses
  br label %_ZN12_GLOBAL__N_115SIWholeQuadMode13lowerInitExecERN4llvm12MachineInstrE.exit.i

bb.hx:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bon, i64 32 ; 2 uses
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !297
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 4
  %i.bsh = load i32, ptr %i.bsg, align 4, !tbaa !299 ; 6 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bop, i64 56
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !241 ; 10 uses
  %i.bsk = icmp slt i32 %i.bsh, 0
  br i1 %i.bsk, label %bb.hy, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.bsl = load ptr, ptr %i.bno, align 8, !tbaa !201
  %i.bsm = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bsl, i32 %i.bsh) #18 ; 10 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsm, i64 24
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !314
  %i.bsp = icmp eq ptr %i.bso, %i.bop
  br i1 %i.bsp, label %bb.hz, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i

bb.hz:                                            ; preds = %bb.hy
  %.not.i.i78 = icmp eq ptr %i.bsm, %i.bsj
  br i1 %.not.i.i78, label %.preheader.preheader.i.i, label %bb.ia

.preheader.preheader.i.i:                         ; preds = %bb.hz
  %51 = getelementptr inbounds nuw i8, ptr %i.bsj, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !241
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i

bb.ia:                                            ; preds = %bb.hz
  %i.bsq = call noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bsm) #18 ; 0 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bop, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bsr, ptr noundef nonnull %i.bsm) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i79 = load i64, ptr %i.bsj, align 8
  %i.bss = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i79, -8 ; 2 uses
  %i.bst = inttoptr i64 %i.bss to ptr
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsm, i64 8
  store ptr %i.bsj, ptr %i.bsu, align 8, !tbaa !241
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.bsm, align 8
  %i.bsv = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.bsw = or disjoint i64 %i.bsv, %i.bss
  store i64 %i.bsw, ptr %i.bsm, align 8
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bst, i64 8
  store ptr %i.bsm, ptr %i.bsx, align 8, !tbaa !241
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.bsj, align 8
  %i.bsy = ptrtoint ptr %i.bsm to i64
  %i.bsz = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.bta = or disjoint i64 %i.bsz, %i.bsy
  store i64 %i.bta, ptr %i.bsj, align 8
  %i.btb = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.btb, null
  br i1 %.not99.i.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN4llvm13LiveIntervals10handleMoveERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(424) %i.btb, ptr noundef nonnull align 8 dereferenceable(80) %i.bsm, i1 noundef zeroext false) #18
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i: ; preds = %bb.ib, %bb.ia, %.preheader.preheader.i.i, %bb.hy, %bb.hx
  %.1.i.i = phi ptr [ %i.bsj, %bb.hx ], [ %i.bsj, %bb.ib ], [ %i.bsj, %bb.ia ], [ %i.bsj, %bb.hy ], [ %52, %.preheader.preheader.i.i ] ; 4 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bon, i64 72 ; 4 uses
  %i.btd = load ptr, ptr %0, align 8, !tbaa !198
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 384
  %i.btf = load i8, ptr %i.bte, align 8, !tbaa !207
  %i.btg = zext nneg i8 %i.btf to i32             ; 2 uses
  %i.bth = shl nuw i32 1, %i.btg
  %i.bti = shl i32 2, %i.btg
  %i.btj = add i32 %i.bti, -1
  %i.btk = load ptr, ptr %i.bno, align 8, !tbaa !201
  %i.btl = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.btk, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1856), ptr nonnull @.str.4, i64 0) #18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %.sroa.018.0.copyload.i.i = load ptr, ptr %i.btc, align 8, !tbaa !320
  store ptr %.sroa.018.0.copyload.i.i, ptr %41, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnt, i8 0, i64 24, i1 false)
  %i.btm = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 8
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !259
  %i.btp = getelementptr inbounds i8, ptr %i.bto, i64 -153472
  %i.btq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr noundef nonnull align 8 dereferenceable(80) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %i.btp, i32 %i.btl) ; 2 uses
  %i.btr = extractvalue { ptr, ptr } %i.btq, 0    ; 2 uses
  %i.bts = extractvalue { ptr, ptr } %i.btq, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  store ptr null, ptr %i.bnu, align 8, !tbaa !323, !alias.scope !1047
  store i32 %i.bsh, ptr %i.bnv, align 4, !tbaa !299, !alias.scope !1047
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bnw, i8 0, i64 16, i1 false), !alias.scope !1047
  store i32 0, ptr %36, align 8, !alias.scope !1047
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bts, ptr noundef nonnull align 8 dereferenceable(1065) %i.btr, ptr noundef nonnull align 8 dereferenceable(32) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.btt = load ptr, ptr %i.bse, align 8, !tbaa !297
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btt, i64 48
  %i.btv = load i64, ptr %i.btu, align 8, !tbaa !299
  %i.btw = zext i32 %i.btj to i64
  %i.btx = and i64 %i.btv, %i.btw
  %i.bty = or i64 %i.btx, 458752
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  store i32 1, ptr %35, align 8, !alias.scope !1048
  store ptr null, ptr %i.bnx, align 8, !tbaa !323, !alias.scope !1048
  store i64 %i.bty, ptr %i.bny, align 8, !tbaa !299, !alias.scope !1048
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bts, ptr noundef nonnull align 8 dereferenceable(1065) %i.btr, ptr noundef nonnull align 8 dereferenceable(32) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  %.sroa.015.0.copyload.i.i = load ptr, ptr %i.btc, align 8, !tbaa !320
  store ptr %.sroa.015.0.copyload.i.i, ptr %42, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnz, i8 0, i64 24, i1 false)
  %i.btz = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  %i.bub = load ptr, ptr %i.bmy, align 8, !tbaa !316, !nonnull !231, !align !317 ; 2 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 40
  %i.bud = load i32, ptr %i.buc, align 4, !tbaa !1049
  %i.bue = load ptr, ptr %i.bua, align 8, !tbaa !259
  %i.buf = zext i32 %i.bud to i64
  %i.bug = sub nsw i64 0, %i.buf
  %i.buh = getelementptr inbounds [32 x i8], ptr %i.bue, i64 %i.bug
  %.sroa.014.0.copyload.i.i = load i32, ptr %i.bub, align 4, !tbaa !44
  %i.bui = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr noundef nonnull align 8 dereferenceable(80) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %i.buh, i32 %.sroa.014.0.copyload.i.i) ; 2 uses
  %i.buj = extractvalue { ptr, ptr } %i.bui, 0    ; 2 uses
  %i.buk = extractvalue { ptr, ptr } %i.bui, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store ptr null, ptr %i.boa, align 8, !tbaa !323, !alias.scope !1050
  store i32 %i.btl, ptr %i.bob, align 4, !tbaa !299, !alias.scope !1050
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.boc, i8 0, i64 16, i1 false), !alias.scope !1050
  store i32 0, ptr %34, align 8, !alias.scope !1050
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.buk, ptr noundef nonnull align 8 dereferenceable(1065) %i.buj, ptr noundef nonnull align 8 dereferenceable(32) %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  store i32 1, ptr %33, align 8, !alias.scope !1051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bod, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.buk, ptr noundef nonnull align 8 dereferenceable(1065) %i.buj, ptr noundef nonnull align 8 dereferenceable(32) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  %.sroa.012.0.copyload.i.i = load ptr, ptr %i.btc, align 8, !tbaa !320
  store ptr %.sroa.012.0.copyload.i.i, ptr %43, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.boe, i8 0, i64 24, i1 false)
  %i.bul = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 8
  %i.bun = load ptr, ptr %i.bum, align 8, !tbaa !259
  %i.buo = getelementptr inbounds i8, ptr %i.bun, i64 -162208
  %i.bup = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr noundef nonnull align 8 dereferenceable(80) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(32) %i.buo) ; 2 uses
  %i.buq = extractvalue { ptr, ptr } %i.bup, 0    ; 2 uses
  %i.bur = extractvalue { ptr, ptr } %i.bup, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  store ptr null, ptr %i.bof, align 8, !tbaa !323, !alias.scope !1052
  store i32 %i.btl, ptr %i.bog, align 4, !tbaa !299, !alias.scope !1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.boh, i8 0, i64 16, i1 false), !alias.scope !1052
  store i32 67108864, ptr %32, align 8, !alias.scope !1052
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bur, ptr noundef nonnull align 8 dereferenceable(1065) %i.buq, ptr noundef nonnull align 8 dereferenceable(32) %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.bus = zext i32 %i.bth to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  store i32 1, ptr %31, align 8, !alias.scope !1053
  store ptr null, ptr %i.boi, align 8, !tbaa !323, !alias.scope !1053
  store i64 %i.bus, ptr %i.boj, align 8, !tbaa !299, !alias.scope !1053
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bur, ptr noundef nonnull align 8 dereferenceable(1065) %i.buq, ptr noundef nonnull align 8 dereferenceable(32) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.btc, align 8, !tbaa !320
  store ptr %.sroa.010.0.copyload.i.i, ptr %44, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bok, i8 0, i64 24, i1 false)
  %i.but = load ptr, ptr %i.bnk, align 8, !tbaa !199
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 8
  %i.buv = load ptr, ptr %i.bmy, align 8, !tbaa !316, !nonnull !231, !align !317 ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 44
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !1054
  %i.buy = load ptr, ptr %i.buu, align 8, !tbaa !259
  %i.buz = zext i32 %i.bux to i64
  %i.bva = sub nsw i64 0, %i.buz
  %i.bvb = getelementptr inbounds [32 x i8], ptr %i.buy, i64 %i.bva
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.buv, align 4, !tbaa !44
  %i.bvc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bop, ptr noundef nonnull align 8 dereferenceable(80) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.bvb, i32 %.sroa.09.0.copyload.i.i) ; 2 uses
  %i.bvd = extractvalue { ptr, ptr } %i.bvc, 0
  %i.bve = extractvalue { ptr, ptr } %i.bvc, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  store i32 1, ptr %30, align 8, !alias.scope !1055
  store ptr null, ptr %i.bol, align 8, !tbaa !323, !alias.scope !1055
  store i64 -1, ptr %i.bom, align 8, !tbaa !299, !alias.scope !1055
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bve, ptr noundef nonnull align 8 dereferenceable(1065) %i.bvd, ptr noundef nonnull align 8 dereferenceable(32) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %i.bvf = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 2 uses
  %.not100.i.i = icmp eq ptr %i.bvf, null
  br i1 %.not100.i.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i
  %i.bvg = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bon) #18 ; 0 uses
  br label %_ZN12_GLOBAL__N_115SIWholeQuadMode13lowerInitExecERN4llvm12MachineInstrE.exit.i

bb.id:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvf, i64 32
  %i.bvi = load ptr, ptr %i.bvh, align 8, !tbaa !359
  call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bvi, ptr noundef nonnull align 8 dereferenceable(80) %i.bon, i1 noundef zeroext false) #18
  %i.bvj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bon) #18 ; 0 uses
  %i.bvk = load ptr, ptr %i.bnn, align 8, !tbaa !202
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 32
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !359
  %i.bvn = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bvm, ptr noundef nonnull align 8 dereferenceable(80) %i.bts, i1 noundef zeroext false) ; 0 uses
  %i.bvo = load ptr, ptr %i.bnn, align 8, !tbaa !202
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 32
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !359
  %i.bvr = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bvq, ptr noundef nonnull align 8 dereferenceable(80) %i.buk, i1 noundef zeroext false) ; 0 uses
  %i.bvs = load ptr, ptr %i.bnn, align 8, !tbaa !202
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 32
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !359
  %i.bvv = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bvu, ptr noundef nonnull align 8 dereferenceable(80) %i.bur, i1 noundef zeroext false) ; 0 uses
  %i.bvw = load ptr, ptr %i.bnn, align 8, !tbaa !202
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 32
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !359
  %i.bvz = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bvy, ptr noundef nonnull align 8 dereferenceable(80) %i.bve, i1 noundef zeroext false) ; 0 uses
  %i.bwa = load ptr, ptr %i.bnn, align 8, !tbaa !202
  call void @_ZN4llvm13LiveIntervals14removeIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %i.bwa, i32 %i.bsh)
  %i.bwb = load ptr, ptr %i.bnn, align 8, !tbaa !202 ; 5 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 136 ; 3 uses
  %i.bwd = and i32 %i.bsh, 2147483647             ; 4 uses
  %i.bwe = add nuw i32 %i.bwd, 1
  %i.bwf = zext i32 %i.bwe to i64                 ; 2 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwb, i64 144 ; 3 uses
  %i.bwh = load i32, ptr %i.bwg, align 8, !tbaa !211 ; 3 uses
  %.not.i.i.i104.i.i = icmp ugt i32 %i.bwh, %i.bwd
  br i1 %.not.i.i.i104.i.i, label %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i115.i.i, label %bb.ie

._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i115.i.i: ; preds = %bb.id
  %.pre.i.i116.i.i = load ptr, ptr %i.bwc, align 8, !tbaa !210
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit117.i.i

bb.ie:                                            ; preds = %bb.id
  %i.bwi = zext nneg i32 %i.bwh to i64            ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwb, i64 152 ; 2 uses
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !360
  %i.bwl = sub nuw nsw i64 %i.bwf, %i.bwi         ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwb, i64 148
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !212
  %.not.i.i.i.i.i.not.i.i.i105.i.i = icmp ult i32 %i.bwd, %i.bwn
  br i1 %.not.i.i.i.i.i.not.i.i.i105.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i108.i.i, label %bb.if, !prof !47

bb.if:                                            ; preds = %bb.ie
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.bwc, ptr noundef nonnull %i.bwj, i64 noundef %i.bwf, i64 noundef 8) #18
  %.pre.i.i.i.i.i.i106.i.i = load i32, ptr %i.bwg, align 8, !tbaa !211 ; 2 uses
  %.pre.i.i.i.i.i107.i.i = zext i32 %.pre.i.i.i.i.i.i106.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i108.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i108.i.i: ; preds = %bb.if, %bb.ie
  %.pre-phi.i.i.i.i.i109.i.i = phi i64 [ %i.bwi, %bb.ie ], [ %.pre.i.i.i.i.i107.i.i, %bb.if ]
  %i.bwo = phi i32 [ %i.bwh, %bb.ie ], [ %.pre.i.i.i.i.i.i106.i.i, %bb.if ]
  %i.bwp = load ptr, ptr %i.bwc, align 8, !tbaa !210 ; 2 uses
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %i.bwp, i64 %.pre-phi.i.i.i.i.i109.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i110.i.i = shl nuw nsw i64 %i.bwl, 3
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 %.idx.i.i.i.i.i.i.i.i.i.i110.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i108.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i112.i.i = phi ptr [ %i.bws, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i ], [ %i.bwq, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i108.i.i ] ; 2 uses
  store ptr %i.bwk, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i112.i.i, align 8, !tbaa !361
  %i.bws = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i112.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i113.i.i = icmp eq ptr %i.bws, %i.bwr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i113.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i114.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i, !llvm.loop !5

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i114.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i111.i.i
  %i.bwt = trunc nuw i64 %i.bwl to i32
end_hunk_0
begin_hunk_1_@_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb:bb.a
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !313
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !313
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1225

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !241  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !433
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !210
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !44, !noalias !1239
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !45

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !243, !noalias !1239
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !47

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44, !noalias !1239
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !48

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !299
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !465
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !241
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
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !433
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !210
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
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !313
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !313
  %i.cl = and i32 %i.ck, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, !llvm.loop !1230

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
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44, !noalias !1240
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !45

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %bb.g
  %i.cz = phi i64 [ %i.df, %bb.g ], [ %i.cs, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %.017.i.i.i.i27 = phi i32 [ %i.de, %bb.g ], [ %i.cr, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !243, !noalias !1240
  %i.dc = icmp eq ptr %.sroa.0.1.i.i.i.i20, %i.db
  br i1 %i.dc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, label %bb.g, !prof !47

bb.g:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.dd = add nuw i32 %.017.i.i.i.i27, 1
  %i.de = and i32 %i.dd, %i.br                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !44, !noalias !1240
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !48

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21: ; preds = %bb.g, %.lr.ph.i.i.i.i26, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %.lcssa.sink.i.i.i22 = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.da, %.lr.ph.i.i.i.i26 ], [ %i.bt, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.lcssa.sink.i.i.i22, %i.bt
  br i1 %.not.i23, label %.split.i17, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit: ; preds = %.split16.us.i30, %.thread.i
  %.sroa.0.2.in.i24 = phi ptr [ %i.ca, %.split16.us.i30 ], [ %i.dm, %.thread.i ]
  %.sroa.0.2.i25 = load i64, ptr %.sroa.0.2.in.i24, align 8, !tbaa !299
  %i.dn = and i64 %.sroa.0.2.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !318
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit
  %.sroa.038.0 = phi ptr [ %i.bg, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.dq, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.bh, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.do, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !434
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !434 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 2147483644               ; 2 uses
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = load ptr, ptr %0, align 8, !tbaa !473   ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 32                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !474
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ef = inttoptr i64 %i.eb to ptr
  store ptr %i.ef, ptr %0, align 8, !tbaa !473
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.dz, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.eh, align 8, !tbaa !371
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 %i.dy, ptr %i.ei, align 8, !tbaa !434
  %i.ej = load ptr, ptr %.sroa.038.0, align 8, !tbaa !465 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %.sroa.038.0, ptr %i.ek, align 8, !tbaa !318
  store ptr %i.ej, ptr %.0.i.i.i, align 8, !tbaa !465
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0.i.i.i, ptr %i.el, align 8, !tbaa !318
  store ptr %.0.i.i.i, ptr %.sroa.038.0, align 8, !tbaa !465
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  tail call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nonnull %.0.i.i.i) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  %i.en = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8, !tbaa !376
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !299
  %i.eq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !1241 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i64 %i.en
}

declare void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !212
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !210
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !211
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !211
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !211
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #18 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !211 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !212
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !47

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !211
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !211
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !474
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !473
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !210
  %i.g = load i32, ptr %i.a, align 8, !tbaa !211
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !211
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !210
  %i.g = load i32, ptr %i.a, align 8, !tbaa !211
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !211
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !211
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_:bb.a
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1278

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !243
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !44
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1279

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1280

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !226
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !225
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !225
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #18
  store i32 0, ptr %i.d, align 4, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !476
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !476
  %i.d = load ptr, ptr %0, align 8, !tbaa !365    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !367
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !243  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = sub i32 %.03337, %i.ae
  %i.ag = and i32 %i.af, %i.i
  %i.ah = sub i32 %i.x, %i.ae
  %i.ai = and i32 %i.ah, %i.i
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ak = zext i32 %.03337 to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  store ptr %i.z, ptr %i.al, align 8, !tbaa !243
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !299
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !299
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !44
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.ay = and i32 %.033.lcssa, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = xor i32 %i.az, -1
  %i.bb = lshr i32 %.033.lcssa, 5
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !44
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !44
  ret void
}

declare noundef ptr @_ZNK4llvm14SIRegisterInfo24getRegClassForOperandRegERKNS_19MachineRegisterInfoERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm11SIInstrInfo12getMovOpcodeEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(840), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm13LiveIntervals12shrinkToUsesEPNS_12LiveIntervalEPNS_15SmallVectorImplIPNS_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_115SIWholeQuadMode11lowerKillI1ERN4llvm12MachineInstrEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %class.anon.630, align 1           ; 3 uses
  %15 = alloca %"struct.std::pair.562", align 8   ; 5 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %22 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %25 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %26 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %27 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %29 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 4339
  %i.g = select i1 %2, i1 %i.f, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !297  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !299  ; 3 uses
  %i.l = load i32, ptr %i.i, align 8
  %i.m = and i32 %i.l, 255
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !299
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %31 = load ptr, ptr %30, align 8, !tbaa !241
  %32 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %.sroa.050.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !320
  store ptr %.sroa.050.0.copyload, ptr %19, align 8, !tbaa !320
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !199
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !316, !nonnull !231, !align !317
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !479
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !259
  %i.aa = zext i32 %i.y to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.049.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !44
  %i.ae = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i32 %.sroa.049.0.copyload) ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  %.sroa.048.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !323, !alias.scope !1321
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %.sroa.048.0.copyload, ptr %i.ai, align 4, !tbaa !299, !alias.scope !1321
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !1321
  store i32 0, ptr %18, align 8, !alias.scope !1321
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !316, !nonnull !231, !align !317
  %.sroa.047.0.copyload = load i32, ptr %i.ak, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !323, !alias.scope !1322
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %.sroa.047.0.copyload, ptr %i.am, align 4, !tbaa !299, !alias.scope !1322
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !1322
  store i32 0, ptr %17, align 8, !alias.scope !1322
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.l

bb.d:                                             ; preds = %.preheader.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !202
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !359
  tail call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false) #18
  br label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

bb.e:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %.sroa.043.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !320
  store ptr %.sroa.043.0.copyload, ptr %20, align 8, !tbaa !320
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !259
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -153888
  %i.ay = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !323, !alias.scope !1323
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !299, !alias.scope !1323
  store i32 4, ptr %16, align 8, !alias.scope !1323
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !359 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !365, !noalias !1324 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !366, !noalias !1324 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 124
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !367, !noalias !1324 ; 4 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.loopexit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = add i32 %i.bp, -1                       ; 2 uses
  %i.bs = ptrtoint ptr %1 to i64
  %i.bt = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.bu = lshr i64 %i.bt, 31
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.br, %i.bw                    ; 3 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = lshr i64 %i.by, 5
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44, !noalias !1325
  %i.cc = and i32 %i.bx, 31
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = trunc i32 %i.cd to i1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !45

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %i.cf = phi i64 [ %i.cl, %bb.g ], [ %i.by, %bb.f ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ck, %bb.g ], [ %i.bx, %bb.f ]
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !243, !noalias !1325
  %i.ci = icmp eq ptr %1, %i.ch
  br i1 %i.ci, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i, label %bb.g, !prof !47

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cj = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ck = and i32 %i.cj, %i.br                    ; 3 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = lshr i64 %i.cl, 5
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44, !noalias !1325
  %i.cp = and i32 %i.ck, 31
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !48

.loopexit.i.i.i.i:                                ; preds = %bb.g, %bb.f, %bb.e
  %i.cs = zext i32 %i.bp to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cs
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.bp to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i ], [ %i.cs, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.cg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i ], [ %i.ct, %.loopexit.i.i.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.pre-phi.i.i
  %i.cv = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.cu
  br i1 %i.cv, label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !299 ; 2 uses
  %i.cy = and i64 %i.cx, -8
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.ba, ptr %i.da, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull %.lcssa.sink.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.ba, ptr %15, align 8, !tbaa !376
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.cx, ptr %i.db, align 8, !tbaa !299
  %i.dc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.db), !noalias !1326 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit: ; preds = %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i, %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull %1) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.de = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load ptr, ptr %30, align 8, !tbaa !241  ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i = load i64, ptr %i.dg, align 8
  %i.dh = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i, 7
  %i.di = or disjoint i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !241
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.dk = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  store i64 %i.dk, ptr %1, align 8
  store ptr null, ptr %30, align 8, !tbaa !241
  br label %bb.ai

bb.i:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !299 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !201
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !200
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 329
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !319, !range !296, !noundef !231
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = select i1 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1408), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3776)
  %i.dv = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.do, ptr noundef nonnull %i.du, ptr nonnull @.str.4, i64 0) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %.sroa.040.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !320
  store ptr %.sroa.040.0.copyload, ptr %21, align 8, !tbaa !320
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !199
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !316, !nonnull !231, !align !317
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !479
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !259
  %i.ef = zext i32 %i.ed to i64
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [32 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i32 %i.dv) ; 2 uses
  %i.ej = extractvalue { ptr, ptr } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, ptr } %i.ei, 1      ; 3 uses
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !316, !nonnull !231, !align !317
  %.sroa.038.0.copyload = load i32, ptr %i.el, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.em, align 8, !tbaa !323, !alias.scope !1327
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %.sroa.038.0.copyload, ptr %i.en, align 4, !tbaa !299, !alias.scope !1327
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !alias.scope !1327
  store i32 0, ptr %13, align 8, !alias.scope !1327
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ek, ptr noundef nonnull align 8 dereferenceable(1065) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ek, ptr noundef nonnull align 8 dereferenceable(1065) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %.sroa.037.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !320
  store ptr %.sroa.037.0.copyload, ptr %22, align 8, !tbaa !320
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i8 0, i64 24, i1 false)
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !199
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.ea, align 8, !tbaa !316, !nonnull !231, !align !317
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !479
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !259
  %i.ew = zext i32 %i.eu to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.036.0.copyload = load i32, ptr %i.ez, align 8, !tbaa !44
  %i.fa = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i32 %.sroa.036.0.copyload) ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 3 uses
  %.sroa.035.0.copyload = load i32, ptr %i.ez, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.fd, align 8, !tbaa !323, !alias.scope !1328
end_hunk_2
