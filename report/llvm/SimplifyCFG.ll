Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN12_GLOBAL__N_114SimplifyCFGOpt3runEPN4llvm10BasicBlockE:bb.a
  %i.dez = ptrtoint ptr %.sroa.11.2.lcssa.i.i to i64
  %i.dfa = ptrtoint ptr %.sroa.0134.2.lcssa.i.i to i64
  %i.dfb = sub i64 %i.dez, %i.dfa
  %i.dfc = ashr exact i64 %i.dfb, 4
  call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEE(ptr noundef nonnull align 8 dereferenceable(658) %i.czm, ptr %.sroa.0134.2.lcssa.i.i, i64 %i.dfc) #27
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %._crit_edge194.i.i
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hv) #27
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.dfd = load ptr, ptr %i.hq, align 8, !tbaa !77 ; 2 uses
  %i.dfe = icmp eq ptr %i.dfd, %i.hr
  br i1 %i.dfe, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i.i, label %bb.si

bb.si:                                            ; preds = %bb.sh
  call void @free(ptr noundef %i.dfd) #27
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i.i: ; preds = %bb.si, %bb.sh
  %i.dff = load i32, ptr %i.ii, align 4, !tbaa !273 ; 2 uses
  %i.dfg = icmp eq i32 %i.dff, 0
  br i1 %i.dfg, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit.i.i, label %bb.sj

bb.sj:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i.i
  %i.dfh = load ptr, ptr %26, align 8, !tbaa !274
  %i.dfi = zext i32 %i.dff to i64                 ; 2 uses
  %i.dfj = shl nuw nsw i64 %i.dfi, 3
  %i.dfk = add nuw nsw i64 %i.dfi, 31
  %i.dfl = lshr i64 %i.dfk, 3
  %i.dfm = and i64 %i.dfl, 1073741820
  %i.dfn = add nuw nsw i64 %i.dfm, %i.dfj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dfh, i64 noundef %i.dfn, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit.i.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit.i.i: ; preds = %bb.sj, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.dfo = load ptr, ptr %i.hm, align 8, !tbaa !77 ; 2 uses
  %i.dfp = icmp eq ptr %i.dfo, %i.hn
  br i1 %i.dfp, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i117.i.i, label %bb.sk

bb.sk:                                            ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit.i.i
  call void @free(ptr noundef %i.dfo) #27
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i117.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i117.i.i: ; preds = %bb.sk, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit.i.i
  %i.dfq = load i32, ptr %i.ij, align 4, !tbaa !273 ; 2 uses
  %i.dfr = icmp eq i32 %i.dfq, 0
  br i1 %i.dfr, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit118.i.i, label %bb.sl

bb.sl:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i117.i.i
  %i.dfs = load ptr, ptr %25, align 8, !tbaa !274
  %i.dft = zext i32 %i.dfq to i64                 ; 2 uses
  %i.dfu = shl nuw nsw i64 %i.dft, 3
  %i.dfv = add nuw nsw i64 %i.dft, 31
  %i.dfw = lshr i64 %i.dfv, 3
  %i.dfx = and i64 %i.dfw, 1073741820
  %i.dfy = add nuw nsw i64 %i.dfx, %i.dfu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dfs, i64 noundef %i.dfy, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit118.i.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit118.i.i: ; preds = %bb.sl, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i117.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %.not.i.i.i119.i.i = icmp eq ptr %.sroa.0134.2.lcssa.i.i, null
  br i1 %.not.i.i.i119.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %bb.sm

bb.sm:                                            ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EED2Ev.exit118.i.i
  %i.dfz = ptrtoint ptr %.sroa.24.2.lcssa.i.i to i64
  %i.dga = ptrtoint ptr %.sroa.0134.2.lcssa.i.i to i64
  %i.dgb = sub i64 %i.dfz, %i.dga
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.2.lcssa.i.i, i64 noundef %i.dgb) #31
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

.critedge.i.i115:                                 ; preds = %bb.rl, %bb.rk, %bb.rj, %bb.ri, %.lr.ph.i.i113
  %i.dgc = getelementptr inbounds nuw i8, ptr %.sroa.0156.0179.i.i, i64 8
  %.sroa.0156.0.i.i = load ptr, ptr %i.dgc, align 8, !tbaa !114 ; 2 uses
  %.not163.i.i = icmp eq ptr %.sroa.0156.0.i.i, null
  br i1 %.not163.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %.lr.ph.i.i113

bb.sn:                                            ; preds = %.critedge.i
  %i.dgd = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114SimplifyCFGOpt18simplifyCondBranchEPN4llvm10CondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull %i.cul, ptr noundef nonnull align 8 dereferenceable(104) %71)
  %i.dge = or i1 %i.iw, %i.dgd
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.so:                                            ; preds = %.critedge.i
  %i.dgf = getelementptr inbounds i8, ptr %i.cuk, i64 -56 ; 3 uses
  %i.dgg = load ptr, ptr %i.dgf, align 8, !tbaa !106
  %i.dgh = load i8, ptr %i.dgg, align 8, !tbaa !107
  %i.dgi = icmp eq i8 %i.dgh, 87
  br i1 %i.dgi, label %bb.sp, label %bb.tj

bb.sp:                                            ; preds = %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.dgj = load ptr, ptr %i.cum, align 8, !tbaa !80 ; 7 uses
  %i.dgk = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dgj) #27
  %.fca.0.extract35.i.i = extractvalue { ptr, i64 } %i.dgk, 0 ; 2 uses
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgj, i64 48
  %i.dgm = load ptr, ptr %i.dgl, align 8, !tbaa !110 ; 2 uses
  %.not29.i.i.i85 = icmp eq ptr %.fca.0.extract35.i.i, %i.dgm
  br i1 %.not29.i.i.i85, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94, label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %bb.sp, %bb.ss
  %.sroa.023.030.i.i.i87 = phi ptr [ %.sroa.023.0.i.i.i92, %bb.ss ], [ %.fca.0.extract35.i.i, %bb.sp ] ; 3 uses
  %i.dgn = getelementptr inbounds i8, ptr %.sroa.023.030.i.i.i87, i64 -24
  %i.dgo = load i8, ptr %i.dgn, align 8, !tbaa !107
  %i.dgp = icmp eq i8 %i.dgo, 88
  br i1 %i.dgp, label %bb.sq, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i

