Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockPlacement?download=true
inline.NumInlined: 4665
inline.NumDeleted: 2120
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN12_GLOBAL__N_121MachineBlockPlacement3runERN4llvm15MachineFunctionE:_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %brmerge.not.i = and i1 %.not7.i, %i.bw
  br i1 %brmerge.not.i, label %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL35TailDupPlacementAggressiveThreshold, i64 120), align 8, !tbaa !252
  store i32 %i.ca, ptr %i.bt, align 8, !tbaa !648
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.not28.i = xor i1 %i.bw, true
  %i.cb = icmp slt i32 %i.by, 3
  %brmerge20.i = or i1 %.not7.i, %i.cb
  %or.cond21.i = and i1 %brmerge20.i, %.not28.i
  br i1 %or.cond21.i, label %bb.l, label %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !246 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1424
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(112) %i.cc, i32 noundef %i.by) #25, !inline_history !449
  store i32 %i.cg, ptr %i.bt, align 8, !tbaa !648
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit

_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !239
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 11 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !236
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !659, !nonnull !47, !align !187
  %i.cm = call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_15MachineFunctionEPNS_18ProfileSummaryInfoEPKNS_25MachineBlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %1, ptr noundef %i.ci, ptr noundef nonnull %i.cl, i32 noundef 2) #25 ; 2 uses
  %i.cn = load ptr, ptr %i.o, align 8, !tbaa !244 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.cn, %i.s
  br i1 %.not4.i.i.i, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi i32 [ %i.cq, %.lr.ph.i.i.i ], [ 0, %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %i.cn, %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !244 ; 2 uses
  %i.cq = add i32 %.06.i.i.i, 1                   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, %i.s
  br i1 %.not.i.i.i, label %_ZNK4llvm15MachineFunction4sizeEv.exit, label %.lr.ph.i.i.i, !llvm.loop !450

_ZNK4llvm15MachineFunction4sizeEv.exit:           ; preds = %.lr.ph.i.i.i
  %i.cr = icmp ugt i32 %i.cq, 2
  br i1 %i.cr, label %.lr.ph.i.i.i41, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread

.lr.ph.i.i.i41:                                   ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit, %.lr.ph.i.i.i41
  %.06.i.i.i42 = phi i32 [ %i.cu, %.lr.ph.i.i.i41 ], [ 0, %_ZNK4llvm15MachineFunction4sizeEv.exit ]
  %.sroa.02.05.i.i.i43 = phi ptr [ %i.ct, %.lr.ph.i.i.i41 ], [ %i.cn, %_ZNK4llvm15MachineFunction4sizeEv.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i43, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !244 ; 2 uses
  %i.cu = add i32 %.06.i.i.i42, 1                 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.ct, %i.s
  br i1 %.not.i.i.i44, label %_ZNK4llvm15MachineFunction4sizeEv.exit46, label %.lr.ph.i.i.i41, !llvm.loop !450

_ZNK4llvm15MachineFunction4sizeEv.exit46:         ; preds = %.lr.ph.i.i.i41
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL29ExtTspBlockPlacementMaxBlocks, i64 120), align 8, !tbaa !252
  %.not = icmp ugt i32 %i.cu, %i.cv
  br i1 %.not, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit46
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ApplyExtTspForSize, i64 120), align 8, !range !46
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond = select i1 %i.cm, i1 %i.cx, i1 false
  br i1 %or.cond, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread, label %.thread

.thread:                                          ; preds = %bb.m
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26EnableExtTspBlockPlacementE, i64 120), align 8, !tbaa !71, !range !46, !noundef !47
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.n, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread

bb.n:                                             ; preds = %.thread
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ApplyExtTspWithoutProfileE, i64 120), align 8, !tbaa !71, !range !46, !noundef !47
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load ptr, ptr %1, align 8, !tbaa !186, !nonnull !47, !align !187
  %i.dd = call { i64, i8 } @_ZNK4llvm8Function13getEntryCountEv(ptr noundef nonnull align 8 dereferenceable(140) %i.dc) #25
  %i.de = extractvalue { i64, i8 } %i.dd, 1
  %i.df = trunc nuw i8 %i.de to i1
  br label %_ZNK4llvm15MachineFunction4sizeEv.exit.thread

_ZNK4llvm15MachineFunction4sizeEv.exit.thread:    ; preds = %bb.m, %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit, %.thread, %bb.o, %bb.n, %_ZNK4llvm15MachineFunction4sizeEv.exit46, %_ZNK4llvm15MachineFunction4sizeEv.exit
  %.034 = phi i1 [ false, %_ZNK4llvm15MachineFunction4sizeEv.exit ], [ false, %_ZNK4llvm15MachineFunction4sizeEv.exit46 ], [ false, %bb.n ], [ false, %bb.o ], [ false, %.thread ], [ true, %bb.m ], [ false, %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit ] ; 6 uses
  %.033 = phi i1 [ false, %_ZNK4llvm15MachineFunction4sizeEv.exit ], [ false, %_ZNK4llvm15MachineFunction4sizeEv.exit46 ], [ true, %bb.n ], [ %i.df, %bb.o ], [ false, %.thread ], [ true, %bb.m ], [ false, %_ZN12_GLOBAL__N_121MachineBlockPlacement20initTailDupThresholdEv.exit ]
  %i.dg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16TailDupPlacement, i64 120), align 8, !tbaa !71, !range !46, !noundef !47
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZN12_GLOBAL__N_121MachineBlockPlacement21allowTailDupPlacementERN4llvm15MachineFunctionE.exit, label %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit

