Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64LowerHomogeneousPrologEpilog?download=true
inline.NumInlined: 866
inline.NumDeleted: 516
begin_hunk_0_@_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl3runEv:bb.a
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ln, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ], [ %i.bt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !157 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !170
  %i.lq = and i32 %i.lp, 8
  %.not3.i.i.i.i.i.i.i.i = icmp eq i32 %i.lq, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !272

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i40.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i40.i.i.i ], [ %i.bt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ], [ %i.ln, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !157
  %i.lt = call noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bt) #19 ; 0 uses
  br label %bb.bb

_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.thread.i.i.i.i: ; preds = %_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.i.i.i.i, %bb.ap, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i.i37.i.i.i", %._crit_edge._crit_edge57.i.i.i.i.i.i29.i.i.i, %._crit_edge.i.i.i.i.i.i26.i.i.i
  %i.lu = load ptr, ptr %i.bf, align 8, !tbaa !219
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !152, !nonnull !17, !align !28 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !10
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 200
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = call noundef ptr %i.lz(ptr noundef nonnull align 8 dereferenceable(344) %i.lw) #19, !inline_history !291
  %i.mb = load i32, ptr %i.g, align 8, !tbaa !172 ; 4 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = lshr i32 %i.mb, 1
  %.val.i71.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !20 ; 4 uses
  %.idx3.i.i72.i.i.i.i = shl nuw nsw i64 %i.mc, 2 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i71.i.i.i.i, i64 %.idx3.i.i72.i.i.i.i
  %i.mf = lshr i64 %i.mc, 2                       ; 2 uses
  %.not.i.i73.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i73.i.i.i.i, label %._crit_edge.i.i.i.i.i83.i.i.i.i, label %.lr.ph.i.i.i.i.i74.i.i.i.i

.lr.ph.i.i.i.i.i74.i.i.i.i:                       ; preds = %_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.thread.i.i.i.i
  %i.mg = and i64 %.idx3.i.i72.i.i.i.i, 17179869168
  %scevgep.i.i.i.i.i75.i.i.i.i = getelementptr i8, ptr %.val.i71.i.i.i.i, i64 %i.mg
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph.i.i.i.i.i74.i.i.i.i
  %.051.i.i.i.i.i76.i.i.i.i = phi i64 [ %i.mf, %.lr.ph.i.i.i.i.i74.i.i.i.i ], [ %i.mp, %bb.au ] ; 2 uses
  %.02950.i.i.i.i.i77.i.i.i.i = phi ptr [ %.val.i71.i.i.i.i, %.lr.ph.i.i.i.i.i74.i.i.i.i ], [ %i.mo, %bb.au ] ; 9 uses
  %.029.val39.i.i.i.i.i78.i.i.i.i = load i32, ptr %.02950.i.i.i.i.i77.i.i.i.i, align 4, !tbaa !220
  %i.mh = icmp eq i32 %.029.val39.i.i.i.i.i78.i.i.i.i, 6
  br i1 %i.mh, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mi = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 4
  %.val37.i.i.i.i.i79.i.i.i.i = load i32, ptr %i.mi, align 4, !tbaa !220
  %i.mj = icmp eq i32 %.val37.i.i.i.i.i79.i.i.i.i, 6
  br i1 %i.mj, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 8
  %.val35.i.i.i.i.i80.i.i.i.i = load i32, ptr %i.mk, align 4, !tbaa !220
  %i.ml = icmp eq i32 %.val35.i.i.i.i.i80.i.i.i.i, 6
  br i1 %i.ml, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit104", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mm = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 12
  %.val33.i.i.i.i.i81.i.i.i.i = load i32, ptr %i.mm, align 4, !tbaa !220
  %i.mn = icmp eq i32 %.val33.i.i.i.i.i81.i.i.i.i, 6
  br i1 %i.mn, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit106", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mo = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 16
  %i.mp = add nsw i64 %.051.i.i.i.i.i76.i.i.i.i, -1
  %i.mq = icmp sgt i64 %.051.i.i.i.i.i76.i.i.i.i, 1
  br i1 %i.mq, label %bb.aq, label %._crit_edge.loopexit.i.i.i.i.i82.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i82.i.i.i.i:         ; preds = %bb.au
  %i.mr = and i32 %i.mb, 3
  br label %._crit_edge.i.i.i.i.i83.i.i.i.i