bb.sq:                                            ; preds = %.lr.ph.i.i.i86
  %i.dgq = getelementptr inbounds i8, ptr %.sroa.023.030.i.i.i87, i64 -56
  %i.dgr = load ptr, ptr %i.dgq, align 8, !tbaa !106 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.dgr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.dgs = load i8, ptr %i.dgr, align 8, !tbaa !107
  %i.dgt = icmp eq i8 %i.dgs, 14
  br i1 %i.dgt, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i89, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i89: ; preds = %bb.sr
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgr, i64 32
  %i.dgv = load i32, ptr %i.dgu, align 8
  %i.dgw = and i32 %i.dgv, 8192
  %.not.i.i.i.i.i90 = icmp eq i32 %i.dgw, 0
  br i1 %.not.i.i.i.i.i90, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i89
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgr, i64 36
  %i.dgy = load i32, ptr %i.dgx, align 4, !tbaa !135
  switch i32 %i.dgy, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i [
    i32 78, label %bb.ss
    i32 80, label %bb.ss
    i32 79, label %bb.ss
    i32 220, label %bb.ss
  ]

bb.ss:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91
  %i.dgz = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i.i.i87, i64 8
  %.sroa.023.0.i.i.i92 = load ptr, ptr %i.dgz, align 8 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.sroa.023.0.i.i.i92, %i.dgm
  br i1 %.not.i.i.i93, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94, label %.lr.ph.i.i.i86

_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94: ; preds = %bb.ss, %bb.sp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %28, i8 0, i64 24, i1 false)
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !77
  store i32 0, ptr %i.hh, align 8, !tbaa !112
  store i32 4, ptr %i.hi, align 4, !tbaa !113
  %i.dha = load ptr, ptr %i.dgf, align 8, !tbaa !106 ; 3 uses
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 4 ; 3 uses
  %i.dhc = load i32, ptr %i.dhb, align 4
  %i.dhd = and i32 %i.dhc, 268435455              ; 2 uses
  %.not116.i.i = icmp eq i32 %i.dhd, 0
  br i1 %.not116.i.i, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94
  %i.dhe = getelementptr inbounds i8, ptr %i.dha, i64 -8 ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dha, i64 76 ; 2 uses
  %i.dhg = zext nneg i32 %i.dhd to i64
  br label %bb.st

._crit_edge.i.i99:                                ; preds = %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i
  %.pre.i.i100 = load i32, ptr %i.hh, align 8, !tbaa !112 ; 2 uses
  %.pre131.pre.i.i = load ptr, ptr %i.hf, align 8, !tbaa !77 ; 3 uses
  %.not.i.i68.i.i = icmp eq i32 %.pre.i.i100, 0
  br i1 %.not.i.i68.i.i, label %bb.tg, label %.lr.ph126.i.i

bb.st:                                            ; preds = %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i, %.lr.ph.i.i95
  %indvars.iv.i.i96 = phi i64 [ 0, %.lr.ph.i.i95 ], [ %indvars.iv.next.i.i97, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.dhh = load ptr, ptr %i.dhe, align 8, !tbaa !114 ; 2 uses
  %i.dhi = load i32, ptr %i.dhf, align 4, !tbaa !148
  %i.dhj = zext i32 %i.dhi to i64
  %i.dhk = getelementptr inbounds nuw [32 x i8], ptr %i.dhh, i64 %i.dhj
  %i.dhl = getelementptr inbounds nuw [8 x i8], ptr %i.dhk, i64 %indvars.iv.i.i96
  %i.dhm = load ptr, ptr %i.dhl, align 8, !tbaa !116 ; 2 uses
  store ptr %i.dhm, ptr %i.i, align 8, !tbaa !116
  %i.dhn = getelementptr inbounds nuw [32 x i8], ptr %i.dhh, i64 %indvars.iv.i.i96
  %i.dho = load ptr, ptr %i.dhn, align 8, !tbaa !106
  %i.dhp = call noundef ptr @_ZNK4llvm10BasicBlock18getUniqueSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dhm) #27
  %.not65.i.i = icmp eq ptr %i.dhp, %i.dgj
  br i1 %.not65.i.i, label %bb.su, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i

bb.su:                                            ; preds = %bb.st
  %i.dhq = load ptr, ptr %i.i, align 8, !tbaa !116
  %i.dhr = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dhq) #27
  %.fca.0.extract.i.i106 = extractvalue { ptr, i64 } %i.dhr, 0 ; 3 uses
  %i.dhs = getelementptr inbounds i8, ptr %.fca.0.extract.i.i106, i64 -24 ; 2 uses
  %i.dht = load i8, ptr %i.dhs, align 8, !tbaa !107
  %i.dhu = icmp eq i8 %i.dht, 98
  %spec.select.i.i.i.i.i = select i1 %i.dhu, ptr %i.dhs, ptr null
  %.not66.i.i = icmp eq ptr %i.dho, %spec.select.i.i.i.i.i
  br i1 %.not66.i.i, label %bb.sv, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i

bb.sv:                                            ; preds = %bb.su
  %i.dhv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i106, i64 16
  %i.dhw = load ptr, ptr %i.dhv, align 8, !tbaa !80
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhw, i64 48
  %i.dhy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i106, i64 8
  %i.dhz = load ptr, ptr %i.dhy, align 8, !tbaa !130 ; 2 uses
  %i.dia = icmp eq ptr %i.dhz, %i.dhx             ; 2 uses
  %72 = getelementptr inbounds i8, ptr %i.dhz, i64 -24
  %spec.select.i.i.i.i107 = select i1 %i.dia, ptr null, ptr %72
  %i.dib = load ptr, ptr %i.i, align 8, !tbaa !116
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dib, i64 48
  %i.did = load ptr, ptr %i.dic, align 8, !tbaa !110 ; 2 uses
  %73 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i107, i64 24
  %spec.select.i.i.i.i.i.i108 = select i1 %i.dia, ptr null, ptr %73 ; 2 uses
  %.not29.i78.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i108, %i.did
  br i1 %.not29.i78.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.i.i, label %.lr.ph.i79.i.i

