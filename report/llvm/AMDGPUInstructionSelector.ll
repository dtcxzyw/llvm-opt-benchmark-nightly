Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstructionSelector?download=true
inline.NumInlined: 11496
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageE:bb.a
  %i.dyv = zext i8 %i.dyu to i64                  ; 2 uses
  %i.dyw = icmp slt i8 %i.dyu, 0
  br i1 %i.dyw, label %bb.qr, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1665, !prof !520

bb.qr:                                            ; preds = %bb.qq
  %i.dyx = and i64 %i.dyv, 127
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qs, %bb.qr
  %i.dyy = phi i64 [ %i.dys, %bb.qr ], [ %i.dzh, %bb.qs ] ; 2 uses
  %.012.i.i1662 = phi i32 [ 7, %bb.qr ], [ %i.dzg, %bb.qs ] ; 2 uses
  %.0.i.i1663 = phi i64 [ %i.dyx, %bb.qr ], [ %i.dzf, %bb.qs ]
  %i.dyz = getelementptr inbounds nuw i8, ptr %5, i64 %i.dyy
  %i.dza = load i8, ptr %i.dyz, align 1, !tbaa !338, !alias.scope !1263 ; 2 uses
  %i.dzb = and i8 %i.dza, 127
  %i.dzc = zext nneg i8 %i.dzb to i64
  %i.dzd = zext nneg i32 %.012.i.i1662 to i64
  %i.dze = shl i64 %i.dzc, %i.dzd
  %i.dzf = add i64 %i.dze, %.0.i.i1663            ; 2 uses
  %i.dzg = add i32 %.012.i.i1662, 7
  %i.dzh = add i64 %i.dyy, 1                      ; 2 uses
  %i.dzi = icmp slt i8 %i.dza, 0
  br i1 %i.dzi, label %bb.qs, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1665, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1665: ; preds = %bb.qs, %bb.qq
  %.247 = phi i64 [ %i.dys, %bb.qq ], [ %i.dzh, %bb.qs ] ; 2 uses
  %.1.i.i1661 = phi i64 [ %i.dyv, %bb.qq ], [ %i.dzf, %bb.qs ]
  %i.dzj = getelementptr inbounds nuw i8, ptr %5, i64 %.247
  %.0.copyload.i.i1666 = load i32, ptr %i.dzj, align 1
  %i.dzk = add i64 %.247, 4
  %i.dzl = load ptr, ptr %24, align 8, !tbaa !382
  %i.dzm = getelementptr inbounds nuw [16 x i8], ptr %i.dzl, i64 %.1.i.i1661
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzm, i64 8
  %i.dzo = load ptr, ptr %i.dzn, align 8, !tbaa !525
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dzo, i64 44 ; 2 uses
  %i.dzq = load i32, ptr %i.dzp, align 4, !tbaa !425
  %i.dzr = xor i32 %.0.copyload.i.i1666, -1
  %i.dzs = or i32 %i.dzr, 12
  %i.dzt = and i32 %i.dzq, %i.dzs
  store i32 %i.dzt, ptr %i.dzp, align 4, !tbaa !425
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.qt:                                            ; preds = %bb.b
  %i.dzu = add i64 %.02920, 2                     ; 2 uses
  %i.dzv = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.dzw = load i8, ptr %i.dzv, align 1, !tbaa !338, !alias.scope !1264 ; 2 uses
  %i.dzx = zext i8 %i.dzw to i64                  ; 2 uses
  %i.dzy = icmp slt i8 %i.dzw, 0
  br i1 %i.dzy, label %bb.qu, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671, !prof !520

bb.qu:                                            ; preds = %bb.qt
  %i.dzz = and i64 %i.dzx, 127
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qv, %bb.qu
  %i.eaa = phi i64 [ %i.dzu, %bb.qu ], [ %i.eaj, %bb.qv ] ; 2 uses
  %.012.i.i1668 = phi i32 [ 7, %bb.qu ], [ %i.eai, %bb.qv ] ; 2 uses
  %.0.i.i1669 = phi i64 [ %i.dzz, %bb.qu ], [ %i.eah, %bb.qv ]
  %i.eab = getelementptr inbounds nuw i8, ptr %5, i64 %i.eaa
  %i.eac = load i8, ptr %i.eab, align 1, !tbaa !338, !alias.scope !1264 ; 2 uses
  %i.ead = and i8 %i.eac, 127
  %i.eae = zext nneg i8 %i.ead to i64
  %i.eaf = zext nneg i32 %.012.i.i1668 to i64
  %i.eag = shl i64 %i.eae, %i.eaf
  %i.eah = add i64 %i.eag, %.0.i.i1669            ; 2 uses
  %i.eai = add i32 %.012.i.i1668, 7
  %i.eaj = add i64 %i.eaa, 1                      ; 2 uses
  %i.eak = icmp slt i8 %i.eac, 0
  br i1 %i.eak, label %bb.qv, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671: ; preds = %bb.qv, %bb.qt
  %.248 = phi i64 [ %i.dzu, %bb.qt ], [ %i.eaj, %bb.qv ] ; 2 uses
  %.1.i.i1667 = phi i64 [ %i.dzx, %bb.qt ], [ %i.eah, %bb.qv ]
  %i.eal = add i64 %.248, 1                       ; 2 uses
  %i.eam = getelementptr inbounds nuw i8, ptr %5, i64 %.248
  %i.ean = load i8, ptr %i.eam, align 1, !tbaa !338, !alias.scope !1265 ; 2 uses
  %i.eao = zext i8 %i.ean to i64                  ; 2 uses
  %i.eap = icmp slt i8 %i.ean, 0
  br i1 %i.eap, label %bb.qw, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1676, !prof !520

