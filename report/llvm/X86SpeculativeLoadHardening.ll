Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86SpeculativeLoadHardening?download=true
inline.NumInlined: 3138
inline.NumDeleted: 1377
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_131X86SpeculativeLoadHardeningImpl36tracePredStateThroughBlocksAndHardenERN4llvm15MachineFunctionE:bb.a
  %.not.i137.i = icmp eq i32 %i.ana, 0
  br i1 %.not.i137.i, label %bb.fp, label %bb.fa

bb.fa:                                            ; preds = %"_ZN4llvm8erase_ifINS_11SmallVectorIPNS_14MachineOperandELj2EEEZN12_GLOBAL__N_131X86SpeculativeLoadHardeningImpl14hardenLoadAddrERNS_12MachineInstrERS2_S9_RNS_13SmallDenseMapINS_8RegisterESB_Lj32ENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SB_EEEEE3$_0EEvRT_T0_.exit.i"
  %i.anb = call i32 @_ZN4llvm17MachineSSAUpdater20GetValueAtEndOfBlockEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull %i.aho) #19 ; 4 uses
  br i1 %.4.i, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.anc = load ptr, ptr %0, align 8, !tbaa !162
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 393
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !682, !range !18, !noundef !19
  %i.anf = trunc nuw i8 %i.ane to i1
  br i1 %i.anf, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ang = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.anh = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ang, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240), ptr nonnull @.str.20, i64 0) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  store ptr %.sroa.01.0.copyload.i.i, ptr %59, align 8, !tbaa !591
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.ani = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !298
  %i.anl = getelementptr inbounds i8, ptr %i.ank, i64 -640
  %i.anm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %i.anl, i32 %i.anh) ; 2 uses
  %i.ann = extractvalue { ptr, ptr } %i.anm, 0
  %i.ano = extractvalue { ptr, ptr } %i.anm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  store ptr null, ptr %i.ag, align 8, !tbaa !324, !alias.scope !779
  store i32 28, ptr %i.ah, align 4, !tbaa !305, !alias.scope !779
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !alias.scope !779
  store i32 0, ptr %58, align 8, !alias.scope !779
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ano, ptr noundef nonnull align 8 dereferenceable(1065) %i.ann, ptr noundef nonnull align 8 dereferenceable(32) %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %.sroa.0237.0.i = phi i32 [ 0, %bb.fb ], [ %i.anh, %bb.fc ], [ 0, %bb.fa ] ; 2 uses
  %.0.shrunk.i = phi i1 [ true, %bb.fb ], [ false, %bb.fc ], [ false, %bb.fa ]
  %i.anp = load ptr, ptr %60, align 8, !tbaa !21  ; 2 uses
  %i.anq = load i32, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.anr = zext i32 %i.anq to i64
  %.idx.i = shl nuw nsw i64 %i.anr, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anp, i64 %.idx.i
  %.not295.i = icmp eq i32 %i.anq, 0
  br i1 %.not295.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fd
  %i.ant = getelementptr inbounds nuw i8, ptr %i.aho, i64 32 ; 6 uses
  br label %bb.fe

._crit_edge.i:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_.exit, %bb.fd
  %.not132.i = icmp eq i32 %.sroa.0237.0.i, 0
  br i1 %.not132.i, label %bb.fp, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

bb.fe:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_.exit, %.lr.ph.i
  %.0131296.i = phi ptr [ %i.anp, %.lr.ph.i ], [ %i.aut, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_.exit ] ; 2 uses
  %i.anu = load ptr, ptr %.0131296.i, align 8, !tbaa !670 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 4 ; 2 uses
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !305 ; 5 uses
  %i.anx = load ptr, ptr %i.x, align 8, !tbaa !172 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 48
  %i.anz = and i32 %i.anw, 2147483647
  %i.aoa = zext nneg i32 %i.anz to i64
  %i.aob = load ptr, ptr %i.any, align 8, !tbaa !21
  %i.aoc = getelementptr inbounds nuw [16 x i8], ptr %i.aob, i64 %i.aoa
  %.0.copyload.i.i.i.i.i.i.i239 = load i64, ptr %i.aoc, align 8
  %i.aod = and i64 %.0.copyload.i.i.i.i.i.i.i239, -5
  %i.aoe = inttoptr i64 %i.aod to ptr             ; 4 uses
  %i.aof = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.anx, ptr noundef %i.aoe, ptr nonnull @.str.20, i64 0) #19 ; 6 uses
  %i.aog = load ptr, ptr %0, align 8, !tbaa !162
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 503
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !782, !range !18, !noundef !19
  %i.aoj = trunc nuw i8 %i.aoi to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aoe, i64 20
  %.pre.i240 = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !561
  %.pre334.i = zext i16 %.pre.i240 to i32         ; 4 uses
  br i1 %i.aoj, label %._crit_edge328.i, label %bb.ff