.lr.ph.i79.i.i:                                   ; preds = %bb.sv, %bb.sy
  %.sroa.023.030.i80.i.i = phi ptr [ %.sroa.023.0.i86.i.i, %bb.sy ], [ %spec.select.i.i.i.i.i.i108, %bb.sv ] ; 3 uses
  %i.die = getelementptr inbounds i8, ptr %.sroa.023.030.i80.i.i, i64 -24
  %i.dif = load i8, ptr %i.die, align 8, !tbaa !107
  %i.dig = icmp eq i8 %i.dif, 88
  br i1 %i.dig, label %bb.sw, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i

bb.sw:                                            ; preds = %.lr.ph.i79.i.i
  %i.dih = getelementptr inbounds i8, ptr %.sroa.023.030.i80.i.i, i64 -56
  %i.dii = load ptr, ptr %i.dih, align 8, !tbaa !106 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i82.i.i = icmp eq ptr %i.dii, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i82.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.dij = load i8, ptr %i.dii, align 8, !tbaa !107
  %i.dik = icmp eq i8 %i.dij, 14
  br i1 %i.dik, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i83.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i83.i.i: ; preds = %bb.sx
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dii, i64 32
  %i.dim = load i32, ptr %i.dil, align 8
  %i.din = and i32 %i.dim, 8192
  %.not.i.i.i84.i.i = icmp eq i32 %i.din, 0
  br i1 %.not.i.i.i84.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i83.i.i
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dii, i64 36
  %i.dip = load i32, ptr %i.dio, align 4, !tbaa !135
  switch i32 %i.dip, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i [
    i32 78, label %bb.sy
    i32 80, label %bb.sy
    i32 79, label %bb.sy
    i32 220, label %bb.sy
  ]

bb.sy:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i
  %i.diq = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i80.i.i, i64 8
  %.sroa.023.0.i86.i.i = load ptr, ptr %i.diq, align 8 ; 2 uses
  %.not.i87.i.i109 = icmp eq ptr %.sroa.023.0.i86.i.i, %i.did
  br i1 %.not.i87.i.i109, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.i.i, label %.lr.ph.i79.i.i

_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.i.i: ; preds = %bb.sy, %bb.sv
  %i.dir = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  br label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i

_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.thread.i.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i85.i.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i83.i.i, %bb.sx, %bb.sw, %.lr.ph.i79.i.i, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit88.i.i, %bb.su, %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %indvars.iv.next.i.i97 = add nuw nsw i64 %indvars.iv.i.i96, 1 ; 2 uses
  %.not.i.i98 = icmp eq i64 %indvars.iv.next.i.i97, %i.dhg
  br i1 %.not.i.i98, label %._crit_edge.i.i99, label %bb.st, !llvm.loop !642

.lr.ph126.i.i:                                    ; preds = %._crit_edge.i.i99
  %i.dis = zext i32 %.pre.i.i100 to i64
  %.idx.i.i101 = shl nuw nsw i64 %i.dis, 3
  %i.dit = getelementptr inbounds nuw i8, ptr %.pre131.pre.i.i, i64 %.idx.i.i101
  %i.diu = getelementptr inbounds i8, ptr %i.cuk, i64 -16
  %i.div = ptrtoint ptr %i.dgj to i64
  %i.diw = or i64 %i.div, 4
  br label %bb.sz

._crit_edge127.i.i:                               ; preds = %bb.td
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dgj, i64 16
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !108
  %i.diz = icmp eq ptr %i.diy, null
  br i1 %i.diz, label %bb.te, label %bb.tf

bb.sz:                                            ; preds = %bb.td, %.lr.ph126.i.i
  %.059124.i.i = phi ptr [ %.pre131.pre.i.i, %.lr.ph126.i.i ], [ %i.dki, %bb.td ] ; 2 uses
  %i.dja = load ptr, ptr %.059124.i.i, align 8, !tbaa !116 ; 6 uses
  %i.djb = load i32, ptr %i.dhb, align 4
  %i.djc = and i32 %i.djb, 268435455              ; 2 uses
  %.not11.i118.i.i = icmp eq i32 %i.djc, 0
  br i1 %.not11.i118.i.i, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.sz, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i104
  %i.djd = phi i32 [ %i.djn, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i104 ], [ %i.djc, %bb.sz ]
  %i.dje = load ptr, ptr %i.dhe, align 8, !tbaa !114
  %i.djf = load i32, ptr %i.dhf, align 4, !tbaa !148
  %i.djg = zext i32 %i.djf to i64
  %i.djh = getelementptr inbounds nuw [32 x i8], ptr %i.dje, i64 %i.djg
  %i.dji = zext nneg i32 %i.djd to i64
  br label %bb.ta

bb.ta:                                            ; preds = %bb.tb, %.lr.ph.i89.i.i
  %indvars.iv.i.i.i102 = phi i64 [ 0, %.lr.ph.i89.i.i ], [ %indvars.iv.next.i.i.i103, %bb.tb ] ; 2 uses
  %i.djj = getelementptr inbounds nuw [8 x i8], ptr %i.djh, i64 %indvars.iv.i.i.i102
  %i.djk = load ptr, ptr %i.djj, align 8, !tbaa !116
  %i.djl = icmp eq ptr %i.djk, %i.dja
  br i1 %i.djl, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i104, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %indvars.iv.next.i.i.i103 = add nuw nsw i64 %indvars.iv.i.i.i102, 1 ; 2 uses
  %.not.i90.i.i = icmp eq i64 %indvars.iv.next.i.i.i103, %i.dji
  br i1 %.not.i90.i.i, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i, label %bb.ta, !llvm.loop !3

_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i104: ; preds = %bb.ta
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.dgj, ptr noundef %i.dja, i1 noundef zeroext true) #27
  %i.djm = load i32, ptr %i.dhb, align 4
  %i.djn = and i32 %i.djm, 268435455              ; 2 uses
  %.not11.i.i.i105 = icmp eq i32 %i.djn, 0
  br i1 %.not11.i.i.i105, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i, label %.lr.ph.i89.i.i, !llvm.loop !643

