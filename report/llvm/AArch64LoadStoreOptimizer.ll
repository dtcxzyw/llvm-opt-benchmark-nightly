Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64LoadStoreOptimizer?download=true
inline.NumInlined: 2993
inline.NumDeleted: 1301
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64LoadStoreOpt13optimizeBlockERN4llvm17MachineBasicBlockEb:bb.a
  %or.cond.i.i271 = and i1 %i.cci, %i.cct
  br i1 %or.cond.i.i271, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread169.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.hy
  %i.ccu = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.cco, i32 %i.ccq, i32 %i.cch) #20
  br i1 %i.ccu, label %.loopexit, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread169.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread169.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.hy, %bb.hw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge105.i, label %bb.hw, !llvm.loop !714

.critedge105.i:                                   ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread169.i, %bb.hv
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.cbw, i64 56
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !389 ; 2 uses
  %.not184204.i = icmp eq ptr %i.ccw, %.sroa.0305.0509
  br i1 %.not184204.i, label %.loopexit, label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %.critedge105.i
  %i.ccx = and i32 %i.cca, 65535                  ; 2 uses
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ie, %.lr.ph207.i
  %.094206.i = phi i32 [ 0, %.lr.ph207.i ], [ %.195.i, %bb.ie ] ; 2 uses
  %.sroa.0145.0205.i = phi ptr [ %.sroa.0305.0509, %.lr.ph207.i ], [ %.sroa.0.1.i.i.i.i, %bb.ie ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0145.0205.i, align 8
  %i.ccy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.ccz = inttoptr i64 %i.ccy to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ccz) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.ccz, align 8
  %i.cda = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cda, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.hz
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccz, i64 44
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !425
  %i.cdd = and i32 %i.cdc, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cdd, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cdf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.ccz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.cde = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.cdf = inttoptr i64 %i.cde to ptr             ; 3 uses
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 44
  %i.cdh = load i32, ptr %i.cdg, align 4, !tbaa !425
  %i.cdi = and i32 %i.cdh, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cdi, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !605

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.hz
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ccz, %bb.hz ], [ %i.ccz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.cdf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 11 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 52
  %i.cdk = load i32, ptr %i.cdj, align 4, !tbaa !398
  %.off.i.i = add i32 %i.cdk, -14
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.ie, label %bb.ia, !llvm.loop !715

bb.ia:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i
  %i.cdl = add i32 %.094206.i, 1                  ; 2 uses
  %i.cdm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UMOVFoldLimit, i64 120), align 8, !tbaa !431
  %i.cdn = icmp ugt i32 %i.cdl, %i.cdm
  br i1 %i.cdn, label %.loopexit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.cdo = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.cdp = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i32 %i.ccx, ptr noundef %i.cdo, i1 noundef zeroext false) #20
  %.not185.i = icmp eq i32 %i.cdp, -1
  br i1 %.not185.i, label %bb.ic, label %.loopexit

bb.ic:                                            ; preds = %bb.ib
  %i.cdq = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.cdr = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i32 %i.ccx, ptr noundef %i.cdq, i1 noundef zeroext false, i1 noundef zeroext true) #20
  %.not186.i = icmp eq i32 %i.cdr, -1
  br i1 %.not186.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cds = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 52
  %i.cdt = load i32, ptr %i.cds, align 4, !tbaa !398
  %switch.tableidx941 = add i32 %i.cdt, -8458     ; 3 uses
  %i.cdu = icmp ult i32 %switch.tableidx941, 7
  %switch.maskindex = trunc i32 %switch.tableidx941 to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cdu, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.loopexit

bb.ie:                                            ; preds = %bb.ic, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i
  %.195.i = phi i32 [ %i.cdl, %bb.ic ], [ %.094206.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i ]
  %.not184.i = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.ccw
  br i1 %.not184.i, label %.loopexit, label %bb.hz

