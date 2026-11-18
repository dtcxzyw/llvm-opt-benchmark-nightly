Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 256
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGE:bb.a

_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit._crit_edge: ; preds = %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !236
  br label %bb.af

bb.af:                                            ; preds = %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit._crit_edge, %bb.ac
  %i.gb = phi ptr [ %.pre, %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit._crit_edge ], [ %i.bs, %bb.ac ]
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i275 = load i32, ptr %i.gc, align 4, !tbaa !240
  %i.gd = call fastcc { ptr, i32 } @_ZL32LowerTruncateVecPackWithSignBitsN4llvm3MVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGENS_11SDNodeFlagsE(i16 %.sroa.0.0.copyload.i.i.i, ptr nonnull %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(519752) %i.gb, ptr noundef nonnull align 8 dereferenceable(920) %3, i32 %.sroa.0.0.copyload.i275) ; 2 uses
  %.fca.0.extract164 = extractvalue { ptr, i32 } %i.gd, 0 ; 2 uses
  %.fca.1.extract165 = extractvalue { ptr, i32 } %i.gd, 1
  %.not394 = icmp eq ptr %.fca.0.extract164, null
  br i1 %.not394, label %bb.ag, label %.critedge4

bb.ag:                                            ; preds = %bb.af, %_ZL19isFreeToSplitVectorN4llvm7SDValueERNS_12SelectionDAGE.exit
  %i.ge = load ptr, ptr %i.br, align 8, !tbaa !236, !nonnull !80, !align !237 ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 360
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !342 ; 4 uses
  %i.gh = icmp sgt i32 %i.gg, 8
  br i1 %i.gh, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  switch i16 %.sroa.0.0.copyload.i.i.i266, label %.critedge4 [
    i16 64, label %bb.ai
    i16 63, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 395
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !366, !range !79, !noundef !80
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %.critedge4, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gl = call fastcc { ptr, i32 } @_ZL13splitVectorOpN4llvm7SDValueERNS_12SelectionDAGERKNS_5SDLocE(ptr nonnull readonly %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %31) ; 2 uses
  %.fca.0.extract157 = extractvalue { ptr, i32 } %i.gl, 0
  %.fca.1.extract158 = extractvalue { ptr, i32 } %i.gl, 1
  br label %.critedge4

bb.ak:                                            ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 395
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !366, !range !79, !noundef !80
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %.critedge4, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 503
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !358, !range !79, !noundef !80
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit, label %.critedge4

_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit: ; preds = %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 728
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !650
  %i.gu = icmp ugt i32 %i.gt, 511
  br i1 %i.gu, label %.critedge4, label %.critedge8

bb.am:                                            ; preds = %bb.ag
  switch i16 %.sroa.0.0.copyload.i.i.i, label %.unreachabledefault [
    i16 73, label %bb.an
    i16 62, label %bb.ar
    i16 48, label %.critedge8
  ]

bb.an:                                            ; preds = %bb.am
  %i.gv = icmp eq i16 %.sroa.0.0.copyload.i.i.i266, 96
  br i1 %i.gv, label %bb.ao, label %.critedge8

bb.ao:                                            ; preds = %bb.an
  %i.gw = icmp eq i32 %i.gg, 8
  br i1 %i.gw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gx = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 77, ptr null, ptr nonnull %i.m, i32 %i.o) #39 ; 2 uses
  %.fca.0.extract147 = extractvalue { ptr, i32 } %i.gx, 0 ; 2 uses
  %.fca.1.extract148 = extractvalue { ptr, i32 } %i.gx, 1 ; 2 uses
  store ptr %.fca.0.extract147, ptr %32, align 8, !tbaa !465
  store i32 %.fca.1.extract148, ptr %i.n, align 8, !tbaa !240
  store ptr @_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE8ShufMask, ptr %40, align 8, !tbaa !691
  %i.gy = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 8, ptr %i.gy, align 8, !tbaa !692
  %i.gz = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 77, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr %.fca.0.extract147, i32 %.fca.1.extract148, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %40) #39 ; 2 uses
  %.fca.0.extract137 = extractvalue { ptr, i32 } %i.gz, 0
  %.fca.1.extract138 = extractvalue { ptr, i32 } %i.gz, 1
  store ptr %.fca.0.extract137, ptr %32, align 8, !tbaa !465
  store i32 %.fca.1.extract138, ptr %i.n, align 8, !tbaa !240
  %i.ha = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %31, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.ha, 0
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.ha, 1
  store ptr %.fca.0.extract132, ptr %41, align 8
  %.sroa.2135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract133, ptr %.sroa.2135.0..sroa_idx, align 8
  %i.hb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 73, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #39 ; 2 uses
  %.fca.0.extract128 = extractvalue { ptr, i32 } %i.hb, 0
  %.fca.1.extract129 = extractvalue { ptr, i32 } %i.hb, 1
  br label %.critedge4