_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i: ; preds = %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i104, %bb.tb, %bb.sz
  %i.djo = getelementptr inbounds nuw i8, ptr %i.dja, i64 16
  %i.djp = load ptr, ptr %i.djo, align 8, !tbaa !108 ; 2 uses
  %.not114119.i.i = icmp eq ptr %i.djp, null
  br i1 %.not114119.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i

._crit_edge122.i.i:                               ; preds = %.lr.ph121.i.i, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i
  %i.djq = getelementptr inbounds nuw i8, ptr %i.dja, i64 48
  %i.djr = load ptr, ptr %i.djq, align 8, !tbaa !110
  %i.djs = getelementptr inbounds i8, ptr %i.djr, i64 -24
  %i.djt = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.djs) #27 ; 0 uses
  %i.dju = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #27
  %i.djv = load ptr, ptr %i.diu, align 8, !tbaa !123
  %i.djw = load ptr, ptr %i.djv, align 8, !tbaa !236, !nonnull !74, !align !229
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull %i.dja) #27
  %i.djx = load ptr, ptr %29, align 8
  %i.djy = load i64, ptr %i.hj, align 8
  call void @_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.dju, ptr noundef nonnull align 8 dereferenceable(8) %i.djw, ptr %i.djx, i64 %i.djy) #27
  %i.djz = load ptr, ptr %i.q, align 8, !tbaa !225 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.djz, null
  br i1 %.not64.i.i, label %bb.td, label %bb.tc

.lr.ph121.i.i:                                    ; preds = %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i, %.lr.ph121.i.i
  %.sroa.096.0120.i.i = phi ptr [ %i.dkb, %.lr.ph121.i.i ], [ %i.djp, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.thread.i.i ] ; 2 uses
  %i.dka = getelementptr inbounds nuw i8, ptr %.sroa.096.0120.i.i, i64 8
  %i.dkb = load ptr, ptr %i.dka, align 8, !tbaa !109 ; 2 uses
  %i.dkc = getelementptr inbounds nuw i8, ptr %.sroa.096.0120.i.i, i64 24
  %i.dkd = load ptr, ptr %i.dkc, align 8, !tbaa !115
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkd, i64 40
  %i.dkf = load ptr, ptr %i.dke, align 8, !tbaa !80
  %i.dkg = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.dkh = call noundef ptr @_ZN4llvm16removeUnwindEdgeEPNS_10BasicBlockEPNS_14DomTreeUpdaterE(ptr noundef %i.dkf, ptr noundef %i.dkg) #27 ; 0 uses
  %.not114.i.i = icmp eq ptr %i.dkb, null
  br i1 %.not114.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i

bb.tc:                                            ; preds = %._crit_edge122.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  store ptr %i.dja, ptr %30, align 8, !tbaa !182
  store i64 %i.diw, ptr %i.hk, align 8
  call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEE(ptr noundef nonnull align 8 dereferenceable(658) %i.djz, ptr nonnull %30, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %._crit_edge122.i.i
  %i.dki = getelementptr inbounds nuw i8, ptr %.059124.i.i, i64 8 ; 2 uses
  %.not62.i.i = icmp eq ptr %i.dki, %i.dit
  br i1 %.not62.i.i, label %._crit_edge127.i.i, label %bb.sz

bb.te:                                            ; preds = %._crit_edge127.i.i
  %i.dkj = load ptr, ptr %i.q, align 8, !tbaa !225
  call void @_ZN4llvm15DeleteDeadBlockEPNS_10BasicBlockEPNS_14DomTreeUpdaterEb(ptr noundef nonnull %i.dgj, ptr noundef %i.dkj, i1 noundef zeroext false) #27
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %._crit_edge127.i.i
  %i.dkk = load i32, ptr %i.hh, align 8, !tbaa !112
  %.not.i.i94.i.i = icmp ne i32 %i.dkk, 0
  %.pre130.i.i = load ptr, ptr %i.hf, align 8, !tbaa !77
  br label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %._crit_edge.i.i99
  %i.dkl = phi ptr [ %.pre130.i.i, %bb.tf ], [ %.pre131.pre.i.i, %._crit_edge.i.i99 ] ; 2 uses
  %.0.i.i = phi i1 [ %.not.i.i94.i.i, %bb.tf ], [ false, %._crit_edge.i.i99 ] ; 2 uses
  %i.dkm = icmp eq ptr %i.dkl, %i.hg
  br i1 %i.dkm, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, label %bb.th

bb.th:                                            ; preds = %bb.tg
  call void @free(ptr noundef %i.dkl) #27
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i: ; preds = %bb.th, %bb.tg, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94
  %.0150.i.i = phi i1 [ %.0.i.i, %bb.tg ], [ %.0.i.i, %bb.th ], [ false, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i94 ]
  %i.dkn = load i32, ptr %i.hl, align 4, !tbaa !273 ; 2 uses
  %i.dko = icmp eq i32 %i.dkn, 0
  br i1 %i.dko, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i.i, label %bb.ti

bb.ti:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i
  %i.dkp = load ptr, ptr %28, align 8, !tbaa !274
  %i.dkq = zext i32 %i.dkn to i64                 ; 2 uses
  %i.dkr = shl nuw nsw i64 %i.dkq, 3
  %i.dks = add nuw nsw i64 %i.dkq, 31
  %i.dkt = lshr i64 %i.dks, 3
  %i.dku = and i64 %i.dkt, 1073741820
  %i.dkv = add nuw nsw i64 %i.dku, %i.dkr
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dkp, i64 noundef %i.dkv, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i.i: ; preds = %bb.ti, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.dkw = or i1 %i.iw, %.0150.i.i
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i

_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyCommonResumeEPN4llvm10ResumeInstE.exit.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i89, %bb.sr, %bb.sq, %.lr.ph.i.i.i86, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i.i
  %.1.i.i = phi i1 [ %i.dkw, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i.i ], [ %i.iw, %.lr.ph.i.i.i86 ], [ %i.iw, %bb.sq ], [ %i.iw, %bb.sr ], [ %i.iw, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i89 ], [ %i.iw, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tj:                                            ; preds = %bb.so
  %i.dkx = load ptr, ptr %i.cum, align 8, !tbaa !80
  %i.dky = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dkx) #27
  %.fca.0.extract1.i = extractvalue { ptr, i64 } %i.dky, 0
  %i.dkz = getelementptr inbounds i8, ptr %.fca.0.extract1.i, i64 -24
  %i.dla = load i8, ptr %i.dkz, align 8, !tbaa !107
  %i.dlb = icmp eq i8 %i.dla, 98
  br i1 %i.dlb, label %bb.tk, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tk:                                            ; preds = %bb.tj
  %i.dlc = load ptr, ptr %i.dgf, align 8, !tbaa !106
  %i.dld = load ptr, ptr %i.cum, align 8, !tbaa !80
  %i.dle = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dld) #27
  %.fca.0.extract.i = extractvalue { ptr, i64 } %i.dle, 0
  %i.dlf = getelementptr inbounds i8, ptr %.fca.0.extract.i, i64 -24
  %i.dlg = icmp eq ptr %i.dlc, %i.dlf
  br i1 %i.dlg, label %bb.tl, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tl:                                            ; preds = %bb.tk
  %i.dlh = load ptr, ptr %i.cum, align 8, !tbaa !80 ; 3 uses
  %i.dli = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dlh) #27
  %.fca.0.extract.i18.i = extractvalue { ptr, i64 } %i.dli, 0 ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i18.i, i64 16
  %i.dlk = load ptr, ptr %i.dlj, align 8, !tbaa !80
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dlk, i64 48
  %i.dlm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i18.i, i64 8
  %i.dln = load ptr, ptr %i.dlm, align 8, !tbaa !130 ; 2 uses
  %i.dlo = icmp eq ptr %i.dln, %i.dll             ; 2 uses
  %74 = getelementptr inbounds i8, ptr %i.dln, i64 -24
  %spec.select.i.i.i19.i = select i1 %i.dlo, ptr null, ptr %74
  %75 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i19.i, i64 24
  %spec.select.i.i.i.i.i20.i = select i1 %i.dlo, ptr null, ptr %75 ; 2 uses
  %.not29.i.i21.i = icmp eq ptr %spec.select.i.i.i.i.i20.i, %i.cuk
  br i1 %.not29.i.i21.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i, label %.lr.ph.i.i22.i