._crit_edge.i.i.i.i.i83.i.i.i.i:                  ; preds = %._crit_edge.loopexit.i.i.i.i.i82.i.i.i.i, %_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.thread.i.i.i.i
  %.pre-phi60.i.i.i.i.i84.i.i.i.i = phi i32 [ %i.mr, %._crit_edge.loopexit.i.i.i.i.i82.i.i.i.i ], [ %i.mb, %_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.thread.i.i.i.i ]
  %.029.lcssa.i.i.i.i.i85.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i75.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i82.i.i.i.i ], [ %.val.i71.i.i.i.i, %_ZL20shouldUseFrameHelperRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15SmallVectorImplIjEE15FrameHelperType.exit.thread.i.i.i.i ] ; 5 uses
  switch i32 %.pre-phi60.i.i.i.i.i84.i.i.i.i, label %.preheader.i.i.i.i [
    i32 3, label %bb.av
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i83.i.i.i.i
  %.029.val.i.i.i.i.i97.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i85.i.i.i.i, align 4, !tbaa !220
  %i.ms = icmp eq i32 %.029.val.i.i.i.i.i97.i.i.i.i, 6
  br i1 %i.ms, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mt = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i85.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i:       ; preds = %bb.aw, %._crit_edge.i.i.i.i.i83.i.i.i.i
  %.1.i.i.i.i.i95.i.i.i.i = phi ptr [ %i.mt, %bb.aw ], [ %.029.lcssa.i.i.i.i.i85.i.i.i.i, %._crit_edge.i.i.i.i.i83.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i96.i.i.i.i = load i32, ptr %.1.i.i.i.i.i95.i.i.i.i, align 4, !tbaa !220
  %i.mu = icmp eq i32 %.1.val.i.i.i.i.i96.i.i.i.i, 6
  br i1 %i.mu, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i95.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i:     ; preds = %bb.ax, %._crit_edge.i.i.i.i.i83.i.i.i.i
  %.2.i.i.i.i.i87.i.i.i.i = phi ptr [ %i.mv, %bb.ax ], [ %.029.lcssa.i.i.i.i.i85.i.i.i.i, %._crit_edge.i.i.i.i.i83.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i88.i.i.i.i = load i32, ptr %.2.i.i.i.i.i87.i.i.i.i, align 4, !tbaa !220
  %i.mw = icmp eq i32 %.2.val.i.i.i.i.i88.i.i.i.i, 6
  br i1 %i.mw, label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i", label %.preheader.i.i.i.i

"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.ar
  %i.mx = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 4
  br label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i"

"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit104": ; preds = %bb.as
  %i.my = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 8
  br label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i"

"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit106": ; preds = %bb.at
  %i.mz = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i77.i.i.i.i, i64 12
  br label %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i"

"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i": ; preds = %bb.aq, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit", %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit104", %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit106", %._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i, %bb.av
  %.028.i.i.i.i.i91.i.i.i.i = phi ptr [ %.1.i.i.i.i.i95.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i94.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i85.i.i.i.i, %bb.av ], [ %.2.i.i.i.i.i87.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i ], [ %i.mz, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit106" ], [ %i.mx, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit" ], [ %i.my, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i.loopexit.split.loop.exit104" ], [ %.02950.i.i.i.i.i77.i.i.i.i, %bb.aq ]
  %.not50.i92.i.i.i.i = icmp eq ptr %.028.i.i.i.i.i91.i.i.i.i, %i.me
  br i1 %.not50.i92.i.i.i.i, label %.preheader.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i"
  %.not5162.i.i.i.i.i = icmp eq ptr %i.be, %i.bt
  br i1 %.not5162.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ay, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i
  %.sroa.047.063.i.i.i.i.i = phi ptr [ %i.nl, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i ], [ %i.bt, %bb.ay ] ; 6 uses
  %i.na = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.047.063.i.i.i.i.i, i32 224, ptr noundef %i.ma, i1 noundef zeroext false) #19
  %.not52.i.i.i.i.i = icmp eq i32 %i.na, -1
  br i1 %.not52.i.i.i.i.i, label %bb.az, label %.preheader.i.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.047.063.i.i.i.i.i, align 8
  %i.nb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.047.063.i.i.i.i.i, i64 44
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !170
  %i.ne = and i32 %i.nd, 8
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ng, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.047.063.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !157 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 44
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !170
  %i.nj = and i32 %i.ni, 8
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !272

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i, %bb.az
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.047.063.i.i.i.i.i, %bb.az ], [ %.sroa.047.063.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ng, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !157 ; 2 uses
  %.not51.i.i.i.i.i = icmp eq ptr %i.nl, %i.be
  br i1 %.not51.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !296

.critedge.i.i.i.i.i:                              ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i.i.i.i.i, %bb.ay
  %i.nm = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.nn = load i32, ptr %i.bi, align 8, !tbaa !172 ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.no, 3
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.idx.i.i.i.i.i
  %.not64.i.i.i.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not64.i.i.i.i.i, label %.critedge39.i.i.i.i.i, label %.lr.ph66.i.i.i.i.i

bb.ba:                                            ; preds = %.critedge37.i.i.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %.03065.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i93.i.i.i.i = icmp eq ptr %i.nq, %i.np
  br i1 %.not.i93.i.i.i.i, label %.critedge39.i.i.i.i.i, label %.lr.ph66.i.i.i.i.i

.lr.ph66.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i, %bb.ba
  %.03065.i.i.i.i.i = phi ptr [ %i.nq, %bb.ba ], [ %i.nm, %.critedge.i.i.i.i.i ] ; 2 uses
  %i.nr = load ptr, ptr %.03065.i.i.i.i.i, align 8, !tbaa !316 ; 2 uses
  %i.ns = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.nr, i32 224, i64 -1) #19
  br i1 %i.ns, label %.preheader.i.i.i.i, label %.critedge37.i.i.i.i.i

.critedge37.i.i.i.i.i:                            ; preds = %.lr.ph66.i.i.i.i.i
  %i.nt = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.nr, i32 255, i64 -1) #19
  br i1 %i.nt, label %.preheader.i.i.i.i, label %bb.ba

.critedge39.i.i.i.i.i:                            ; preds = %bb.ba, %.critedge.i.i.i.i.i
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24FrameHelperSizeThreshold, i64 120), align 8, !tbaa !233
  %.not152.i.i.i.i = icmp slt i32 %i.md, %i.nu
  br i1 %.not152.i.i.i.i, label %.preheader.i.i.i.i, label %.thread147.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i, %.critedge37.i.i.i.i.i, %.lr.ph66.i.i.i.i.i, %.critedge39.i.i.i.i.i, %"_ZN4llvm12is_containedIRNS_15SmallVectorImplIjEENS_7AArch643$_0EEEbOT_RKT0_.exit.i90.i.i.i.i", %._crit_edge._crit_edge57.i.i.i.i.i86.i.i.i.i, %._crit_edge.i.i.i.i.i83.i.i.i.i
  %i.nv = add nsw i32 %.pre.i13.i.i.i, -2         ; 3 uses
  %i.nw = icmp sgt i32 %.pre.i13.i.i.i, 2
  br i1 %i.nw, label %.lr.ph180.i.i.i.i.a, label %.thread.i32.i.i.i