switch.lookup:                                    ; preds = %bb.id
  %i.cdv = zext nneg i32 %switch.tableidx941 to i64
  %switch.gep942 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_119AArch64LoadStoreOpt13optimizeBlockERN4llvm17MachineBasicBlockEb.56, i64 %i.cdv
  %switch.load943 = load i8, ptr %switch.gep942, align 1
  %switch.ext = zext i8 %switch.load943 to i32
  %i.cdw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 32
  %i.cdx = load ptr, ptr %i.cdw, align 8, !tbaa !437
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdx, i64 36
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !433
  %i.cea = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.ceb = and i32 %i.cdz, 65535                  ; 6 uses
  %i.cec = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.cea, i32 %i.ceb, i32 noundef %switch.ext) #20
  %i.ced = load i64, ptr %i.cbn, align 8, !tbaa !433 ; 4 uses
  %i.cee = icmp ugt i64 %i.ced, 7
  call void @llvm.assume(i1 %i.cee)
  %i.cef = and i64 %i.ced, 7
  %i.ceg = icmp eq i64 %i.cef, 0
  br i1 %i.ceg, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %switch.lookup
  %i.ceh = inttoptr i64 %i.ced to ptr             ; 2 uses
  store ptr %i.ceh, ptr %i.cbn, align 8, !tbaa !433
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i

bb.ig:                                            ; preds = %switch.lookup
  %i.cei = and i64 %i.ced, -8
  %i.cej = inttoptr i64 %i.cei to ptr
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 16
  %.pre.i267 = load ptr, ptr %i.cek, align 8, !tbaa !742
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i: ; preds = %bb.ig, %bb.if
  %i.cel = phi ptr [ %i.ceh, %bb.if ], [ %.pre.i267, %bb.ig ]
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 24
  %i.cen = load i64, ptr %i.cem, align 8          ; 12 uses
  %i.ceo = icmp eq i64 %i.cen, 1152921504606846976
  %i.cep = and i64 %i.cen, 1152921504606846975
  %i.ceq = icmp ne i64 %i.cep, 0
  %i.cer = or i1 %i.ceo, %i.ceq
  br i1 %i.cer, label %bb.ih, label %_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i

bb.ih:                                            ; preds = %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i
  %.mask.i.i.i.i = and i64 %i.cen, -1152921504606846976
  %i.ces = icmp eq i64 %.mask.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.ces, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.cet = lshr i64 %i.cen, 60
  %.off.i.i.i.i = add nsw i64 %i.cet, -1
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %switch.i.i.i.i, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.ceu = icmp slt i64 %i.cen, -8070450532247928832
  %spec.select.i.i.i.i.i = or i1 %i.ceu, %i.ces
  %i.cev = lshr i64 %i.cen, 44
  %i.cew = and i64 %i.cev, 65535
  %i.cex = lshr i64 %i.cen, 28
  %i.cey = and i64 %i.cex, 4294967295
  %i.cez = select i1 %spec.select.i.i.i.i.i, i64 %i.cew, i64 %i.cey
  br label %_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i

bb.ik:                                            ; preds = %bb.ii
  %i.cfa = lshr i64 %i.cen, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.cfa, 65535
  %i.cfb = icmp slt i64 %i.cen, -8070450532247928832
  %i.cfc = lshr i64 %i.cen, 44
  %i.cfd = and i64 %i.cfc, 65535
  %i.cfe = lshr i64 %i.cen, 28
  %.0.in.i3.i.i.i = select i1 %i.cfb, i64 %i.cfd, i64 %i.cfe
  %i.cff = mul nuw nsw i64 %.0.in.i3.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %i.cfg = and i64 %i.cff, 4294967295
  %.sroa.0.4.extract.trunc.i.i.i = shl i64 %i.cen, 62
  %i.cfh = and i64 %.sroa.0.4.extract.trunc.i.i.i, 4611686018427387904
  %i.cfi = or disjoint i64 %i.cfg, %i.cfh
  br label %_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i