bb.qw:                                            ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671
  %i.eaq = and i64 %i.eao, 127
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qx, %bb.qw
  %i.ear = phi i64 [ %i.eal, %bb.qw ], [ %i.eba, %bb.qx ] ; 2 uses
  %.012.i.i1673 = phi i32 [ 7, %bb.qw ], [ %i.eaz, %bb.qx ] ; 2 uses
  %.0.i.i1674 = phi i64 [ %i.eaq, %bb.qw ], [ %i.eay, %bb.qx ]
  %i.eas = getelementptr inbounds nuw i8, ptr %5, i64 %i.ear
  %i.eat = load i8, ptr %i.eas, align 1, !tbaa !338, !alias.scope !1265 ; 2 uses
  %i.eau = and i8 %i.eat, 127
  %i.eav = zext nneg i8 %i.eau to i64
  %i.eaw = zext nneg i32 %.012.i.i1673 to i64
  %i.eax = shl i64 %i.eav, %i.eaw
  %i.eay = add i64 %i.eax, %.0.i.i1674            ; 2 uses
  %i.eaz = add i32 %.012.i.i1673, 7
  %i.eba = add i64 %i.ear, 1                      ; 2 uses
  %i.ebb = icmp slt i8 %i.eat, 0
  br i1 %i.ebb, label %bb.qx, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1676, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1676: ; preds = %bb.qx, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671
  %.249 = phi i64 [ %i.eal, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671 ], [ %i.eba, %bb.qx ]
  %.1.i.i1672 = phi i64 [ %i.eao, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1671 ], [ %i.eay, %bb.qx ]
  %i.ebc = load ptr, ptr %24, align 8, !tbaa !382
  %i.ebd = getelementptr inbounds nuw [16 x i8], ptr %i.ebc, i64 %.1.i.i1667
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.ebd, i64 8
  %i.ebf = load ptr, ptr %i.ebe, align 8, !tbaa !525
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.ebf, i64 44 ; 2 uses
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !425
  %i.ebi = load ptr, ptr %i.m, align 8, !tbaa !382
  %i.ebj = getelementptr inbounds nuw [8 x i8], ptr %i.ebi, i64 %.1.i.i1672
  %i.ebk = load ptr, ptr %i.ebj, align 8, !tbaa !482
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.ebk, i64 44
  %i.ebm = load i32, ptr %i.ebl, align 4, !tbaa !425
  %i.ebn = and i32 %i.ebm, -13
  %i.ebo = or i32 %i.ebn, %i.ebh
  store i32 %i.ebo, ptr %i.ebg, align 4, !tbaa !425
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.qy:                                            ; preds = %bb.b, %bb.b, %bb.b
  %i.ebp = add i64 %.02920, 2                     ; 2 uses
  %i.ebq = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.ebr = load i8, ptr %i.ebq, align 1, !tbaa !338, !alias.scope !1266 ; 2 uses
  %i.ebs = zext i8 %i.ebr to i64                  ; 2 uses
  %i.ebt = icmp slt i8 %i.ebr, 0
  br i1 %i.ebt, label %bb.qz, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681, !prof !520

bb.qz:                                            ; preds = %bb.qy
  %i.ebu = and i64 %i.ebs, 127
  br label %bb.ra

bb.ra:                                            ; preds = %bb.ra, %bb.qz
  %i.ebv = phi i64 [ %i.ebp, %bb.qz ], [ %i.ece, %bb.ra ] ; 2 uses
  %.012.i.i1678 = phi i32 [ 7, %bb.qz ], [ %i.ecd, %bb.ra ] ; 2 uses
  %.0.i.i1679 = phi i64 [ %i.ebu, %bb.qz ], [ %i.ecc, %bb.ra ]
  %i.ebw = getelementptr inbounds nuw i8, ptr %5, i64 %i.ebv
  %i.ebx = load i8, ptr %i.ebw, align 1, !tbaa !338, !alias.scope !1266 ; 2 uses
  %i.eby = and i8 %i.ebx, 127
  %i.ebz = zext nneg i8 %i.eby to i64
  %i.eca = zext nneg i32 %.012.i.i1678 to i64
  %i.ecb = shl i64 %i.ebz, %i.eca
  %i.ecc = add i64 %i.ecb, %.0.i.i1679            ; 2 uses
  %i.ecd = add i32 %.012.i.i1678, 7
  %i.ece = add i64 %i.ebv, 1                      ; 2 uses
  %i.ecf = icmp slt i8 %i.ebx, 0
  br i1 %i.ecf, label %bb.ra, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681: ; preds = %bb.ra, %bb.qy
  %.250 = phi i64 [ %i.ebp, %bb.qy ], [ %i.ece, %bb.ra ] ; 2 uses
  %.1.i.i1677 = phi i64 [ %i.ebs, %bb.qy ], [ %i.ecc, %bb.ra ]
  %i.ecg = add i64 %.250, 1                       ; 2 uses
  %i.ech = getelementptr inbounds nuw i8, ptr %5, i64 %.250
  %i.eci = load i8, ptr %i.ech, align 1, !tbaa !338, !alias.scope !1267 ; 2 uses
  %i.ecj = zext i8 %i.eci to i64                  ; 2 uses
  %i.eck = icmp slt i8 %i.eci, 0
  br i1 %i.eck, label %bb.rb, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686, !prof !520