.thread147.i.i.i.i:                               ; preds = %.critedge39.i.i.i.i.i
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ny = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.nz = call fastcc noundef ptr @_ZL22getOrCreateFrameHelperPN4llvm6ModuleEPNS_17MachineModuleInfoERNS_15SmallVectorImplIjEE15FrameHelperTypej(ptr noundef %i.nx, ptr noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2, i32 noundef 0)
  %i.oa = load ptr, ptr %0, align 8, !tbaa !302
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !224
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 -68384
  %i.oe = load ptr, ptr %i.bf, align 8, !tbaa !219 ; 3 uses
  %i.of = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.oe, ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr %.sroa.038.0.copyload.i.i.i.i, i1 noundef zeroext false) #19 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef %i.of) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i103.i.i.i.i = load i64, ptr %.sroa.010.049.i.i, align 8
  %i.og = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i103.i.i.i.i, -8 ; 2 uses
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store ptr %.sroa.010.049.i.i, ptr %i.oi, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i104.i.i.i.i = load i64, ptr %i.of, align 8
  %i.oj = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i104.i.i.i.i, 7
  %i.ok = or disjoint i64 %i.oj, %i.og
  store i64 %i.ok, ptr %i.of, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store ptr %i.of, ptr %i.ol, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i105.i.i.i.i = load i64, ptr %.sroa.010.049.i.i, align 8
  %i.om = ptrtoint ptr %i.of to i64
  %i.on = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i105.i.i.i.i, 7
  %i.oo = or disjoint i64 %i.on, %i.om
  store i64 %i.oo, ptr %.sroa.010.049.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr null, ptr %i.n, align 8, !tbaa !227, !alias.scope !317
  store ptr %i.nz, ptr %i.o, align 8, !tbaa !174, !alias.scope !317
  store i32 0, ptr %i.p, align 4, !tbaa !174, !alias.scope !317
  store i32 0, ptr %i.q, align 8, !tbaa !174, !alias.scope !317
  store i32 10, ptr %1, align 8, !alias.scope !317
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.of, ptr noundef nonnull align 8 dereferenceable(1065) %i.oe, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 44 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !170
  %i.or = or i32 %i.oq, 2
  store i32 %i.or, ptr %i.op, align 4, !tbaa !170
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.of, ptr noundef nonnull align 8 dereferenceable(1065) %i.oe, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.049.i.i) #19
  br label %bb.bb