.lr.ph.i.i22.i:                                   ; preds = %bb.tl, %bb.to
  %.sroa.023.030.i.i23.i = phi ptr [ %.sroa.023.0.i.i28.i, %bb.to ], [ %spec.select.i.i.i.i.i20.i, %bb.tl ] ; 3 uses
  %i.dlp = getelementptr inbounds i8, ptr %.sroa.023.030.i.i23.i, i64 -24
  %i.dlq = load i8, ptr %i.dlp, align 8, !tbaa !107
  %i.dlr = icmp eq i8 %i.dlq, 88
  br i1 %i.dlr, label %bb.tm, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tm:                                            ; preds = %.lr.ph.i.i22.i
  %i.dls = getelementptr inbounds i8, ptr %.sroa.023.030.i.i23.i, i64 -56
  %i.dlt = load ptr, ptr %i.dls, align 8, !tbaa !106 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i24.i = icmp eq ptr %i.dlt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i24.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.dlu = load i8, ptr %i.dlt, align 8, !tbaa !107
  %i.dlv = icmp eq i8 %i.dlu, 14
  br i1 %i.dlv, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i25.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i25.i: ; preds = %bb.tn
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dlt, i64 32
  %i.dlx = load i32, ptr %i.dlw, align 8
  %i.dly = and i32 %i.dlx, 8192
  %.not.i.i.i.i26.i = icmp eq i32 %i.dly, 0
  br i1 %.not.i.i.i.i26.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i25.i
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dlt, i64 36
  %i.dma = load i32, ptr %i.dlz, align 4, !tbaa !135
  switch i32 %i.dma, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit [
    i32 78, label %bb.to
    i32 80, label %bb.to
    i32 79, label %bb.to
    i32 220, label %bb.to
  ]

bb.to:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i27.i
  %i.dmb = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i.i23.i, i64 8
  %.sroa.023.0.i.i28.i = load ptr, ptr %i.dmb, align 8 ; 2 uses
  %.not.i.i29.i = icmp eq ptr %.sroa.023.0.i.i28.i, %i.cuk
  br i1 %.not.i.i29.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i, label %.lr.ph.i.i22.i

_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i: ; preds = %bb.to, %bb.tl
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dlh, i64 16
  %i.dmd = load ptr, ptr %i.dmc, align 8, !tbaa !108 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.dmd, null
  br i1 %.not27.i.i, label %._crit_edge.i33.i, label %.lr.ph.i31.i

._crit_edge.i33.i:                                ; preds = %.lr.ph.i31.i, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i
  %i.dme = load ptr, ptr %i.q, align 8, !tbaa !225
  call void @_ZN4llvm15DeleteDeadBlockEPNS_10BasicBlockEPNS_14DomTreeUpdaterEb(ptr noundef nonnull %i.dlh, ptr noundef %i.dme, i1 noundef zeroext false) #27
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

.lr.ph.i31.i:                                     ; preds = %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i, %.lr.ph.i31.i
  %.sroa.015.028.i.i = phi ptr [ %i.dmg, %.lr.ph.i31.i ], [ %i.dmd, %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i30.i ] ; 2 uses
  %i.dmf = getelementptr inbounds nuw i8, ptr %.sroa.015.028.i.i, i64 8
  %i.dmg = load ptr, ptr %i.dmf, align 8, !tbaa !109 ; 2 uses
  %i.dmh = getelementptr inbounds nuw i8, ptr %.sroa.015.028.i.i, i64 24
  %i.dmi = load ptr, ptr %i.dmh, align 8, !tbaa !115
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 40
  %i.dmk = load ptr, ptr %i.dmj, align 8, !tbaa !80
  %i.dml = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.dmm = call noundef ptr @_ZN4llvm16removeUnwindEdgeEPNS_10BasicBlockEPNS_14DomTreeUpdaterE(ptr noundef %i.dmk, ptr noundef %i.dml) #27 ; 0 uses
  %.not.i32.i = icmp eq ptr %i.dmg, null
  br i1 %.not.i32.i, label %._crit_edge.i33.i, label %.lr.ph.i31.i

