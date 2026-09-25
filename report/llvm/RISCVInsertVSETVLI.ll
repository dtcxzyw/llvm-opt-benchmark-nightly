Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInsertVSETVLI?download=true
inline.NumInlined: 1961
inline.NumDeleted: 1010
begin_hunk_0_@_ZN12_GLOBAL__N_118RISCVInsertVSETVLI20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.not116.i = icmp eq i64 %i.anv, 0
  br i1 %.not116.i, label %bb.fp, label %bb.fs

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i: ; preds = %bb.fo
  %i.anw = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0108.0124.i, i64 noundef 128, i32 noundef 1) #18
  br i1 %i.anw, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i77
  %i.anx = load i32, ptr %i.anj, align 4, !tbaa !266
  %i.any = add i32 %i.anx, -1
  %spec.select.i92.i = icmp ult i32 %i.any, 2
  br i1 %spec.select.i92.i, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.anz = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0108.0124.i, i32 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %.not117.i = icmp eq i32 %i.anz, -1
  br i1 %.not117.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aoa = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0108.0124.i, i32 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %.not118.i = icmp eq i32 %i.aoa, -1
  br i1 %.not118.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i77
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.6.i = phi i1 [ false, %bb.fs ], [ %.5.i, %bb.fr ]
  call fastcc void @_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI13transferAfterERN4llvm5RISCV11VSETVLIInfoERKNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0108.0124.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i94.i = load i64, ptr %.sroa.0108.0124.i, align 8
  %i.aob = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i94.i, 4
  %.not.i.i.i95.i = icmp eq i64 %i.aob, 0
  br i1 %.not.i.i.i95.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i69

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72: ; preds = %bb.ft
  %i.aoc = load i32, ptr %i.anm, align 4, !tbaa !233
  %i.aod = and i32 %i.aoc, 8
  %.not34.i.i.i.i73 = icmp eq i32 %i.aod, 0
  br i1 %.not34.i.i.i.i73, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i69, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74
  %.sroa.0.05.i.i.i.i75 = phi ptr [ %i.aof, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74 ], [ %.sroa.0108.0124.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72 ]
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i75, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !224 ; 3 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 44
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !233
  %i.aoi = and i32 %i.aoh, 8
  %.not3.i.i.i.i76 = icmp eq i32 %i.aoi, 0
  br i1 %.not3.i.i.i.i76, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i69, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i69: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72, %bb.ft
  %.sroa.0.1.i.i.i.i70 = phi ptr [ %.sroa.0108.0124.i, %bb.ft ], [ %.sroa.0108.0124.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i72 ], [ %i.aof, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i74 ]
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i70, i64 8
  %.sroa.0108.0.i = load ptr, ptr %i.aoj, align 8, !tbaa !224 ; 2 uses
  %.not113.i = icmp eq ptr %.sroa.0108.0.i, %i.aai
  br i1 %.not113.i, label %._crit_edge127.loopexit.i, label %bb.df

_ZN12_GLOBAL__N_118RISCVInsertVSETVLI12emitVSETVLIsERN4llvm17MachineBasicBlockE.exit: ; preds = %bb.de, %._crit_edge127.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre130.i, %._crit_edge127.loopexit.i ], [ %i.aae, %bb.de ]
  %.val.i71 = phi ptr [ %.val.pre.i, %._crit_edge127.loopexit.i ], [ %.val65.i, %bb.de ]
  %i.aok = getelementptr inbounds nuw [56 x i8], ptr %.val.i71, i64 %.pre-phi.i
  %i.aol = call noundef zeroext i1 @_ZNK4llvm5RISCV11VSETVLIInfoneERKS1_(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(20) %i.aok) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0223.0357, i64 8
  %.sroa.0223.0 = load ptr, ptr %i.aom, align 8, !tbaa !116 ; 2 uses
  %.not308 = icmp eq ptr %.sroa.0223.0, %i.bm
  br i1 %.not308, label %._crit_edge359.loopexit, label %bb.de

._crit_edge363:                                   ; preds = %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI16coalesceVSETVLIsERN4llvm17MachineBasicBlockE.exit, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE8iteratorppEv.exit, %._crit_edge359, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE5beginEv.exit
  %i.aon = load ptr, ptr %i.zj, align 8, !tbaa !235 ; 2 uses
  %i.aoo = icmp eq ptr %i.aon, %i.zk
  br i1 %i.aoo, label %_ZN4llvm9po_detail9NumberSetIPNS_17MachineBasicBlockEED2Ev.exit.i, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge363
  call void @free(ptr noundef %i.aon) #18
  br label %_ZN4llvm9po_detail9NumberSetIPNS_17MachineBasicBlockEED2Ev.exit.i