_ZN12_GLOBAL__N_121MachineBlockPlacement21allowTailDupPlacementERN4llvm15MachineFunctionE.exit: ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit.thread
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val = load ptr, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 1128
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement21allowTailDupPlacementERN4llvm15MachineFunctionE.exit
  br i1 %i.cm, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.bt, align 8, !tbaa !648
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.bt, align 8, !tbaa !648
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.dn = phi i32 [ %.pre, %._crit_edge ], [ 1, %bb.q ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !235
  %i.dr = load ptr, ptr %i.cj, align 8, !tbaa !236
  %i.ds = load ptr, ptr %i.ch, align 8, !tbaa !239
  call void @_ZN4llvm14TailDuplicator6initMFERNS_15MachineFunctionEbPKNS_28MachineBranchProbabilityInfoEPNS_11MBFIWrapperEPNS_18ProfileSummaryInfoEbj(ptr noundef nonnull align 8 dereferenceable(168) %i.do, ptr noundef nonnull align 8 dereferenceable(1065) %1, i1 noundef zeroext false, ptr noundef %i.dq, ptr noundef %i.dr, ptr noundef %i.ds, i1 noundef zeroext true, i32 noundef %i.dn) #25
  br i1 %.034, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18TriangleChainCount, i64 120), align 8, !tbaa !252
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.dv = load ptr, ptr %i.u, align 8, !tbaa !245 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 304
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 296 ; 2 uses
  %.sroa.0198.0237.i = load ptr, ptr %i.dw, align 8, !tbaa !244 ; 2 uses
  %.not213238.i = icmp eq ptr %.sroa.0198.0237.i, %i.dx
  br i1 %.not213238.i, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  br label %bb.v

._crit_edge.i48:                                  ; preds = %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i
  %.val2.i.pre.i = load ptr, ptr %23, align 8, !tbaa !258, !noalias !660 ; 3 uses
  %.val.i.pre.i = load i32, ptr %i.ea, align 4, !tbaa !259, !noalias !660 ; 6 uses
  %.val3.i.pre.i = load i32, ptr %i.eb, align 8, !tbaa !260, !noalias !660
  %i.ec = icmp eq i32 %.val3.i.pre.i, 0
  %i.ed = zext i32 %.val.i.pre.i to i64           ; 3 uses
  %.idx337.i = shl nuw nsw i64 %i.ed, 5           ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %.val.i.pre.i, 0
  %or.cond.i = select i1 %i.ec, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge252.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i48
  %i.ee = add nuw nsw i64 %i.ed, 31
  %i.ef = lshr i64 %i.ee, 5                       ; 4 uses
  %i.eg = load i32, ptr %i.mf, align 4, !tbaa !189, !noalias !661 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %i.ei = icmp eq i64 %i.ef, 1
  br i1 %i.ei, label %._crit_edge252.i, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.ej = add nuw nsw i64 %i.el, 1                ; 2 uses
  %i.ek = icmp eq i64 %i.ej, %i.ef
  br i1 %i.ek, label %._crit_edge252.i, label %.lr.ph, !llvm.loop !455

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.el = phi i64 [ %i.ej, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !189, !noalias !661 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !455

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph
  %i.ep = shl i64 %i.el, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.u
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.ep, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.eg, %bb.u ], [ %i.en, %._crit_edge.i.loopexit.i.i.i ]
  %i.eq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.er = shl nuw nsw i32 %i.eq, 5
  %.idx336.i = zext nneg i32 %i.er to i64
  %i.es = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx336.i ; 2 uses
  %.not214249.i = icmp eq i64 %i.es, %.idx337.i
  br i1 %.not214249.i, label %._crit_edge252.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  br label %bb.at

bb.v:                                             ; preds = %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, %.lr.ph243.i
  %i.ex = phi ptr [ null, %.lr.ph243.i ], [ %i.mf, %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i ] ; 13 uses
  %i.ey = phi ptr [ null, %.lr.ph243.i ], [ %i.mg, %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i ] ; 14 uses
  %.sroa.0198.0239.i = phi ptr [ %.sroa.0198.0237.i, %.lr.ph243.i ], [ %.sroa.0198.0.i, %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i ] ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0198.0239.i, i64 120
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !195
  %.not.i47 = icmp eq i32 %i.fa, 2
  br i1 %.not.i47, label %.critedge.preheader.i, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

.critedge.preheader.i:                            ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0198.0239.i, i64 112
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !261 ; 2 uses
  %i.fe = load ptr, ptr %i.dy, align 8, !tbaa !238
  %i.ff = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(228) %i.fe, ptr noundef %i.fd, ptr noundef nonnull %.sroa.0198.0239.i) #25
  br i1 %i.ff, label %bb.w, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.critedge.preheader.i
  %.045233.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fg = load ptr, ptr %.045233.ptr.1.i, align 8, !tbaa !261 ; 2 uses
  %i.fh = load ptr, ptr %i.dy, align 8, !tbaa !238
  %i.fi = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(228) %i.fh, ptr noundef %i.fg, ptr noundef nonnull %.sroa.0198.0239.i) #25
  br i1 %i.fi, label %bb.w, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

bb.w:                                             ; preds = %.critedge.1.i, %.critedge.preheader.i
  %.lcssa260.i = phi ptr [ %i.fd, %.critedge.preheader.i ], [ %i.fg, %.critedge.1.i ] ; 16 uses
  %i.fj = icmp eq ptr %.lcssa260.i, null
  br i1 %i.fj, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = load ptr, ptr %i.dp, align 8, !tbaa !235
  %i.fl = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull %.sroa.0198.0239.i, ptr noundef nonnull %.lcssa260.i) #25
  %i.fm = icmp ult i32 %i.fl, 1073741824
  br i1 %i.fm, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = call noundef zeroext i1 @_ZN4llvm14TailDuplicator10isSimpleBBEPNS_17MachineBasicBlockE(ptr noundef nonnull %.lcssa260.i) #25
  %i.fo = getelementptr inbounds nuw i8, ptr %.lcssa260.i, i64 120
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !195
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, label %_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i

