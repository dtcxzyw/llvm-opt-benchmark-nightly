Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineSink?download=true
inline.NumInlined: 6629
inline.NumDeleted: 3299
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_124PostRAMachineSinkingImpl3runERN4llvm15MachineFunctionE:bb.a
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !425, !noalias !1083
  %i.ajy = icmp eq ptr %i.ajh, %i.ajx
  br i1 %i.ajy, label %.loopexit.i, label %bb.cp, !prof !189

bb.cp:                                            ; preds = %.lr.ph.i249.i
  %i.ajz = add nuw i32 %.024.i250.i, 1
  %i.aka = and i32 %i.ajz, %i.ajg                 ; 3 uses
  %i.akb = zext i32 %i.aka to i64                 ; 2 uses
  %i.akc = getelementptr inbounds nuw [16 x i8], ptr %i.ajc, i64 %i.akb ; 2 uses
  %i.akd = lshr i64 %i.akb, 5
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !187, !noalias !1083
  %i.akg = and i32 %i.aka, 31
  %i.akh = lshr i32 %i.akf, %i.akg
  %i.aki = trunc i32 %i.akh to i1
  br i1 %i.aki, label %.lr.ph.i249.i, label %.loopexit.i, !prof !190, !llvm.loop !1045

.loopexit.i:                                      ; preds = %bb.cp, %.lr.ph.i249.i, %bb.co, %.loopexit.i225..loopexit_crit_edge.i
  %i.akj = phi ptr [ %.pre196.i, %.loopexit.i225..loopexit_crit_edge.i ], [ %i.ajh, %bb.co ], [ %i.ajh, %.lr.ph.i249.i ], [ %i.ajh, %bb.cp ]
  %i.akk = phi ptr [ %i.ahq, %.loopexit.i225..loopexit_crit_edge.i ], [ %i.ajc, %bb.co ], [ %i.ajc, %.lr.ph.i249.i ], [ %i.ajc, %bb.cp ]
  %i.akl = phi ptr [ %i.ahr, %.loopexit.i225..loopexit_crit_edge.i ], [ %i.ajd, %bb.co ], [ %i.ajd, %.lr.ph.i249.i ], [ %i.ajd, %bb.cp ]
  %i.akm = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i225..loopexit_crit_edge.i ], [ %i.ajp, %bb.co ], [ %i.akc, %bb.cp ], [ %i.ajw, %.lr.ph.i249.i ] ; 3 uses
  %i.akn = ptrtoint ptr %i.akm to i64
  %i.ako = ptrtoint ptr %i.akk to i64
  %i.akp = sub i64 %i.akn, %i.ako
  %i.akq = ashr exact i64 %i.akp, 4               ; 2 uses
  %i.akr = trunc i64 %i.akq to i32
  %i.aks = and i32 %i.akr, 31
  %i.akt = shl nuw i32 1, %i.aks
  %i.aku = lshr i64 %i.akq, 5
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %i.aku ; 2 uses
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !187, !noalias !1083
  %i.akx = or i32 %i.akt, %i.akw
  store i32 %i.akx, ptr %i.akv, align 4, !tbaa !187, !noalias !1083
  %i.aky = load i32, ptr %i.ei, align 8, !tbaa !534, !noalias !1083
  %i.akz = add i32 %i.aky, 1
  store i32 %i.akz, ptr %i.ei, align 8, !tbaa !534, !noalias !1083
  store ptr %i.akj, ptr %i.akm, align 8, !tbaa !425, !noalias !1083
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akm, i64 8 ; 2 uses
  store i32 0, ptr %i.ala, align 8, !tbaa !187, !noalias !1083
  %i.alb = load i32, ptr %i.dx, align 8, !tbaa !309 ; 3 uses
  store i32 %i.alb, ptr %i.ala, align 8, !tbaa !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %.096127.i, ptr %3, align 8, !tbaa !539, !alias.scope !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.alc = load i32, ptr %i.dy, align 4, !tbaa !310
  %.not.i.i.i174.i = icmp ult i32 %i.alb, %i.alc
  br i1 %.not.i.i.i174.i, label %bb.cr, label %bb.cq, !prof !189

bb.cq:                                            ; preds = %.loopexit.i
  %i.ald = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  %.pre.i.i175.i = load i32, ptr %i.dx, align 8, !tbaa !309
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i