.thread.i32.i.i.i:                                ; preds = %.lr.ph180.i.i.i.i.a, %.preheader.i.i.i.i
  %14 = load ptr, ptr %0, align 8, !tbaa !302
  %15 = sext i32 %i.nv to i64
  %i.os = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %15
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !220
  %i.ov = shl nuw i64 %i.io, 32
  %sext.i33.i.i.i = add i64 %i.ov, -4294967296
  %i.ow = ashr exact i64 %sext.i33.i.i.i, 30
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !220
  call fastcc void @_ZL8emitLoadRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.07.049.i, ptr nonnull %.sroa.010.049.i.i, ptr noundef nonnull align 8 dereferenceable(112) %14, i32 noundef %i.ou, i32 noundef %i.oy, i32 noundef %.pre.i13.i.i.i, i1 noundef zeroext true)
  br label %.loopexit.i.i.i.i

.lr.ph180.i.i.i.i.a:                              ; preds = %.preheader.i.i.i.i, %.lr.ph180.i.i.i.i.a
  %indvars.iv.i35.i.i.i = phi i64 [ %indvars.iv.next.i36.i.i.i, %.lr.ph180.i.i.i.i.a ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.oz = load ptr, ptr %0, align 8, !tbaa !302
  %i.pa = load ptr, ptr %4, align 8, !tbaa !20
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv.i35.i.i.i ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !220
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !220
  %i.pf = trunc nuw nsw i64 %indvars.iv.i35.i.i.i to i32
  %i.pg = sub i32 %i.nv, %i.pf
  call fastcc void @_ZL8emitLoadRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.07.049.i, ptr nonnull %.sroa.010.049.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.oz, i32 noundef %i.pc, i32 noundef %i.pe, i32 noundef %i.pg, i1 noundef zeroext false)
  %indvars.iv.next.i36.i.i.i = add nuw nsw i64 %indvars.iv.i35.i.i.i, 2 ; 2 uses
  %16 = trunc nuw i64 %indvars.iv.next.i36.i.i.i to i32
  %17 = icmp sgt i32 %i.nv, %16
  br i1 %17, label %.lr.ph180.i.i.i.i.a, label %.thread.i32.i.i.i, !llvm.loop !299

bb.bb:                                            ; preds = %.thread147.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i
  %.sroa.0.2.i.i = phi ptr [ %i.bt, %.thread147.i.i.i.i ], [ %i.ls, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i ] ; 2 uses
  %.062150.i.i.i.i = phi ptr [ %i.of, %.thread147.i.i.i.i ], [ %i.kv, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i.i ]
  %i.ph = load ptr, ptr %i.ii, align 8, !tbaa !305 ; 2 uses
  %i.pi = load i24, ptr %i.ik, align 8
  %i.pj = zext i24 %i.pi to i64
  %i.pk = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.049.i.i) #19
  %i.pl = zext i32 %i.pk to i64
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.pl, i64 %i.pj) ; 2 uses
  %.idx181.i.i.i.i = shl nuw nsw i64 %..i.i.i.i.i.i, 5
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.idx181.i.i.i.i
  %.not66175.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not66175.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph178.i.i.i.i

.lr.ph178.i.i.i.i:                                ; preds = %bb.bb
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph178.i.i.i.i
  %.059176.i.i.i.i = phi ptr [ %i.ph, %.lr.ph178.i.i.i.i ], [ %i.py, %bb.bc ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.059176.i.i.i.i, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !174
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !234
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !385
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !152, !nonnull !17, !align !28 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !10
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 200
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = call noundef ptr %i.pw(ptr noundef nonnull align 8 dereferenceable(344) %i.pt) #19, !inline_history !300
  call void @_ZN4llvm12MachineInstr18addRegisterDefinedENS_8RegisterEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.062150.i.i.i.i, i32 %i.pp, ptr noundef %i.px) #19
  %i.py = getelementptr inbounds nuw i8, ptr %.059176.i.i.i.i, i64 32 ; 2 uses
  %.not66.i.i.i.i = icmp eq ptr %i.py, %i.pm
  br i1 %.not66.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bc