_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i: ; preds = %bb.y
  %i.fr = call noundef zeroext i1 @_ZN4llvm14TailDuplicator19shouldTailDuplicateEbRNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(168) %i.do, i1 noundef zeroext %i.fn, ptr noundef nonnull align 8 dereferenceable(360) %.lcssa260.i) #25
  br i1 %i.fr, label %bb.z, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa260.i, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !50 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.lcssa260.i, i64 72
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !195 ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %.idx.i = shl nuw nsw i64 %i.fw, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx.i
  %.not51234.i = icmp eq i32 %i.fv, 0
  br i1 %.not51234.i, label %.critedge218.i, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.z, %select.unfold.i
  %.043235.i = phi ptr [ %i.gb, %select.unfold.i ], [ %i.ft, %bb.z ] ; 2 uses
  %i.fy = load ptr, ptr %.043235.i, align 8, !tbaa !261 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %.sroa.0198.0239.i
  br i1 %i.fz, label %select.unfold.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i51
  %i.ga = call noundef zeroext i1 @_ZN4llvm14TailDuplicator16canTailDuplicateEPNS_17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(168) %i.do, ptr noundef nonnull %.lcssa260.i, ptr noundef %i.fy) #25
  br i1 %i.ga, label %select.unfold.i, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

select.unfold.i:                                  ; preds = %bb.aa, %.lr.ph.i51
  %i.gb = getelementptr inbounds nuw i8, ptr %.043235.i, i64 8 ; 2 uses
  %.not51.i = icmp eq ptr %i.gb, %i.fx
  br i1 %.not51.i, label %.critedge218.i, label %.lr.ph.i51

.critedge218.i:                                   ; preds = %select.unfold.i, %bb.z
  %i.gc = load i32, ptr %i.ea, align 4, !tbaa !259, !noalias !662 ; 7 uses
  %i.gd = icmp eq i32 %i.gc, 0                    ; 2 uses
  br i1 %i.gd, label %.loopexit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge218.i
  %i.ge = add i32 %i.gc, -1                       ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.0198.0239.i to i64
  %i.gg = mul i64 %i.gf, -4658895280553007687     ; 2 uses
  %i.gh = lshr i64 %i.gg, 31
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = and i32 %i.ge, %i.gj                    ; 3 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = lshr i64 %i.gl, 5
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !189, !noalias !663
  %i.gp = and i32 %i.gk, 31
  %i.gq = lshr i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i1
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !190

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ab, %bb.ac
  %i.gs = phi i64 [ %i.gy, %bb.ac ], [ %i.gl, %bb.ab ]
  %.03.i.i.i.i.i = phi i32 [ %i.gx, %bb.ac ], [ %i.gk, %bb.ab ]
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.gs ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !261, !noalias !663
  %i.gv = icmp eq ptr %.sroa.0198.0239.i, %i.gu
  br i1 %i.gv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.loopexit.i, label %bb.ac, !prof !191

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gw = add nuw i32 %.03.i.i.i.i.i, 1
  %i.gx = and i32 %i.gw, %i.ge                    ; 3 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = lshr i64 %i.gy, 5
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !189, !noalias !663
  %i.hc = and i32 %i.gx, 31
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i1
  br i1 %i.he, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !192

.loopexit.i.i.i:                                  ; preds = %bb.ac, %bb.ab, %.critedge218.i
  %i.hf = zext i32 %i.gc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.hf
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre275.i.a = zext i32 %i.gc to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre275.i.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.loopexit.i ], [ %i.hf, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.gt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.loopexit.i ], [ %i.hg, %.loopexit.i.i.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %.pre-phi.i
  %.not216.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.hh
  br i1 %.not216.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !262 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !263 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !264 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i8 0, i64 24, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E21eraseFromFilledBucketIZNSE_21eraseFromFilledBucketEPSC_EUlRSC_E_EEvSG_OT_(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull %.lcssa.sink.i.i.i)
  %.not.i.i.i52 = icmp eq ptr %i.hl, %i.hn
  br i1 %.not.i.i.i52, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %.lcssa260.i, ptr %i.hl, align 8, !tbaa !261
  br label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChain6appendEPN4llvm17MachineBasicBlockE.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = ptrtoint ptr %i.hj to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 6 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775800
  br i1 %i.hr, label %bb.ag, label %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.af
  %i.hs = ashr exact i64 %i.hq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 1152921504606846975)
  %i.hw = select i1 %i.hu, i64 1152921504606846975, i64 %i.hv ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #27 ; 4 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hq ; 3 uses
  store ptr %.lcssa260.i, ptr %i.hz, align 8, !tbaa !261
  %i.ia = icmp sgt i64 %i.hq, 0
  br i1 %i.ia, label %bb.ah, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hy, ptr align 8 %i.hj, i64 %i.hq, i1 false)
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hq) #28
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  %.val60.val.pre.i = load ptr, ptr %i.hz, align 8, !tbaa !261
  br label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChain6appendEPN4llvm17MachineBasicBlockE.exit.i

_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChain6appendEPN4llvm17MachineBasicBlockE.exit.i: ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.ae
  %.val60.val.i = phi ptr [ %.val60.val.pre.i, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.lcssa260.i, %bb.ae ] ; 4 uses
  %.sroa.0170.0.i = phi ptr [ %i.hy, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.hj, %bb.ae ] ; 4 uses
  %.pn.i = phi ptr [ %i.hz, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.hl, %bb.ae ]
  %.sroa.14174.0.i = phi ptr [ %i.ib, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.hn, %bb.ae ] ; 2 uses
  %.sroa.8172.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.ic = load ptr, ptr %23, align 8, !tbaa !258, !noalias !664 ; 5 uses
  %i.id = load ptr, ptr %i.dz, align 8, !tbaa !265, !noalias !664 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_121MachineBlockPlacement3runERN4llvm15MachineFunctionE:_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.jx = or i32 %i.jt, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !189, !noalias !665
  %i.jy = add i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.jy, ptr %i.eb, align 8, !tbaa !260, !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !665
  store ptr %.val60.val.i, ptr %i.jm, align 8, !tbaa !261, !noalias !665
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %.sroa.0170.0.i, ptr %i.jz, align 8, !tbaa !262, !noalias !665
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store ptr %.sroa.8172.0.i, ptr %i.ka, align 8, !tbaa !263, !noalias !665
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr %.sroa.14174.0.i, ptr %i.kb, align 8, !tbaa !264, !noalias !665
  br label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i: ; preds = %.lr.ph.i.i.i.i81.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0170.0.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i
  %i.kc = ptrtoint ptr %.sroa.14174.0.i to i64
  %i.kd = ptrtoint ptr %.sroa.0170.0.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0.i, i64 noundef %i.ke) #28
  br label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

