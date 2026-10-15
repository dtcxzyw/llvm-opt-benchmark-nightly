Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsSEFrameLowering?download=true
inline.NumInlined: 1016
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm19MipsSEFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE:bb.a
  %i.ahr = and i32 %i.ahq, %i.ahp
  %.not41.i.i.i.i = icmp eq i32 %i.ahr, 0
  br i1 %.not41.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.thread.i.i.i.i, label %_ZN12_GLOBAL__N_112ExpandPseudo10expandCopyERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.thread.i.i.i.i: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i.i.i.i
  %i.ahs = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 4434), align 2, !tbaa !263
  %i.aht = zext i16 %i.ahs to i32
  %.not.i10.i.i.i.i = icmp samesign ult i32 %i.agt, %i.aht
  br i1 %.not.i10.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i, label %_ZN12_GLOBAL__N_112ExpandPseudo11expandInstrERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.thread.i.i.i.i
  %i.ahu = and i32 %i.ags, 7
  %i.ahv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 4420), align 4, !tbaa !264
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 4416), i64 %i.ahw
  %i.ahy = zext nneg i32 %i.agt to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.ahy
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !12
  %i.aib = zext i8 %i.aia to i32
  %i.aic = shl nuw nsw i32 1, %i.ahu
  %i.aid = and i32 %i.aic, %i.aib
  %.not42.i.i.i.i = icmp eq i32 %i.aid, 0
  br i1 %.not42.i.i.i.i, label %_ZN12_GLOBAL__N_112ExpandPseudo11expandInstrERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i, label %_ZN12_GLOBAL__N_112ExpandPseudo10expandCopyERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i.i