.loopexit.i.i.i.i:                                ; preds = %bb.bc, %bb.bb, %.thread.i32.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.bt, %.thread.i32.i.i.i ], [ %.sroa.0.2.i.i, %bb.bb ], [ %.sroa.0.2.i.i, %bb.bc ]
  %i.pz = call noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.049.i.i) #19 ; 0 uses
  br label %._crit_edge.thread.i34.i.i.i

._crit_edge.thread.i34.i.i.i:                     ; preds = %.loopexit.i.i.i.i, %._crit_edge.i12.i.i.i, %bb.ac
  %.sroa.0.1.i.i = phi ptr [ %i.bt, %bb.ac ], [ %i.bt, %._crit_edge.i12.i.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i.i.i ]
  %i.qa = phi i1 [ false, %bb.ac ], [ false, %._crit_edge.i12.i.i.i ], [ true, %.loopexit.i.i.i.i ]
  %i.qb = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.f
  br i1 %i.qc, label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.thread.i34.i.i.i
  call void @free(ptr noundef %i.qb) #19
  br label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i: ; preds = %bb.bd, %._crit_edge.thread.i34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl7runOnMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl7runOnMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerPrologERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i
  %.sroa.0.3.i.i = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %i.bt, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerPrologERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i ], [ %.sroa.0.1.i.i, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %i.id, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerPrologERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i ], [ %i.qa, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl11lowerEpilogERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i.i ]
  %i.qd = or i1 %.053.i.i, %.0.i.i.i              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.3.i.i, %i.be
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !301

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.loopexit.i: ; preds = %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl7runOnMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i.i
  %i.qe = or i1 %.048.i, %i.qd
  br label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.i

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.i: ; preds = %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.loopexit.i, %.lr.ph.i
  %.0.lcssa.i.i = phi i1 [ %.048.i, %.lr.ph.i ], [ %i.qe, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.loopexit.i ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.07.049.i, i64 8
  %.sroa.07.0.i = load ptr, ptr %i.qf, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %i.bb
  br i1 %.not.i, label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit.loopexit, label %.lr.ph.i

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit.loopexit: ; preds = %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl8runOnMBBERN4llvm17MachineBasicBlockE.exit.i
  %i.qg = or i1 %.0953, %.0.lcssa.i.i
  br label %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit

_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit: ; preds = %bb.d, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit.loopexit, %bb.c, %bb.b
  %.2 = phi i1 [ %.0953, %bb.b ], [ %.0953, %bb.c ], [ %.0953, %bb.d ], [ %i.qg, %_ZN12_GLOBAL__N_139AArch64LowerHomogeneousPrologEpilogImpl20runOnMachineFunctionERN4llvm15MachineFunctionE.exit.loopexit ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.011.054, i64 8
  %.sroa.011.0 = load ptr, ptr %i.qh, align 8, !tbaa !38 ; 2 uses
  %.not14 = icmp eq ptr %.sroa.011.0, %i.d
  br i1 %.not14, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm45createAArch64LowerHomogeneousPrologEpilogPassEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_141AArch64LowerHomogeneousPrologEpilogLegacy2IDE, ptr %i.c, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 4, ptr %i.d, align 8, !tbaa !245
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_141AArch64LowerHomogeneousPrologEpilogLegacyE, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_141AArch64LowerHomogeneousPrologEpilogLegacyEEEPNS_4PassEv() #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_141AArch64LowerHomogeneousPrologEpilogLegacy2IDE, ptr %i.c, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 4, ptr %i.d, align 8, !tbaa !245
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_141AArch64LowerHomogeneousPrologEpilogLegacyE, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #7

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK4llvm17MachineModuleInfo18getMachineFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL9emitStoreRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::TypeSize", align 8   ; 6 uses
  %13 = alloca %"class.llvm::TypeSize", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %.not = icmp eq i32 %4, 0                       ; 5 uses
  %i.c = lshr i32 %3, 3                           ; 2 uses
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3538), align 2, !tbaa !248
  %i.e = zext i16 %i.d to i32
  %.not.i = icmp samesign ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.a
  %i.f = and i32 %3, 7
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3524), align 4, !tbaa !249
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), i64 %i.h
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !174
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 1, %i.f
  %i.o = and i32 %i.n, %i.m
  %.not24 = icmp eq i32 %i.o, 0                   ; 2 uses
  br i1 %6, label %bb.b, label %bb.d

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %bb.a
  br i1 %6, label %.thread, label %.thread22