bb.tp:                                            ; preds = %.critedge.i
  %i.dmn = getelementptr inbounds i8, ptr %i.cuk, i64 -20 ; 3 uses
  %i.dmo = load i32, ptr %i.dmn, align 4          ; 3 uses
  %i.dmp = and i32 %i.dmo, 268435455
  %i.dmq = zext nneg i32 %i.dmp to i64
  %i.dmr = sub nsw i64 0, %i.dmq
  %i.dms = getelementptr inbounds [32 x i8], ptr %i.cul, i64 %i.dmr ; 2 uses
  %i.dmt = load ptr, ptr %i.dms, align 8, !tbaa !106
  %i.dmu = load i8, ptr %i.dmt, align 8, !tbaa !107
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dmu, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  %i.dmv = getelementptr inbounds i8, ptr %i.cuk, i64 -22 ; 2 uses
  %i.dmw = load i16, ptr %i.dmv, align 2, !tbaa !299
  %i.dmx = trunc i16 %i.dmw to i1
  br i1 %i.dmx, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i, label %bb.tt

_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i: ; preds = %bb.tq
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.dms, i64 32
  %i.dmz = load ptr, ptr %i.dmy, align 8, !tbaa !106 ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.dmz, null
  br i1 %.not.i.i81, label %bb.tt, label %bb.tr

bb.tr:                                            ; preds = %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i
  %i.dna = call noundef ptr @_ZNK4llvm10BasicBlock20getSinglePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dmz) #27
  %i.dnb = load ptr, ptr %i.cum, align 8, !tbaa !80
  %.not18.i.i = icmp eq ptr %i.dna, %i.dnb
  br i1 %.not18.i.i, label %bb.ts, label %._crit_edge.i82

._crit_edge.i82:                                  ; preds = %bb.tr
  %.pre.i83 = load i32, ptr %i.dmn, align 4
  br label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.dmz, i64 56
  %i.dnd = load ptr, ptr %i.dnc, align 8, !tbaa !130
  %i.dne = getelementptr inbounds i8, ptr %i.dnd, i64 -24 ; 3 uses
  %i.dnf = load i8, ptr %i.dne, align 8, !tbaa !107
  %i.dng = icmp eq i8 %i.dnf, 83
  %.pre14.i = load i32, ptr %i.dmn, align 4       ; 2 uses
  br i1 %i.dng, label %_ZL15mergeCleanupPadPN4llvm17CleanupReturnInstE.exit.i, label %bb.tt

_ZL15mergeCleanupPadPN4llvm17CleanupReturnInstE.exit.i: ; preds = %bb.ts
  %i.dnh = and i32 %.pre14.i, 268435455
  %i.dni = zext nneg i32 %i.dnh to i64
  %i.dnj = sub nsw i64 0, %i.dni
  %i.dnk = getelementptr inbounds [32 x i8], ptr %i.cul, i64 %i.dnj
  %i.dnl = load ptr, ptr %i.dnk, align 8, !tbaa !106
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dne, ptr noundef %i.dnl) #27
  %i.dnm = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dne) #27 ; 0 uses
  %i.dnn = load ptr, ptr %i.cum, align 8, !tbaa !80
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef %i.dnn) #27
  %i.dno = load ptr, ptr %31, align 8
  %i.dnp = load i64, ptr %i.he, align 8
  %i.dnq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #27
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.dnq, ptr noundef nonnull %i.dmz, ptr %i.dno, i64 %i.dnp) #27
  %i.dnr = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cul) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tt:                                            ; preds = %bb.ts, %._crit_edge.i82, %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i, %bb.tq
  %i.dns = phi i32 [ %.pre.i83, %._crit_edge.i82 ], [ %i.dmo, %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i.i ], [ %.pre14.i, %bb.ts ], [ %i.dmo, %bb.tq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %i.dnt = load ptr, ptr %i.q, align 8, !tbaa !225 ; 7 uses
  %i.dnu = load ptr, ptr %i.cum, align 8, !tbaa !80 ; 16 uses
  %i.dnv = and i32 %i.dns, 268435455
  %i.dnw = zext nneg i32 %i.dnv to i64
  %i.dnx = sub nsw i64 0, %i.dnw
  %i.dny = getelementptr inbounds [32 x i8], ptr %i.cul, i64 %i.dnx ; 2 uses
  %i.dnz = load ptr, ptr %i.dny, align 8, !tbaa !106 ; 3 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 40
  %i.dob = load ptr, ptr %i.doa, align 8, !tbaa !80 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.dob, %i.dnu
  br i1 %.not.i5.i, label %bb.tu, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tu:                                            ; preds = %bb.tt
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dnz, i64 16
  %i.dod = load ptr, ptr %i.doc, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dod, null
  br i1 %.not.i.i.i55, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i:             ; preds = %bb.tu
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 8
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !109
  %i.dog = icmp eq ptr %i.dof, null
  br i1 %i.dog, label %bb.tv, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tv:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dob, i64 48
  %i.doi = getelementptr inbounds nuw i8, ptr %i.dnz, i64 32
  %i.doj = load ptr, ptr %i.doi, align 8, !tbaa !130 ; 2 uses
  %i.dok = icmp eq ptr %i.doj, %i.doh             ; 2 uses
  %76 = getelementptr inbounds i8, ptr %i.doj, i64 -24
  %spec.select.i.i.i.i = select i1 %i.dok, ptr null, ptr %76
  %77 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %spec.select.i.i.i.i.i.i = select i1 %i.dok, ptr null, ptr %77 ; 2 uses
  %.not29.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, %i.cuk
  br i1 %.not29.i.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %bb.tv, %bb.ty
  %.sroa.023.030.i.i.i = phi ptr [ %.sroa.023.0.i.i.i, %bb.ty ], [ %spec.select.i.i.i.i.i.i, %bb.tv ] ; 3 uses
  %i.dol = getelementptr inbounds i8, ptr %.sroa.023.030.i.i.i, i64 -24
  %i.dom = load i8, ptr %i.dol, align 8, !tbaa !107
  %i.don = icmp eq i8 %i.dom, 88
  br i1 %i.don, label %bb.tw, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

bb.tw:                                            ; preds = %.lr.ph.i.i.i56
  %i.doo = getelementptr inbounds i8, ptr %.sroa.023.030.i.i.i, i64 -56
  %i.dop = load ptr, ptr %i.doo, align 8, !tbaa !106 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dop, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.doq = load i8, ptr %i.dop, align 8, !tbaa !107
  %i.dor = icmp eq i8 %i.doq, 14
  br i1 %i.dor, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i: ; preds = %bb.tx
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dop, i64 32
  %i.dot = load i32, ptr %i.dos, align 8
  %i.dou = and i32 %i.dot, 8192
  %.not.i.i.i.i.i57 = icmp eq i32 %i.dou, 0
  br i1 %.not.i.i.i.i.i57, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dop, i64 36
  %i.dow = load i32, ptr %i.dov, align 4, !tbaa !135
  switch i32 %i.dow, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt20simplifyUncondBranchEPN4llvm12UncondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit [
    i32 78, label %bb.ty
    i32 80, label %bb.ty
    i32 79, label %bb.ty
    i32 220, label %bb.ty
  ]

bb.ty:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i
  %i.dox = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i.i.i, i64 8
  %.sroa.023.0.i.i.i = load ptr, ptr %i.dox, align 8 ; 2 uses
  %.not.i87.i.i = icmp eq ptr %.sroa.023.0.i.i.i, %i.cuk
  br i1 %.not.i87.i.i, label %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i, label %.lr.ph.i.i.i56

_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i: ; preds = %bb.ty, %bb.tv
  %i.doy = load i16, ptr %i.dmv, align 2, !tbaa !299
  %i.doz = trunc i16 %i.doy to i1
  br i1 %i.doz, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i6.i, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.thread.i.i

_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i6.i: ; preds = %_ZL19isCleanupBlockEmptyN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit.i.i
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.dny, i64 32
  %i.dpb = load ptr, ptr %i.dpa, align 8, !tbaa !106 ; 6 uses
  %.not81.i.i = icmp eq ptr %i.dpb, null
  br i1 %.not81.i.i, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.thread.i.i, label %bb.tz

bb.tz:                                            ; preds = %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.i6.i
  %i.dpc = call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dpb) #27 ; 2 uses
  %i.dpd = extractvalue { ptr, ptr } %i.dpc, 0    ; 2 uses
  %i.dpe = extractvalue { ptr, ptr } %i.dpc, 1    ; 2 uses
  %.not212230.i.i = icmp eq ptr %i.dpd, %i.dpe
  br i1 %.not212230.i.i, label %._crit_edge234.i.i, label %.lr.ph233.i.i