bb.cr:                                            ; preds = %.loopexit.i
  %i.ale = zext i32 %i.alb to i64
  %i.alf = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.alg = getelementptr inbounds nuw [32 x i8], ptr %i.alf, i64 %i.ale ; 5 uses
  %i.alh = load ptr, ptr %.096127.i, align 8, !tbaa !425
  store ptr %i.alh, ptr %i.alg, align 8, !tbaa !470
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  store ptr %i.alj, ptr %i.ali, align 8, !tbaa !52
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  store i32 0, ptr %i.alk, align 8, !tbaa !309
  %i.all = getelementptr inbounds nuw i8, ptr %i.alg, i64 20
  store i32 2, ptr %i.all, align 4, !tbaa !310
  %i.alm = load i32, ptr %i.dx, align 8, !tbaa !309
  %i.aln = add i32 %i.alm, 1                      ; 2 uses
  store i32 %i.aln, ptr %i.dx, align 8, !tbaa !309
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i: ; preds = %bb.cr, %bb.cq
  %i.alo = phi i32 [ %.pre.i.i175.i, %bb.cq ], [ %i.aln, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.alp = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.alq = zext i32 %i.alo to i64
  %i.alr = getelementptr inbounds nuw [32 x i8], ptr %i.alp, i64 %i.alq
  %i.als = getelementptr inbounds i8, ptr %i.alr, i64 -32
  br label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i.i233.i
  %i.alt = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !1086
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [32 x i8], ptr %i.alt, i64 %i.alw
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN4llvm15SmallVectorImplISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i
  %.sroa.09.0.i.i.i = phi ptr [ %i.als, %_ZN4llvm15SmallVectorImplISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESD_IJEEEEERS7_DpOT_.exit.i.i.i ], [ %i.alx, %bb.cs ] ; 4 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.096127.i, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 16 ; 4 uses
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !309 ; 2 uses
  %i.amc = zext i32 %i.amb to i64
  %i.amd = load ptr, ptr %i.alz, align 8, !tbaa !52
  %i.ame = getelementptr inbounds nuw i8, ptr %.096127.i, i64 16
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !309 ; 3 uses
  %i.amg = zext i32 %i.amf to i64                 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.amg, 2
  %i.amh = add nuw nsw i64 %i.amg, %i.amc         ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 20
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !310
  %i.amk = zext i32 %i.amj to i64
  %i.aml = icmp samesign ugt i64 %i.amh, %i.amk
  br i1 %i.aml, label %bb.cu, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 24
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.aly, ptr noundef nonnull %i.amm, i64 noundef %i.amh, i64 noundef 4) #20
  %.pre8.pre.i.i.i = load i32, ptr %i.ama, align 8, !tbaa !309
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i: ; preds = %bb.cu, %bb.ct
  %.pre8.i.i.i = phi i32 [ %i.amb, %bb.ct ], [ %.pre8.pre.i.i.i, %bb.cu ] ; 2 uses
  %.not.i.i.i243.i = icmp eq i32 %i.amf, 0
  br i1 %.not.i.i.i243.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertIPKS1_vEEPS1_S6_T_S7_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  %.pre61.i.i = load ptr, ptr %i.aly, align 8, !tbaa !52
  %i.amn = zext i32 %.pre8.i.i.i to i64
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %.pre61.i.i, i64 %i.amn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amo, ptr align 4 %i.amd, i64 %.idx.i, i1 false)
  %.pre.i.i244.i = load i32, ptr %i.ama, align 8, !tbaa !309
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertIPKS1_vEEPS1_S6_T_S7_.exit.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertIPKS1_vEEPS1_S6_T_S7_.exit.i: ; preds = %bb.cv, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  %i.amp = phi i32 [ %.pre8.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i ], [ %.pre.i.i244.i, %bb.cv ]
  %i.amq = add i32 %i.amp, %i.amf
  store i32 %i.amq, ptr %i.ama, align 8, !tbaa !309
  %i.amr = getelementptr inbounds nuw i8, ptr %.096127.i, i64 32 ; 2 uses
  %.not114.i = icmp eq ptr %i.amr, %i.ahf
  br i1 %.not114.i, label %._crit_edge129.i, label %.lr.ph128.i

bb.cw:                                            ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S5_ELj0EEELj0EE10takeVectorEv.exit.i
  call void @_ZN4llvm12LiveRegUnits19accumulateUsedDefedERKNS_12MachineInstrERS0_S4_PKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.061.0153.i, ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull %i.g)
  br label %bb.df