bb.aq:                                            ; preds = %bb.ao
  %i.hc = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %31, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract121 = extractvalue { ptr, i32 } %i.hc, 0
  %.fca.1.extract122 = extractvalue { ptr, i32 } %i.hc, 1
  store ptr %.fca.0.extract121, ptr %42, align 8
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract122, ptr %.sroa.2124.0..sroa_idx, align 8
  %i.hd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 94, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #39 ; 2 uses
  %.fca.0.extract117 = extractvalue { ptr, i32 } %i.hd, 0
  %.fca.1.extract118 = extractvalue { ptr, i32 } %i.hd, 1
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %31, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract111 = extractvalue { ptr, i32 } %i.he, 0
  %.fca.1.extract112 = extractvalue { ptr, i32 } %i.he, 1
  store ptr %.fca.0.extract111, ptr %43, align 8
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract112, ptr %.sroa.2114.0..sroa_idx, align 8
  %i.hf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 94, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43) #39 ; 2 uses
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.hf, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.hf, 1
  %i.hg = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 73, ptr null, ptr %.fca.0.extract117, i32 %.fca.1.extract118) #39 ; 2 uses
  %.fca.0.extract97 = extractvalue { ptr, i32 } %i.hg, 0
  %.fca.1.extract98 = extractvalue { ptr, i32 } %i.hg, 1
  %i.hh = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 73, ptr null, ptr %.fca.0.extract107, i32 %.fca.1.extract108) #39 ; 2 uses
  %.fca.0.extract90 = extractvalue { ptr, i32 } %i.hh, 0
  %.fca.1.extract91 = extractvalue { ptr, i32 } %i.hh, 1
  store ptr %.fca.0.extract90, ptr %44, align 8
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract91, ptr %.sroa.293.0..sroa_idx, align 8
  store ptr @_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE8ShufMask_0, ptr %45, align 8, !tbaa !691
  %i.hi = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 4, ptr %i.hi, align 8, !tbaa !692
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 73, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr %.fca.0.extract97, i32 %.fca.1.extract98, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %45) #39 ; 2 uses
  %.fca.0.extract86 = extractvalue { ptr, i32 } %i.hj, 0
  %.fca.1.extract87 = extractvalue { ptr, i32 } %i.hj, 1
  br label %.critedge4

bb.ar:                                            ; preds = %bb.am
  %i.hk = icmp eq i16 %.sroa.0.0.copyload.i.i.i266, 77
  br i1 %i.hk, label %bb.as, label %.critedge8

bb.as:                                            ; preds = %bb.ar
  %i.hl = icmp eq i32 %i.gg, 8
  br i1 %i.hl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 49, ptr null, ptr nonnull %i.m, i32 %i.o) #39 ; 2 uses
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.hm, 0 ; 2 uses
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.hm, 1 ; 2 uses
  store ptr %.fca.0.extract76, ptr %32, align 8, !tbaa !465
  store i32 %.fca.1.extract77, ptr %i.n, align 8, !tbaa !240
  store ptr @_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE9ShufMask1, ptr %46, align 8, !tbaa !691
  %i.hn = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 32, ptr %i.hn, align 8, !tbaa !692
  %i.ho = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 49, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr %.fca.0.extract76, i32 %.fca.1.extract77, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %46) #39 ; 2 uses
  %.fca.0.extract66 = extractvalue { ptr, i32 } %i.ho, 0
  %.fca.1.extract67 = extractvalue { ptr, i32 } %i.ho, 1
  %i.hp = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 96, ptr null, ptr %.fca.0.extract66, i32 %.fca.1.extract67) #39 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.hp, 0 ; 2 uses
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.hp, 1 ; 2 uses
  store ptr %.fca.0.extract56, ptr %32, align 8, !tbaa !465
  store i32 %.fca.1.extract57, ptr %i.n, align 8, !tbaa !240
  store ptr @_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE9ShufMask2, ptr %47, align 8, !tbaa !691
  %i.hq = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 4, ptr %i.hq, align 8, !tbaa !692
  %i.hr = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 96, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr %.fca.0.extract56, i32 %.fca.1.extract57, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %47) #39 ; 2 uses
  %.fca.0.extract46 = extractvalue { ptr, i32 } %i.hr, 0
  %.fca.1.extract47 = extractvalue { ptr, i32 } %i.hr, 1
  store ptr %.fca.0.extract46, ptr %32, align 8, !tbaa !465
  store i32 %.fca.1.extract47, ptr %i.n, align 8, !tbaa !240
  %i.hs = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %31, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.hs, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.hs, 1
  store ptr %.fca.0.extract41, ptr %48, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.fca.1.extract42, ptr %.sroa.244.0..sroa_idx, align 8
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 94, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48) #39 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.ht, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.ht, 1
  %i.hu = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 62, ptr null, ptr %.fca.0.extract37, i32 %.fca.1.extract38) #39 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.hu, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.hu, 1
  br label %.critedge4