bb.rb:                                            ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681
  %i.ecl = and i64 %i.ecj, 127
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rc, %bb.rb
  %i.ecm = phi i64 [ %i.ecg, %bb.rb ], [ %i.ecv, %bb.rc ] ; 2 uses
  %.012.i.i1683 = phi i32 [ 7, %bb.rb ], [ %i.ecu, %bb.rc ] ; 2 uses
  %.0.i.i1684 = phi i64 [ %i.ecl, %bb.rb ], [ %i.ect, %bb.rc ]
  %i.ecn = getelementptr inbounds nuw i8, ptr %5, i64 %i.ecm
  %i.eco = load i8, ptr %i.ecn, align 1, !tbaa !338, !alias.scope !1267 ; 2 uses
  %i.ecp = and i8 %i.eco, 127
  %i.ecq = zext nneg i8 %i.ecp to i64
  %i.ecr = zext nneg i32 %.012.i.i1683 to i64
  %i.ecs = shl i64 %i.ecq, %i.ecr
  %i.ect = add i64 %i.ecs, %.0.i.i1684            ; 2 uses
  %i.ecu = add i32 %.012.i.i1683, 7
  %i.ecv = add i64 %i.ecm, 1                      ; 2 uses
  %i.ecw = icmp slt i8 %i.eco, 0
  br i1 %i.ecw, label %bb.rc, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686: ; preds = %bb.rc, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681
  %.251 = phi i64 [ %i.ecg, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681 ], [ %i.ecv, %bb.rc ] ; 4 uses
  %.1.i.i1682 = phi i64 [ %i.ecj, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1681 ], [ %i.ect, %bb.rc ]
  %.not820 = icmp eq i8 %i.ce, 74
  br i1 %.not820, label %.thread3331, label %bb.rd

bb.rd:                                            ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686
  %i.ecx = getelementptr inbounds nuw i8, ptr %5, i64 %.251
  %.0.copyload.i.i1687 = load i16, ptr %i.ecx, align 1 ; 2 uses
  %i.ecy = add i64 %.251, 2                       ; 2 uses
  %i.ecz = icmp eq i8 %i.ce, 75
  br i1 %i.ecz, label %bb.re, label %.thread3331

bb.re:                                            ; preds = %bb.rd
  %i.eda = getelementptr inbounds nuw i8, ptr %5, i64 %i.ecy
  %.0.copyload.i.i1688 = load i16, ptr %i.eda, align 1
  %i.edb = add i64 %.251, 4
  %i.edc = zext i16 %.0.copyload.i.i1688 to i32
  %i.edd = shl nuw nsw i32 %i.edc, 8
  %i.ede = and i32 %i.edd, 1048320
  br label %.thread3331

.thread3331:                                      ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686, %bb.re, %bb.rd
  %.07783334 = phi i16 [ %.0.copyload.i.i1687, %bb.re ], [ %.0.copyload.i.i1687, %bb.rd ], [ 0, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686 ] ; 2 uses
  %.96 = phi i64 [ %i.edb, %bb.re ], [ %i.ecy, %bb.rd ], [ %.251, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686 ]
  %.0777 = phi i32 [ %i.ede, %bb.re ], [ 0, %bb.rd ], [ 0, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1686 ]
  %i.edf = load ptr, ptr %24, align 8, !tbaa !382
  %i.edg = getelementptr inbounds nuw [16 x i8], ptr %i.edf, i64 %.1.i.i1677 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.edh = trunc i64 %.1.i.i1682 to i32
  store i32 %i.edh, ptr %i.b, align 4, !tbaa !385
  %i.edi = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8RegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i1689 = extractvalue { ptr, i8 } %i.edi, 0
  %i.edj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i1689, i64 4
  %.sroa.0146.0.copyload = load i32, ptr %i.edj, align 4, !tbaa !385
  %i.edk = getelementptr inbounds nuw i8, ptr %i.edg, i64 8
  %i.edl = load ptr, ptr %i.edk, align 8, !tbaa !525
  %i.edm = load ptr, ptr %i.edg, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %29 = insertelement <4 x i16> poison, i16 %.07783334, i64 0
  %30 = shufflevector <4 x i16> %29, <4 x i16> poison, <4 x i32> zeroinitializer
  %31 = and <4 x i16> %30, <i16 38, i16 192, i16 256, i16 512>
  store ptr null, ptr %i.am, align 8, !tbaa !421, !alias.scope !1268
  %i.edn = and i16 %.07783334, 24
  %.not.i1690 = icmp eq i16 %i.edn, 0
  %i.edo = select i1 %.not.i1690, i32 0, i32 67108864
  %32 = zext nneg <4 x i16> %31 to <4 x i32>
  %33 = shl nuw <4 x i32> %32, <i32 23, i32 24, i32 21, i32 18>
  store i32 %.sroa.0146.0.copyload, ptr %i.an, align 4, !tbaa !338, !alias.scope !1268
  %34 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %33)
  %i.edp = or disjoint i32 %34, %.0777
  %i.edq = or disjoint i32 %i.edp, %i.edo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !1268
  store i32 %i.edq, ptr %16, align 8, !alias.scope !1268
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.edl, ptr noundef nonnull align 8 dereferenceable(1065) %i.edm, ptr noundef nonnull align 8 dereferenceable(32) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.rf:                                            ; preds = %bb.b, %bb.b
  %i.edr = icmp eq i8 %i.ce, 77
  %i.eds = add i64 %.02920, 2                     ; 2 uses
  %i.edt = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.edu = load i8, ptr %i.edt, align 1, !tbaa !338, !alias.scope !1269 ; 2 uses
  %i.edv = zext i8 %i.edu to i64                  ; 2 uses
  %i.edw = icmp slt i8 %i.edu, 0
  br i1 %i.edw, label %bb.rg, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1697, !prof !520