bb.cx:                                            ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S5_ELj0EEELj0EE10takeVectorEv.exit.i
  %.val.i = load ptr, ptr %7, align 8, !tbaa !52  ; 2 uses
  %.val115.i = load i32, ptr %i.dg, align 8, !tbaa !309 ; 2 uses
  %i.ams = zext i32 %.val115.i to i64
  %.idx.i176.i = shl nuw nsw i64 %i.ams, 2
  %i.amt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i176.i
  %.not17.i.i = icmp eq i32 %.val115.i, 0
  br i1 %.not17.i.i, label %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i, label %.lr.ph19.i.i

.lr.ph19.i.i:                                     ; preds = %bb.cx
  %i.amu = load ptr, ptr %i.bf, align 8, !tbaa !504
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 56
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !519, !noalias !1088
  %i.amx = icmp eq ptr %i.amw, null
  br i1 %i.amx, label %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i, label %.lr.ph19.split.preheader.i.i

.lr.ph19.split.preheader.i.i:                     ; preds = %.lr.ph19.i.i
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.061.0153.i, i64 8
  br label %.lr.ph19.split.i.i

.lr.ph19.split.i.i:                               ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, %.lr.ph19.split.preheader.i.i
  %.018.i.i = phi ptr [ %i.aot, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i ], [ %.val.i, %.lr.ph19.split.preheader.i.i ] ; 2 uses
  %i.amz = load i32, ptr %.018.i.i, align 4, !tbaa !187
  %i.ana = load ptr, ptr %i.xv, align 8, !tbaa !409
  %i.anb = zext i32 %i.amz to i64
  %i.anc = getelementptr inbounds nuw [32 x i8], ptr %i.ana, i64 %i.anb ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 4
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !410 ; 3 uses
  %i.anf = load ptr, ptr %i.bf, align 8, !tbaa !504 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 56
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !519, !noalias !1088 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.anh, null
  br i1 %.not17.i.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, label %.lr.ph.i.i177.i

.lr.ph.i.i177.i:                                  ; preds = %.lr.ph19.split.i.i
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !520, !noalias !1088
  %i.ank = zext i32 %i.ane to i64
  %i.anl = getelementptr inbounds nuw [24 x i8], ptr %i.anj, i64 %i.ank
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !522, !noalias !1088 ; 2 uses
  %i.ano = lshr i32 %i.ann, 12
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.anh, i64 %i.anp
  %i.anr = and i32 %i.ann, 4095
  %i.ans = load ptr, ptr %i.bg, align 8, !tbaa !52
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i, %.lr.ph.i.i177.i
  %.sroa.510.019.i.i.i = phi ptr [ %i.anq, %.lr.ph.i.i177.i ], [ %i.aob, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i ] ; 2 uses
  %.sroa.9.018.i.i.i = phi i32 [ %i.anr, %.lr.ph.i.i177.i ], [ %i.aoe, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i ] ; 3 uses
  %i.ant = and i32 %.sroa.9.018.i.i.i, 63
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = shl nuw i64 1, %i.anu
  %i.anw = lshr i32 %.sroa.9.018.i.i.i, 6
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.anx
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !59
  %i.aoa = and i64 %i.anv, %i.anz
  %.not16.i.i.i = icmp eq i64 %i.aoa, 0
  br i1 %.not16.i.i.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i:       ; preds = %bb.cy
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i.i.i, i64 2
  %i.aoc = load i16, ptr %.sroa.510.019.i.i.i, align 2, !tbaa !523 ; 2 uses
  %i.aod = sext i16 %i.aoc to i32
  %i.aoe = add i32 %.sroa.9.018.i.i.i, %i.aod
  %.not.i.i.i.i181.i = icmp eq i16 %i.aoc, 0
  br i1 %.not.i.i.i.i181.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, label %bb.cy

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i: ; preds = %bb.cy
  %13 = load ptr, ptr %i.amy, align 8, !tbaa !395 ; 2 uses
  %.not1015.i.i = icmp eq ptr %13, %i.gj
  br i1 %.not1015.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, label %.lr.ph.i178.i