bb.b:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  br i1 %.not24, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = select i1 %.not, i32 7661, i32 7637
  br label %bb.f

.thread:                                          ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.b
  %i.q = select i1 %.not, i32 7691, i32 7649
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  br i1 %.not24, label %.thread22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = select i1 %.not, i32 7664, i32 7635
  br label %bb.f

.thread22:                                        ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.d
  %i.s = select i1 %.not, i32 7694, i32 7647
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread22, %bb.c, %.thread
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.q, %.thread ], [ %i.r, %bb.e ], [ %i.s, %.thread22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i64 0, ptr %12, align 8, !tbaa !251
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i64 0, ptr %13, align 8, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.v = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12getMemOpInfoEjRNS_8TypeSizeES2_RlS3_(i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(9) %12, ptr noundef nonnull align 8 dereferenceable(9) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZL22getOrCreateFrameHelperPN4llvm6ModuleEPNS_17MachineModuleInfoERNS_15SmallVectorImplIjEE15FrameHelperTypej:bb.a
  br i1 %i.fw, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit112

bb.y:                                             ; preds = %.lr.ph192, %bb.aa
  %indvars.iv198 = phi i64 [ %i.fv, %.lr.ph192 ], [ %indvars.iv.next199, %bb.aa ] ; 4 uses
  %i.fx = load ptr, ptr %2, align 8, !tbaa !20
  %i.fy = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv198 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !220 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 6
  br i1 %i.gb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gc = load i32, ptr %i.fy, align 4, !tbaa !220
  %i.gd = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.ge = xor i32 %i.gd, -1
  %i.gf = add i32 %i.ef, %i.ge
  call fastcc void @_ZL9emitStoreRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %i.dy, ptr nonnull %i.fu, ptr noundef nonnull align 8 dereferenceable(112) %i.ee, i32 noundef %i.ga, i32 noundef %i.gc, i32 noundef %i.gf, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, -2
  %i.gg = icmp sgt i64 %indvars.iv198, 1
  br i1 %i.gg, label %bb.y, label %._crit_edge, !llvm.loop !408

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !224
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -57440
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !219 ; 5 uses
  %i.gn = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr null, i1 noundef zeroext false) #19 ; 11 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef %i.gn) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gh, align 8
  %i.gp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gh, ptr %i.gr, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.gn, align 8
  %i.gs = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.gt = or disjoint i64 %i.gs, %i.gp
  store i64 %i.gt, ptr %i.gn, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gn, ptr %i.gu, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.gh, align 8
  %i.gv = ptrtoint ptr %i.gn to i64
  %i.gw = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.gx = or disjoint i64 %i.gw, %i.gv
  store i64 %i.gx, ptr %i.gh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.gy, align 8, !tbaa !227, !alias.scope !582
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 2, ptr %i.gz, align 4, !tbaa !174, !alias.scope !582
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false), !alias.scope !582
  store i32 16777216, ptr %14, align 8, !alias.scope !582
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gn, ptr noundef nonnull align 8 dereferenceable(1065) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.hb, align 8, !tbaa !227, !alias.scope !583
  %i.hc = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 8, ptr %i.hc, align 4, !tbaa !174, !alias.scope !583
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !alias.scope !583
  store i32 0, ptr %13, align 8, !alias.scope !583
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gn, ptr noundef nonnull align 8 dereferenceable(1065) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.he = zext i32 %4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i32 1, ptr %12, align 8, !alias.scope !584
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.hf, align 8, !tbaa !227, !alias.scope !584
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.he, ptr %i.hg, align 8, !tbaa !174, !alias.scope !584
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gn, ptr noundef nonnull align 8 dereferenceable(1065) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i32 1, ptr %11, align 8, !alias.scope !585
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gn, ptr noundef nonnull align 8 dereferenceable(1065) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gn, i64 44 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !170
  %i.hk = or i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !170
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit112

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit112: ; preds = %._crit_edge, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !224
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -188064
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !219 ; 2 uses
  %i.hr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %i.ho, ptr null, i1 noundef zeroext false) #19 ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef %i.hr) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i104 = load i64, ptr %i.hl, align 8
  %i.ht = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i104, -8 ; 2 uses
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hl, ptr %i.hv, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i105 = load i64, ptr %i.hr, align 8
  %i.hw = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i105, 7
  %i.hx = or disjoint i64 %i.hw, %i.ht
  store i64 %i.hx, ptr %i.hr, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hr, ptr %i.hy, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i106 = load i64, ptr %i.hl, align 8
  %i.hz = ptrtoint ptr %i.hr to i64
  %i.ia = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i106, 7
  %i.ib = or disjoint i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.hl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ic, align 8, !tbaa !227, !alias.scope !586
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 6, ptr %i.id, align 4, !tbaa !174, !alias.scope !586
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false), !alias.scope !586
  store i32 0, ptr %10, align 8, !alias.scope !586
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.hr, ptr noundef nonnull align 8 dereferenceable(1065) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ae