._crit_edge328.i:                                 ; preds = %bb.fe
  %.pre335.i = lshr i32 %.pre334.i, 5
  %.pre337.i = zext nneg i32 %.pre335.i to i64
  %.pre339.i = and i32 %.pre334.i, 31
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.aok = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8284), align 4, !tbaa !638
  %i.aol = zext i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), i64 %i.aol
  %i.aon = lshr i32 %.pre334.i, 5
  %i.aoo = zext nneg i32 %i.aon to i64            ; 3 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %i.aoo
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !281
  %i.aor = and i32 %.pre334.i, 31                 ; 3 uses
  %i.aos = lshr i32 %i.aoq, %i.aor
  %i.aot = trunc i32 %i.aos to i1
  br i1 %i.aot, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit152.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aou = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8412), align 4, !tbaa !638
  %i.aov = zext i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8384), i64 %i.aov
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %i.aoo
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !281
  %i.aoz = lshr i32 %i.aoy, %i.aor
  %i.apa = trunc i32 %i.aoz to i1
  br i1 %i.apa, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit152.i, label %bb.fh

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit152.i: ; preds = %bb.fg, %bb.ff
  %.neg248.i = phi i64 [ -18468, %bb.ff ], [ -18466, %bb.fg ]
  %.neg.i = phi i64 [ -15200, %bb.ff ], [ -15171, %bb.fg ]
  %i.apb = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.apc = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.apb, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), ptr nonnull @.str.20, i64 0) #19 ; 2 uses
  %.sroa.049.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  %i.apd = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !298
  %i.apg = getelementptr inbounds i8, ptr %i.apf, i64 -431808
  %i.aph = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 3 uses
  %i.api = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aph, ptr noundef nonnull align 8 dereferenceable(32) %i.apg, ptr %.sroa.049.0.copyload.i, i1 noundef zeroext false) #19 ; 3 uses
  %i.apj = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.api) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  store ptr null, ptr %i.aj, align 8, !tbaa !324, !alias.scope !783
  store i32 %i.apc, ptr %i.ak, align 4, !tbaa !305, !alias.scope !783
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !783
  store i32 16777216, ptr %57, align 8, !alias.scope !783
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.api, ptr noundef nonnull align 8 dereferenceable(1065) %i.aph, ptr noundef nonnull align 8 dereferenceable(32) %57) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  store ptr null, ptr %i.am, align 8, !tbaa !324, !alias.scope !786
  store i32 %i.anb, ptr %i.an, align 4, !tbaa !305, !alias.scope !786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !786
  store i32 0, ptr %56, align 8, !alias.scope !786
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.api, ptr noundef nonnull align 8 dereferenceable(1065) %i.aph, ptr noundef nonnull align 8 dereferenceable(32) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  %i.apk = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.apl = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.apk, ptr noundef nonnull %i.aoe, ptr nonnull @.str.20, i64 0) #19 ; 2 uses
  %.sroa.043.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  %i.apm = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !298
  %i.app = getelementptr inbounds [32 x i8], ptr %i.apo, i64 %.neg.i
  %i.apq = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 3 uses
  %i.apr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.apq, ptr noundef nonnull align 8 dereferenceable(32) %i.app, ptr %.sroa.043.0.copyload.i, i1 noundef zeroext false) #19 ; 3 uses
  %i.aps = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.apr) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  store ptr null, ptr %i.ap, align 8, !tbaa !324, !alias.scope !789
  store i32 %i.apl, ptr %i.aq, align 4, !tbaa !305, !alias.scope !789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !789
  store i32 16777216, ptr %55, align 8, !alias.scope !789
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apr, ptr noundef nonnull align 8 dereferenceable(1065) %i.apq, ptr noundef nonnull align 8 dereferenceable(32) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  store ptr null, ptr %i.as, align 8, !tbaa !324, !alias.scope !792
  store i32 %i.apc, ptr %i.at, align 4, !tbaa !305, !alias.scope !792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !792
  store i32 0, ptr %54, align 8, !alias.scope !792
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apr, ptr noundef nonnull align 8 dereferenceable(1065) %i.apq, ptr noundef nonnull align 8 dereferenceable(32) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  %.sroa.039.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  %i.apt = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !298
  %i.apw = getelementptr inbounds [32 x i8], ptr %i.apv, i64 %.neg248.i
  %i.apx = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 4 uses
  %i.apy = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.apx, ptr noundef nonnull align 8 dereferenceable(32) %i.apw, ptr %.sroa.039.0.copyload.i, i1 noundef zeroext false) #19 ; 4 uses
  %i.apz = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.apy) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  store ptr null, ptr %i.av, align 8, !tbaa !324, !alias.scope !795
  store i32 %i.aof, ptr %i.aw, align 4, !tbaa !305, !alias.scope !795
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !795
  store i32 16777216, ptr %53, align 8, !alias.scope !795
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apy, ptr noundef nonnull align 8 dereferenceable(1065) %i.apx, ptr noundef nonnull align 8 dereferenceable(32) %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  store ptr null, ptr %i.ay, align 8, !tbaa !324, !alias.scope !798
  store i32 %i.apl, ptr %i.az, align 4, !tbaa !305, !alias.scope !798
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !798
  store i32 0, ptr %52, align 8, !alias.scope !798
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apy, ptr noundef nonnull align 8 dereferenceable(1065) %i.apx, ptr noundef nonnull align 8 dereferenceable(32) %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  store ptr null, ptr %i.bb, align 8, !tbaa !324, !alias.scope !801
  store i32 %i.anw, ptr %i.bc, align 4, !tbaa !305, !alias.scope !801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !801
  store i32 0, ptr %51, align 8, !alias.scope !801
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.apy, ptr noundef nonnull align 8 dereferenceable(1065) %i.apx, ptr noundef nonnull align 8 dereferenceable(32) %51) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  br label %bb.fk