.lr.ph.i178.i:                                    ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.01.016.i.i = phi ptr [ %i.aos, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %13, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i ] ; 7 uses
  %i.aof = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.016.i.i, i32 %i.ane, ptr noundef nonnull %i.g, i1 noundef zeroext true) #20
  %.not11.i.i = icmp eq i32 %i.aof, -1
  br i1 %.not11.i.i, label %.critedge.i.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i178.i
  call void @_ZN4llvm12MachineInstr18clearRegisterKillsENS_8RegisterEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.016.i.i, i32 %i.ane, ptr noundef nonnull %i.g) #20
  %i.aog = load i32, ptr %i.anc, align 8
  %i.aoh = or i32 %i.aog, 67108864
  store i32 %i.aoh, ptr %i.anc, align 8
  br label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i178.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.016.i.i, align 8
  %i.aoi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i29.i.i = icmp eq i64 %i.aoi, 0
  br i1 %.not.i.i.i29.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.critedge.i.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.01.016.i.i, i64 44
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !393
  %i.aol = and i32 %i.aok, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.aol, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.aon, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.01.016.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !395 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 44
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !393
  %i.aoq = and i32 %i.aop, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.aoq, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.critedge.i.i
  %.sroa.0.1.i.i.i.i180.i = phi ptr [ %.sroa.01.016.i.i, %.critedge.i.i ], [ %.sroa.01.016.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.aon, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.aor = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i180.i, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !395 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.aos, %i.gj
  br i1 %.not10.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, label %.lr.ph.i178.i

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.cz, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i, %.lr.ph19.split.i.i
  %i.aot = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %.not.i179.i = icmp eq ptr %i.aot, %i.amt
  br i1 %.not.i179.i, label %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i, label %.lr.ph19.split.i.i, !llvm.loop !1054

_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i: ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread.i.i, %.lr.ph19.i.i, %bb.cx
  %i.aou = load ptr, ptr %12, align 8, !tbaa !52
  %i.aov = load i32, ptr %i.ek, align 8, !tbaa !309
  %i.aow = zext i32 %i.aov to i64
  call fastcc void @_ZL11performSinkRN4llvm12MachineInstrERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIS0_Lb0EEENS_8ArrayRefISt4pairIPS0_NS_11SmallVectorINS_8RegisterELj2EEEEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.061.0153.i, ptr noundef nonnull align 8 dereferenceable(360) %.233.i.i.i, ptr %i.afb, ptr %i.aou, i64 %i.aow)
  %.val116.i = load ptr, ptr %8, align 8, !tbaa !52 ; 2 uses
  %.val117.i = load i32, ptr %i.dj, align 8, !tbaa !309 ; 2 uses
  %i.aox = zext i32 %.val117.i to i64
  %.idx.i182.i = shl nuw nsw i64 %i.aox, 2
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %.idx.i182.i
  %.not2.i.i = icmp eq i32 %.val117.i, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i183.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i183.i, %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i
  %i.aoz = load ptr, ptr %7, align 8, !tbaa !52   ; 2 uses
  %i.apa = load i32, ptr %i.dg, align 8, !tbaa !309 ; 2 uses
  %i.apb = zext i32 %i.apa to i64
  %.idx9.i.i = shl nuw nsw i64 %i.apb, 2
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %.idx9.i.i
  %.not214.i.i = icmp eq i32 %i.apa, 0
  br i1 %.not214.i.i, label %_ZL12updateLiveInPN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS4_INS_8RegisterEEE.exit.i, label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i
  %i.apd = getelementptr inbounds nuw i8, ptr %.233.i.i.i, i64 184 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %.233.i.i.i, i64 192 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.233.i.i.i, i64 200 ; 3 uses
  %.pre.i185.i = load ptr, ptr %i.ape, align 8, !tbaa !1089
  %.pre10.i.i = load ptr, ptr %i.apf, align 8, !tbaa !1090
  br label %bb.da

.lr.ph.i183.i:                                    ; preds = %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i, %.lr.ph.i183.i
  %.03.i.i = phi ptr [ %i.aph, %.lr.ph.i183.i ], [ %.val116.i, %_ZL14clearKillFlagsPN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS_12LiveRegUnitsEPKNS_18TargetRegisterInfoE.exit.i ] ; 2 uses
  %i.apg = load i32, ptr %.03.i.i, align 4, !tbaa !187
  call void @_ZN4llvm17MachineBasicBlock26removeLiveInOverlappedWithENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.233.i.i.i, i32 %i.apg) #20
  %i.aph = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 4 ; 2 uses
  %.not.i184.i = icmp eq ptr %i.aph, %i.aoy
  br i1 %.not.i184.i, label %._crit_edge.i.i, label %.lr.ph.i183.i