_ZN12_GLOBAL__N_112ExpandPseudo10expandCopyERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i.i: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i
  %.sroa.5.0.i.ph.i.i.i = phi i64 [ 2765958939265, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i ], [ 9040906160179, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.i.i.i.i ], [ 2761663971968, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i ] ; 2 uses
  %i.aie = and i64 %.sroa.5.0.i.ph.i.i.i, 2739
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %.sroa.5.0.i.ph.i.i.i, 32
  %i.aif = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !12 ; 3 uses
  %i.aih = load ptr, ptr %i.fu, align 8, !tbaa !21
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 32
  %i.aij = load ptr, ptr %i.aii, align 8
  %i.aik = call noundef ptr %i.aij(ptr noundef nonnull align 8 dereferenceable(316) %i.fu, i32 %i.aig) #15, !inline_history !648
  %i.ail = load ptr, ptr %i.jj, align 8, !tbaa !705
  %i.aim = load i32, ptr %i.jk, align 8, !tbaa !706
  %i.ain = load i32, ptr %i.jl, align 8, !tbaa !707
  %i.aio = mul i32 %i.ain, %i.aim
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aik, i64 20
  %i.aiq = load i16, ptr %i.aip, align 4, !tbaa !708
  %i.air = zext i16 %i.aiq to i32
  %i.ais = add i32 %i.aio, %i.air
  %i.ait = zext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [16 x i8], ptr %i.ail, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !710
  %i.aiw = lshr i32 %i.aiv, 4
  %i.aix = load ptr, ptr %i.fu, align 8, !tbaa !21
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 720
  %i.aiz = load ptr, ptr %i.aiy, align 8
  %i.aja = call noundef ptr %i.aiz(ptr noundef nonnull align 8 dereferenceable(317) %i.fu, i32 noundef %i.aiw) #15, !inline_history !648 ; 2 uses
  %i.ajb = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.fl, ptr noundef %i.aja, ptr nonnull @.str.1, i64 0) #15 ; 2 uses
  %i.ajc = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.fl, ptr noundef %i.aja, ptr nonnull @.str.1, i64 0) #15 ; 2 uses
  %i.ajd = load ptr, ptr %i.agp, align 8, !tbaa !662
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajf = load i32, ptr %i.aje, align 8          ; 2 uses
  %i.ajg = lshr i32 %i.ajf, 26
  %i.ajh = lshr i32 %i.ajf, 24
  %.lobit.i.i.i.i.i = and i32 %i.ajh, 1
  %i.aji = xor i32 %.lobit.i.i.i.i.i, 1
  %i.ajj = and i32 %i.aji, %i.ajg
  %.not.i5.i.i.i = icmp eq i32 %i.ajj, 0
  %i.ajk = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.fu, i32 %i.aig, i32 noundef 9) #15
  %i.ajl = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.fu, i32 %i.aig, i32 noundef 8) #15
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.0143.0208.i, i64 72
  %.sroa.014.0.copyload.i.i.i.i = load ptr, ptr %i.ajm, align 8, !tbaa !378 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store ptr %.sroa.014.0.copyload.i.i.i.i, ptr %32, align 8, !tbaa !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  %i.ajn = load ptr, ptr %i.jm, align 8, !tbaa !240
  %i.ajo = sub nsw i64 0, %.sroa.5.0.extract.shift.i.i.i
  %i.ajp = getelementptr inbounds [32 x i8], ptr %i.ajn, i64 %i.ajo
  %i.ajq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0145.0213.i, ptr nonnull %.sroa.0143.0208.i, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.ajp, i32 %i.ajb) ; 2 uses
  %i.ajr = extractvalue { ptr, ptr } %i.ajq, 0
  %i.ajs = extractvalue { ptr, ptr } %i.ajq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store ptr null, ptr %i.fy, align 8, !tbaa !376, !alias.scope !711
  store i32 %i.ags, ptr %i.fz, align 4, !tbaa !12, !alias.scope !711
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !711
  store i32 0, ptr %31, align 8, !alias.scope !711
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajs, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajr, ptr noundef nonnull align 8 dereferenceable(32) %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  store ptr %.sroa.014.0.copyload.i.i.i.i, ptr %33, align 8, !tbaa !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  %i.ajt = load ptr, ptr %i.jm, align 8, !tbaa !240
  %i.aju = getelementptr inbounds i8, ptr %i.ajt, i64 -640
  %i.ajv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0145.0213.i, ptr nonnull %.sroa.0143.0208.i, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.aju, i32 %i.ajk) ; 2 uses
  %i.ajw = extractvalue { ptr, ptr } %i.ajv, 0
  %i.ajx = extractvalue { ptr, ptr } %i.ajv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store ptr null, ptr %i.gc, align 8, !tbaa !376, !alias.scope !712
  store i32 %i.ajb, ptr %i.gd, align 4, !tbaa !12, !alias.scope !712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 0, i64 16, i1 false), !alias.scope !712
  store i32 67108864, ptr %30, align 8, !alias.scope !712
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajx, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajw, ptr noundef nonnull align 8 dereferenceable(32) %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  store ptr %.sroa.014.0.copyload.i.i.i.i, ptr %34, align 8, !tbaa !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i8 0, i64 24, i1 false)
  %i.ajy = load ptr, ptr %i.jm, align 8, !tbaa !240
  %i.ajz = sub nsw i64 0, %i.aie
  %i.aka = getelementptr inbounds [32 x i8], ptr %i.ajy, i64 %i.ajz
  %i.akb = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0145.0213.i, ptr nonnull %.sroa.0143.0208.i, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.aka, i32 %i.ajc) ; 2 uses
  %i.akc = extractvalue { ptr, ptr } %i.akb, 0
  %i.akd = extractvalue { ptr, ptr } %i.akb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  store ptr null, ptr %i.gg, align 8, !tbaa !376, !alias.scope !713
  %i.ake = select i1 %.not.i5.i.i.i, i32 0, i32 67108864
  store i32 %i.ags, ptr %i.gh, align 4, !tbaa !12, !alias.scope !713
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false), !alias.scope !713
  store i32 %i.ake, ptr %29, align 8, !alias.scope !713
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akd, ptr noundef nonnull align 8 dereferenceable(1065) %i.akc, ptr noundef nonnull align 8 dereferenceable(32) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %.sroa.014.0.copyload.i.i.i.i, ptr %35, align 8, !tbaa !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false)
  %i.akf = load ptr, ptr %i.jm, align 8, !tbaa !240
  %i.akg = getelementptr inbounds i8, ptr %i.akf, i64 -640
  %i.akh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0145.0213.i, ptr nonnull %.sroa.0143.0208.i, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.akg, i32 %i.ajl) ; 2 uses
  %i.aki = extractvalue { ptr, ptr } %i.akh, 0
  %i.akj = extractvalue { ptr, ptr } %i.akh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr null, ptr %i.gk, align 8, !tbaa !376, !alias.scope !714
  store i32 %i.ajc, ptr %i.gl, align 4, !tbaa !12, !alias.scope !714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !714
  store i32 67108864, ptr %28, align 8, !alias.scope !714
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akj, ptr noundef nonnull align 8 dereferenceable(1065) %i.aki, ptr noundef nonnull align 8 dereferenceable(32) %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_112ExpandPseudo10expandCopyERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit52.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit72.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit92.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit112.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit132.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit42.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i92.i.i = load i64, ptr %.sroa.0143.0208.i, align 8
  %i.akk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i92.i.i, 4
  %.not.i.i.i.i.i93.i.i = icmp eq i64 %i.akk, 0
  br i1 %.not.i.i.i.i.i93.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i: ; preds = %bb.ag
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0143.0208.i, i64 44
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !254
  %i.akn = and i32 %i.akm, 8
  %.not34.i.i.i.i.i104.i.i = icmp eq i32 %i.akn, 0
  br i1 %.not34.i.i.i.i.i104.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i
  %.sroa.0.05.i.i.i.i.i106.i.i = phi ptr [ %i.akp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i ], [ %.sroa.0143.0208.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i106.i.i, i64 8
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !149 ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 44
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !254
  %i.aks = and i32 %i.akr, 8
  %.not3.i.i.i.i.i107.i.i = icmp eq i32 %i.aks, 0
  br i1 %.not3.i.i.i.i.i107.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i, %bb.ag
  %.sroa.0.1.i.i.i.i.i95.i.i = phi ptr [ %.sroa.0143.0208.i, %bb.ag ], [ %.sroa.0143.0208.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i103.i.i ], [ %i.akp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i105.i.i ]
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i95.i.i, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !149 ; 2 uses
  %.not4.i.i.i96.i.i = icmp eq ptr %.sroa.0143.0208.i, %i.aku
  br i1 %.not4.i.i.i96.i.i, label %_ZN12_GLOBAL__N_112ExpandPseudo11expandInstrERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i.i97.i.i

.lr.ph.i.i.i97.i.i:                               ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i, %.lr.ph.i.i.i97.i.i
  %.sroa.03.05.i.i.i98.i.i = phi ptr [ %i.akw, %.lr.ph.i.i.i97.i.i ], [ %.sroa.0143.0208.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i ] ; 6 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i98.i.i, i64 8 ; 3 uses
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !149 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull %.sroa.03.05.i.i.i98.i.i) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i99.i.i = load i64, ptr %.sroa.03.05.i.i.i98.i.i, align 8
  %i.akx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i99.i.i, -8 ; 2 uses
  %i.aky = inttoptr i64 %i.akx to ptr
  %i.akz = load ptr, ptr %i.akv, align 8, !tbaa !149 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i100.i.i = load i64, ptr %i.akz, align 8
  %i.ala = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i100.i.i, 7
  %i.alb = or disjoint i64 %i.ala, %i.akx
  store i64 %i.alb, ptr %i.akz, align 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  store ptr %i.akz, ptr %i.alc, align 8, !tbaa !149
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i101.i.i = load i64, ptr %.sroa.03.05.i.i.i98.i.i, align 8
  %i.ald = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i101.i.i, 7
  store i64 %i.ald, ptr %.sroa.03.05.i.i.i98.i.i, align 8
  store ptr null, ptr %i.akv, align 8, !tbaa !149
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull %.sroa.03.05.i.i.i98.i.i) #15
  %.not.i.i.i102.i.i = icmp eq ptr %i.akw, %i.aku
  br i1 %.not.i.i.i102.i.i, label %_ZN12_GLOBAL__N_112ExpandPseudo11expandInstrERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i.i97.i.i, !llvm.loop !646