bb.rg:                                            ; preds = %bb.rf
  %i.edx = and i64 %i.edv, 127
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rh, %bb.rg
  %i.edy = phi i64 [ %i.eds, %bb.rg ], [ %i.eeh, %bb.rh ] ; 2 uses
  %.012.i.i1694 = phi i32 [ 7, %bb.rg ], [ %i.eeg, %bb.rh ] ; 2 uses
  %.0.i.i1695 = phi i64 [ %i.edx, %bb.rg ], [ %i.eef, %bb.rh ]
  %i.edz = getelementptr inbounds nuw i8, ptr %5, i64 %i.edy
  %i.eea = load i8, ptr %i.edz, align 1, !tbaa !338, !alias.scope !1269 ; 2 uses
  %i.eeb = and i8 %i.eea, 127
  %i.eec = zext nneg i8 %i.eeb to i64
  %i.eed = zext nneg i32 %.012.i.i1694 to i64
  %i.eee = shl i64 %i.eec, %i.eed
  %i.eef = add i64 %i.eee, %.0.i.i1695            ; 2 uses
  %i.eeg = add i32 %.012.i.i1694, 7
  %i.eeh = add i64 %i.edy, 1                      ; 2 uses
  %i.eei = icmp slt i8 %i.eea, 0
  br i1 %i.eei, label %bb.rh, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1697, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1697: ; preds = %bb.rh, %bb.rf
  %.252 = phi i64 [ %i.eds, %bb.rf ], [ %i.eeh, %bb.rh ] ; 4 uses
  %.1.i.i1693 = phi i64 [ %i.edv, %bb.rf ], [ %i.eef, %bb.rh ]
  br i1 %i.edr, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1697
  %i.eej = add i64 %.252, 1
  %i.eek = getelementptr inbounds nuw i8, ptr %5, i64 %.252
  %i.eel = load i8, ptr %i.eek, align 1, !tbaa !338
  %i.eem = sext i8 %i.eel to i64
  br label %bb.rk

bb.rj:                                            ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1697
  %i.een = getelementptr inbounds nuw i8, ptr %5, i64 %.252
  %.0.copyload.i.i1698 = load i64, ptr %i.een, align 1
  %i.eeo = add i64 %.252, 8
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %.97 = phi i64 [ %i.eej, %bb.ri ], [ %i.eeo, %bb.rj ]
  %i.eep = phi i64 [ %i.eem, %bb.ri ], [ %.0.copyload.i.i1698, %bb.rj ]
  %i.eeq = load ptr, ptr %24, align 8, !tbaa !382
  %i.eer = getelementptr inbounds nuw [16 x i8], ptr %i.eeq, i64 %.1.i.i1693 ; 2 uses
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eer, i64 8
  %i.eet = load ptr, ptr %i.ees, align 8, !tbaa !525
  %i.eeu = load ptr, ptr %i.eer, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i32 1, ptr %15, align 8, !alias.scope !1270
  store ptr null, ptr %i.ak, align 8, !tbaa !421, !alias.scope !1270
  store i64 %i.eep, ptr %i.al, align 8, !tbaa !338, !alias.scope !1270
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eet, ptr noundef nonnull align 8 dereferenceable(1065) %i.eeu, ptr noundef nonnull align 8 dereferenceable(32) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.rl:                                            ; preds = %bb.b
  %i.eev = add i64 %.02920, 2                     ; 2 uses
  %i.eew = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.eex = load i8, ptr %i.eew, align 1, !tbaa !338, !alias.scope !1271 ; 2 uses
  %i.eey = zext i8 %i.eex to i64                  ; 2 uses
  %i.eez = icmp slt i8 %i.eex, 0
  br i1 %i.eez, label %bb.rm, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1703, !prof !520

