Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVMergeBaseOffset?download=true
inline.NumInlined: 823
inline.NumDeleted: 399
begin_hunk_0_@_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %storemerge.in.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i49, i64 24
  %storemerge.i.i.i.i51 = load ptr, ptr %storemerge.in.i.i.i.i50, align 8, !tbaa !64, !nonnull !42, !noundef !42 ; 3 uses
  %i.abm = load i32, ptr %storemerge.i.i.i.i51, align 8
  %i.abn = and i32 %i.abm, 16777216
  %.not1.i.i.i.i52 = icmp eq i32 %i.abn, 0
  br i1 %.not1.i.i.i.i52, label %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53, label %.preheader.i.i.i48, !llvm.loop !99

_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53: ; preds = %.preheader.i.i.i48, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread17.i
  %.sroa.0.0.i.i54 = phi ptr [ %.0.i.i.i43, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread17.i ], [ %storemerge.i.i.i.i51, %.preheader.i.i.i48 ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i54, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !237 ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 52
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !62
  switch i32 %i.abr, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit [
    i32 15856, label %bb.dn
    i32 15858, label %bb.dk
    i32 15860, label %bb.dl
    i32 15723, label %bb.dm
  ]

bb.dk:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53
  br label %bb.dn

bb.dl:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53
  br label %bb.dn

bb.dm:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !63
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 112
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !64
  %i.abw = trunc i64 %i.abv to i32
  %i.abx = and i32 %i.abw, 255                    ; 2 uses
  %i.aby = icmp samesign ult i32 %i.abx, 8
  br i1 %i.aby, label %bb.dn, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53
  %.146.i = phi i32 [ %i.abx, %bb.dm ], [ 2, %bb.dk ], [ 3, %bb.dl ], [ 1, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53 ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abp, i64 32 ; 3 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !63 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 4
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !64 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 36
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !64 ; 3 uses
  %i.acf = icmp slt i32 %i.ace, 0
  br i1 %i.acf, label %bb.do, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.do:                                            ; preds = %bb.dn
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aca, i64 68
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !64
  %i.aci = icmp eq i32 %i.ach, %i.aas
  %i.acj = icmp slt i32 %i.acc, 0
  %or.cond21.i = select i1 %i.aci, i1 %i.acj, i1 false
  br i1 %or.cond21.i, label %bb.dp, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.dp:                                            ; preds = %bb.do
  %i.ack = and i32 %i.acc, 2147483647
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw [16 x i8], ptr %i.aay, i64 %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %.0.i.i69 = load ptr, ptr %i.acn, align 8, !tbaa !65 ; 6 uses
  %.not.i70 = icmp eq ptr %.0.i.i69, null
  br i1 %.not.i70, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aco = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !64 ; 3 uses
  %i.acq = load i32, ptr %i.acp, align 8
  %i.acr = and i32 %i.acq, 16777216
  %.not.i.i71 = icmp eq i32 %i.acr, 0
  br i1 %.not.i.i71, label %bb.dr, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.dr:                                            ; preds = %bb.dq
  %i.acs = icmp eq ptr %i.acp, %.0.i.i69
  br i1 %i.acs, label %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96, label %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit: ; preds = %bb.dr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !64
  %i.acv = load i32, ptr %i.acu, align 8
  %i.acw = and i32 %i.acv, 16777216
  %.not99 = icmp eq i32 %i.acw, 0
  br i1 %.not99, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit, label %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96

_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96: ; preds = %bb.dr, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit
  %i.acx = load i32, ptr %.0.i.i69, align 8
  %i.acy = and i32 %i.acx, 16777216
  %.not4.i.i = icmp eq i32 %i.acy, 0
  br i1 %.not4.i.i, label %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96, %.preheader.i.i
  %.pn.i.i.i62 = phi ptr [ %storemerge.i.i.i64, %.preheader.i.i ], [ %.0.i.i69, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96 ]
  %storemerge.in.i.i.i63 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i62, i64 24
  %storemerge.i.i.i64 = load ptr, ptr %storemerge.in.i.i.i63, align 8, !tbaa !64, !nonnull !42, !noundef !42 ; 3 uses
  %i.acz = load i32, ptr %storemerge.i.i.i64, align 8
  %i.ada = and i32 %i.acz, 16777216
  %.not1.i.i.i66 = icmp eq i32 %i.ada, 0
  br i1 %.not1.i.i.i66, label %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit, label %.preheader.i.i, !llvm.loop !99

_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit: ; preds = %.preheader.i.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96
  %.sroa.0.0.i67 = phi ptr [ %.0.i.i69, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread96 ], [ %storemerge.i.i.i64, %.preheader.i.i ]
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !237 ; 7 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 52
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !62
  switch i32 %i.ade, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit [
    i32 14893, label %bb.dz
    i32 14894, label %bb.ds
    i32 14901, label %bb.dt
    i32 14902, label %bb.du
    i32 14915, label %bb.dv
    i32 15766, label %bb.dw
    i32 15855, label %bb.dx
    i32 15949, label %bb.dy
  ]

bb.ds:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dt:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.du:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dv:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dw:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dx:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dy:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit
  %.047.neg.i = phi i64 [ -15728, %bb.dy ], [ -15688, %bb.ds ], [ -15689, %bb.dt ], [ -15690, %bb.du ], [ -15691, %bb.dv ], [ -15726, %bb.dw ], [ -15727, %bb.dx ], [ -15687, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit ]
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 32 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !63 ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load i32, ptr %i.adh, align 8
  %i.adj = and i32 %i.adi, 255
  %i.adk = icmp eq i32 %i.adj, 0
  br i1 %i.adk, label %bb.ea, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.ea:                                            ; preds = %bb.dz
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 36
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !64
  %.not23.i = icmp eq i32 %i.adm, %i.acc
  br i1 %.not23.i, label %bb.eb, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.eb:                                            ; preds = %bb.ea
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adg, i64 64
  %i.ado = load i32, ptr %i.adn, align 8
  %i.adp = and i32 %i.ado, 255
  %i.adq = icmp eq i32 %i.adp, 1
  br i1 %i.adq, label %bb.ec, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

bb.ec:                                            ; preds = %bb.eb
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adg, i64 80
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !64
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aaq, i64 56
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aaq, i64 36 ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !64
  %i.adw = zext i32 %i.adv to i64
  %i.adx = add i64 %i.ads, %i.adw                 ; 2 uses
  %i.ady = shl i64 %i.adx, 32
  %i.adz = ashr exact i64 %i.ady, 32
  %i.aea = trunc i64 %i.adx to i32
  store i32 %i.aea, ptr %i.adu, align 4, !tbaa !64
  %i.aeb = lshr i64 %i.adz, 32
  %i.aec = trunc nuw i64 %i.aeb to i32
  store i32 %i.aec, ptr %i.adt, align 8, !tbaa !64
  %i.aed = load ptr, ptr %i.e, align 8, !tbaa !34 ; 2 uses
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !25
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 128
  %i.aeg = load ptr, ptr %i.aef, align 8
  %i.aeh = call noundef ptr %i.aeg(ptr noundef nonnull align 8 dereferenceable(519768) %i.aed) #16, !inline_history !119
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !387
  %i.aek = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.ael = call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.aek, i32 %i.ace, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 832), i32 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adc, i64 72
  %.sroa.04.0.copyload.i = load ptr, ptr %i.aem, align 8, !tbaa !88
  store ptr %.sroa.04.0.copyload.i, ptr %5, align 8, !tbaa !88
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !383
  %i.aep = getelementptr inbounds [32 x i8], ptr %i.aeo, i64 %.047.neg.i
  %i.aeq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.aej, ptr noundef nonnull align 8 dereferenceable(80) %i.adc, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aep) ; 2 uses
  %i.aer = extractvalue { ptr, ptr } %i.aeq, 0    ; 5 uses
  %i.aes = extractvalue { ptr, ptr } %i.aeq, 1    ; 5 uses
  %i.aet = load ptr, ptr %i.adf, align 8, !tbaa !63
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aes, ptr noundef nonnull align 8 dereferenceable(1065) %i.aer, ptr noundef nonnull align 8 dereferenceable(32) %i.aet) #16
  %i.aeu = load ptr, ptr %i.abz, align 8, !tbaa !63
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 64
  %i.aew = load i32, ptr %i.aev, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %i.v, align 8, !tbaa !237, !alias.scope !388
  %9 = shl i32 %i.aew, 2
  %i.aex = and i32 %9, 67108864
  %10 = xor i32 %i.aex, 67108864
  %11 = and i32 %10, %i.aew
  store i32 %i.aas, ptr %i.w, align 4, !tbaa !64, !alias.scope !388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !388
  store i32 %11, ptr %2, align 8, !alias.scope !388
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aes, ptr noundef nonnull align 8 dereferenceable(1065) %i.aer, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.aey = load ptr, ptr %i.abz, align 8, !tbaa !63
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 32
  %i.afa = load i32, ptr %i.aez, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %i.y, align 8, !tbaa !237, !alias.scope !389
  %12 = shl i32 %i.afa, 2
  %i.afb = and i32 %12, 67108864
  %13 = xor i32 %i.afb, 67108864
  %14 = and i32 %13, %i.afa
  store i32 %i.ace, ptr %i.z, align 4, !tbaa !64, !alias.scope !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !389
  store i32 %14, ptr %3, align 8, !alias.scope !389
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aes, ptr noundef nonnull align 8 dereferenceable(1065) %i.aer, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.afc = zext nneg i32 %.146.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 1, ptr %4, align 8, !alias.scope !390
  store ptr null, ptr %i.ab, align 8, !tbaa !237, !alias.scope !390
  store i64 %i.afc, ptr %i.ac, align 8, !tbaa !64, !alias.scope !390
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aes, ptr noundef nonnull align 8 dereferenceable(1065) %i.aer, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.aes, ptr noundef nonnull align 8 dereferenceable(1065) %i.aer, ptr noundef nonnull align 8 dereferenceable(80) %i.adc) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.afd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.adc) #16 ; 0 uses
  %i.afe = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.abp) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit

_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit: ; preds = %bb.dq, %bb.dp, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt17foldIntoMemoryOpsERN4llvm12MachineInstrES3_.exit, %bb.df, %bb.dg, %bb.dh, %bb.di, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i46, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53, %bb.dm, %bb.dn, %bb.do, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit, %bb.dz, %bb.ea, %bb.eb, %bb.ec
  %.5.i41 = phi i1 [ %.18.i, %bb.di ], [ %.18.i, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt17foldIntoMemoryOpsERN4llvm12MachineInstrES3_.exit ], [ %.18.i, %bb.df ], [ %.18.i, %bb.dg ], [ %.18.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i46 ], [ %.18.i, %bb.dm ], [ %.18.i, %bb.dz ], [ %.18.i, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i53 ], [ %.18.i, %bb.dn ], [ %.18.i, %bb.dh ], [ %.18.i, %bb.do ], [ %.18.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit ], [ %.18.i, %bb.ea ], [ %.18.i, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit ], [ true, %bb.ec ], [ %.18.i, %bb.eb ], [ %.18.i, %bb.dp ], [ %.18.i, %bb.dq ]
  %i.aff = or i1 %.1128, %.5.i41
  br label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit.thread

_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit.thread: ; preds = %bb.o, %bb.n, %bb.h, %bb.p, %bb.m, %bb.i, %bb.e, %bb.f, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i, %bb.d, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i, %.lr.ph, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit
  %.2 = phi i1 [ %i.aff, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt26foldShxaddIntoScaledMemoryERN4llvm12MachineInstrES3_.exit ], [ %.1128, %.lr.ph ], [ %.1128, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i ], [ %.1128, %bb.d ], [ %.1128, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i ], [ %.1128, %bb.f ], [ %.1128, %bb.e ], [ %.1128, %bb.i ], [ %.1128, %bb.m ], [ %.1128, %bb.p ], [ %.1128, %bb.h ], [ %.1128, %bb.n ], [ %.1128, %bb.o ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0129) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.075.0129, align 8
  %i.afg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i55 = icmp eq i64 %i.afg, 0
  br i1 %.not.i.i.i55, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit.thread
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.075.0129, i64 44
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !89
  %i.afj = and i32 %i.afi, 8
  %.not34.i.i.i = icmp eq i32 %i.afj, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.afl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.075.0129, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !49 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 44
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !89
  %i.afo = and i32 %i.afn, 8
  %.not3.i.i.i = icmp eq i32 %i.afo, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !126

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit.thread, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.075.0129, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit.thread ], [ %.sroa.075.0129, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.afl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.075.0 = load ptr, ptr %i.afp, align 8, !tbaa !49 ; 2 uses
  %.not98 = icmp eq ptr %.sroa.075.0, %i.ae
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  %.020 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.1.lcssa, %._crit_edge ]
  ret i1 %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_123RISCVMergeBaseOffsetOpt21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = and i32 %1, 2147483647
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = zext nneg i32 %1 to i64
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.0.in.i = select i1 %i.a, ptr %i.g, ptr %i.k
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !65 ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 16777216
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.m, %.0.i
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 16777216
  %i.u = icmp ne i32 %i.t, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt10foldOffsetERN4llvm12MachineInstrES3_S3_l(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = icmp eq i32 %i.b, 14128
  br i1 %i.c, label %bb.b, label %.critedge35

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 255
  %i.i = icmp eq i32 %i.h, 10
  br i1 %i.i, label %bb.c, label %.critedge35

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %.fr9.i = freeze i32 %i.o                       ; 4 uses
  %i.p = and i32 %.fr9.i, 255                     ; 2 uses
  %i.q = icmp eq i32 %i.p, 12
  br i1 %i.q, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %trunc.i.i.i = trunc i32 %.fr9.i to i8          ; 3 uses
  %i.r = icmp ult i8 %trunc.i.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.r, i1 %switch.lobit, i1 false
  %i.s = and i32 %.fr9.i, 253
  %spec.select.i.i = icmp eq i32 %i.s, 4
  %or.cond39 = or i1 %or.cond, %spec.select.i.i
  br i1 %or.cond39, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.d
  switch i8 %trunc.i.i.i, label %bb.e [
    i8 15, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit
    i8 13, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit
    i8 10, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit
    i8 16, label %bb.f
    i8 17, label %bb.f
  ]

bb.e:                                             ; preds = %switch.early.test.i
  %i.t = and i32 %.fr9.i, 254
  %spec.select.i5.i = icmp eq i32 %i.t, 18
  %.not4.i = icmp eq i32 %i.p, 21
  %or.cond8.i = or i1 %spec.select.i5.i, %.not4.i
  br i1 %or.cond8.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %switch.early.test.i, %switch.early.test.i
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef null) #16
  br label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit: ; preds = %bb.d, %bb.c, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.f
  %.0.i = phi i1 [ true, %bb.c ], [ %i.u, %bb.f ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %bb.d ], [ true, %switch.early.test.i ]
  %i.v = icmp sgt i64 %4, -1
  %or.cond.not = and i1 %i.v, %.0.i
  br i1 %or.cond.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11GlobalValue13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #16
  %i.x = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.w, ptr noundef nonnull %i.m) #16 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.x, 1
  %i.y = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.y, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit
end_hunk_0