bb.an:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i
  br i1 %i.gd, label %.loopexit.i.i.i84.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kf = add i32 %i.gc, -1                       ; 2 uses
  %i.kg = ptrtoint ptr %.lcssa260.i to i64
  %i.kh = mul i64 %i.kg, -4658895280553007687     ; 2 uses
  %i.ki = lshr i64 %i.kh, 31
  %i.kj = xor i64 %i.ki, %i.kh
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = and i32 %i.kf, %i.kk                    ; 3 uses
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.km ; 2 uses
  %i.ko = lshr i64 %i.km, 5
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !189, !noalias !666
  %i.kr = and i32 %i.kl, 31
  %i.ks = lshr i32 %i.kq, %i.kr
  %i.kt = trunc i32 %i.ks to i1
  br i1 %i.kt, label %.lr.ph.i.i.i.i104.i, label %.loopexit.i.i.i84.i, !prof !190

.lr.ph.i.i.i.i104.i:                              ; preds = %bb.ao, %bb.ap
  %i.ku = phi ptr [ %i.la, %bb.ap ], [ %i.kn, %bb.ao ]
  %.05.i.i.i.i105.i = phi i32 [ %i.ky, %bb.ap ], [ %i.kl, %bb.ao ]
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !261, !noalias !666
  %i.kw = icmp eq ptr %.lcssa260.i, %i.kv
  br i1 %i.kw, label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i, label %bb.ap, !prof !191

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i104.i
  %i.kx = add nuw i32 %.05.i.i.i.i105.i, 1
  %i.ky = and i32 %i.kx, %i.kf                    ; 3 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.kz ; 2 uses
  %i.lb = lshr i64 %i.kz, 5
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !189, !noalias !666
  %i.le = and i32 %i.ky, 31
  %i.lf = lshr i32 %i.ld, %i.le
  %i.lg = trunc i32 %i.lf to i1
  br i1 %i.lg, label %.lr.ph.i.i.i.i104.i, label %.loopexit.i.i.i84.i, !prof !192, !llvm.loop !1

.loopexit.i.i.i84.i:                              ; preds = %bb.ap, %bb.ao, %bb.an
  %.lcssa9.sink.i.ph.i.i.i85.i = phi ptr [ %i.kn, %bb.ao ], [ null, %bb.an ], [ %i.la, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !666
  store ptr %.lcssa9.sink.i.ph.i.i.i85.i, ptr %i.m, align 8, !tbaa !266, !noalias !666
  %.val6.i.i.i.i86.i = load i32, ptr %i.eb, align 8, !tbaa !260, !noalias !666
  %i.lh = shl i32 %.val6.i.i.i.i86.i, 2
  %i.li = add i32 %i.lh, 4
  %i.lj = mul i32 %i.gc, 3
  %.not.i.i.i.i87.i = icmp ult i32 %i.li, %i.lj
  br i1 %.not.i.i.i.i87.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i, label %bb.aq, !prof !191

bb.aq:                                            ; preds = %.loopexit.i.i.i84.i
  %i.lk = shl i32 %i.gc, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %23, i32 noundef %i.lk), !noalias !666
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr nonnull %.lcssa260.i, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %.pre.i.i.i.i88.i = load ptr, ptr %i.m, align 8, !tbaa !266, !noalias !666
  %.val4.i.pre.i.i.i89.i = load ptr, ptr %i.dz, align 8, !tbaa !265, !noalias !666
  %.val5.i.pre.i.i.i90.i = load ptr, ptr %23, align 8, !tbaa !258, !noalias !666
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i: ; preds = %bb.aq, %.loopexit.i.i.i84.i
  %i.ll = phi ptr [ %.val4.i.pre.i.i.i89.i, %bb.aq ], [ %i.ex, %.loopexit.i.i.i84.i ] ; 2 uses
  %i.lm = phi ptr [ %.val5.i.pre.i.i.i90.i, %bb.aq ], [ %i.ey, %.loopexit.i.i.i84.i ] ; 2 uses
  %i.ln = phi ptr [ %.pre.i.i.i.i88.i, %bb.aq ], [ %.lcssa9.sink.i.ph.i.i.i85.i, %.loopexit.i.i.i84.i ] ; 5 uses
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 5                 ; 2 uses
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = and i32 %i.ls, 31
  %i.lu = shl nuw i32 1, %i.lt
  %i.lv = lshr i64 %i.lr, 5
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lv ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !189, !noalias !666
  %i.ly = or i32 %i.lu, %i.lx
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !189, !noalias !666
  %.val.i.i.i.i.i94.i = load i32, ptr %i.eb, align 8, !tbaa !260, !noalias !666
  %i.lz = add i32 %.val.i.i.i.i.i94.i, 1
  store i32 %i.lz, ptr %i.eb, align 8, !tbaa !260, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !666
  store ptr %.lcssa260.i, ptr %i.ln, align 8, !tbaa !261, !noalias !666
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i8 0, i64 24, i1 false), !noalias !666
  %i.mb = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !666 ; 4 uses
  store ptr %i.mb, ptr %i.ma, align 8, !tbaa !262, !noalias !666
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !264, !noalias !666
  store ptr %.sroa.0198.0239.i, ptr %i.mb, align 8, !noalias !666
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %.lcssa260.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !666
  %i.me = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store ptr %i.mc, ptr %i.me, align 8, !tbaa !263, !noalias !666
  br label %_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i

_ZZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvEN13TriangleChainD2Ev.exit.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i104.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i, %bb.am, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.thread.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i, %bb.y, %bb.x, %bb.w, %.critedge.1.i, %bb.v
  %i.mf = phi ptr [ %i.ex, %bb.v ], [ %.val4.i.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.thread.i ], [ %i.ex, %.lr.ph.i.i.i.i104.i ], [ %i.ll, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i ], [ %i.ex, %bb.y ], [ %i.ex, %bb.w ], [ %i.ex, %bb.x ], [ %i.ex, %_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i ], [ %i.ex, %.critedge.1.i ], [ %i.id, %bb.am ], [ %i.id, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %i.ex, %bb.aa ] ; 6 uses
  %i.mg = phi ptr [ %i.ey, %bb.v ], [ %.val5.i.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.thread.i ], [ %i.ey, %.lr.ph.i.i.i.i104.i ], [ %i.lm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i91.i ], [ %i.ey, %bb.y ], [ %i.ey, %bb.w ], [ %i.ey, %bb.x ], [ %i.ey, %_ZN12_GLOBAL__N_121MachineBlockPlacement19shouldTailDuplicateEPN4llvm17MachineBasicBlockE.exit.i ], [ %i.ey, %.critedge.1.i ], [ %i.ic, %bb.am ], [ %i.ic, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %i.ey, %bb.aa ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0198.0239.i, i64 8
  %.sroa.0198.0.i = load ptr, ptr %i.mh, align 8, !tbaa !244 ; 2 uses
  %.not213.i = icmp eq ptr %.sroa.0198.0.i, %i.dx
  br i1 %.not213.i, label %._crit_edge.i48, label %bb.v

._crit_edge252.loopexit.i:                        ; preds = %_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i, %.loopexit.i, %.lr.ph.i.i135.i.preheader, %.lr.ph.i.i135.i
  %.val2.i.i.pre.i = load i32, ptr %i.ea, align 4, !tbaa !259
  br label %._crit_edge252.i

._crit_edge252.i:                                 ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge252.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i, %._crit_edge.i48
  %.val2.i.i.i = phi i32 [ %.val2.i.i.pre.i, %._crit_edge252.loopexit.i ], [ %.val.i.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit.i ], [ %.val.i.pre.i, %._crit_edge.i48 ], [ %.val.i.pre.i, %.lr.ph.i.i.i.i.preheader ], [ %.val.i.pre.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.mi = icmp eq i32 %.val2.i.i.i, 0
  br i1 %i.mi, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit.i, label %.lr.ph11.preheader.i.i.i

.lr.ph11.preheader.i.i.i:                         ; preds = %._crit_edge252.i
  %i.mj = zext i32 %.val2.i.i.i to i64            ; 2 uses
  %i.mk = add nuw nsw i64 %i.mj, 31               ; 2 uses
  %i.ml = lshr i64 %i.mk, 5
  br label %.lr.ph11.i.i.i

.lr.ph11.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph11.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !189 ; 2 uses
  %.not11.i6.i.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not11.i6.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %.lr.ph11.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.mo = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.ar

bb.ar:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i49
  %.0.i7.i.i.i = phi i32 [ %i.mn, %.lr.ph.i.i.i49 ], [ %i.mz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.mp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i, i1 true)
  %i.mq = or disjoint i32 %i.mp, %i.mo
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.pre.i, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %.val.i.i.i106.i = load ptr, ptr %i.mt, align 8, !tbaa !262 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i106.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mu = getelementptr i8, ptr %i.ms, i64 24
  %.val2.i.i.i107.i = load ptr, ptr %i.mu, align 8
  %i.mv = ptrtoint ptr %.val2.i.i.i107.i to i64
  %i.mw = ptrtoint ptr %.val.i.i.i106.i to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i106.i, i64 noundef %i.mx) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %i.my = add i32 %.0.i7.i.i.i, -1
  %i.mz = and i32 %i.my, %.0.i7.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.ar, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph11.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ml
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i.i, label %.lr.ph11.i.i.i, !llvm.loop !3

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %i.na = shl nuw nsw i64 %i.mj, 5
  %i.nb = lshr i64 %i.mk, 3
  %i.nc = and i64 %i.nb, 1073741820
  %i.nd = add nuw nsw i64 %i.nc, %i.na
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val2.i.pre.i, i64 noundef %i.nd, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i.i, %._crit_edge252.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit

bb.at:                                            ; preds = %_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i, %.lr.ph251.i
  %.pn339.i = phi i64 [ %i.es, %.lr.ph251.i ], [ %i.rt, %_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.0149.0250.i = getelementptr i8, ptr %.val2.i.pre.i, i64 %.pn339.i ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0149.0250.i, i64 8
  %.val69.i = load ptr, ptr %i.ne, align 8, !tbaa !262 ; 3 uses
  %i.nf = getelementptr i8, ptr %.sroa.0149.0250.i, i64 16 ; 2 uses
  %.val70.i = load ptr, ptr %i.nf, align 8, !tbaa !263 ; 2 uses
  %i.ng = ptrtoint ptr %.val70.i to i64
  %i.nh = ptrtoint ptr %.val69.i to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = lshr exact i64 %i.ni, 3
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = add i32 %i.nk, -1
  %27 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18TriangleChainCount, i64 120), align 8, !tbaa !252
  %i.nm = icmp ult i32 %i.nl, %27
  br i1 %i.nm, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nn = getelementptr inbounds i8, ptr %.val70.i, i64 -8 ; 4 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !261
  store ptr %i.nn, ptr %i.nf, align 8, !tbaa !263
  %.not215244.i = icmp eq ptr %i.nn, %.val69.i
  br i1 %.not215244.i, label %.loopexit.i, label %.lr.ph248.preheader.i

.lr.ph248.preheader.i:                            ; preds = %bb.au
  %.pre.i.a = load ptr, ptr %i.et, align 8, !tbaa !267, !noalias !667
  %.pre273.i.a = load ptr, ptr %i.eu, align 8, !tbaa !268, !noalias !667
  br label %.lr.ph248.i

.lr.ph248.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i, %.lr.ph248.preheader.i
  %i.np = phi ptr [ %i.qx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %.pre273.i.a, %.lr.ph248.preheader.i ] ; 4 uses
  %i.nq = phi ptr [ %i.qy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %.pre.i.a, %.lr.ph248.preheader.i ] ; 4 uses
  %.0246.i = phi ptr [ %i.ns, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %i.no, %.lr.ph248.preheader.i ]
  %.sroa.0142.0245.i = phi ptr [ %i.nr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i ], [ %i.nn, %.lr.ph248.preheader.i ]
  %i.nr = getelementptr inbounds i8, ptr %.sroa.0142.0245.i, i64 -8 ; 3 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !261 ; 6 uses
  %i.nt = load i32, ptr %i.ev, align 4, !tbaa !269, !noalias !667 ; 4 uses
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %.loopexit.i.i.i109.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph248.i
  %i.nv = add i32 %i.nt, -1                       ; 2 uses
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = mul i64 %i.nw, -4658895280553007687     ; 2 uses
  %i.ny = lshr i64 %i.nx, 31
  %i.nz = xor i64 %i.ny, %i.nx
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = and i32 %i.nv, %i.oa                    ; 3 uses
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %i.oc ; 2 uses
  %i.oe = lshr i64 %i.oc, 5
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !189, !noalias !668
  %i.oh = and i32 %i.ob, 31
  %i.oi = lshr i32 %i.og, %i.oh
  %i.oj = trunc i32 %i.oi to i1
  br i1 %i.oj, label %.lr.ph.i.i.i.i131.i, label %.loopexit.i.i.i109.i, !prof !190

.lr.ph.i.i.i.i131.i:                              ; preds = %bb.av, %bb.aw
  %i.ok = phi ptr [ %i.oq, %bb.aw ], [ %i.od, %bb.av ]
  %.05.i.i.i.i132.i = phi i32 [ %i.oo, %bb.aw ], [ %i.ob, %bb.av ]
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !261, !noalias !668
  %i.om = icmp eq ptr %i.ns, %i.ol
  br i1 %i.om, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i, label %bb.aw, !prof !191

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i131.i
  %i.on = add nuw i32 %.05.i.i.i.i132.i, 1
  %i.oo = and i32 %i.on, %i.nv                    ; 3 uses
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %i.op ; 2 uses
  %i.or = lshr i64 %i.op, 5
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !189, !noalias !668
  %i.ou = and i32 %i.oo, 31
  %i.ov = lshr i32 %i.ot, %i.ou
  %i.ow = trunc i32 %i.ov to i1
  br i1 %i.ow, label %.lr.ph.i.i.i.i131.i, label %.loopexit.i.i.i109.i, !prof !192, !llvm.loop !4

.loopexit.i.i.i109.i:                             ; preds = %bb.aw, %bb.av, %.lr.ph248.i
  %.lcssa9.sink.i.ph.i.i.i110.i = phi ptr [ %i.od, %bb.av ], [ null, %.lr.ph248.i ], [ %i.oq, %bb.aw ]
  %.val6.i.i.i.i111.i = load i32, ptr %i.ew, align 8, !tbaa !270, !noalias !668
  %i.ox = shl i32 %.val6.i.i.i.i111.i, 2
  %i.oy = add i32 %i.ox, 4
  %i.oz = mul i32 %i.nt, 3
  %.not.i.i.i.i112.i = icmp ult i32 %i.oy, %i.oz
  br i1 %.not.i.i.i.i112.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i, label %bb.ax, !prof !191

bb.ax:                                            ; preds = %.loopexit.i.i.i109.i
  %i.pa = shl i32 %i.nt, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.et, i32 noundef %i.pa), !noalias !668
  %i.pb = load ptr, ptr %i.et, align 8, !tbaa !267, !noalias !669 ; 5 uses
  %i.pc = load ptr, ptr %i.eu, align 8, !tbaa !268, !noalias !669 ; 5 uses
  %i.pd = load i32, ptr %i.ev, align 4, !tbaa !269, !noalias !669 ; 2 uses
  %i.pe = icmp ne i32 %i.pd, 0
  call void @llvm.assume(i1 %i.pe)
  %i.pf = add i32 %i.pd, -1                       ; 2 uses
  %i.pg = ptrtoint ptr %i.ns to i64
  %i.ph = mul i64 %i.pg, -4658895280553007687     ; 2 uses
  %i.pi = lshr i64 %i.ph, 31
  %i.pj = xor i64 %i.pi, %i.ph
  %i.pk = trunc i64 %i.pj to i32
  %i.pl = and i32 %i.pf, %i.pk                    ; 3 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %i.pm ; 2 uses
  %i.po = lshr i64 %i.pm, 5
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !189, !noalias !668
  %i.pr = and i32 %i.pl, 31
  %i.ps = lshr i32 %i.pq, %i.pr
  %i.pt = trunc i32 %i.ps to i1
  br i1 %i.pt, label %.lr.ph.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i, !prof !190

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.ay
  %i.pu = phi ptr [ %i.qa, %bb.ay ], [ %i.pn, %bb.ax ] ; 2 uses
  %.05.i.i = phi i32 [ %i.py, %bb.ay ], [ %i.pl, %bb.ax ]
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !261, !noalias !668
  %i.pw = icmp eq ptr %i.ns, %i.pv
  br i1 %i.pw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i, label %bb.ay, !prof !191

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.px = add nuw i32 %.05.i.i, 1
  %i.py = and i32 %i.px, %i.pf                    ; 3 uses
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %i.pz ; 2 uses
  %i.qb = lshr i64 %i.pz, 5
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !189, !noalias !668
  %i.qe = and i32 %i.py, 31
  %i.qf = lshr i32 %i.qd, %i.qe
  %i.qg = trunc i32 %i.qf to i1
  br i1 %i.qg, label %.lr.ph.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i, !prof !192, !llvm.loop !4

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i, %bb.ax, %.loopexit.i.i.i109.i
  %i.qh = phi ptr [ %i.np, %.loopexit.i.i.i109.i ], [ %i.pc, %bb.ax ], [ %i.pc, %.lr.ph.i.i ], [ %i.pc, %bb.ay ] ; 2 uses
  %i.qi = phi ptr [ %i.nq, %.loopexit.i.i.i109.i ], [ %i.pb, %bb.ax ], [ %i.pb, %.lr.ph.i.i ], [ %i.pb, %bb.ay ] ; 2 uses
  %i.qj = phi ptr [ %.lcssa9.sink.i.ph.i.i.i110.i, %.loopexit.i.i.i109.i ], [ %i.pn, %bb.ax ], [ %i.qa, %bb.ay ], [ %i.pu, %.lr.ph.i.i ] ; 4 uses
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qi to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = sdiv exact i64 %i.qm, 24                ; 2 uses
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = and i32 %i.qo, 31
  %i.qq = shl nuw i32 1, %i.qp
  %i.qr = lshr i64 %i.qn, 5
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qr ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !189, !noalias !668
  %i.qu = or i32 %i.qq, %i.qt
  store i32 %i.qu, ptr %i.qs, align 4, !tbaa !189, !noalias !668
  %.val.i.i.i.i.i119.i = load i32, ptr %i.ew, align 8, !tbaa !270, !noalias !668
  %i.qv = add i32 %.val.i.i.i.i.i119.i, 1
  store i32 %i.qv, ptr %i.ew, align 8, !tbaa !270, !noalias !668
  store ptr %i.ns, ptr %i.qj, align 8, !tbaa !261, !noalias !668
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %.0246.i, ptr %i.qw, align 8, !tbaa !261, !noalias !668
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i8 1, ptr %.sroa.8.8..sroa_idx.i, align 8, !tbaa !271, !noalias !668
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i: ; preds = %.lr.ph.i.i.i.i131.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i
  %i.qx = phi ptr [ %i.qh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i ], [ %i.np, %.lr.ph.i.i.i.i131.i ]
  %i.qy = phi ptr [ %i.qi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i.i.i.i ], [ %i.nq, %.lr.ph.i.i.i.i131.i ]
  %.not215.i = icmp eq ptr %i.nr, %.val69.i
  br i1 %.not215.i, label %.loopexit.i, label %.lr.ph248.i