_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i: ; preds = %bb.ik, %bb.ij, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i
  %.sroa.03.0.i.i = phi i64 [ -1, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i ], [ %i.cez, %bb.ij ], [ %i.cfi, %bb.ik ]
  %i.cfj = load ptr, ptr %i.bnn, align 8, !tbaa !180 ; 5 uses
  %i.cfk = and i32 %i.cec, 65535                  ; 2 uses
  %i.cfl = load ptr, ptr %i.cfj, align 8, !tbaa !20
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfl, i64 32
  %i.cfn = load ptr, ptr %i.cfm, align 8
  %i.cfo = call noundef ptr %i.cfn(ptr noundef nonnull align 8 dereferenceable(316) %i.cfj, i32 %i.cfk) #20, !inline_history !716
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfj, i64 296
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !812
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfj, i64 40
  %i.cfs = load i32, ptr %i.cfr, align 8, !tbaa !813
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfj, i64 312
  %i.cfu = load i32, ptr %i.cft, align 8, !tbaa !814
  %i.cfv = mul i32 %i.cfu, %i.cfs
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfo, i64 20
  %i.cfx = load i16, ptr %i.cfw, align 4, !tbaa !815
  %i.cfy = zext i16 %i.cfx to i32
  %i.cfz = add i32 %i.cfv, %i.cfy
  %i.cga = zext i32 %i.cfz to i64
  %i.cgb = getelementptr inbounds nuw [16 x i8], ptr %i.cfq, i64 %i.cga
  %i.cgc = load i32, ptr %i.cgb, align 4, !tbaa !817
  %i.cgd = zext i32 %i.cgc to i64
  %.not187.i = icmp eq i64 %.sroa.03.0.i.i, %i.cgd
  br i1 %.not187.i, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i, label %.loopexit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i: ; preds = %_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i
  %i.cge = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.cgf = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i32 %i.ceb, ptr noundef %i.cge, i1 noundef zeroext true) #20
  %43 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8 ; 2 uses
  %44 = load ptr, ptr %43, align 8, !tbaa !389    ; 2 uses
  %45 = icmp ne i32 %i.cgf, -1
  %46 = zext i1 %45 to i8                         ; 2 uses
  %.not188208.i = icmp eq ptr %44, %.sroa.0305.0509
  br i1 %.not188208.i, label %.critedge108.i, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.089210.i = phi i8 [ %.190.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %46, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i ]
  %.sroa.0132.0209.i = phi ptr [ %i.cgm, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %44, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i ] ; 3 uses
  %i.cgg = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.cgh = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0132.0209.i, i32 %i.ceb, ptr noundef %i.cgg, i1 noundef zeroext false, i1 noundef zeroext true) #20
  %.not190.i = icmp eq i32 %i.cgh, -1
  br i1 %.not190.i, label %bb.il, label %.loopexit

bb.il:                                            ; preds = %.lr.ph212.i
  %i.cgi = trunc nuw i8 %.089210.i to i1
  br i1 %i.cgi, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.cgj = load ptr, ptr %i.bnn, align 8, !tbaa !180
  %i.cgk = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0132.0209.i, i32 %i.ceb, ptr noundef %i.cgj, i1 noundef zeroext true) #20
  %.not191.i = icmp ne i32 %i.cgk, -1
  %spec.select.i268 = zext i1 %.not191.i to i8
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.im, %bb.il
  %.190.i = phi i8 [ 1, %bb.il ], [ %spec.select.i268, %bb.im ] ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.sroa.0132.0209.i, i64 8
  %i.cgm = load ptr, ptr %i.cgl, align 8, !tbaa !389 ; 2 uses
  %.not188.i = icmp eq ptr %i.cgm, %.sroa.0305.0509
  br i1 %.not188.i, label %.critedge108.i, label %.lr.ph212.i, !llvm.loop !717