bb.fh:                                            ; preds = %bb.fg, %._crit_edge328.i
  %.pre-phi340.i = phi i32 [ %.pre339.i, %._crit_edge328.i ], [ %i.aor, %bb.fg ] ; 3 uses
  %.pre-phi338.i = phi i64 [ %.pre337.i, %._crit_edge328.i ], [ %i.aoo, %bb.fg ] ; 3 uses
  %i.aqa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8220), align 4, !tbaa !638
  %i.aqb = zext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192), i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.aqc, i64 %.pre-phi338.i
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !281
  %i.aqf = lshr i32 %i.aqe, %.pre-phi340.i
  %i.aqg = trunc i32 %i.aqf to i1                 ; 4 uses
  %.pre329.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8348), align 4, !tbaa !638
  %.phi.trans.insert330.i = zext i32 %.pre329.i to i64
  %.phi.trans.insert331.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8320), i64 %.phi.trans.insert330.i
  %.phi.trans.insert332.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert331.i, i64 %.pre-phi338.i
  %.pre333.i = load i32, ptr %.phi.trans.insert332.i, align 4, !tbaa !281
  %.pre342.i = lshr i32 %.pre333.i, %.pre-phi340.i
  %.pre344.i = trunc i32 %.pre342.i to i1         ; 2 uses
  %brmerge.i = select i1 %i.aqg, i1 true, i1 %.pre344.i
  %not..i = xor i1 %i.aqg, true
  %.pre344.mux.i = select i1 %not..i, i1 true, i1 %.pre344.i
  br i1 %brmerge.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit166.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aqh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8476), align 4, !tbaa !638
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8448), i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aqj, i64 %.pre-phi338.i
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !281
  %i.aqm = lshr i32 %i.aql, %.pre-phi340.i
  %i.aqn = trunc i32 %i.aqm to i1
  br i1 %i.aqn, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit166.i, label %bb.fj

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit166.i: ; preds = %bb.fi, %bb.fh
  %.pre-phi345.i = phi i1 [ %.pre344.mux.i, %bb.fh ], [ false, %bb.fi ]
  %cond.fr.i = freeze i1 %.pre-phi345.i           ; 2 uses
  %i.aqo = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.aqp = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.aqo, ptr noundef nonnull %i.aoe, ptr nonnull @.str.20, i64 0) #19 ; 2 uses
  %.sroa.025.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  %i.aqq = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !298
  %spec.select.i242 = select i1 %cond.fr.i, i64 -15193, i64 -15196
  %.neg250.i = select i1 %i.aqg, i64 -15190, i64 %spec.select.i242
  %i.aqt = getelementptr inbounds [32 x i8], ptr %i.aqs, i64 %.neg250.i
  %i.aqu = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 3 uses
  %i.aqv = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aqu, ptr noundef nonnull align 8 dereferenceable(32) %i.aqt, ptr %.sroa.025.0.copyload.i, i1 noundef zeroext false) #19 ; 3 uses
  %i.aqw = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.aqv) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  store ptr null, ptr %i.bw, align 8, !tbaa !324, !alias.scope !804
  store i32 %i.aqp, ptr %i.bx, align 4, !tbaa !305, !alias.scope !804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !804
  store i32 16777216, ptr %50, align 8, !alias.scope !804
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqv, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqu, ptr noundef nonnull align 8 dereferenceable(32) %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  store ptr null, ptr %i.bz, align 8, !tbaa !324, !alias.scope !807
  store i32 %i.anb, ptr %i.ca, align 4, !tbaa !305, !alias.scope !807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false), !alias.scope !807
  store i32 0, ptr %49, align 8, !alias.scope !807
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqv, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqu, ptr noundef nonnull align 8 dereferenceable(32) %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  %.sroa.021.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591
  %i.aqx = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !298
  %.neg251.i = select i1 %cond.fr.i, i64 -18453, i64 -18462
  %.neg252.i = select i1 %i.aqg, i64 -18444, i64 %.neg251.i
  %i.ara = getelementptr inbounds [32 x i8], ptr %i.aqz, i64 %.neg252.i
  %i.arb = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 4 uses
  %i.arc = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.arb, ptr noundef nonnull align 8 dereferenceable(32) %i.ara, ptr %.sroa.021.0.copyload.i, i1 noundef zeroext false) #19 ; 4 uses
  %i.ard = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.arc) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  store ptr null, ptr %i.cc, align 8, !tbaa !324, !alias.scope !810
  store i32 %i.aof, ptr %i.cd, align 4, !tbaa !305, !alias.scope !810
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false), !alias.scope !810
  store i32 16777216, ptr %48, align 8, !alias.scope !810
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arc, ptr noundef nonnull align 8 dereferenceable(1065) %i.arb, ptr noundef nonnull align 8 dereferenceable(32) %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  store ptr null, ptr %i.cf, align 8, !tbaa !324, !alias.scope !813
  store i32 %i.aqp, ptr %i.cg, align 4, !tbaa !305, !alias.scope !813
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false), !alias.scope !813
  store i32 0, ptr %47, align 8, !alias.scope !813
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arc, ptr noundef nonnull align 8 dereferenceable(1065) %i.arb, ptr noundef nonnull align 8 dereferenceable(32) %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  store ptr null, ptr %i.ci, align 8, !tbaa !324, !alias.scope !816
  store i32 %i.anw, ptr %i.cj, align 4, !tbaa !305, !alias.scope !816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !alias.scope !816
  store i32 0, ptr %46, align 8, !alias.scope !816
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arc, ptr noundef nonnull align 8 dereferenceable(1065) %i.arb, ptr noundef nonnull align 8 dereferenceable(32) %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %.sroa.011.0.copyload.i = load ptr, ptr %i.ahp, align 8, !tbaa !591 ; 2 uses
  %i.are = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !298 ; 2 uses
  %i.arh = load ptr, ptr %i.ant, align 8, !tbaa !301 ; 8 uses
  br i1 %.0.shrunk.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit180.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit173.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit173.i: ; preds = %bb.fj
  %i.ari = getelementptr inbounds i8, ptr %i.arg, i64 -97056
  %i.arj = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %i.ari, ptr %.sroa.011.0.copyload.i, i1 noundef zeroext false) #19 ; 5 uses
  %i.ark = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.arj) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  store ptr null, ptr %i.be, align 8, !tbaa !324, !alias.scope !819
  store i32 %i.aof, ptr %i.bf, align 4, !tbaa !305, !alias.scope !819
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !819
  store i32 16777216, ptr %45, align 8, !alias.scope !819
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arj, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  store ptr null, ptr %i.bh, align 8, !tbaa !324, !alias.scope !822
  store i32 %i.anb, ptr %i.bi, align 4, !tbaa !305, !alias.scope !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !822
  store i32 0, ptr %44, align 8, !alias.scope !822
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arj, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  store ptr null, ptr %i.bk, align 8, !tbaa !324, !alias.scope !825
  store i32 %i.anw, ptr %i.bl, align 4, !tbaa !305, !alias.scope !825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !825
  store i32 0, ptr %43, align 8, !alias.scope !825
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.arj, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %i.arl = load ptr, ptr %i.w, align 8, !tbaa !174
  %i.arm = call noundef zeroext i1 @_ZN4llvm12MachineInstr15addRegisterDeadENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.arj, i32 28, ptr noundef %i.arl, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.fk

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit180.i: ; preds = %bb.fj
  %i.arn = getelementptr inbounds i8, ptr %i.arg, i64 -149312
  %i.aro = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %i.arn, ptr %.sroa.011.0.copyload.i, i1 noundef zeroext false) #19 ; 4 uses
  %i.arp = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.aho, ptr nonnull align 8 dereferenceable(80) %.sroa.0410.0614, ptr noundef %i.aro) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  store ptr null, ptr %i.bn, align 8, !tbaa !324, !alias.scope !828
  store i32 %i.aof, ptr %i.bo, align 4, !tbaa !305, !alias.scope !828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !828
  store i32 16777216, ptr %42, align 8, !alias.scope !828
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aro, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  store ptr null, ptr %i.bq, align 8, !tbaa !324, !alias.scope !831
  store i32 %i.anw, ptr %i.br, align 4, !tbaa !305, !alias.scope !831
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false), !alias.scope !831
  store i32 0, ptr %41, align 8, !alias.scope !831
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aro, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  store ptr null, ptr %i.bt, align 8, !tbaa !324, !alias.scope !834
  store i32 %i.anb, ptr %i.bu, align 4, !tbaa !305, !alias.scope !834
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false), !alias.scope !834
  store i32 0, ptr %40, align 8, !alias.scope !834
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aro, ptr noundef nonnull align 8 dereferenceable(1065) %i.arh, ptr noundef nonnull align 8 dereferenceable(32) %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.fk