.loopexit.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6insertEOSt4pairIS4_S7_E.exit.i, %bb.au, %bb.at
  %i.qz = add i64 %.pn339.i, 32
  %i.ra = ashr exact i64 %i.qz, 5                 ; 3 uses
  %.not.i.i133.i = icmp ult i64 %i.ra, %i.ed
  br i1 %.not.i.i133.i, label %bb.az, label %._crit_edge252.loopexit.i

bb.az:                                            ; preds = %.loopexit.i
  %i.rb = lshr i64 %i.ra, 5                       ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !189
  %i.re = trunc nuw i64 %i.ra to i32
  %i.rf = and i32 %i.re, 31
  %i.rg = shl nsw i32 -1, %i.rf
  %i.rh = and i32 %i.rd, %i.rg                    ; 2 uses
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.lr.ph.i.i135.i.preheader, label %_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i

.lr.ph.i.i135.i.preheader:                        ; preds = %bb.az
  %i.rj = add nuw nsw i64 %i.rb, 1                ; 2 uses
  %i.rk = icmp eq i64 %i.rj, %i.ef
  br i1 %i.rk, label %._crit_edge252.loopexit.i, label %.lr.ph447

.lr.ph.i.i135.i:                                  ; preds = %.lr.ph447
  %i.rl = add i64 %i.rn, 1                        ; 2 uses
  %i.rm = icmp eq i64 %i.rl, %i.ef
  br i1 %i.rm, label %._crit_edge252.loopexit.i, label %.lr.ph447, !llvm.loop !455