bb.rm:                                            ; preds = %bb.rl
  %i.efa = and i64 %i.eey, 127
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rn, %bb.rm
  %i.efb = phi i64 [ %i.eev, %bb.rm ], [ %i.efk, %bb.rn ] ; 2 uses
  %.012.i.i1700 = phi i32 [ 7, %bb.rm ], [ %i.efj, %bb.rn ] ; 2 uses
  %.0.i.i1701 = phi i64 [ %i.efa, %bb.rm ], [ %i.efi, %bb.rn ]
  %i.efc = getelementptr inbounds nuw i8, ptr %5, i64 %i.efb
  %i.efd = load i8, ptr %i.efc, align 1, !tbaa !338, !alias.scope !1271 ; 2 uses
  %i.efe = and i8 %i.efd, 127
  %i.eff = zext nneg i8 %i.efe to i64
  %i.efg = zext nneg i32 %.012.i.i1700 to i64
  %i.efh = shl i64 %i.eff, %i.efg
  %i.efi = add i64 %i.efh, %.0.i.i1701            ; 2 uses
  %i.efj = add i32 %.012.i.i1700, 7
  %i.efk = add i64 %i.efb, 1                      ; 2 uses
  %i.efl = icmp slt i8 %i.efd, 0
  br i1 %i.efl, label %bb.rn, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1703, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1703: ; preds = %bb.rn, %bb.rl
  %.253 = phi i64 [ %i.eev, %bb.rl ], [ %i.efk, %bb.rn ] ; 2 uses
  %.1.i.i1699 = phi i64 [ %i.eey, %bb.rl ], [ %i.efi, %bb.rn ]
  %i.efm = getelementptr i8, ptr %5, i64 %.253    ; 2 uses
  %i.efn = load i8, ptr %i.efm, align 1, !tbaa !338
  %i.efo = getelementptr i8, ptr %i.efm, i64 1
  %.0.copyload.i.i1704 = load i64, ptr %i.efo, align 1
  %i.efp = add i64 %.253, 9
  %i.efq = load ptr, ptr %3, align 8, !tbaa !533
  %i.efr = sext i8 %i.efn to i64
  %i.efs = getelementptr inbounds [8 x i8], ptr %i.efq, i64 %i.efr
  %i.eft = load i64, ptr %i.efs, align 8          ; 4 uses
  %.mask.i.i.i1705 = and i64 %i.eft, -1152921504606846976
  %i.efu = icmp eq i64 %.mask.i.i.i1705, 4611686018427387904
  %i.efv = icmp slt i64 %i.eft, -8070450532247928832
  %spec.select.i.i1706 = or i1 %i.efv, %i.efu
  %i.efw = lshr i64 %i.eft, 44
  %i.efx = and i64 %i.efw, 65535
  %i.efy = lshr i64 %i.eft, 28
  %.0.in.i1707 = select i1 %spec.select.i.i1706, i64 %i.efx, i64 %i.efy
  %.0.i1708 = trunc i64 %.0.in.i1707 to i32
  %i.efz = load ptr, ptr %i.ah, align 8, !tbaa !476
  %i.ega = load ptr, ptr %i.efz, align 8, !tbaa !537, !nonnull !202, !align !378
  %i.egb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ega) #24
  %i.egc = load ptr, ptr %24, align 8, !tbaa !382
  %i.egd = getelementptr inbounds nuw [16 x i8], ptr %i.egc, i64 %.1.i.i1699 ; 2 uses
  %i.ege = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.egb, i32 noundef %.0.i1708) #24
  %i.egf = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ege, i64 noundef %.0.copyload.i.i1704, i1 noundef zeroext true, i1 noundef zeroext false) #24
  %i.egg = getelementptr inbounds nuw i8, ptr %i.egd, i64 8
  %i.egh = load ptr, ptr %i.egg, align 8, !tbaa !525
  %i.egi = load ptr, ptr %i.egd, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store i32 2, ptr %14, align 8, !alias.scope !1272
  store ptr null, ptr %i.ai, align 8, !tbaa !421, !alias.scope !1272
  store ptr %i.egf, ptr %i.aj, align 8, !tbaa !338, !alias.scope !1272
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.egh, ptr noundef nonnull align 8 dereferenceable(1065) %i.egi, ptr noundef nonnull align 8 dereferenceable(32) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.ro:                                            ; preds = %bb.b
  %i.egj = add i64 %.02920, 2                     ; 2 uses
  %i.egk = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.egl = load i8, ptr %i.egk, align 1, !tbaa !338, !alias.scope !1273 ; 2 uses
  %i.egm = zext i8 %i.egl to i64                  ; 2 uses
  %i.egn = icmp slt i8 %i.egl, 0
  br i1 %i.egn, label %bb.rp, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1713, !prof !520

bb.rp:                                            ; preds = %bb.ro
  %i.ego = and i64 %i.egm, 127
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rq, %bb.rp
  %i.egp = phi i64 [ %i.egj, %bb.rp ], [ %i.egy, %bb.rq ] ; 2 uses
  %.012.i.i1710 = phi i32 [ 7, %bb.rp ], [ %i.egx, %bb.rq ] ; 2 uses
  %.0.i.i1711 = phi i64 [ %i.ego, %bb.rp ], [ %i.egw, %bb.rq ]
  %i.egq = getelementptr inbounds nuw i8, ptr %5, i64 %i.egp
  %i.egr = load i8, ptr %i.egq, align 1, !tbaa !338, !alias.scope !1273 ; 2 uses
  %i.egs = and i8 %i.egr, 127
  %i.egt = zext nneg i8 %i.egs to i64
  %i.egu = zext nneg i32 %.012.i.i1710 to i64
  %i.egv = shl i64 %i.egt, %i.egu
  %i.egw = add i64 %i.egv, %.0.i.i1711            ; 2 uses
  %i.egx = add i32 %.012.i.i1710, 7
  %i.egy = add i64 %i.egp, 1                      ; 2 uses
  %i.egz = icmp slt i8 %i.egr, 0
  br i1 %i.egz, label %bb.rq, label %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1713, !llvm.loop !859

_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1713: ; preds = %bb.rq, %bb.ro
  %.254 = phi i64 [ %i.egj, %bb.ro ], [ %i.egy, %bb.rq ] ; 2 uses
  %.1.i.i1709 = phi i64 [ %i.egm, %bb.ro ], [ %i.egw, %bb.rq ]
  %i.eha = getelementptr inbounds nuw i8, ptr %5, i64 %.254
  %.0.copyload.i.i1714 = load i16, ptr %i.eha, align 1
  %i.ehb = add i64 %.254, 2                       ; 2 uses
  %i.ehc = zext i16 %.0.copyload.i.i1714 to i64
  %i.ehd = load ptr, ptr %2, align 8, !tbaa !536
  %i.ehe = getelementptr inbounds nuw [144 x i8], ptr %i.ehd, i64 %i.ehc ; 2 uses
  %i.ehf = load ptr, ptr %i.ehe, align 8, !tbaa !382 ; 2 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.ehe, i64 8
  %i.ehh = load i32, ptr %i.ehg, align 8, !tbaa !383 ; 2 uses
  %i.ehi = zext i32 %i.ehh to i64
  %.idx = shl nuw nsw i64 %i.ehi, 5
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.ehf, i64 %.idx
  %.not8193667 = icmp eq i32 %i.ehh, 0
  br i1 %.not8193667, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %.lr.ph3669