.critedge108.i:                                   ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i
  %.089.lcssa.i = phi i8 [ %46, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.i ], [ %.190.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ]
  %i.cgn = load ptr, ptr %i.bnn, align 8, !tbaa !180
  call void @_ZN4llvm12MachineInstr18clearRegisterKillsENS_8RegisterEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i32 %i.ceb, ptr noundef %i.cgn) #20
  %i.cgo = load ptr, ptr %43, align 8, !tbaa !389 ; 2 uses
  %.not189213.i = icmp eq ptr %i.cgo, %.sroa.0305.0509
  br i1 %.not189213.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i, %.critedge108.i
  %i.cgp = getelementptr inbounds nuw i8, ptr %.sroa.0305.0509, i64 72
  %.sroa.09.0.copyload.i = load ptr, ptr %i.cgp, align 8, !tbaa !446
  %i.cgq = load ptr, ptr %i.bno, align 8, !tbaa !179
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 8
  %i.cgs = load ptr, ptr %i.cgr, align 8, !tbaa !447
  %i.cgt = getelementptr inbounds [32 x i8], ptr %i.cgs, i64 %.0.i.ph.neg.i
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cbw, i64 32
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !388 ; 4 uses
  %i.cgw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cgv, ptr noundef nonnull align 8 dereferenceable(32) %i.cgt, ptr %.sroa.09.0.copyload.i, i1 noundef zeroext false) #20 ; 9 uses
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 40 ; 3 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cgx, ptr noundef %i.cgw) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i303 = load i64, ptr %.sroa.0305.0509, align 8
  %i.cgy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i303, -8 ; 2 uses
  %i.cgz = inttoptr i64 %i.cgy to ptr
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgw, i64 8
  store ptr %.sroa.0305.0509, ptr %i.cha, align 8, !tbaa !389
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cgw, align 8
  %i.chb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.chc = or disjoint i64 %i.chb, %i.cgy
  store i64 %i.chc, ptr %i.cgw, align 8
  %i.chd = getelementptr inbounds nuw i8, ptr %i.cgz, i64 8
  store ptr %i.cgw, ptr %i.chd, align 8, !tbaa !389
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.0305.0509, align 8
  %i.che = ptrtoint ptr %i.cgw to i64
  %i.chf = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.chg = or disjoint i64 %i.chf, %i.che
  store i64 %i.chg, ptr %.sroa.0305.0509, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %i.bnp, align 8, !tbaa !450, !alias.scope !818
  %.not.i302 = icmp eq i8 %.089.lcssa.i, 0
  %i.chh = select i1 %.not.i302, i32 0, i32 67108864
  store i32 %i.cfk, ptr %i.bnq, align 4, !tbaa !433, !alias.scope !818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bnr, i8 0, i64 16, i1 false), !alias.scope !818
  store i32 %i.chh, ptr %3, align 8, !alias.scope !818
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cgw, ptr noundef nonnull align 8 dereferenceable(1065) %i.cgv, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.chi = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0305.0509) #20 ; 2 uses
  %i.chj = icmp ugt i32 %i.chi, 1
  br i1 %i.chj, label %.lr.ph218.preheader.i, label %._crit_edge.i

.lr.ph218.preheader.i:                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %wide.trip.count232.i = zext i32 %i.chi to i64
  br label %.lr.ph218.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i: ; preds = %.critedge108.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i
  %.sroa.0126.0214.i = phi ptr [ %i.chm, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i ], [ %i.cgo, %.critedge108.i ] ; 2 uses
  %i.chk = load ptr, ptr %i.bnn, align 8, !tbaa !180
  call void @_ZN4llvm12MachineInstr18clearRegisterKillsENS_8RegisterEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0126.0214.i, i32 %i.ceb, ptr noundef %i.chk) #20
  %i.chl = getelementptr inbounds nuw i8, ptr %.sroa.0126.0214.i, i64 8
  %i.chm = load ptr, ptr %i.chl, align 8, !tbaa !389 ; 2 uses
  %.not189.i = icmp eq ptr %i.chm, %.sroa.0305.0509
  br i1 %.not189.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit116.i, !llvm.loop !720

._crit_edge.i:                                    ; preds = %.lr.ph218.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.chn = load i64, ptr %i.cbn, align 8, !tbaa !433 ; 4 uses
  %i.cho = icmp ugt i64 %i.chn, 7
  br i1 %i.cho, label %bb.in, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i