_ZN12_GLOBAL__N_112ExpandPseudo11expandInstrERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i: ; preds = %.lr.ph.i.i.i79.i.i, %.lr.ph.i.i.i62.i.i, %.lr.ph.i.i.i45.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i97.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.thread.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i76.i.i, %bb.ad, %bb.ac, %bb.ab, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i59.i.i, %bb.w, %bb.v, %bb.u, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i42.i.i, %bb.p, %bb.o, %bb.n, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, %bb.l, %bb.k, %bb.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i
  %.0.i.i = phi i1 [ %.1209.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit12.i.i.i.i ], [ %.1209.i, %.lr.ph.i.i.i45.i.i ], [ %.1209.i, %bb.v ], [ true, %.lr.ph.i.i.i97.i.i ], [ %.1209.i, %bb.k ], [ %.1209.i, %bb.o ], [ %.1209.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i ], [ %.1209.i, %.lr.ph.i.i.i62.i.i ], [ %.1209.i, %bb.ac ], [ %.1209.i, %.lr.ph.i.i.i.i.i ], [ %.1209.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ], [ %.1209.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i42.i.i ], [ %.1209.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i59.i.i ], [ %.1209.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i76.i.i ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i94.i.i ], [ %.1209.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit5.thread.i.i.i.i ], [ %.1209.i, %bb.l ], [ %.1209.i, %bb.j ], [ %.1209.i, %bb.p ], [ %.1209.i, %bb.n ], [ %.1209.i, %bb.w ], [ %.1209.i, %bb.u ], [ %.1209.i, %bb.ad ], [ %.1209.i, %bb.ab ], [ %.1209.i, %.lr.ph.i.i.i79.i.i ] ; 2 uses
  %.not197.i = icmp eq ptr %i.ke, %i.jq
  br i1 %.not197.i, label %._crit_edge.i, label %bb.i, !llvm.loop !657