.lr.ph233.i.i:                                    ; preds = %bb.tz
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.dnu, i64 16
  br label %bb.ua

._crit_edge234.i.i:                               ; preds = %._crit_edge.i.i70, %bb.tz
  %i.dpg = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dpb) #27 ; 2 uses
  %.fca.0.extract1.i.i.i = extractvalue { ptr, i64 } %i.dpg, 0 ; 2 uses
  %.fca.1.extract2.i.i.i = extractvalue { ptr, i64 } %i.dpg, 1
  %.not.i.i.i.i72 = icmp eq ptr %.fca.0.extract1.i.i.i, null
  %i.dph = and i64 %.fca.1.extract2.i.i.i, 65280
  %i.dpi = or disjoint i64 %i.dph, 1
  %.sroa.2.8.insert.ext.i.i.i = select i1 %.not.i.i.i.i72, i64 1, i64 %i.dpi
  %i.dpj = call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dnu) #27 ; 2 uses
  %i.dpk = extractvalue { ptr, ptr } %i.dpj, 0    ; 2 uses
  %i.dpl = extractvalue { ptr, ptr } %i.dpj, 1    ; 2 uses
  %.not213241.i.i = icmp eq ptr %i.dpk, %i.dpl
  br i1 %.not213241.i.i, label %_ZNK4llvm17CleanupReturnInst13getUnwindDestEv.exit.thread.i.i, label %.lr.ph244.i.i

.lr.ph244.i.i:                                    ; preds = %._crit_edge234.i.i
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dpb, i64 16
  br label %bb.us

bb.ua:                                            ; preds = %._crit_edge.i.i70, %.lr.ph233.i.i
  %.sroa.0199.0231.i.i = phi ptr [ %i.dpd, %.lr.ph233.i.i ], [ %spec.select.i.i.i1.i.i.i71, %._crit_edge.i.i70 ] ; 6 uses
  %i.dpn = getelementptr inbounds nuw i8, ptr %.sroa.0199.0231.i.i, i64 4 ; 5 uses
  %i.dpo = load i32, ptr %i.dpn, align 4
  %i.dpp = and i32 %i.dpo, 268435455              ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.dpp, 0
  %.phi.trans.insert.i.i61 = getelementptr inbounds i8, ptr %.sroa.0199.0231.i.i, i64 -8 ; 3 uses
  %.pre.i.i62 = load ptr, ptr %.phi.trans.insert.i.i61, align 8, !tbaa !114 ; 3 uses
  br i1 %.not11.i.i.i, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i92.i.i

.lr.ph.i92.i.i:                                   ; preds = %bb.ua
  %i.dpq = getelementptr inbounds nuw i8, ptr %.sroa.0199.0231.i.i, i64 76
  %i.dpr = load i32, ptr %i.dpq, align 4, !tbaa !148
  %i.dps = zext i32 %i.dpr to i64
  %i.dpt = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i62, i64 %i.dps
  %i.dpu = zext nneg i32 %i.dpp to i64
  br label %bb.ub

