Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64CompressJumpTables?download=true
inline.NumInlined: 311
inline.NumDeleted: 231
begin_hunk_0_@_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl3runERN4llvm15MachineFunctionE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !327
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !328
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !329
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 3                   ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = and i64 %i.t, 4294967295                 ; 5 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ugt i64 %i.v, %i.z
  br i1 %i.aa, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.ab, i64 noundef %i.v, i64 noundef 4) #13
  %.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !327
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.v, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %bb.d
  %.pre-phi.i.i30.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %.pre-phi.i.i30.i
  %i.ae = sub nsw i64 %i.v, %.pre-phi.i.i30.i
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !330
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  store i32 %i.u, ptr %i.l, align 8, !tbaa !327
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i

_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i:     ; preds = %.sink.split.i.i.i, %bb.c
  %i.ag = phi ptr [ %i.j, %bb.c ], [ %.pre.i, %.sink.split.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 296 ; 2 uses
  %.sroa.025.041.i = load ptr, ptr %i.ah, align 8, !tbaa !331 ; 3 uses
  %.not42.i = icmp eq ptr %.sroa.025.041.i, %i.ai
  br i1 %.not42.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i, %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i
  %.sroa.025.044.i = phi ptr [ %.sroa.025.0.i, %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i ], [ %.sroa.025.041.i, %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i ] ; 5 uses
  %.01843.i = phi i32 [ %i.bq, %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 208
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aj, align 8, !tbaa !332 ; 2 uses
  %i.ak = icmp ugt i8 %.sroa.0.0.copyload.i.i, 2
  %i.al = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, -4
  %i.ap = select i1 %i.ak, i32 %i.ao, i32 0
  %.015.i = add i32 %i.ap, %.01843.i              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !382
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 %.015.i, ptr %i.au, align 4, !tbaa !330
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 48 ; 2 uses
  %.sroa.011.015.i.i = load ptr, ptr %i.av, align 8, !tbaa !383 ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.011.015.i.i, %i.aw
  br i1 %.not16.i.i, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.011.018.i.i = phi ptr [ %.sroa.011.0.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %.sroa.011.015.i.i, %.lr.ph.i ] ; 7 uses
  %.017.i.i = phi i32 [ %i.bf, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ 0, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i, i64 52
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !392
  %i.az = add i32 %i.ay, -3
  %switch.i.i = icmp ult i32 %i.az, -2
  br i1 %switch.i.i, label %bb.e, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl12scanFunctionEv.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ba = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.011.018.i.i) #13, !inline_history !52
  %i.bf = add i32 %i.be, %.017.i.i                ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.011.018.i.i, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !393
  %i.bj = and i32 %i.bi, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.bl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.011.018.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !383 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !393
  %i.bo = and i32 %i.bn, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !53

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.e
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.011.018.i.i, %bb.e ], [ %.sroa.011.018.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.bl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %.sroa.011.0.i.i = load ptr, ptr %i.bp, align 8, !tbaa !383 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.011.0.i.i, %i.aw
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i
  %.sroa.0.0.extract.trunc36.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bf, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ]
  %i.bq = add i32 %.sroa.0.0.extract.trunc36.i, %.015.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 8
  %.sroa.025.0.i = load ptr, ptr %i.br, align 8, !tbaa !331 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.025.0.i, %i.ai
  br i1 %.not.i, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl16computeBlockSizeERN4llvm17MachineBasicBlockE.exit.thread.i
  %.pre48 = load ptr, ptr %i.a, align 8, !tbaa !63 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre48, i64 304
  %.sroa.024.037.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !331
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i
  %.sroa.024.037 = phi ptr [ %.sroa.024.037.pre, %.loopexit.loopexit ], [ %.sroa.025.041.i, %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre48, %.loopexit.loopexit ], [ %i.ag, %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 296 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.024.037, %i.bt
  br i1 %.not38, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl12scanFunctionEv.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.loopexit, %._crit_edge
  %.sroa.024.040 = phi ptr [ %.sroa.024.0, %._crit_edge ], [ %.sroa.024.037, %.loopexit ] ; 4 uses
  %.01739 = phi i1 [ %.1.lcssa, %._crit_edge ], [ false, %.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.024.040, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.024.040, i64 48 ; 2 uses
  %.sroa.021.032 = load ptr, ptr %i.bu, align 8, !tbaa !383 ; 2 uses
  %.not2833 = icmp eq ptr %.sroa.021.032, %i.bv
  br i1 %.not2833, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph42
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.024.040, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !382
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !330
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %.lr.ph42
  %.1.lcssa = phi i1 [ %.01739, %.lr.ph42 ], [ %.3.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.024.040, i64 8
  %.sroa.024.0 = load ptr, ptr %i.cc, align 8, !tbaa !331 ; 2 uses
  %.not = icmp eq ptr %.sroa.024.0, %i.bt
  br i1 %.not, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl12scanFunctionEv.exit, label %.lr.ph42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.021.036 = phi ptr [ %.sroa.021.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.021.032, %.lr.ph.preheader ] ; 9 uses
  %.01635 = phi i32 [ %i.fh, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %.134 = phi i1 [ %.3.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.01739, %.lr.ph.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 52
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !392
  %.not.i18 = icmp eq i32 %i.ce, 973
  br i1 %.not.i18, label %bb.f, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit

bb.f:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !395
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !332 ; 5 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !396
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = sext i32 %i.ci to i64                   ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !399
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !400 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !400 ; 2 uses
  %i.ct = icmp eq ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.cv = sub nsw i32 %spec.select.i, %.01635
  %2 = sext i32 %i.cv to i64
  %3 = add nsw i64 %2, 1048576
  %i.cw = icmp ult i64 %3, 2097152
  br i1 %i.cw, label %bb.i, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i
  %.058.i = phi ptr [ null, %.preheader.i ], [ %spec.select31.i, %bb.h ]
  %.02557.i = phi i32 [ 2147483647, %.preheader.i ], [ %spec.select.i, %bb.h ] ; 2 uses
  %.05356.i = phi i32 [ -2147483648, %.preheader.i ], [ %.sroa.speculated.i, %bb.h ]
  %.sroa.047.055.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.dd, %bb.h ] ; 2 uses
  %i.cx = load ptr, ptr %.sroa.047.055.i, align 8, !tbaa !401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !382
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !330 ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.05356.i, i32 %i.dc) ; 2 uses
  %.not30.i = icmp sgt i32 %i.dc, %.02557.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.dc, i32 %.02557.i) ; 3 uses
  %spec.select31.i = select i1 %.not30.i, ptr %.058.i, ptr %i.cx ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.047.055.i, i64 8 ; 2 uses
  %.not54.i = icmp eq ptr %i.dd, %i.cs
  br i1 %.not54.i, label %bb.g, label %bb.h

bb.i:                                             ; preds = %bb.g
  %i.de = sub nsw i32 %.sroa.speculated.i, %spec.select.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !402 ; 8 uses
  %i.dh = sdiv i32 %i.de, 4                       ; 2 uses
  %i.di = icmp ult i32 %i.dh, 256
  br i1 %i.di, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.dj = tail call noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360) %spec.select31.i) #13 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1968 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1976 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !327 ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %.not.i.i19 = icmp ugt i32 %i.dm, %i.ci
  br i1 %.not.i.i19, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = add nsw i32 %i.ci, 1                    ; 2 uses
  %i.dp = sext i32 %i.do to i64                   ; 6 uses
  %i.dq = icmp eq i64 %i.dp, %i.dn
  br i1 %i.dq, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = icmp ult i64 %i.dp, %i.dn
  br i1 %i.dr, label %.sink.split.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 1980
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp ugt i64 %i.dp, %i.du
  br i1 %i.dv, label %bb.n, label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 1984
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull %i.dw, i64 noundef %i.dp, i64 noundef 16) #13
  %.pre.i.i.i.i = load i32, ptr %i.dl, align 8, !tbaa !327
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pre-phi.i.i.i.i = phi i64 [ %i.dn, %bb.m ], [ %.pre13.i.i.i.i, %bb.n ] ; 2 uses
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dp
  %.not11.i.i.i.i = icmp samesign eq i64 %.pre-phi.i.i.i.i, %i.dp
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i.i
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.pre-phi.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %i.dz, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  store i32 0, ptr %.012.i.i.i.i, align 8, !tbaa !404
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !405
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, %i.dy
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !54

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i.i, %bb.l
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !327
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  %i.ec = icmp ult i32 %i.dh, 65536
  br i1 %i.ec, label %bb.p, label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit

bb.p:                                             ; preds = %bb.o
  %i.ed = tail call noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360) %spec.select31.i) #13 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 1968 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 1976 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !327 ; 2 uses
  %i.eh = zext i32 %i.eg to i64                   ; 3 uses
  %.not.i32.i = icmp ugt i32 %i.eg, %i.ci
  br i1 %.not.i32.i, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = add nsw i32 %i.ci, 1                    ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 6 uses
  %i.ek = icmp eq i64 %i.ej, %i.eh
  br i1 %i.ek, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = icmp ult i64 %i.ej, %i.eh
  br i1 %i.el, label %.sink.split.i.i.i40.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 1980
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17
  %i.eo = zext i32 %i.en to i64
  %i.ep = icmp ugt i64 %i.ej, %i.eo
  br i1 %i.ep, label %bb.t, label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i33.i

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 1984
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.eq, i64 noundef %i.ej, i64 noundef 16) #13
  %.pre.i.i.i41.i = load i32, ptr %i.ef, align 8, !tbaa !327
  %.pre13.i.i.i42.i = zext i32 %.pre.i.i.i41.i to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i33.i

_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i33.i: ; preds = %bb.t, %bb.s
  %.pre-phi.i.i.i34.i = phi i64 [ %i.eh, %bb.s ], [ %.pre13.i.i.i42.i, %bb.t ] ; 2 uses
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !16 ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.ej
  %.not11.i.i.i35.i = icmp samesign eq i64 %.pre-phi.i.i.i34.i, %i.ej
  br i1 %.not11.i.i.i35.i, label %.sink.split.i.i.i40.i, label %.lr.ph.preheader.i.i.i36.i