bb.in:                                            ; preds = %._crit_edge.i
  %i.chp = and i64 %i.chn, 7
  switch i64 %i.chp, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i [
    i64 0, label %bb.io
    i64 3, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.chq = inttoptr i64 %i.chn to ptr
  store ptr %i.chq, ptr %i.cbn, align 8, !tbaa !433
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i

bb.ip:                                            ; preds = %bb.in
  %i.chr = and i64 %i.chn, -8
  %i.chs = inttoptr i64 %i.chr to ptr             ; 2 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 16
  %i.chu = load i32, ptr %i.chs, align 8, !tbaa !526
  %i.chv = sext i32 %i.chu to i64
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i

_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i: ; preds = %bb.ip, %bb.io, %bb.in, %._crit_edge.i
  %.sroa.0.1.i117.i = phi ptr [ %i.cbn, %bb.io ], [ null, %._crit_edge.i ], [ %i.cht, %bb.ip ], [ null, %bb.in ]
  %.sroa.7.1.i118.i = phi i64 [ 1, %bb.io ], [ 0, %._crit_edge.i ], [ %i.chv, %bb.ip ], [ 0, %bb.in ]
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.cgw, ptr noundef nonnull align 8 dereferenceable(1065) %i.cgv, ptr %.sroa.0.1.i117.i, i64 %.sroa.7.1.i118.i) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i289 = load i64, ptr %.sroa.0305.0509, align 8
  %i.chw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i289, 4
  %.not.i.i.i.i.i290 = icmp eq i64 %i.chw, 0
  br i1 %.not.i.i.i.i.i290, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297: ; preds = %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i
  %i.chx = getelementptr inbounds nuw i8, ptr %.sroa.0305.0509, i64 44
  %i.chy = load i32, ptr %i.chx, align 4, !tbaa !425
  %i.chz = and i32 %i.chy, 8
  %.not34.i.i.i.i.i298 = icmp eq i32 %i.chz, 0
  br i1 %.not34.i.i.i.i.i298, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299
  %.sroa.0.05.i.i.i.i.i300 = phi ptr [ %i.cib, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299 ], [ %.sroa.0305.0509, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297 ]
  %i.cia = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i300, i64 8
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !389 ; 3 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 44
  %i.cid = load i32, ptr %i.cic, align 4, !tbaa !425
  %i.cie = and i32 %i.cid, 8
  %.not3.i.i.i.i.i301 = icmp eq i32 %i.cie, 0
  br i1 %.not3.i.i.i.i.i301, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297, %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i
  %.sroa.0.1.i.i.i.i.i292 = phi ptr [ %.sroa.0305.0509, %_ZNK4llvm12MachineInstr11memoperandsEv.exit121.i ], [ %.sroa.0305.0509, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i297 ], [ %i.cib, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i299 ]
  %i.cif = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i292, i64 8
  %i.cig = load ptr, ptr %i.cif, align 8, !tbaa !389 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0305.0509, %i.cig
  br i1 %.not4.i.i.i, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291, %.lr.ph.i.i.i293
  %.sroa.03.05.i.i.i = phi ptr [ %i.cii, %.lr.ph.i.i.i293 ], [ %.sroa.0305.0509, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291 ] ; 6 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.cii = load ptr, ptr %i.cih, align 8, !tbaa !389 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cgx, ptr noundef nonnull %.sroa.03.05.i.i.i) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i294 = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.cij = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i294, -8 ; 2 uses
  %i.cik = inttoptr i64 %i.cij to ptr
  %i.cil = load ptr, ptr %i.cih, align 8, !tbaa !389 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.cil, align 8
  %i.cim = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.cin = or disjoint i64 %i.cim, %i.cij
  store i64 %i.cin, ptr %i.cil, align 8
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cik, i64 8
  store ptr %i.cil, ptr %i.cio, align 8, !tbaa !389
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i295 = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.cip = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i295, 7
  store i64 %i.cip, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.cih, align 8, !tbaa !389
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cgx, ptr noundef nonnull %.sroa.03.05.i.i.i) #20
  %.not.i.i.i296 = icmp eq ptr %i.cii, %i.cig
  br i1 %.not.i.i.i296, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i293, !llvm.loop !721