_ZN12_GLOBAL__N_112ExpandPseudo6expandEv.exit:    ; preds = %._crit_edge.i
  br i1 %.1.lcssa.i, label %bb.ah, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_112ExpandPseudo6expandEv.exit
  %i.ale = load ptr, ptr %i.i, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 361
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !715, !range !174, !noundef !143
  %i.alh = trunc nuw i8 %i.alg to i1
  %. = select i1 %i.alh, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !139
  %i.alk = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !705
  %i.alm = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aln = load i32, ptr %i.alm, align 8, !tbaa !706
  %i.alo = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !707
  %i.alq = mul i32 %i.alp, %i.aln
  %39 = getelementptr inbounds nuw i8, ptr %., i64 20
  %.val138 = load i16, ptr %39, align 4, !tbaa !708
  %i.alr = zext i16 %.val138 to i32
  %i.als = add i32 %i.alq, %i.alr
  %i.alt = zext i32 %i.als to i64
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %i.all, i64 %i.alt ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 4
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !716
  %i.alx = lshr i32 %i.alw, 3
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !717
  %i.amb = lshr i32 %i.ama, 3
  %i.amc = zext nneg i32 %i.amb to i64
  %i.amd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.amc, i1 false)
  %i.ame = trunc nuw nsw i64 %i.amd to i8
  %i.amf = sub nsw i8 63, %i.ame
  %i.amg = call noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728) %i.alj, i64 noundef %i.aly, i8 %i.amf, i32 noundef 0) #15
  %i.amh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.amg to i64 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !384 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !718
  %.not.i.i58 = icmp ult i32 %i.amj, %i.aml
  br i1 %.not.i.i58, label %bb.aj, label %bb.ai, !prof !719

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12RegScavenger13ScavengedInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.amh, i64 %.sroa.0.0.insert.ext.i, ptr null)
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.amm = zext i32 %i.amj to i64
  %i.amn = load ptr, ptr %i.amh, align 8, !tbaa !383
  %i.amo = getelementptr inbounds nuw [16 x i8], ptr %i.amn, i64 %i.amm ; 2 uses
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.amo, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.amp = load i32, ptr %i.ami, align 8, !tbaa !384
  %i.amq = add i32 %i.amp, 1
  store i32 %i.amq, ptr %i.ami, align 8, !tbaa !384
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit: ; preds = %bb.g, %bb.aj, %bb.ai, %_ZN12_GLOBAL__N_112ExpandPseudo6expandEv.exit
  %i.amr = call noundef i64 @_ZNK4llvm17MipsFrameLowering17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #15 ; 2 uses
  %i.ams = load ptr, ptr %i.i, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 384
  %i.amu = load i8, ptr %i.amt, align 8, !tbaa !720, !range !174, !noundef !143
  %i.amv = trunc nuw i8 %i.amu to i1
  %i.amw = select i1 %i.amv, i64 -512, i64 -32768 ; 2 uses
  %.not.i60 = icmp sle i64 %i.amw, %i.amr
  %i.amx = xor i64 %i.amw, -1
  %i.amy = icmp sle i64 %i.amr, %i.amx
  %or.cond = and i1 %.not.i60, %i.amy
  %i.amz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !139 ; 2 uses
  br i1 %or.cond, label %bb.ak, label %_ZN4llvm6isIntNEjl.exit.thread

bb.ak:                                            ; preds = %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 36
  %i.anc = load i8, ptr %i.anb, align 4, !tbaa !382, !range !174, !noundef !143
  %i.and = trunc nuw i8 %i.anc to i1
  br i1 %i.and, label %_ZN4llvm6isIntNEjl.exit.thread, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit64