_ZN4llvm9po_detail9NumberSetIPNS_17MachineBasicBlockEED2Ev.exit.i: ; preds = %bb.fu, %._crit_edge363
  %i.aop = load ptr, ptr %30, align 8, !tbaa !26  ; 2 uses
  %i.aoq = icmp eq ptr %i.aop, %i.zh
  br i1 %i.aoq, label %_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEED2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZN4llvm9po_detail9NumberSetIPNS_17MachineBasicBlockEED2Ev.exit.i
  call void @free(ptr noundef %i.aop) #18
  br label %_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEED2Ev.exit

_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEED2Ev.exit: ; preds = %_ZN4llvm9po_detail9NumberSetIPNS_17MachineBasicBlockEED2Ev.exit.i, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %.sroa.0216.0364 = load ptr, ptr %i.bl, align 8, !tbaa !116 ; 2 uses
  %.not310365 = icmp eq ptr %.sroa.0216.0364, %i.bm
  br i1 %.not310365, label %._crit_edge368, label %.lr.ph367

.lr.ph367:                                        ; preds = %_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEED2Ev.exit
  %i.aor = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.in

bb.fw:                                            ; preds = %.lr.ph362, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE8iteratorppEv.exit
  %.sroa.4.0361 = phi ptr [ %i.zs, %.lr.ph362 ], [ %i.bkm, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE8iteratorppEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <4 x i8> <i8 1, i8 1, i8 3, i8 2>, ptr %5, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.zw, i8 1, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.zx, ptr %6, align 8, !tbaa !26
  store i32 0, ptr %i.zy, align 8, !tbaa !60
  store i32 6, ptr %i.zz, align 4, !tbaa !61
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.4.0361, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aos, align 8
  %i.aot = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.aou = inttoptr i64 %i.aot to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aou) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aou, align 8
  %i.aov = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aov, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i: ; preds = %bb.fw
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 44
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !233
  %i.aoy = and i32 %i.aox, 4
  %.not45.i.i.i.i.i.i.i.i = icmp eq i32 %i.aoy, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi ptr [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ], [ %i.aou, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i.i, align 8
  %i.aoz = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i, -8
  %i.apa = inttoptr i64 %i.aoz to ptr             ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 44
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !233
  %i.apd = and i32 %i.apc, 4
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.apd, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !330

_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %bb.fw
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.aou, %bb.fw ], [ %i.aou, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ], [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not174199.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i, %i.aos
  br i1 %.not174199.i, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI16coalesceVSETVLIsERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i91

._crit_edge.i93:                                  ; preds = %bb.ic
  %.pre234.i = load ptr, ptr %6, align 8, !tbaa !26 ; 3 uses
  %.pre235.i = load i32, ptr %i.zy, align 8, !tbaa !60 ; 2 uses
  %i.ape = zext i32 %.pre235.i to i64
  %.idx.i94 = shl nuw nsw i64 %i.ape, 3
  %i.apf = getelementptr inbounds nuw i8, ptr %.pre234.i, i64 %.idx.i94
  %.not209.i = icmp eq i32 %.pre235.i, 0
  br i1 %.not209.i, label %._crit_edge213.i, label %.lr.ph212.i

.lr.ph.i91:                                       ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i, %bb.ic
  %.0205.i = phi ptr [ %.2.i92, %bb.ic ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i ] ; 22 uses
  %.sroa.0164.0200.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i, %bb.ic ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i ] ; 31 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0164.0200.i, align 8
  %i.apg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.aph = inttoptr i64 %i.apg to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aph) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i102.i = load i64, ptr %i.aph, align 8
  %i.api = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i102.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.api, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %.lr.ph.i91
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 44
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !233
  %i.apl = and i32 %i.apk, 4
  %.not45.i.i.i.i.i.i.i = icmp eq i32 %i.apl, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.apn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %i.aph, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8
  %i.apm = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i, -8
  %i.apn = inttoptr i64 %i.apm to ptr             ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 44
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !233
  %i.apq = and i32 %i.app, 4
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.apq, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !330

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %.lr.ph.i91
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %i.aph, %.lr.ph.i91 ], [ %i.aph, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.apn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200.i, i64 16 ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !250
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !252
  %i.apv = and i64 %i.apu, 536870912
  %.not175.i = icmp eq i64 %i.apv, 0
  br i1 %.not175.i, label %bb.fx, label %bb.ic

bb.fx:                                            ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit.i
  %i.apw = call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo24isXSfmmVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i) #18
  br i1 %i.apw, label %bb.ic, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.apx = call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo19isVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i) #18
  br i1 %i.apx, label %bb.ge, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.apy = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.apz = call { i64, i16 } @_ZN4llvm5RISCV11getDemandedERKNS_12MachineInstrEPKNS_14RISCVSubtargetE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, ptr noundef %i.apy) #18 ; 2 uses
  %.fca.0.extract31.i = extractvalue { i64, i16 } %i.apz, 0 ; 8 uses
  %.fca.1.extract32.i = extractvalue { i64, i16 } %i.apz, 1 ; 2 uses
  %.sroa.0162.0.extract.trunc.i = trunc i64 %.fca.0.extract31.i to i8
  %i.aqa = load i8, ptr %5, align 8, !tbaa !268, !range !23, !noundef !24
  %i.aqb = or i8 %i.aqa, %.sroa.0162.0.extract.trunc.i
  store i8 %i.aqb, ptr %5, align 8, !tbaa !268
  %.sroa.0162.1.extract.shift.i = lshr i64 %.fca.0.extract31.i, 8
  %.sroa.0162.1.extract.trunc.i = trunc i64 %.sroa.0162.1.extract.shift.i to i8
  %i.aqc = load i8, ptr %i.zt, align 1, !tbaa !256, !range !23, !noundef !24
  %i.aqd = or i8 %i.aqc, %.sroa.0162.1.extract.trunc.i
  store i8 %i.aqd, ptr %i.zt, align 1, !tbaa !256
  %i.aqe = load i8, ptr %i.zu, align 2, !tbaa !605
  %.sroa.0162.2.extract.shift.i = lshr i64 %.fca.0.extract31.i, 16
  %.sroa.0162.2.extract.trunc.i = trunc i64 %.sroa.0162.2.extract.shift.i to i8
  %i.aqf = call i8 @llvm.umax.i8(i8 %i.aqe, i8 %.sroa.0162.2.extract.trunc.i)
  store i8 %i.aqf, ptr %i.zu, align 2, !tbaa !269
  %i.aqg = load i8, ptr %i.zv, align 1, !tbaa !606
  %.sroa.0162.3.extract.shift.i = lshr i64 %.fca.0.extract31.i, 24
  %.sroa.0162.3.extract.trunc.i = trunc i64 %.sroa.0162.3.extract.shift.i to i8
  %i.aqh = call i8 @llvm.umax.i8(i8 %i.aqg, i8 %.sroa.0162.3.extract.trunc.i)
  store i8 %i.aqh, ptr %i.zv, align 1, !tbaa !270
  %.sroa.0162.7.extract.shift.i = lshr i64 %.fca.0.extract31.i, 56
  %.sroa.0162.6.extract.shift.i = lshr i64 %.fca.0.extract31.i, 48
  %.sroa.0162.5.extract.shift.i = lshr i64 %.fca.0.extract31.i, 40
  %.sroa.0162.4.extract.shift.i = lshr i64 %.fca.0.extract31.i, 32
  %.sroa.0162.7.extract.trunc.i = trunc nuw i64 %.sroa.0162.7.extract.shift.i to i8
  %.sroa.0162.6.extract.trunc.i = trunc i64 %.sroa.0162.6.extract.shift.i to i8
  %.sroa.0162.5.extract.trunc.i = trunc i64 %.sroa.0162.5.extract.shift.i to i8
  %.sroa.0162.4.extract.trunc.i = trunc i64 %.sroa.0162.4.extract.shift.i to i8
  %i.aqi = load <4 x i8>, ptr %i.zw, align 4, !tbaa !115
  %31 = insertelement <4 x i8> poison, i8 %.sroa.0162.4.extract.trunc.i, i64 0
  %32 = insertelement <4 x i8> %31, i8 %.sroa.0162.5.extract.trunc.i, i64 1
  %33 = insertelement <4 x i8> %32, i8 %.sroa.0162.6.extract.trunc.i, i64 2
  %34 = insertelement <4 x i8> %33, i8 %.sroa.0162.7.extract.trunc.i, i64 3
  %i.aqj = or <4 x i8> %i.aqi, %34
  store <4 x i8> %i.aqj, ptr %i.zw, align 4, !tbaa !115
  %.sroa.11.9.extract.shift.i = lshr i16 %.fca.1.extract32.i, 8
  %.sroa.11.9.extract.trunc.i = trunc nuw i16 %.sroa.11.9.extract.shift.i to i8
  %i.aqk = load i8, ptr %i.aaa, align 1, !tbaa !271, !range !23, !noundef !24
  %i.aql = or i8 %i.aqk, %.sroa.11.9.extract.trunc.i
  store i8 %i.aql, ptr %i.aaa, align 1, !tbaa !271
  %.sroa.11.8.extract.trunc.i = trunc i16 %.fca.1.extract32.i to i8
  %i.aqm = load i8, ptr %i.aab, align 8, !tbaa !272, !range !23, !noundef !24
  %i.aqn = or i8 %i.aqm, %.sroa.11.8.extract.trunc.i
  store i8 %i.aqn, ptr %i.aab, align 8, !tbaa !272
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200.i, i64 44
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !233 ; 2 uses
  %i.aqq = and i32 %i.aqp, 12
  %i.aqr = icmp eq i32 %i.aqq, 0
  %i.aqs = and i32 %i.aqp, 4
  %i.aqt = icmp ne i32 %i.aqs, 0
  %or.cond.i.i.i98 = or i1 %i.aqr, %i.aqt
  br i1 %or.cond.i.i.i98, label %.split.i101, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i99