.lr.ph447:                                        ; preds = %.lr.ph.i.i135.i.preheader, %.lr.ph.i.i135.i
  %i.rn = phi i64 [ %i.rl, %.lr.ph.i.i135.i ], [ %i.rj, %.lr.ph.i.i135.i.preheader ] ; 3 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !189 ; 2 uses
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %.lr.ph.i.i135.i, label %_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i, !llvm.loop !455

_ZN4llvm16DenseMapIteratorIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i: ; preds = %.lr.ph447, %bb.az
  %.012.lcssa.i.i.i = phi i64 [ %i.rb, %bb.az ], [ %i.rn, %.lr.ph447 ]
  %.0.lcssa.i.i.i50 = phi i32 [ %i.rh, %bb.az ], [ %i.rp, %.lr.ph447 ]
  %i.rr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i50, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 10
  %i.rs = shl nuw nsw i32 %i.rr, 5
  %.idx338.i = zext nneg i32 %i.rs to i64
  %i.rt = or disjoint i64 %.idx.i.i.i, %.idx338.i ; 2 uses
  %.not214.i = icmp eq i64 %i.rt, %.idx337.i
  br i1 %.not214.i, label %._crit_edge252.loopexit.i, label %bb.at

_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit: ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit.thread, %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEvE13TriangleChainNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement21allowTailDupPlacementERN4llvm15MachineFunctionE.exit
  br i1 %.034, label %.critedge, label %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit.thread

_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit.thread: ; preds = %bb.s, %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit
  call fastcc void @_ZN12_GLOBAL__N_121MachineBlockPlacement14buildCFGChainsEv(ptr noundef nonnull align 8 dereferenceable(680) %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit.thread, %_ZN12_GLOBAL__N_121MachineBlockPlacement24precomputeTriangleChainsEv.exit
  %i.ru = load ptr, ptr %i.v, align 8, !tbaa !536, !nonnull !47, !align !187
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 1128
  %i.rw = load i8, ptr %i.rv, align 8
  %i.rx = trunc i8 %i.rw to i1
  br i1 %i.rx, label %.critedge39, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.rz = load i8, ptr %i.ry, align 8, !tbaa !240, !range !46, !noundef !47
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BranchFoldPlacement, i64 120), align 8, !range !46
  %i.sc = trunc nuw i8 %i.sb to i1
  %or.cond138 = select i1 %i.sa, i1 %i.sc, i1 false
  br i1 %or.cond138, label %bb.bb, label %.critedge39