bb.da:                                            ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i, %.lr.ph7.i.i
  %i.api = phi ptr [ %.pre10.i.i, %.lr.ph7.i.i ], [ %i.aql, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i ] ; 5 uses
  %i.apj = phi ptr [ %.pre.i185.i, %.lr.ph7.i.i ], [ %i.aqm, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i ] ; 4 uses
  %.0205.i.i = phi ptr [ %i.aoz, %.lr.ph7.i.i ], [ %i.aqn, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i ] ; 2 uses
  %i.apk = load i32, ptr %.0205.i.i, align 4, !tbaa !187
  %i.apl = load ptr, ptr %i.xv, align 8, !tbaa !409
  %i.apm = zext i32 %i.apk to i64
  %i.apn = getelementptr inbounds nuw [32 x i8], ptr %i.apl, i64 %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !410 ; 2 uses
  %.not.i.i.i.i186.i = icmp eq ptr %i.apj, %i.api
  br i1 %.not.i.i.i.i186.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 %i.app, ptr %i.apj, align 8, !tbaa !187
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !tbaa !59
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apj, i64 16 ; 2 uses
  store ptr %i.apq, ptr %i.ape, align 8, !tbaa !1089
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i

bb.dc:                                            ; preds = %bb.da
  %i.apr = load ptr, ptr %i.apd, align 8, !tbaa !1091 ; 5 uses
  %i.aps = ptrtoint ptr %i.api to i64
  %i.apt = ptrtoint ptr %i.apr to i64             ; 2 uses
  %i.apu = sub i64 %i.aps, %i.apt                 ; 3 uses
  %i.apv = icmp eq i64 %i.apu, 9223372036854775792
  br i1 %i.apv, label %bb.dd, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.dd:                                            ; preds = %bb.dc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #21
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.dc
  %i.apw = ashr exact i64 %i.apu, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.apw, i64 1)
  %i.apx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.apw ; 2 uses
  %i.apy = icmp ult i64 %i.apx, %i.apw
  %i.apz = call i64 @llvm.umin.i64(i64 %i.apx, i64 576460752303423487)
  %i.aqa = select i1 %i.apy, i64 576460752303423487, i64 %i.apz ; 3 uses
  %.not.i.i.i.i.i.i187.i = icmp ne i64 %i.aqa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i187.i)
  %i.aqb = shl nuw nsw i64 %i.aqa, 4
  %i.aqc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqb) #22 ; 5 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.apu ; 2 uses
  store i32 %i.app, ptr %i.aqd, align 8, !tbaa !187
  %.sroa.57.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i.i.i, align 8, !tbaa !59
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.apr, %i.api
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aqf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aqc, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aqe, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.apr, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1092, !alias.scope !1093
  %i.aqe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aqe, %i.api
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1058

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aqc, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aqf, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.apr, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i.i
  %i.aqh = load ptr, ptr %i.apf, align 8, !tbaa !1090
  %i.aqi = ptrtoint ptr %i.aqh to i64
  %i.aqj = sub i64 %i.aqi, %i.apt
  call void @_ZdlPvm(ptr noundef nonnull %i.apr, i64 noundef %i.aqj) #24
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.de, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i.i
  store ptr %i.aqc, ptr %i.apd, align 8, !tbaa !1091
  store ptr %i.aqg, ptr %i.ape, align 8, !tbaa !1089
  %i.aqk = getelementptr inbounds nuw [16 x i8], ptr %i.aqc, i64 %i.aqa ; 2 uses
  store ptr %i.aqk, ptr %i.apf, align 8, !tbaa !1090
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i