.lr.ph218.i:                                      ; preds = %.lr.ph218.i, %.lr.ph218.preheader.i
  %indvars.iv229.i = phi i64 [ 1, %.lr.ph218.preheader.i ], [ %indvars.iv.next230.i, %.lr.ph218.i ] ; 2 uses
  %i.ciq = load ptr, ptr %i.cbx, align 8, !tbaa !437
  %i.cir = getelementptr inbounds nuw [32 x i8], ptr %i.ciq, i64 %indvars.iv229.i
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cgw, ptr noundef nonnull align 8 dereferenceable(1065) %i.cgv, ptr noundef nonnull align 8 dereferenceable(32) %i.cir) #20
  %indvars.iv.next230.i = add nuw nsw i64 %indvars.iv229.i, 1 ; 2 uses
  %exitcond233.not.i = icmp eq i64 %indvars.iv.next230.i, %wide.trip.count232.i
  br i1 %exitcond233.not.i, label %._crit_edge.i, label %.lr.ph218.i, !llvm.loop !722

_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i293, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i291
  %i.cis = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i) #20 ; 0 uses
  br label %bb.iq

.loopexit:                                        ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.hx, %bb.ia, %bb.ie, %bb.ib, %.lr.ph212.i, %bb.id, %bb.hu, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i, %.critedge105.i, %bb.hr, %bb.hb, %bb.ht, %_ZNK4llvm17MachineMemOperand13getSizeInBitsEv.exit.i, %bb.hs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0305.0509) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i273 = load i64, ptr %.sroa.0305.0509, align 8
  %i.cit = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i273, 4
  %.not.i.i.i274 = icmp eq i64 %i.cit, 0
  br i1 %.not.i.i.i274, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276: ; preds = %.loopexit
  %i.ciu = getelementptr inbounds nuw i8, ptr %.sroa.0305.0509, i64 44
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !425
  %i.ciw = and i32 %i.civ, 8
  %.not34.i.i.i277 = icmp eq i32 %i.ciw, 0
  br i1 %.not34.i.i.i277, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278
  %.sroa.0.05.i.i.i279 = phi ptr [ %i.ciy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278 ], [ %.sroa.0305.0509, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276 ]
  %i.cix = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i279, i64 8
  %i.ciy = load ptr, ptr %i.cix, align 8, !tbaa !389 ; 3 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 44
  %i.cja = load i32, ptr %i.ciz, align 4, !tbaa !425
  %i.cjb = and i32 %i.cja, 8
  %.not3.i.i.i280 = icmp eq i32 %i.cjb, 0
  br i1 %.not3.i.i.i280, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278, %.loopexit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276
  %.sroa.0.1.i.i.i275 = phi ptr [ %.sroa.0305.0509, %.loopexit ], [ %.sroa.0305.0509, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i276 ], [ %i.ciy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i278 ]
  %i.cjc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i275, i64 8
  %i.cjd = load ptr, ptr %i.cjc, align 8, !tbaa !389
  br label %bb.iq

bb.iq:                                            ; preds = %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281
  %.sroa.0305.1 = phi ptr [ %i.cig, %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit ], [ %i.cjd, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281 ] ; 2 uses
  %.12 = phi i1 [ true, %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt21tryToReplaceUMOVStoreERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit ], [ %.11511, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit281 ] ; 2 uses
  %.not366 = icmp eq ptr %.sroa.0305.1, %i.i
  br i1 %.not366, label %._crit_edge514, label %bb.hb, !llvm.loop !723
}

declare void @_ZN4llvm12LiveRegUnits10addLiveInsERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22updateDefinedRegistersRN4llvm12MachineInstrERNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.591", align 8 ; 14 uses
  %3 = alloca %"class.llvm::iterator_range.591", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4llvm19phys_regs_and_masksERKNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.591") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.sroa.016.0.copyload = load ptr, ptr %2, align 8
  %.sroa.1218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.1218.0.copyload = load ptr, ptr %.sroa.1218.0..sroa_idx, align 8 ; 11 uses
end_hunk_0