bb.bb:                                            ; preds = %bb.ba
  %i.sd = load ptr, ptr %i.o, align 8, !tbaa !244 ; 2 uses
  %.not4.i.i.i53 = icmp eq ptr %i.sd, %i.s
  br i1 %.not4.i.i.i53, label %.critedge39, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.bb, %.lr.ph.i.i.i54
  %.06.i.i.i55 = phi i32 [ %i.sg, %.lr.ph.i.i.i54 ], [ 0, %bb.bb ]
  %.sroa.02.05.i.i.i56 = phi ptr [ %i.sf, %.lr.ph.i.i.i54 ], [ %i.sd, %bb.bb ]
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i56, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !244 ; 2 uses
  %i.sg = add i32 %.06.i.i.i55, 1                 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.sf, %i.s
  br i1 %.not.i.i.i57, label %_ZNK4llvm15MachineFunction4sizeEv.exit59, label %.lr.ph.i.i.i54, !llvm.loop !450

_ZNK4llvm15MachineFunction4sizeEv.exit59:         ; preds = %.lr.ph.i.i.i54
  %i.sh = icmp ugt i32 %i.sg, 3
  br i1 %i.sh, label %bb.bc, label %.critedge39

bb.bc:                                            ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit59
  %i.si = load i32, ptr %i.bt, align 8, !tbaa !648
  %i.sj = add i32 %i.si, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.sk = load ptr, ptr %i.cj, align 8, !tbaa !236
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !235
  %i.sn = load ptr, ptr %i.ch, align 8, !tbaa !239
  call void @_ZN4llvm12BranchFolderC1EbbRNS_11MBFIWrapperERKNS_28MachineBranchProbabilityInfoEPNS_18ProfileSummaryInfoEj(ptr noundef nonnull align 8 dereferenceable(248) %25, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %i.sk, ptr noundef nonnull align 1 dereferenceable(1) %i.sm, ptr noundef %i.sn, i32 noundef %i.sj) #25
  %i.so = load ptr, ptr %i.ag, align 8, !tbaa !246
  %i.sp = load ptr, ptr %i.aa, align 8, !tbaa !646, !nonnull !47, !align !187 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !38
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 200
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = call noundef ptr %i.ss(ptr noundef nonnull align 8 dereferenceable(344) %i.sp) #25
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !237
  %i.sw = call noundef zeroext i1 @_ZN4llvm12BranchFolder16OptimizeFunctionERNS_15MachineFunctionEPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoEPNS_15MachineLoopInfoEb(ptr noundef nonnull align 8 dereferenceable(248) %25, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %i.so, ptr noundef %i.st, ptr noundef %i.sv, i1 noundef zeroext true) #25
  br i1 %i.sw, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !238 ; 4 uses
  %.not36 = icmp eq ptr %i.sy, null
  br i1 %.not36, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 128
  store ptr %1, ptr %i.sz, align 8, !tbaa !679
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !680
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 224
  store i32 %i.tb, ptr %i.tc, align 8, !tbaa !681
  call void @_ZN4llvm14DomTreeBuilder9CalculateINS_17DominatorTreeBaseINS_17MachineBasicBlockELb1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(228) %i.sy) #25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.034, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 656
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEPN12_GLOBAL__N_110BlockChainENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 288
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.te)
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 576
  call fastcc void @_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_110BlockChainEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %i.tf)
  call fastcc void @_ZN12_GLOBAL__N_121MachineBlockPlacement14buildCFGChainsEv(ptr noundef nonnull align 8 dereferenceable(680) %0)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bc
  %i.tg = getelementptr inbounds nuw i8, ptr %25, i64 168
  %i.th = getelementptr inbounds nuw i8, ptr %25, i64 208
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i60, label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.ti) #25
  br label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i.i: ; preds = %bb.bi, %bb.bh
  %i.tj = load ptr, ptr %i.tg, align 8, !tbaa !682 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %25, i64 192
  %i.tl = icmp eq ptr %i.tj, %i.tk
  br i1 %i.tl, label %_ZN4llvm12LivePhysRegsD2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.tj) #25
  br label %_ZN4llvm12LivePhysRegsD2Ev.exit.i

_ZN4llvm12LivePhysRegsD2Ev.exit.i:                ; preds = %bb.bj, %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !685 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4llvm12BranchFolder11SameTailEltESaIS2_EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm12LivePhysRegsD2Ev.exit.i
  %i.to = getelementptr inbounds nuw i8, ptr %25, i64 104
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !686
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.ts) #28
  br label %_ZNSt6vectorIN4llvm12BranchFolder11SameTailEltESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4llvm12BranchFolder11SameTailEltESaIS2_EED2Ev.exit.i: ; preds = %bb.bk, %_ZN4llvm12LivePhysRegsD2Ev.exit.i
  %i.tt = getelementptr inbounds nuw i8, ptr %25, i64 84
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !689 ; 2 uses
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN4llvm12BranchFolder11SameTailEltESaIS2_EED2Ev.exit.i
  %i.tw = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !690
  %i.ty = zext i32 %i.tu to i64                   ; 2 uses
  %i.tz = shl nuw nsw i64 %i.ty, 4
  %i.ua = add nuw nsw i64 %i.ty, 31
  %i.ub = lshr i64 %i.ua, 3
  %i.uc = and i64 %i.ub, 1073741820
  %i.ud = add nuw nsw i64 %i.uc, %i.tz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.tx, i64 noundef %i.ud, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit.i: ; preds = %bb.bl, %_ZNSt6vectorIN4llvm12BranchFolder11SameTailEltESaIS2_EED2Ev.exit.i
  %i.ue = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.uf = load i8, ptr %i.ue, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit.i
  %i.uh = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !48
  call void @free(ptr noundef %i.ui) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

end_hunk_1