.lr.ph3669:                                       ; preds = %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1713, %_ZNKSt8functionIFvRN4llvm19MachineInstrBuilderEEEclES2_.exit
  %.07753668 = phi ptr [ %i.ehq, %_ZNKSt8functionIFvRN4llvm19MachineInstrBuilderEEEclES2_.exit ], [ %i.ehf, %_ZZNK4llvm20GIMatchTableExecutor17executeMatchTableIKNS_25AMDGPUInstructionSelectorENS_6BitsetILj190EEEMS2_KFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS2_KFvSA_RKNS_12MachineInstrEiEEEbRT_RNS0_12MatcherStateERKNS0_10ExecInfoTyIT0_T1_T2_EERNS_16MachineIRBuilderEPKhRKNS_15TargetInstrInfoERNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoERKST_PNS_15CodeGenCoverageEENKUlvE2_clEv.exit1713 ] ; 4 uses
  %i.ehk = getelementptr inbounds nuw i8, ptr %.07753668, i64 16
  %i.ehl = load ptr, ptr %i.ehk, align 8, !tbaa !389
  %.not.i.i1715 = icmp eq ptr %i.ehl, null
  br i1 %.not.i.i1715, label %bb.rr, label %_ZNKSt8functionIFvRN4llvm19MachineInstrBuilderEEEclES2_.exit