bb.fk:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit180.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit173.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit166.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit152.i
  %i.arq = load i32, ptr %i.anv, align 4, !tbaa !305 ; 5 uses
  %i.arr = load i32, ptr %64, align 8, !noalias !837 ; 2 uses
  %i.ars = and i32 %i.arr, 1
  %.not.i.i.i.i334 = icmp eq i32 %i.ars, 0        ; 3 uses
  %i.art = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !837
  %i.aru = load ptr, ptr %.phi.trans.insert226.i.i.i.i.i.i.i, align 8, !noalias !837
  %i.arv = load i32, ptr %.phi.trans.insert228.i.i.i.i.i.i.i, align 8, !noalias !837
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i334, ptr %i.art, ptr %.phi.trans.insert.i.i.i.i.i.i.i ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i334, ptr %i.aru, ptr %i.q ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i334, i32 %i.arv, i32 32 ; 4 uses
  %i.arw = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.arw, label %.loopexit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.arx = add i32 %.sink.i.i.i.i, -1             ; 2 uses
  %i.ary = mul i32 %i.arq, 37
  %.024.i.i = and i32 %i.arx, %i.ary              ; 3 uses
  %i.arz = zext i32 %.024.i.i to i64              ; 2 uses
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i, i64 %i.arz ; 2 uses
  %i.asb = lshr i64 %i.arz, 5
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.asb
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !281
  %i.ase = and i32 %.024.i.i, 31
  %i.asf = lshr i32 %i.asd, %i.ase
  %i.asg = trunc i32 %i.asf to i1
  br i1 %i.asg, label %.lr.ph.i.i340, label %.loopexit.i, !prof !282