bb.ab:                                            ; preds = %bb.l
  %i.if = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.if, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit122, label %bb.ac

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit122: ; preds = %bb.ab
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !224
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -180640
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !219 ; 5 uses
  %i.im = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.ij, ptr null, i1 noundef zeroext false) #19 ; 10 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef %i.im) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i114 = load i64, ptr %i.ig, align 8
  %i.io = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i114, -8 ; 2 uses
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.ig, ptr %i.iq, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i115 = load i64, ptr %i.im, align 8
  %i.ir = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i115, 7
  %i.is = or disjoint i64 %i.ir, %i.io
  store i64 %i.is, ptr %i.im, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.im, ptr %i.it, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i116 = load i64, ptr %i.ig, align 8
  %i.iu = ptrtoint ptr %i.im to i64
  %i.iv = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i116, 7
  %i.iw = or disjoint i64 %i.iv, %i.iu
  store i64 %i.iw, ptr %i.ig, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ix, align 8, !tbaa !227, !alias.scope !587
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 255, ptr %i.iy, align 4, !tbaa !174, !alias.scope !587
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i8 0, i64 16, i1 false), !alias.scope !587
  store i32 16777216, ptr %9, align 8, !alias.scope !587
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.im, ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ja, align 8, !tbaa !227, !alias.scope !588
  %i.jb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 14, ptr %i.jb, align 4, !tbaa !174, !alias.scope !588
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i8 0, i64 16, i1 false), !alias.scope !588
  store i32 0, ptr %8, align 8, !alias.scope !588
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.im, ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.jd, align 8, !tbaa !227, !alias.scope !589
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 6, ptr %i.je, align 4, !tbaa !174, !alias.scope !589
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false), !alias.scope !589
  store i32 0, ptr %7, align 8, !alias.scope !589
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.im, ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 1, ptr %6, align 8, !alias.scope !590
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.im, ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit122, %bb.ab
  %i.jh = add nsw i32 %i.ef, -2                   ; 3 uses
  %i.ji = icmp sgt i32 %i.ef, 2
  br i1 %i.ji, label %.lr.ph, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit132

.lr.ph:                                           ; preds = %bb.ac
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  br label %bb.ad

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit132: ; preds = %bb.ad, %bb.ac
  %21 = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 5 uses
  %22 = sext i32 %i.jh to i64
  %i.jk = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %22
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !220
  %i.jn = shl nuw i64 %i.eg, 32
  %sext = add i64 %i.jn, -4294967296
  %i.jo = ashr exact i64 %sext, 30
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !220
  call fastcc void @_ZL8emitLoadRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %i.dy, ptr nonnull %21, ptr noundef nonnull align 8 dereferenceable(112) %i.ee, i32 noundef %i.jm, i32 noundef %i.jq, i32 noundef %i.ef, i1 noundef zeroext true)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !224
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -188064
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !219 ; 2 uses
  %i.jw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr null, i1 noundef zeroext false) #19 ; 7 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef %i.jw) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i124 = load i64, ptr %21, align 8
  %i.jy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i124, -8 ; 2 uses
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %21, ptr %i.ka, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i125 = load i64, ptr %i.jw, align 8
  %i.kb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i125, 7
  %i.kc = or disjoint i64 %i.kb, %i.jy
  store i64 %i.kc, ptr %i.jw, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.jw, ptr %i.kd, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i126 = load i64, ptr %21, align 8
  %i.ke = ptrtoint ptr %i.jw to i64
  %i.kf = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i126, 7
  %i.kg = or disjoint i64 %i.kf, %i.ke
  store i64 %i.kg, ptr %21, align 8
  %i.kh = select i1 %i.if, i32 255, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ki, align 8, !tbaa !227, !alias.scope !591
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.kh, ptr %i.kj, align 4, !tbaa !174, !alias.scope !591
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false), !alias.scope !591
  store i32 0, ptr %5, align 8, !alias.scope !591
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jw, ptr noundef nonnull align 8 dereferenceable(1065) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 3 uses
  %i.kl = load ptr, ptr %2, align 8, !tbaa !20
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !220
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !220
  %i.kq = trunc nuw nsw i64 %indvars.iv to i32
  %i.kr = sub i32 %i.jh, %i.kq
  call fastcc void @_ZL8emitLoadRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %i.dy, ptr nonnull %i.jj, ptr noundef nonnull align 8 dereferenceable(112) %i.ee, i32 noundef %i.kn, i32 noundef %i.kp, i32 noundef %i.kr, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %23 = trunc nuw i64 %indvars.iv.next to i32
  %24 = icmp sgt i32 %i.jh, %23
  br i1 %24, label %bb.ad, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit132, !llvm.loop !429