.split.i101:                                      ; preds = %bb.fz
  %i.aqu = load ptr, ptr %i.apr, align 8, !tbaa !250
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !267
  %i.aqx = and i64 %i.aqw, 128
  %.not176.i = icmp eq i64 %i.aqx, 0
  br i1 %.not176.i, label %bb.ga, label %bb.gd

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i99: ; preds = %bb.fz
  %i.aqy = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, i64 noundef 128, i32 noundef 1) #18
  br i1 %i.aqy, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i99, %.split.i101
  %i.aqz = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200.i, i64 52
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !266
  %i.arb = add i32 %i.ara, -1
  %spec.select.i.i100 = icmp ult i32 %i.arb, 2
  br i1 %spec.select.i.i100, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.arc = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, i32 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %.not177.i = icmp eq i32 %i.arc, -1
  br i1 %.not177.i, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ard = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, i32 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %.not178.i = icmp eq i32 %i.ard, -1
  br i1 %.not178.i, label %bb.ic, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i99, %.split.i101
  br label %bb.ic

bb.ge:                                            ; preds = %bb.fy
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200.i, i64 32 ; 7 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !240 ; 2 uses
  %i.arg = load i32, ptr %i.arf, align 8
  %i.arh = and i32 %i.arg, 83886080
  %i.ari = icmp eq i32 %i.arh, 83886080
  br i1 %i.ari, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  store i8 1, ptr %5, align 8, !tbaa !268
  store i8 1, ptr %i.zt, align 1, !tbaa !256
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.not86.i = icmp eq ptr %.0205.i, null
  br i1 %.not86.i, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.arj = load i8, ptr %5, align 8, !tbaa !268, !range !23, !noundef !24
  %i.ark = trunc nuw i8 %i.arj to i1
  %i.arl = load i8, ptr %i.zt, align 1, !range !23
  %i.arm = trunc nuw i8 %i.arl to i1
  %i.arn = select i1 %i.ark, i1 true, i1 %i.arm
  br i1 %i.arn, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aro = load <2 x i8>, ptr %i.zu, align 2
  %.fr611 = freeze <2 x i8> %i.aro
  %i.arp = icmp ne <2 x i8> %.fr611, zeroinitializer
  %i.arq = load <4 x i8>, ptr %i.zw, align 4
  %.fr = freeze <4 x i8> %i.arq
  %i.arr = trunc <4 x i8> %.fr to <4 x i1>        ; 2 uses
  %i.ars = load i8, ptr %i.aab, align 8, !range !23
  %i.art = trunc nuw i8 %i.ars to i1
  %i.aru = load i8, ptr %i.aaa, align 1, !range !23
  %i.arv = trunc nuw i8 %i.aru to i1
  %i.arw = shufflevector <4 x i1> %i.arr, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %rdx.op = or <2 x i1> %i.arw, %i.arp
  %i.arx = shufflevector <2 x i1> %rdx.op, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ary = shufflevector <4 x i1> %i.arx, <4 x i1> %i.arr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.arz = bitcast <4 x i1> %i.ary to i4
  %i.asa = icmp ne i4 %i.arz, 0
  %op.rdx = select i1 %i.asa, i1 true, i1 %i.art
  %i.asb = freeze i1 %op.rdx
  %op.rdx610 = select i1 %i.asb, i1 true, i1 %i.arv
  br i1 %op.rdx610, label %bb.gm, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arf, i64 32
  call fastcc void @"_ZZNK12_GLOBAL__N_118RISCVInsertVSETVLI16coalesceVSETVLIsERN4llvm17MachineBasicBlockEENK3$_0clERNS1_14MachineOperandE"(ptr nonnull align 8 dereferenceable(208) %0, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %i.asc)
  %i.asd = load ptr, ptr %i.u, align 8, !tbaa !109 ; 2 uses
  %.not87.i = icmp eq ptr %i.asd, null
  br i1 %.not87.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 32
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !222
  call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.asf, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, i1 noundef zeroext false) #18
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.asg = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i) #18 ; 0 uses
  br label %bb.ic