bb.fm:                                            ; preds = %.lr.ph.i.i340
  %i.ash = add nuw i32 %.025.i.i, 1
  %.0.i.i341 = and i32 %i.ash, %i.arx             ; 3 uses
  %i.asi = zext i32 %.0.i.i341 to i64             ; 2 uses
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i, i64 %i.asi ; 2 uses
  %i.ask = lshr i64 %i.asi, 5
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ask
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !281
  %i.asn = and i32 %.0.i.i341, 31
  %i.aso = lshr i32 %i.asm, %i.asn
  %i.asp = trunc i32 %i.aso to i1
  br i1 %i.asp, label %.lr.ph.i.i340, label %.loopexit.i, !prof !283, !llvm.loop !842

.lr.ph.i.i340:                                    ; preds = %bb.fl, %bb.fm
  %i.asq = phi ptr [ %i.asj, %bb.fm ], [ %i.asa, %bb.fl ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i341, %bb.fm ], [ %.024.i.i, %bb.fl ]
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !175
  %i.ass = icmp eq i32 %i.arq, %i.asr
  br i1 %i.ass, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_.exit, label %bb.fm, !prof !265

.loopexit.i:                                      ; preds = %bb.fm, %bb.fl, %bb.fk
  %.lcssa29.sink.i.ph.i = phi ptr [ %i.asa, %bb.fl ], [ null, %bb.fk ], [ %i.asj, %bb.fm ]
  %i.ast = shl i32 %i.arr, 1
  %i.asu = and i32 %i.ast, -4
  %i.asv = add i32 %i.asu, 4
  %i.asw = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i335 = icmp ult i32 %i.asv, %i.asw
  br i1 %.not.i.i335, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit.i, label %bb.fn, !prof !265