bb.rr:                                            ; preds = %.lr.ph3669
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFvRN4llvm19MachineInstrBuilderEEEclES2_.exit: ; preds = %.lr.ph3669
  %i.ehm = load ptr, ptr %24, align 8, !tbaa !382
  %i.ehn = getelementptr inbounds nuw [16 x i8], ptr %i.ehm, i64 %.1.i.i1709
  %i.eho = getelementptr inbounds nuw i8, ptr %.07753668, i64 24
  %i.ehp = load ptr, ptr %i.eho, align 8, !tbaa !388
  call void %i.ehp(ptr noundef nonnull align 8 dereferenceable(32) %.07753668, ptr noundef nonnull align 8 dereferenceable(16) %i.ehn) #24, !inline_history !1089
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector23selectSMRDBufferSgprImmERNS0_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector23selectSMRDBufferSgprImmERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS0_14MachineOperandEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %.val = load i32, ptr %0, align 8, !tbaa !385
  %.val2 = load ptr, ptr %1, align 8, !tbaa !526
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !525
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !421, !alias.scope !3449
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.val, ptr %i.c, align 4, !tbaa !338, !alias.scope !3449
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !alias.scope !3449
  store i32 0, ptr %2, align 8, !alias.scope !3449
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.val3, ptr noundef nonnull align 8 dereferenceable(1065) %.val2, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS0_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !393
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !619
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !385
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS0_14MachineOperandEE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %.val = load i32, ptr %0, align 8, !tbaa !3453
  %.val2 = load ptr, ptr %1, align 8, !tbaa !526
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !525
  %i.b = zext i32 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i32 1, ptr %2, align 8, !alias.scope !3454
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !421, !alias.scope !3454
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !338, !alias.scope !3454
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.val3, ptr noundef nonnull align 8 dereferenceable(1065) %.val2, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS0_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !393
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !619
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !385
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector24selectVOP3PMadMixModsExtERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS0_14MachineOperandEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %.val = load i32, ptr %0, align 8, !tbaa !385
  %.val2 = load ptr, ptr %1, align 8, !tbaa !526
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !525
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !421, !alias.scope !3457
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.val, ptr %i.c, align 4, !tbaa !338, !alias.scope !3457
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !alias.scope !3457
  store i32 0, ptr %2, align 8, !alias.scope !3457
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.val3, ptr noundef nonnull align 8 dereferenceable(1065) %.val2, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS0_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !393
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !619
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !385
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS0_14MachineOperandEE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %.val = load i32, ptr %0, align 8, !tbaa !3461
  %.val2 = load ptr, ptr %1, align 8, !tbaa !526
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !525
  %i.b = zext i32 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i32 1, ptr %2, align 8, !alias.scope !3462
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !421, !alias.scope !3462
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !338, !alias.scope !3462
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.val3, ptr noundef nonnull align 8 dereferenceable(1065) %.val2, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS0_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !393
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !619
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !385
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm25AMDGPUInstructionSelector21selectVOP3PMadMixModsERNS1_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !392}
!2 = distinct !{null}
!3 = distinct !{null, null, null, null, null, null, null, null, null}
!4 = distinct !{!4, !392}
!5 = distinct !{!5, !392}
!6 = distinct !{!6, !392}
!7 = distinct !{null, null}
!8 = distinct !{null, null, null}
!9 = distinct !{!9, !392}
!10 = distinct !{null, null, null, null}
!11 = distinct !{!11, !392}
!12 = distinct !{!12, !392}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !17, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !17, i64 16}
!26 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !17, i64 0}
!27 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !17, i64 0}
!28 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !17, i64 0}
!29 = !{!"_ZTSN4llvm6Triple6OSTypeE", !17, i64 0}
!30 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !17, i64 0}
!31 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !17, i64 0}
!32 = !{!"_ZTSN4llvm6TripleE", !25, i64 0, !26, i64 32, !27, i64 36, !28, i64 40, !29, i64 44, !30, i64 48, !31, i64 52}
!33 = !{!"_ZTSN4llvm9StringRefE", !22, i64 0, !24, i64 8}
!34 = !{!"_ZTSN4llvm11StringTableE", !33, i64 0}
!35 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !21, i64 0}
!36 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !35, i64 0, !24, i64 8}
!37 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !21, i64 0}
!38 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !37, i64 0, !24, i64 8}
!39 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !21, i64 0}
!40 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !21, i64 0}
!41 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !21, i64 0}
!42 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !21, i64 0}
!43 = !{!"p1 _ZTSN4llvm10InstrStageE", !21, i64 0}
!44 = !{!"p1 int", !21, i64 0}
!45 = !{!"_ZTSSt5arrayImLm6EE", !17, i64 0}
!46 = !{!"_ZTSN4llvm13FeatureBitsetE", !45, i64 0}
!47 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !32, i64 8, !25, i64 64, !25, i64 96, !34, i64 128, !36, i64 144, !38, i64 160, !39, i64 176, !40, i64 184, !41, i64 192, !42, i64 200, !39, i64 208, !43, i64 216, !44, i64 224, !44, i64 232, !46, i64 240, !25, i64 288}
!48 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !21, i64 0}
!49 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !48, i64 0, !44, i64 8, !18, i64 16, !18, i64 20}
!50 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !47, i64 0, !49, i64 320}
!51 = !{!"_ZTSN4llvm22AMDGPUGenSubtargetInfoE", !50, i64 0}
!52 = !{!"p1 _ZTSN4llvm6TripleE", !21, i64 0}
!53 = !{!"bool", !17, i64 0}
!54 = !{!"_ZTSN4llvm15AMDGPUSubtargetE", !52, i64 8, !53, i64 16, !53, i64 17, !53, i64 18, !53, i64 19, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !17, i64 40, !18, i64 44}
!55 = !{!"p1 _ZTSN4llvm22SelectionDAGTargetInfoE", !21, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm22SelectionDAGTargetInfoELb0EE", !55, i64 0}
!57 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !56, i64 0}
!58 = !{!"_ZTSSt5tupleIJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !57, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_ELb1ELb1EE", !59, i64 0}
!61 = !{!"_ZTSSt10unique_ptrIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !60, i64 0}
!62 = !{!"p1 _ZTSN4llvm18AMDGPUCallLoweringE", !21, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm18AMDGPUCallLoweringELb0EE", !62, i64 0}
!64 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm18AMDGPUCallLoweringESt14default_deleteIS1_EEE", !63, i64 0}
!65 = !{!"_ZTSSt5tupleIJPN4llvm18AMDGPUCallLoweringESt14default_deleteIS1_EEE", !64, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm18AMDGPUCallLoweringESt14default_deleteIS1_EE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm18AMDGPUCallLoweringESt14default_deleteIS1_ELb1ELb1EE", !66, i64 0}
!68 = !{!"_ZTSSt10unique_ptrIN4llvm18AMDGPUCallLoweringESt14default_deleteIS1_EE", !67, i64 0}
!69 = !{!"p1 _ZTSN4llvm17InlineAsmLoweringE", !21, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17InlineAsmLoweringELb0EE", !69, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17InlineAsmLoweringESt14default_deleteIS1_EEE", !70, i64 0}
!72 = !{!"_ZTSSt5tupleIJPN4llvm17InlineAsmLoweringESt14default_deleteIS1_EEE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17InlineAsmLoweringESt14default_deleteIS1_EE", !72, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17InlineAsmLoweringESt14default_deleteIS1_ELb1ELb1EE", !73, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIN4llvm17InlineAsmLoweringESt14default_deleteIS1_EE", !74, i64 0}
!76 = !{!"p1 _ZTSN4llvm19InstructionSelectorE", !21, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19InstructionSelectorELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm19InstructionSelectorESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !81, i64 0}
!83 = !{!"p1 _ZTSN4llvm13LegalizerInfoE", !21, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13LegalizerInfoELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13LegalizerInfoESt14default_deleteIS1_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !88, i64 0}
!90 = !{!"p1 _ZTSN4llvm22AMDGPURegisterBankInfoE", !21, i64 0}
!91 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm22AMDGPURegisterBankInfoELb0EE", !90, i64 0}
!92 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm22AMDGPURegisterBankInfoESt14default_deleteIS1_EEE", !91, i64 0}
!93 = !{!"_ZTSSt5tupleIJPN4llvm22AMDGPURegisterBankInfoESt14default_deleteIS1_EEE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm22AMDGPURegisterBankInfoESt14default_deleteIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm22AMDGPURegisterBankInfoESt14default_deleteIS1_ELb1ELb1EE", !94, i64 0}
!96 = !{!"_ZTSSt10unique_ptrIN4llvm22AMDGPURegisterBankInfoESt14default_deleteIS1_EE", !95, i64 0}
!97 = !{!"_ZTSN4llvm6AMDGPU7GPUKindE", !17, i64 0}
!98 = !{!"_ZTSN4llvm6AMDGPU15TargetIDSettingE", !17, i64 0}
!99 = !{!"_ZTSN4llvm6AMDGPU8TargetIDE", !97, i64 0, !25, i64 8, !98, i64 40, !98, i64 44, !53, i64 48}
!100 = !{!"p1 _ZTSN4llvm18MCProcResourceDescE", !21, i64 0}
!101 = !{!"p1 _ZTSN4llvm16MCSchedClassDescE", !21, i64 0}
!102 = !{!"p1 _ZTSN4llvm11StringTableE", !21, i64 0}
!103 = !{!"p1 _ZTSN4llvm14InstrItineraryE", !21, i64 0}
!104 = !{!"p1 _ZTSN4llvm20MCExtraProcessorInfoE", !21, i64 0}
!105 = !{!"_ZTSN4llvm12MCSchedModelE", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !53, i64 24, !53, i64 25, !53, i64 26, !18, i64 28, !100, i64 32, !101, i64 40, !18, i64 48, !18, i64 52, !102, i64 56, !103, i64 64, !104, i64 72}
!106 = !{!"_ZTSN4llvm18InstrItineraryDataE", !105, i64 0, !43, i64 80, !44, i64 88, !44, i64 96, !103, i64 104}
!107 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !21, i64 0}
!108 = !{!"p1 short", !21, i64 0}
!109 = !{!"short", !17, i64 0}
!110 = !{!"_ZTSN4llvm11MCInstrInfoE", !107, i64 0, !44, i64 8, !22, i64 16, !22, i64 24, !21, i64 32, !18, i64 40, !108, i64 48, !109, i64 56}
!111 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !21, i64 0}
!112 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !21, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !112, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !117, i64 0}
!119 = !{!"_ZTSN4llvm15TargetInstrInfoE", !110, i64 8, !111, i64 72, !108, i64 80, !118, i64 88, !18, i64 96, !18, i64 100, !18, i64 104, !18, i64 108}
!120 = !{!"_ZTSN4llvm18AMDGPUGenInstrInfoE", !119, i64 0}
!121 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !21, i64 0}
!122 = !{!"_ZTSN4llvm10MCRegisterE", !18, i64 0}
!123 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !21, i64 0}
!124 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !21, i64 0}
!125 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !21, i64 0}
!126 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !21, i64 0}
!127 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !126, i64 0, !44, i64 8, !18, i64 16, !18, i64 20}
!128 = !{!"p1 _ZTSSt6vectorItSaItEE", !21, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !131, i64 0}
!133 = !{!"_ZTSN4llvm14MCRegisterInfoE", !121, i64 8, !18, i64 16, !122, i64 20, !122, i64 24, !123, i64 32, !18, i64 40, !18, i64 44, !108, i64 48, !108, i64 56, !124, i64 64, !22, i64 72, !22, i64 80, !108, i64 88, !18, i64 96, !108, i64 104, !44, i64 112, !18, i64 120, !18, i64 124, !18, i64 128, !18, i64 132, !125, i64 136, !125, i64 144, !125, i64 152, !125, i64 160, !127, i64 168, !127, i64 192, !132, i64 216}
!134 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !21, i64 0}
!135 = !{!"_ZTSN4llvm8ArrayRefIjEE", !44, i64 0, !24, i64 8}
!136 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !21, i64 0}
!137 = !{!"_ZTSN4llvm11LaneBitmaskE", !24, i64 0}
!138 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !21, i64 0}
!139 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !133, i64 0, !134, i64 240, !22, i64 248, !135, i64 256, !136, i64 272, !124, i64 280, !137, i64 288, !138, i64 296, !21, i64 304, !18, i64 312}
!140 = !{!"_ZTSN4llvm21AMDGPUGenRegisterInfoE", !139, i64 0}
!141 = !{!"p1 _ZTSN4llvm12GCNSubtargetE", !21, i64 0}
!142 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !18, i64 8, !18, i64 12}
!143 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !144, i64 0}
!146 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !17, i64 0}
!147 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !145, i64 0, !146, i64 16}
!148 = !{!"_ZTSN4llvm9BitVectorE", !147, i64 0, !18, i64 64}
!149 = !{!"_ZTSN4llvm14SIRegisterInfoE", !140, i64 0, !141, i64 320, !53, i64 328, !53, i64 329, !148, i64 336}
!150 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !21, i64 0}
!151 = !{!"p1 _ZTSN4llvm15TargetInstrInfoE", !21, i64 0}
!152 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !142, i64 0}
!153 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj16EEE", !17, i64 0}
!156 = !{!"_ZTSN4llvm11SmallVectorIjLj16EEE", !154, i64 0, !155, i64 16}
!157 = !{!"_ZTSN4llvm16TargetSchedModelE", !105, i64 0, !106, i64 80, !150, i64 192, !151, i64 200, !156, i64 208, !18, i64 288, !18, i64 292, !53, i64 296, !53, i64 297}
!158 = !{!"p1 _ZTSN4llvm18AMDGPUMIRFormatterE", !21, i64 0}
!159 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm18AMDGPUMIRFormatterELb0EE", !158, i64 0}
!160 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm18AMDGPUMIRFormatterESt14default_deleteIS1_EEE", !159, i64 0}
!161 = !{!"_ZTSSt5tupleIJPN4llvm18AMDGPUMIRFormatterESt14default_deleteIS1_EEE", !160, i64 0}
!162 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm18AMDGPUMIRFormatterESt14default_deleteIS1_EE", !161, i64 0}
!163 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm18AMDGPUMIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !162, i64 0}
!164 = !{!"_ZTSSt10unique_ptrIN4llvm18AMDGPUMIRFormatterESt14default_deleteIS1_EE", !163, i64 0}
end_hunk_1