bb.ae:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit132, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit112
  %i.ks = load ptr, ptr %20, align 8, !tbaa !459
  %i.kt = load i64, ptr %i.am, align 8, !tbaa !453
  %i.ku = call noundef ptr @_ZNK4llvm6Module11getFunctionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %0, ptr %i.ks, i64 %i.kt) #19
  br label %bb.af

bb.af:                                            ; preds = %_ZL18getFrameHelperNameB5cxx11RN4llvm15SmallVectorImplIjEE15FrameHelperTypej.exit, %bb.ae
  %.0 = phi ptr [ %i.ku, %bb.ae ], [ %i.bw, %_ZL18getFrameHelperNameB5cxx11RN4llvm15SmallVectorImplIjEE15FrameHelperTypej.exit ]
  %i.kv = load ptr, ptr %20, align 8, !tbaa !459  ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.al
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.kx = load i64, ptr %i.al, align 8, !tbaa !174
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = load i32, ptr %i.a, align 8, !tbaa !172
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !172
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !172
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360), i32, i64) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12getMemOpInfoEjRNS_8TypeSizeES2_RlS3_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK4llvm6Module11getFunctionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL8emitLoadRN4llvm15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_15TargetInstrInfoEjjib(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::TypeSize", align 8   ; 6 uses
  %13 = alloca %"class.llvm::TypeSize", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %.not = icmp eq i32 %4, 0                       ; 5 uses
  %i.c = lshr i32 %3, 3                           ; 2 uses
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3538), align 2, !tbaa !248
  %i.e = zext i16 %i.d to i32
  %.not.i = icmp samesign ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.a
  %i.f = and i32 %3, 7
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3524), align 4, !tbaa !249
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), i64 %i.h
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !174
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 1, %i.f
  %i.o = and i32 %i.n, %i.m
  %.not24 = icmp eq i32 %i.o, 0                   ; 2 uses
  br i1 %6, label %bb.b, label %bb.d

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %bb.a
  br i1 %6, label %.thread, label %.thread22

bb.b:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  br i1 %.not24, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = select i1 %.not, i32 5105, i32 5073
  br label %bb.f

.thread:                                          ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.b
  %i.q = select i1 %.not, i32 5165, i32 5088
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  br i1 %.not24, label %.thread22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = select i1 %.not, i32 5109, i32 5072
  br label %bb.f

.thread22:                                        ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.d
  %i.s = select i1 %.not, i32 5169, i32 5087
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread22, %bb.c, %.thread
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.q, %.thread ], [ %i.r, %bb.e ], [ %i.s, %.thread22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i64 0, ptr %12, align 8, !tbaa !251
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i64 0, ptr %13, align 8, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.v = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12getMemOpInfoEjRNS_8TypeSizeES2_RlS3_(i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(9) %12, ptr noundef nonnull align 8 dereferenceable(9) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19 ; 0 uses
  %i.w = load i8, ptr %i.t, align 8, !tbaa !252, !range !16, !noundef !17
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.f
  %i.y = load i64, ptr %12, align 8, !tbaa !251
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !224
  %i.ab = zext nneg i32 %.0 to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !219 ; 6 uses
  %i.ag = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr null, i1 noundef zeroext false) #19 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.ag) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !157
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.ag, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.am = or disjoint i64 %i.al, %i.ai
  store i64 %i.am, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ag, ptr %i.an, align 8, !tbaa !157
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.aq = or disjoint i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %1, align 8
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !227, !alias.scope !602
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 8, ptr %i.as, align 4, !tbaa !174, !alias.scope !602
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !602
  store i32 16777216, ptr %11, align 8, !alias.scope !602
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !227, !alias.scope !603
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %4, ptr %i.av, align 4, !tbaa !174, !alias.scope !603
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !alias.scope !603
  store i32 16777216, ptr %10, align 8, !alias.scope !603
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = trunc i64 %i.y to i32
  %i.ay = sdiv i32 8, %i.ax
end_hunk_1