bb.au:                                            ; preds = %bb.as
  %i.hv = icmp sgt i32 %i.gg, 4
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hw = call fastcc { ptr, i32 } @_ZL24truncateVectorWithPACKUSN4llvm3EVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE(i16 62, ptr null, ptr nonnull %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(519752) %i.ge, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.hw, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.hw, 1
  br label %.critedge4

bb.aw:                                            ; preds = %bb.au
  %i.hx = call fastcc { ptr, i32 } @_ZL24truncateVectorWithPACKSSN4llvm3EVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE(i16 62, ptr null, ptr nonnull %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(519752) %i.ge, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.hx, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.hx, 1
  br label %.critedge4

.unreachabledefault:                              ; preds = %bb.am
  unreachable

.critedge8:                                       ; preds = %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit, %bb.am, %bb.an, %bb.ar
  %i.hy = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 48
  call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp eq i16 %.sroa.0.0.copyload.i.i.i266, 63
  call void @llvm.assume(i1 %i.hz)
  %i.ia = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %i.m, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 48, ptr null) #39 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ia, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ia, 1
  %i.ib = call fastcc { ptr, i32 } @_ZL22truncateVectorWithPACKjN4llvm3EVTENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE(i32 noundef 760, i16 48, ptr null, ptr %.fca.0.extract6.i, i32 %.fca.1.extract7.i, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(519752) %i.ge) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ib, 1
  br label %.critedge4

.critedge4:                                       ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit, %_ZNK4llvm3MVT14is256BitVectorEv.exit, %bb.f, %bb.ah, %bb.al, %bb.ai, %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit, %bb.ak, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread, %bb.av, %bb.aw, %bb.af, %bb.g, %.critedge8, %bb.at, %bb.aq, %bb.ap, %bb.aj, %_ZL18LowerTruncateVecI1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %bb.h, %bb.e
  %.sroa.18.0 = phi i32 [ %.fca.1.extract177, %_ZL18LowerTruncateVecI1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.1.extract165, %bb.af ], [ 0, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread ], [ %.fca.1.extract129, %bb.ap ], [ %.fca.1.extract87, %bb.aq ], [ %.fca.1.extract31, %bb.at ], [ %.fca.1.extract23, %bb.av ], [ %.fca.1.extract15, %bb.aw ], [ %.fca.1.extract, %.critedge8 ], [ %.fca.1.extract158, %bb.aj ], [ %.fca.1.extract201, %bb.e ], [ %.fca.1.extract192, %bb.g ], [ %.fca.1.extract184, %bb.h ], [ %2, %bb.ak ], [ %2, %bb.ah ], [ %2, %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit ], [ %2, %bb.ai ], [ %2, %bb.al ], [ 0, %bb.f ], [ 0, %_ZNK4llvm3MVT14is256BitVectorEv.exit ], [ 0, %_ZNK4llvm3MVT14is512BitVectorEv.exit ]
  %.sroa.0361.0 = phi ptr [ %.fca.0.extract176, %_ZL18LowerTruncateVecI1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.0.extract164, %bb.af ], [ null, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread ], [ %.fca.0.extract128, %bb.ap ], [ %.fca.0.extract86, %bb.aq ], [ %.fca.0.extract30, %bb.at ], [ %.fca.0.extract22, %bb.av ], [ %.fca.0.extract14, %bb.aw ], [ %.fca.0.extract, %.critedge8 ], [ %.fca.0.extract157, %bb.aj ], [ %.fca.0.extract200, %bb.e ], [ %.fca.0.extract191, %bb.g ], [ %.fca.0.extract183, %bb.h ], [ %1, %bb.ak ], [ %1, %bb.ah ], [ %1, %_ZNK4llvm12X86Subtarget16canExtendTo512DQEv.exit ], [ %1, %bb.ai ], [ %1, %bb.al ], [ null, %bb.f ], [ null, %_ZNK4llvm3MVT14is256BitVectorEv.exit ], [ null, %_ZNK4llvm3MVT14is512BitVectorEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #39
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0361.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.18.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12SelectionDAG11SplitVectorERKNS_7SDValueERKNS_5SDLocE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.513") align 8 %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %6 = alloca %"struct.std::pair.520", align 8    ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.a = load ptr, ptr %2, align 8, !tbaa !472
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !467
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !469
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.h, align 8
  call void @_ZNK4llvm12SelectionDAG15GetSplitDestVTsERKNS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.520") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !771
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !771
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @_ZN4llvm12SelectionDAG11SplitVectorERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind writable sret(%"struct.std::pair.513") align 8 %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

declare void @_ZNK4llvm12SelectionDAG15GetSplitDestVTsERKNS_3EVTE(ptr dead_on_unwind writable sret(%"struct.std::pair.520") align 8, ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL32LowerTruncateVecPackWithSignBitsN4llvm3MVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGENS_11SDNodeFlagsE(i16 %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(519752) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !469
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !345
  %i.f = zext i16 %0 to i64                       ; 3 uses
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !345  ; 3 uses
  %i.j = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !345
  %.off = add i16 %i.m, -6
  %switch = icmp ult i16 %.off, 3
  %i.n = add i16 %i.i, -5
  %i.o = icmp ult i16 %i.n, 3
  %or.cond = select i1 %switch, i1 %i.o, i1 false
  br i1 %or.cond, label %.critedge65, label %.critedge

.critedge65:                                      ; preds = %bb.a
  %i.p = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.f ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.r, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %.critedge65
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %.critedge65
  %i.s = icmp ugt i64 %.sroa.0.0.copyload.i, 127
  br i1 %i.s, label %bb.c, label %.critedge69

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.t = tail call fastcc { ptr, i32 } @_ZL21isUpperSubvectorUndefN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.t, 0 ; 2 uses
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.t, 1
  %.not = icmp eq ptr %.fca.0.extract36, null
  br i1 %.not, label %.critedge69, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.f
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !339
  %i.x = add i16 %0, -216
  %spec.select.i.i.i = icmp ult i16 %i.x, -53
  %i.y = lshr i16 %i.w, 1
  %.sroa.0.0.extract.trunc.i.i = zext nneg i16 %i.y to i32 ; 2 uses
  br i1 %spec.select.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit

_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.04.0.i.i = phi i16 [ %i.z, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = tail call fastcc { ptr, i32 } @_ZL32LowerTruncateVecPackWithSignBitsN4llvm3MVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGENS_11SDNodeFlagsE(i16 %.sroa.04.0.i.i, ptr nonnull %.fca.0.extract36, i32 %.fca.1.extract37, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(519752) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 0) ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.ab, 0 ; 2 uses
  %.not121 = icmp eq ptr %.fca.0.extract27, null
  br i1 %.not121, label %.critedge69, label %_ZNK4llvm8TypeSizecvmEv.exit77

_ZNK4llvm8TypeSizecvmEv.exit77:                   ; preds = %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.ab, 1
  %i.ac = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ad = tail call fastcc { ptr, i32 } @_ZL14widenSubVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.fca.0.extract27, i32 %.fca.1.extract28, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(519752) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.ac) ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.ad, 1
  br label %.critedge

.critedge69:                                      ; preds = %bb.c, %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ae = call fastcc { ptr, i32 } @_ZL21matchTruncateWithPACKRjN4llvm3EVTENS0_7SDValueERKNS0_5SDLocERNS0_12SelectionDAGERKNS0_12X86SubtargetENS0_11SDNodeFlagsE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i16 %0, ptr null, ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(519752) %4, i32 %6) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.ae, 0 ; 2 uses
  %.not122 = icmp eq ptr %.fca.0.extract7, null
  br i1 %.not122, label %.critedge71, label %bb.g

bb.g:                                             ; preds = %.critedge69
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.ae, 1
  %i.af = load i32, ptr %i.a, align 4, !tbaa !240
  %i.ag = tail call fastcc { ptr, i32 } @_ZL22truncateVectorWithPACKjN4llvm3EVTENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE(i32 noundef %i.af, i16 %0, ptr null, ptr nonnull %.fca.0.extract7, i32 %.fca.1.extract8, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(519752) %4) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge69, %bb.g
  %.sroa.7.0 = phi i32 [ %.fca.1.extract, %bb.g ], [ 0, %.critedge69 ]
  %.sroa.0116.0 = phi ptr [ %.fca.0.extract, %bb.g ], [ null, %.critedge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm8TypeSizecvmEv.exit77, %.critedge71
  %.sroa.7.1 = phi i32 [ %.fca.1.extract17, %_ZNK4llvm8TypeSizecvmEv.exit77 ], [ %.sroa.7.0, %.critedge71 ], [ 0, %bb.a ]
  %.sroa.0116.1 = phi ptr [ %.fca.0.extract16, %_ZNK4llvm8TypeSizecvmEv.exit77 ], [ %.sroa.0116.0, %.critedge71 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0116.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL20LowerTruncateVecPackN4llvm3MVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE(i16 %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(519752) %4, ptr noundef nonnull align 8 dereferenceable(920) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !345
  %i.e = zext i16 %0 to i64                       ; 3 uses
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !345  ; 3 uses
  %i.i = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.j = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !345  ; 3 uses
  %i.m = add i16 %0, -163
  %spec.select.i.i = icmp ult i16 %i.m, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.n = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.e
  %i.o = getelementptr i8, ptr %i.n, i64 -2
end_hunk_0