bb.gm:                                            ; preds = %bb.gi, %bb.gh
  %i.ash = call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo20isVLPreservingConfigERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.0205.i) #18
  br i1 %i.ash, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.asi = load i8, ptr %5, align 8, !tbaa !268, !range !23, !noundef !24
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ask = load i8, ptr %i.zt, align 1, !tbaa !256, !range !23, !noundef !24
  %i.asl = trunc nuw i8 %i.ask to i1
  br i1 %i.asl, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  %i.asm = call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo20isVLPreservingConfigERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i) #18
  br i1 %i.asm, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17getInfoForVSETVLIERKNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17getInfoForVSETVLIERKNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %.0205.i) #18
  %i.asn = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.aso = call noundef zeroext i1 @_ZNK4llvm5RISCV11VSETVLIInfo17hasEquallyZeroAVLERKS1_PKNS_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef %i.asn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %i.aso, label %bb.gr, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %i.asp = getelementptr inbounds nuw i8, ptr %.0205.i, i64 32 ; 2 uses
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !240 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 32
  %i.ass = load i32, ptr %i.asr, align 8
  %i.ast = and i32 %i.ass, 255
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %bb.gs, label %.critedge.i.i

bb.gs:                                            ; preds = %bb.gr
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asq, i64 36 ; 3 uses
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !110 ; 2 uses
  %.not89.i.i = icmp eq i32 %i.asw, 68
  br i1 %.not89.i.i, label %.critedge.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.asx = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.asy = call fastcc noundef ptr @_ZN12_GLOBAL__N_116getVNInfoFromRegEN4llvm8RegisterERKNS0_12MachineInstrEPKNS0_13LiveIntervalsE(i32 %i.asw, ptr noundef nonnull align 8 dereferenceable(80) %.0205.i, ptr noundef %i.asx) ; 2 uses
  %i.asz = load i32, ptr %i.asv, align 4, !tbaa !110
  %i.ata = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.atb = call fastcc noundef ptr @_ZN12_GLOBAL__N_116getVNInfoFromRegEN4llvm8RegisterERKNS0_12MachineInstrEPKNS0_13LiveIntervalsE(i32 %i.asz, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0164.0200.i, ptr noundef %i.ata) ; 2 uses
  %i.atc = icmp ne ptr %i.asy, null
  %i.atd = icmp ne ptr %i.atb, null
  %or.cond.i.i = and i1 %i.atc, %i.atd
  %.not.i104.i = icmp eq ptr %i.asy, %i.atb
  %or.cond56.i.i = and i1 %.not.i104.i, %or.cond.i.i
  br i1 %or.cond56.i.i, label %.critedge.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ate = load ptr, ptr %i.u, align 8, !tbaa !109
  %.not52.i.i = icmp eq ptr %i.ate, null
  br i1 %.not52.i.i, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.atf = load i32, ptr %i.asv, align 4, !tbaa !110 ; 2 uses
  %i.atg = icmp slt i32 %i.atf, 0
  br i1 %i.atg, label %bb.gw, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i

bb.gw:                                            ; preds = %bb.gv
  %i.ath = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.ati = call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ath, i32 %i.atf) #18 ; 4 uses
  %.not53.i.i = icmp eq ptr %i.ati, null
  br i1 %.not53.i.i, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.atj = call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo15isLoadImmediateERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %i.ati) #18
  br i1 %i.atj, label %bb.gy, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i

bb.gy:                                            ; preds = %bb.gx
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !273
  %i.atm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0200.i, i64 24
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !273
  %.not54.i.i = icmp eq ptr %i.atl, %i.atn
  br i1 %.not54.i.i, label %.critedge.i.i, label %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI20canMutatePriorConfigERKN4llvm12MachineInstrES4_RKNS1_5RISCV14DemandedFieldsERPS2_.exit.thread.i

end_hunk_0