.lr.ph.preheader.i.i.i36.i:                       ; preds = %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i33.i
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %.pre-phi.i.i.i34.i
  br label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %.lr.ph.i.i.i37.i, %.lr.ph.preheader.i.i.i36.i
  %.012.i.i.i38.i = phi ptr [ %i.ev, %.lr.ph.i.i.i37.i ], [ %i.et, %.lr.ph.preheader.i.i.i36.i ] ; 3 uses
  store i32 0, ptr %.012.i.i.i38.i, align 8, !tbaa !404
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i38.i, i64 8
  store ptr null, ptr %i.eu, align 8, !tbaa !405
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i38.i, i64 16 ; 2 uses
  %.not.i.i.i39.i = icmp eq ptr %i.ev, %i.es
  br i1 %.not.i.i.i39.i, label %.sink.split.i.i.i40.i, label %.lr.ph.i.i.i37.i, !llvm.loop !54

.sink.split.i.i.i40.i:                            ; preds = %.lr.ph.i.i.i37.i, %_ZN4llvm15SmallVectorImplISt4pairIjPNS_8MCSymbolEEE7reserveEm.exit.i.i.i33.i, %bb.r
  store i32 %i.ei, ptr %i.ef, align 8, !tbaa !327
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.q, %.sink.split.i.i.i40.i, %bb.j, %bb.k, %.sink.split.i.i.i.i
  %.sink73.in.i = phi ptr [ %i.dk, %bb.j ], [ %i.dk, %.sink.split.i.i.i.i ], [ %i.dk, %bb.k ], [ %i.ee, %.sink.split.i.i.i40.i ], [ %i.ee, %bb.q ], [ %i.ee, %bb.p ]
  %.sink71.i = phi i32 [ 1, %bb.j ], [ 1, %.sink.split.i.i.i.i ], [ 1, %bb.k ], [ 2, %.sink.split.i.i.i40.i ], [ 2, %bb.q ], [ 2, %bb.p ]
  %.sink.i = phi ptr [ %i.dj, %bb.j ], [ %i.dj, %.sink.split.i.i.i.i ], [ %i.dj, %bb.k ], [ %i.ed, %.sink.split.i.i.i40.i ], [ %i.ed, %bb.q ], [ %i.ed, %bb.p ]
  %.sink67.i = phi i64 [ -31168, %bb.j ], [ -31168, %.sink.split.i.i.i.i ], [ -31168, %bb.k ], [ -31104, %.sink.split.i.i.i40.i ], [ -31104, %bb.q ], [ -31104, %bb.p ]
  %.sink73.i = load ptr, ptr %.sink73.in.i, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.sink73.i, i64 %i.cn ; 2 uses
  store i32 %.sink71.i, ptr %i.ew, align 8, !tbaa !404
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.sink.i, ptr %i.ex, align 8, !tbaa !405
  %i.ey = load ptr, ptr %0, align 8, !tbaa !179
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !406
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %.sink67.i
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.021.036, ptr noundef nonnull align 8 dereferenceable(32) %i.fb) #13
  br label %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit

_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit: ; preds = %.lr.ph, %bb.f, %bb.g, %bb.o, %.sink.split.i
  %.3.i = phi i1 [ %.134, %.lr.ph ], [ %.134, %bb.f ], [ %.134, %bb.g ], [ %.134, %bb.o ], [ true, %.sink.split.i ] ; 2 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !23
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 168
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(112) %i.fc, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.021.036) #13
  %i.fh = add i32 %i.fg, %.01635
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.021.036, align 8
  %i.fi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 44
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !393
  %i.fl = and i32 %i.fk, 8
  %.not34.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.fn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.021.036, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !383 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !393
  %i.fq = and i32 %i.fp, 8
  %.not3.i.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !53

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.021.036, %_ZN12_GLOBAL__N_129AArch64CompressJumpTablesImpl17compressJumpTableERN4llvm12MachineInstrEi.exit ], [ %.sroa.021.036, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.fn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.021.0 = load ptr, ptr %i.fr, align 8, !tbaa !383 ; 2 uses
  %.not28 = icmp eq ptr %.sroa.021.0, %i.bv
  br i1 %.not28, label %._crit_edge, label %.lr.ph
end_hunk_0