bb.fn:                                            ; preds = %.loopexit.i
  %i.asx = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E4growEj(ptr noundef nonnull align 8 dereferenceable(272) %64, i32 noundef %i.asx)
  %i.asy = load i32, ptr %64, align 8, !noalias !843
  %i.asz = and i32 %i.asy, 1
  %.not.i.i.i369 = icmp eq i32 %i.asz, 0          ; 3 uses
  %i.ata = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !843
  %i.atb = load ptr, ptr %.phi.trans.insert226.i.i.i.i.i.i.i, align 8, !noalias !843
  %i.atc = load i32, ptr %.phi.trans.insert228.i.i.i.i.i.i.i, align 8, !noalias !843
  %.sink2.i.i.i = select i1 %.not.i.i.i369, ptr %i.ata, ptr %.phi.trans.insert.i.i.i.i.i.i.i ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i369, ptr %i.atb, ptr %i.q ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i369, i32 %i.atc, i32 32 ; 2 uses
  %i.atd = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.atd)
  %i.ate = add i32 %.sink.i.i.i, -1               ; 2 uses
  %i.atf = mul i32 %i.arq, 37
  %.024.i = and i32 %i.ate, %i.atf                ; 3 uses
  %i.atg = zext i32 %.024.i to i64                ; 2 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.atg ; 2 uses
  %i.ati = lshr i64 %i.atg, 5
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !281
  %i.atl = and i32 %.024.i, 31
  %i.atm = lshr i32 %i.atk, %i.atl
  %i.atn = trunc i32 %i.atm to i1
  br i1 %i.atn, label %.lr.ph.i372, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit.i, !prof !282

bb.fo:                                            ; preds = %.lr.ph.i372
  %i.ato = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.ato, %i.ate                  ; 3 uses
  %i.atp = zext i32 %.0.i to i64                  ; 2 uses
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.atp ; 2 uses
  %i.atr = lshr i64 %i.atp, 5
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.atr
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !281
  %i.atu = and i32 %.0.i, 31
  %i.atv = lshr i32 %i.att, %i.atu
  %i.atw = trunc i32 %i.atv to i1
  br i1 %i.atw, label %.lr.ph.i372, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit.i, !prof !283, !llvm.loop !842

.lr.ph.i372:                                      ; preds = %bb.fn, %bb.fo
  %i.atx = phi ptr [ %i.atq, %bb.fo ], [ %i.ath, %bb.fn ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.fo ], [ %.024.i, %bb.fn ]
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !175
  %i.atz = icmp eq i32 %i.arq, %i.aty
  br i1 %i.atz, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit.i, label %bb.fo, !prof !265

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterES2_Lj32ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit.i: ; preds = %.lr.ph.i372, %bb.fo, %bb.fn, %.loopexit.i
  %.pre-phi727 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.fn ], [ %.sink2.i.i.i, %bb.fo ], [ %.sink2.i.i.i, %.lr.ph.i372 ]
  %.pre-phi726 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.fn ], [ %.sink1.i.i.i, %bb.fo ], [ %.sink1.i.i.i, %.lr.ph.i372 ]
  %i.aua = phi ptr [ %.lcssa29.sink.i.ph.i, %.loopexit.i ], [ %i.ath, %bb.fn ], [ %i.atx, %.lr.ph.i372 ], [ %i.atq, %bb.fo ] ; 4 uses
  %i.aub = ptrtoint ptr %i.aua to i64
end_hunk_0