_ZN4llvm6isIntNEjl.exit.thread:                   ; preds = %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit, %bb.ak
  %i.ane = load i32, ptr %38, align 4, !tbaa !153
  %i.anf = icmp eq i32 %i.ane, 3
  %.1 = select i1 %i.anf, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 2432), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 448)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !705
  %i.ani = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.anj = load i32, ptr %i.ani, align 8, !tbaa !706
  %i.ank = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !707
  %i.anm = mul i32 %i.anl, %i.anj
  %40 = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %.val140 = load i16, ptr %40, align 4, !tbaa !708
  %i.ann = zext i16 %.val140 to i32
  %i.ano = add i32 %i.anm, %i.ann
  %i.anp = zext i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw [16 x i8], ptr %i.anh, i64 %i.anp ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 4
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !716
  %i.ant = lshr i32 %i.ans, 3
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !717
  %i.anx = lshr i32 %i.anw, 3
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.any, i1 false)
  %i.aoa = trunc nuw nsw i64 %i.anz to i8
  %i.aob = sub nsw i8 63, %i.aoa
  %i.aoc = call noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728) %i.ana, i64 noundef %i.anu, i8 %i.aob, i32 noundef 0) #15
  %i.aod = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.0.0.insert.ext.i61 = zext i32 %i.aoc to i64 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.aof = load i32, ptr %i.aoe, align 8, !tbaa !384 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !718
  %.not.i.i62 = icmp ult i32 %i.aof, %i.aoh
  br i1 %.not.i.i62, label %bb.am, label %bb.al, !prof !719

bb.al:                                            ; preds = %_ZN4llvm6isIntNEjl.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12RegScavenger13ScavengedInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aod, i64 %.sroa.0.0.insert.ext.i61, ptr null)
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit64

bb.am:                                            ; preds = %_ZN4llvm6isIntNEjl.exit.thread
  %i.aoi = zext i32 %i.aof to i64
  %i.aoj = load ptr, ptr %i.aod, align 8, !tbaa !383
  %i.aok = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %i.aoi ; 2 uses
  store i64 %.sroa.0.0.insert.ext.i61, ptr %i.aok, align 1
  %.sroa.3.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i63, align 1
  %i.aol = load i32, ptr %i.aoe, align 8, !tbaa !384
  %i.aom = add i32 %i.aol, 1
  store i32 %i.aom, ptr %i.aoe, align 8, !tbaa !384
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit64

_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit64: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  ret void
}

declare void @_ZNK4llvm19TargetFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm16MipsFunctionInfo18createEhDataRegsFIERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

declare void @_ZN4llvm16MipsFunctionInfo14createISRRegFIERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i8, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4llvm17MipsFrameLowering17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm25createMipsSEFrameLoweringERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 2 uses
  tail call void @_ZN4llvm19MipsSEFrameLoweringC1ERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(536) %0) #15
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19MipsSEFrameLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm19TargetFrameLowering17getStackThresholdEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i64 4294967295
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25isStackIdSafeForLocalAreaEj(ptr noundef nonnull align 8 dereferenceable(21) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17MipsFrameLowering44allocateScavengingFrameIndexesNearIncomingSPERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27assignCalleeSavedSpillSlotsERNS_15MachineFunctionEPKNS_18TargetRegisterInfoERSt6vectorINS_15CalleeSavedInfoESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm19TargetFrameLowering24getCalleeSavedSpillSlotsERj(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !241
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering31targetHandlesStackFrameRoundingEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17MipsFrameLowering20enableShrinkWrappingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25enableStackSlotScavengingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering20enableCalleeSaveSkipERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering20emitZeroCallUsedRegsENS_9BitVectorERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr nofree noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering32emitCalleeSavedFrameMovesFullCFAERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering14enableCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering18enableFullCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #15
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering22resetCFIToInitialStateERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering28stackProbeFunctionModifiesSPEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering24adjustForSegmentedStacksERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering21adjustForHiPEPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27restoreCalleeSavedRegistersERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_15MutableArrayRefINS_15CalleeSavedInfoEEEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr %3, i64 %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27canSimplifyCallFramePseudosERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #15
  br i1 %i.d, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !245, !nonnull !143, !align !144
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.e, i32 noundef 21) #15
end_hunk_0