_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i: ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.db
  %i.aql = phi ptr [ %i.api, %bb.db ], [ %i.aqk, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.aqm = phi ptr [ %i.apq, %bb.db ], [ %i.aqg, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0205.i.i, i64 4 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.aqn, %i.apc
  br i1 %.not21.i.i, label %_ZL12updateLiveInPN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS4_INS_8RegisterEEE.exit.i, label %bb.da

_ZL12updateLiveInPN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS4_INS_8RegisterEEE.exit.i: ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit.i.i, %._crit_edge.i.i
  call void @_ZN4llvm17MachineBasicBlock17sortUniqueLiveInsEv(ptr noundef nonnull align 8 dereferenceable(360) %.233.i.i.i) #20
  br label %bb.df

bb.df:                                            ; preds = %_ZL12updateLiveInPN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS4_INS_8RegisterEEE.exit.i, %bb.cw
  %.1103.jt5.i = phi i1 [ %.0102155.i, %bb.cw ], [ true, %_ZL12updateLiveInPN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_15SmallVectorImplIjEERKNS4_INS_8RegisterEEE.exit.i ] ; 3 uses
  %i.aqo = load ptr, ptr %12, align 8, !tbaa !52  ; 4 uses
  %i.aqp = load i32, ptr %i.ek, align 8, !tbaa !309 ; 2 uses
  %.not4.i.i188.jt5.i = icmp eq i32 %i.aqp, 0
  br i1 %.not4.i.i188.jt5.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i197.jt5.i, label %.lr.ph.i.preheader.i189.i

.lr.ph.i.preheader.i189.i:                        ; preds = %bb.df
  %i.aqq = zext i32 %i.aqp to i64
  %.idx.i190.i = shl nuw nsw i64 %i.aqq, 5
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %.idx.i190.i
  br label %.lr.ph.i.i191.i

.lr.ph.i.i191.i:                                  ; preds = %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i, %.lr.ph.i.preheader.i189.i
  %.05.i.i192.i = phi ptr [ %i.aqs, %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i ], [ %i.aqr, %.lr.ph.i.preheader.i189.i ] ; 3 uses
  %i.aqs = getelementptr inbounds i8, ptr %.05.i.i192.i, i64 -32 ; 2 uses
  %i.aqt = getelementptr inbounds i8, ptr %.05.i.i192.i, i64 -24
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !52 ; 2 uses
  %i.aqv = getelementptr inbounds i8, ptr %.05.i.i192.i, i64 -8
  %i.aqw = icmp eq ptr %i.aqu, %i.aqv
  br i1 %i.aqw, label %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i191.i
  call void @free(ptr noundef %i.aqu) #20
  br label %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i

_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i: ; preds = %bb.dg, %.lr.ph.i.i191.i
  %.not.i.i194.i = icmp eq ptr %i.aqo, %i.aqs
  br i1 %.not.i.i194.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i195.i, label %.lr.ph.i.i191.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i195.i: ; preds = %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorINS0_8RegisterELj2EEEED2Ev.exit.i.i193.i
  %.pre.i196.i = load ptr, ptr %12, align 8, !tbaa !52 ; 2 uses
  %i.aqx = icmp eq ptr %.pre.i196.i, %i.ej
  br i1 %i.aqx, label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i, label %bb.dh

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i197.jt5.i: ; preds = %bb.df
  %i.aqy = icmp eq ptr %i.aqo, %i.ej
  br i1 %i.aqy, label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i, label %bb.di

bb.dh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i195.i
  call void @free(ptr noundef %.pre.i196.i) #20
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i

bb.di:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i197.jt5.i
  call void @free(ptr noundef %i.aqo) #20
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i

_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i: ; preds = %bb.dh, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i195.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.aqz = load ptr, ptr %i.dv, align 8, !tbaa !52 ; 2 uses
  %i.ara = load i32, ptr %i.dx, align 8, !tbaa !309 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.ara, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i: ; preds = %bb.di, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i197.jt5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.arb = load ptr, ptr %i.dv, align 8, !tbaa !52 ; 3 uses
  %i.arc = load i32, ptr %i.dx, align 8, !tbaa !309 ; 2 uses
  %.not4.i.i.i.jt5.i = icmp eq i32 %i.arc, 0
  br i1 %.not4.i.i.i.jt5.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorINS_8RegisterELj2EEEELb0EE13destroy_rangeEPS7_S9_.exit.i.i.jt5.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i, %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i
  %i.ard = phi i32 [ %i.arc, %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i ], [ %i.ara, %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i ]
  %i.are = phi ptr [ %i.arb, %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.jt5.i ], [ %i.aqz, %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_INS_8RegisterELj2EEEELj0EED2Ev.exit.i ] ; 2 uses
  %i.arf = zext i32 %i.ard to i64
  %.idx.i.i198.i = shl nuw nsw i64 %i.arf, 5
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 %.idx.i.i198.i
end_hunk_0