bb.ub:                                            ; preds = %bb.uc, %.lr.ph.i92.i.i
  %indvars.iv.i.i.i63 = phi i64 [ 0, %.lr.ph.i92.i.i ], [ %indvars.iv.next.i.i.i64, %bb.uc ] ; 3 uses
  %i.dpv = getelementptr inbounds nuw [8 x i8], ptr %i.dpt, i64 %indvars.iv.i.i.i63
  %i.dpw = load ptr, ptr %i.dpv, align 8, !tbaa !116
  %i.dpx = icmp eq ptr %i.dpw, %i.dnu
  br i1 %i.dpx, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %indvars.iv.next.i.i.i64 = add nuw nsw i64 %indvars.iv.i.i.i63, 1 ; 2 uses
  %.not.i93.i.i = icmp eq i64 %indvars.iv.next.i.i.i64, %i.dpu
  br i1 %.not.i93.i.i, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i, label %bb.ub, !llvm.loop !3

_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.uc, %bb.ub, %bb.ua
  %i.dpy = phi i64 [ 4294967295, %bb.ua ], [ %indvars.iv.i.i.i63, %bb.ub ], [ 4294967295, %bb.uc ]
  %i.dpz = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i62, i64 %i.dpy
  %i.dqa = load ptr, ptr %i.dpz, align 8, !tbaa !106 ; 6 uses
  %i.dqb = load i8, ptr %i.dqa, align 8, !tbaa !107
  %.not217.i.i = icmp eq i8 %i.dqb, 87
  br i1 %.not217.i.i, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dqa, i64 40
  %i.dqd = load ptr, ptr %i.dqc, align 8, !tbaa !80
  %i.dqe = icmp eq ptr %i.dqd, %i.dnu
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i
  %i.dqf = phi i1 [ false, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i.i ], [ %i.dqe, %bb.ud ]
  %.sroa.0193.0227.i.i = load ptr, ptr %i.dpf, align 8, !tbaa !114 ; 2 uses
  %.not215228.i.i = icmp eq ptr %.sroa.0193.0227.i.i, null
  br i1 %.not215228.i.i, label %._crit_edge.i.i70, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.ue
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqa, i64 4
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %i.dqa, i64 -8
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dqa, i64 76
  %i.dqi = getelementptr inbounds nuw i8, ptr %.sroa.0199.0231.i.i, i64 76 ; 2 uses
  br label %bb.uf

._crit_edge.i.i70:                                ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i.i, %bb.ue
  %i.dqj = getelementptr inbounds nuw i8, ptr %.sroa.0199.0231.i.i, i64 32
  %i.dqk = load ptr, ptr %i.dqj, align 8, !tbaa !130
  %i.dql = getelementptr inbounds i8, ptr %i.dqk, i64 -24 ; 2 uses
  %i.dqm = load i8, ptr %i.dql, align 8, !tbaa !107
  %i.dqn = icmp eq i8 %i.dqm, 87
  %spec.select.i.i.i1.i.i.i71 = select i1 %i.dqn, ptr %i.dql, ptr null ; 2 uses
  %.not212.i.i = icmp eq ptr %spec.select.i.i.i1.i.i.i71, %i.dpe
  br i1 %.not212.i.i, label %._crit_edge234.i.i, label %bb.ua

bb.uf:                                            ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i.i, %.lr.ph.i.i65
  %i.dqo = phi ptr [ %.pre.i.i62, %.lr.ph.i.i65 ], [ %i.dsh, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i.i ]
  %.sroa.0193.0229.i.i = phi ptr [ %.sroa.0193.0227.i.i, %.lr.ph.i.i65 ], [ %.sroa.0193.0.i.i, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %i.dqp = getelementptr inbounds nuw i8, ptr %.sroa.0193.0229.i.i, i64 24
  %i.dqq = load ptr, ptr %i.dqp, align 8, !tbaa !115
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqq, i64 40
  %i.dqs = load ptr, ptr %i.dqr, align 8, !tbaa !80 ; 2 uses
  br i1 %i.dqf, label %bb.ug, label %bb.uj

bb.ug:                                            ; preds = %bb.uf
  %i.dqt = load i32, ptr %i.dqg, align 4
  %i.dqu = and i32 %i.dqt, 268435455              ; 2 uses
  %.not11.i.i.i.i76 = icmp eq i32 %i.dqu, 0
  %.pre.i.i.i77 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !114 ; 2 uses
  br i1 %.not11.i.i.i.i76, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %bb.ug
  %i.dqv = load i32, ptr %i.dqh, align 4, !tbaa !148
  %i.dqw = zext i32 %i.dqv to i64
  %i.dqx = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i77, i64 %i.dqw
  %i.dqy = zext nneg i32 %i.dqu to i64
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ui, %.lr.ph.i.i.i.i78
  %indvars.iv.i.i.i.i79 = phi i64 [ 0, %.lr.ph.i.i.i.i78 ], [ %indvars.iv.next.i.i.i.i80, %bb.ui ] ; 3 uses
  %i.dqz = getelementptr inbounds nuw [8 x i8], ptr %i.dqx, i64 %indvars.iv.i.i.i.i79
  %i.dra = load ptr, ptr %i.dqz, align 8, !tbaa !116
  %i.drb = icmp eq ptr %i.dra, %i.dqs
  br i1 %i.drb, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %indvars.iv.next.i.i.i.i80 = add nuw nsw i64 %indvars.iv.i.i.i.i79, 1 ; 2 uses
  %.not.i.i99.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i80, %i.dqy
  br i1 %.not.i.i99.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i, label %bb.uh, !llvm.loop !3

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.ui, %bb.uh, %bb.ug
  %i.drc = phi i64 [ 4294967295, %bb.ug ], [ 4294967295, %bb.ui ], [ %indvars.iv.i.i.i.i79, %bb.uh ]
  %i.drd = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i77, i64 %i.drc
  %i.dre = load ptr, ptr %i.drd, align 8, !tbaa !106
  br label %bb.uj

bb.uj:                                            ; preds = %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i, %bb.uf
  %i.drf = phi ptr [ %i.dre, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i ], [ %i.dqa, %bb.uf ] ; 4 uses
  %i.drg = load i32, ptr %i.dpn, align 4          ; 2 uses
  %i.drh = and i32 %i.drg, 268435455
  %i.dri = load i32, ptr %i.dqi, align 4, !tbaa !148
  %i.drj = icmp eq i32 %i.drh, %i.dri
  br i1 %i.drj, label %bb.uk, label %bb.ul

end_hunk_0
