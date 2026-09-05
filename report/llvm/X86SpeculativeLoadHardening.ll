Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86SpeculativeLoadHardening?download=true
inline.NumInlined: 3138
inline.NumDeleted: 1377
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_131X86SpeculativeLoadHardeningImpl3runERN4llvm15MachineFunctionE:bb.a
.preheader.i:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i, %bb.bh
  %i.rl = load i32, ptr %i.qw, align 8, !tbaa !188 ; 2 uses
  %.not.i2031.i = icmp eq i32 %i.rl, 0
  br i1 %.not.i2031.i, label %._crit_edge.i100, label %.lr.ph32.i

bb.bi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i, %.lr.ph.i114
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i114 ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i ] ; 4 uses
  %i.rm = load ptr, ptr %i.rj, align 8, !tbaa !272
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %i.rm, i64 %indvars.iv.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 48
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !273 ; 3 uses
  %i.rq = load i8, ptr %i.qu, align 8, !tbaa !25, !range !26, !noalias !582, !noundef !27
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.bj, label %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.rs = load ptr, ptr %29, align 8, !tbaa !28, !noalias !582 ; 2 uses
  %i.rt = load i32, ptr %i.qt, align 4, !tbaa !33, !noalias !582 ; 4 uses
  %i.ru = zext i32 %i.rt to i64
  %.idx.i.i.i116 = shl nuw nsw i64 %i.ru, 3
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.idx.i.i.i116 ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %bb.bj, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.rx, %.critedge.i.i.i ], [ %i.rs, %bb.bj ] ; 2 uses
  %i.rw = load ptr, ptr %.023.i.i.i, align 8, !tbaa !34, !noalias !582
  %.not15.i.i.i = icmp eq ptr %i.rw, %i.rp
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread234, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i117
  %i.rx = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.rx, %i.rv
  br i1 %.not.i.i.i118, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i117

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.bj
  %i.ry = load i32, ptr %i.qs, align 8, !tbaa !35, !noalias !582
  %i.rz = icmp ult i32 %i.rt, %i.ry
  br i1 %i.rz, label %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread, label %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i

_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread: ; preds = %._crit_edge.i.i.i
  %i.sa = add nuw i32 %i.rt, 1
  store i32 %i.sa, ptr %i.qt, align 4, !tbaa !33, !noalias !582
  store ptr %i.rp, ptr %i.rv, align 8, !tbaa !34, !noalias !582
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i: ; preds = %bb.bi, %._crit_edge.i.i.i
  %i.sb = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %29, ptr noundef %i.rp) #19, !noalias !582
  %i.sc = extractvalue { ptr, i8 } %i.sb, 1
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i, label %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread234

_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread234: ; preds = %.lr.ph.i.i.i117, %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i
  %i.se = load i32, ptr %i.qw, align 8, !tbaa !188 ; 2 uses
  %i.sf = load i32, ptr %i.qx, align 4, !tbaa !189
  %.not.i.i115 = icmp ult i32 %i.se, %i.sf
  br i1 %.not.i.i115, label %bb.bl, label %bb.bk, !prof !259

bb.bk:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread234
  %i.sg = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %30, i32 noundef %i.sg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

bb.bl:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread234
  %i.sh = zext i32 %i.se to i64
  %i.si = load ptr, ptr %30, align 8, !tbaa !30
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.sh
  %i.sk = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.sk, ptr %i.sj, align 1
  %i.sl = load i32, ptr %i.qw, align 8, !tbaa !188
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.qw, align 8, !tbaa !188
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i: ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i.thread, %bb.bl, %bb.bk, %_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.sn = icmp samesign ult i64 %indvars.iv.next.i, %i.rk
  br i1 %i.sn, label %bb.bi, label %.preheader.i, !llvm.loop !500

.lr.ph32.i:                                       ; preds = %.preheader.i, %.lr.ph32.i
  %i.so = phi i32 [ %i.sw, %.lr.ph32.i ], [ %i.rl, %.preheader.i ] ; 2 uses
  %i.sp = load ptr, ptr %30, align 8, !tbaa !30
  %i.sq = zext i32 %i.so to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sq
  %i.ss = getelementptr inbounds i8, ptr %i.sr, i64 -4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !263 ; 2 uses
  %i.su = add i32 %i.so, -1
  store i32 %i.su, ptr %i.qw, align 8, !tbaa !188
  %i.sv = add nsw i32 %i.st, 1
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.022.035.i, i32 noundef %i.sv) #19
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.022.035.i, i32 noundef %i.st) #19
  %i.sw = load i32, ptr %i.qw, align 8, !tbaa !188 ; 2 uses
  %.not.i20.i = icmp eq i32 %i.sw, 0
  br i1 %.not.i20.i, label %._crit_edge.i100, label %.lr.ph32.i, !llvm.loop !501

._crit_edge.i100:                                 ; preds = %.lr.ph32.i, %.preheader.i
  %i.sx = load i8, ptr %i.qu, align 8, !tbaa !25, !range !26, !noundef !27
  %i.sy = trunc nuw i8 %i.sx to i1
  br i1 %i.sy, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i100
  %i.sz = load i32, ptr %i.qt, align 4, !tbaa !33
  %i.ta = shl i32 %i.sz, 2
  %i.tb = load i32, ptr %i.qs, align 8, !tbaa !35 ; 3 uses
  %i.tc = icmp ult i32 %i.ta, %i.tb
  %i.td = icmp ugt i32 %i.tb, 32
  %or.cond.i.i = and i1 %i.tc, %i.td
  br i1 %or.cond.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %29) #19
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.te = load ptr, ptr %29, align 8, !tbaa !28
  %i.tf = zext i32 %i.tb to i64
  %i.tg = shl nuw nsw i64 %i.tf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.te, i8 -1, i64 %i.tg, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i100
  store i32 0, ptr %i.qt, align 4, !tbaa !33
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i:     ; preds = %bb.bp, %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.035.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i101 = load i64, ptr %.sroa.022.035.i, align 8
  %i.th = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i101, 4
  %.not.i.i.i.i102 = icmp eq i64 %i.th, 0
  br i1 %.not.i.i.i.i102, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i103

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109: ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.022.035.i, i64 44
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !206
  %i.tk = and i32 %i.tj, 8
  %.not34.i.i.i.i110 = icmp eq i32 %i.tk, 0
  br i1 %.not34.i.i.i.i110, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i103, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111
  %.sroa.0.05.i.i.i.i112 = phi ptr [ %i.tm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111 ], [ %.sroa.022.035.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109 ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i112, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !266 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 44
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !206
  %i.tp = and i32 %i.to, 8
  %.not3.i.i.i.i113 = icmp eq i32 %i.tp, 0
  br i1 %.not3.i.i.i.i113, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i103, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i103: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %.sroa.0.1.i.i.i.i104 = phi ptr [ %.sroa.022.035.i, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i ], [ %.sroa.022.035.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i109 ], [ %i.tm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i111 ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i104, i64 8
  %.sroa.022.0.i105 = load ptr, ptr %i.tq, align 8, !tbaa !266 ; 2 uses
  %.not28.i106 = icmp eq ptr %.sroa.022.0.i105, %i.rd
  br i1 %.not28.i106, label %.critedge.i107, label %.lr.ph37.i

.critedge.i107:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i103, %.lr.ph37.i, %.lr.ph43.i
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.025.041.i, i64 8
  %.sroa.025.0.i = load ptr, ptr %i.tr, align 8, !tbaa !187 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.025.0.i, %i.ac
  br i1 %.not.i108, label %._crit_edge44.i, label %.lr.ph43.i

_ZL23canonicalizePHIOperandsRN4llvm15MachineFunctionE.exit: ; preds = %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %.sroa.026.0.copyload = load i32, ptr %i.s, align 8, !tbaa !263
  call void @_ZN4llvm17MachineSSAUpdater10InitializeENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i32 %.sroa.026.0.copyload) #19
  %.sroa.025.0.copyload = load i32, ptr %i.s, align 8, !tbaa !263
  call void @_ZN4llvm17MachineSSAUpdater17AddAvailableValueEPNS_17MachineBasicBlockENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull %i.ab, i32 %.sroa.025.0.copyload) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %.val79 = load ptr, ptr %37, align 8, !tbaa !30 ; 2 uses
  %.val80 = load i32, ptr %i.ka, align 8, !tbaa !188 ; 2 uses
  %i.ts = zext i32 %.val80 to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.tt = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  store ptr %i.tt, ptr %41, align 8, !tbaa !30, !alias.scope !583
  %i.tu = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 6 uses
  store i32 0, ptr %i.tu, align 8, !tbaa !188, !alias.scope !583
  %i.tv = getelementptr inbounds nuw i8, ptr %41, i64 12 ; 2 uses
  store i32 16, ptr %i.tv, align 4, !tbaa !189, !alias.scope !583
  %.idx.i119 = mul nuw nsw i64 %i.ts, 48
  %i.tw = getelementptr inbounds nuw i8, ptr %.val79, i64 %.idx.i119
  %.not59.i = icmp eq i32 %.val80, 0
  br i1 %.not59.i, label %_ZN12_GLOBAL__N_131X86SpeculativeLoadHardeningImpl24tracePredStateThroughCFGERN4llvm15MachineFunctionENS1_8ArrayRefINS0_13BlockCondInfoEEE.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %_ZL23canonicalizePHIOperandsRN4llvm15MachineFunctionE.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 6 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 9 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 5 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit.i, %.lr.ph62.i
  %.060.i = phi ptr [ %.val79, %.lr.ph62.i ], [ %i.ajc, %_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit.i ] ; 5 uses
  %i.ub = load ptr, ptr %.060.i, align 8, !tbaa !281, !noalias !583 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.060.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !583
  %i.ud = getelementptr inbounds nuw i8, ptr %.060.i, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !282, !noalias !583 ; 4 uses
  store ptr %i.ue, ptr %i.b, align 8, !tbaa !286, !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !583
  %.not42.i = icmp eq ptr %i.ue, null
  br i1 %.not42.i, label %.preheader.i141, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 52
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !271
  %i.uh = icmp eq i32 %i.ug, 2021
  br i1 %i.uh, label %bb.bs, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.thread.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.thread.i: ; preds = %bb.br
  store ptr null, ptr %i.c, align 8, !tbaa !211, !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19, !noalias !583
  store i32 1, ptr %28, align 8, !noalias !583
  store i32 0, ptr %i.tx, align 8, !noalias !583
  br label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !272
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

.preheader.i141:                                  ; preds = %bb.bq
  %43 = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.preheader.i141, %bb.bs
  %.in.i = phi ptr [ %i.uk, %bb.bs ], [ %43, %.preheader.i141 ]
  %i.ul = load ptr, ptr %.in.i, align 8, !tbaa !273 ; 2 uses
  store ptr %i.ul, ptr %i.c, align 8, !tbaa !211, !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19, !noalias !583
  store i32 1, ptr %28, align 8, !noalias !583
  store i32 0, ptr %i.tx, align 8, !noalias !583
  %.not43.i140 = icmp eq ptr %i.ul, null
  br i1 %.not43.i140, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.um = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.um, 0
  %i.un = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8 ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !263
  %i.up = add nsw i32 %i.uo, 1
  store i32 %i.up, ptr %i.un, align 4, !tbaa !263
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.thread.i
  %i.uq = load ptr, ptr %i.uc, align 8, !tbaa !30, !noalias !583 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.060.i, i64 16 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !188, !noalias !583 ; 2 uses
  %i.ut = zext i32 %i.us to i64
  %.idx64.i120 = shl nuw nsw i64 %i.ut, 3
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.idx64.i120
  %.not4447.i = icmp eq i32 %i.us, 0
  br i1 %.not4447.i, label %._crit_edge56.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bu
  %.pre76.i.a = load i32, ptr %28, align 8, !noalias !584
  br label %.lr.ph.i121

._crit_edge.i125:                                 ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i
  %.pre78.i.a = load ptr, ptr %i.uc, align 8, !tbaa !30, !noalias !583 ; 2 uses
  %.pre79.i = load i32, ptr %i.ur, align 8, !tbaa !188, !noalias !583 ; 2 uses
  %i.uv = zext i32 %.pre79.i to i64
  %.idx65.i = shl nuw nsw i64 %i.uv, 3
  %i.uw = getelementptr inbounds nuw i8, ptr %.pre78.i.a, i64 %.idx65.i
  %.not4549.i = icmp eq i32 %.pre79.i, 0
  br i1 %.not4549.i, label %._crit_edge56.i, label %.lr.ph55.i

.lr.ph.i121:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i, %.lr.ph.preheader.i
  %i.ux = phi i32 [ %i.yr, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i ], [ %.pre76.i.a, %.lr.ph.preheader.i ] ; 3 uses
  %.04148.i = phi ptr [ %i.yt, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i ], [ %i.uq, %.lr.ph.preheader.i ] ; 2 uses
  %i.uy = load ptr, ptr %.04148.i, align 8, !tbaa !286
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !272
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !273 ; 5 uses
  %i.vd = and i32 %i.ux, 1
  %.not.i.i.i.i67.i = icmp eq i32 %i.vd, 0        ; 3 uses
  %i.ve = load ptr, ptr %i.ty, align 8, !noalias !584
  %i.vf = load ptr, ptr %i.tz, align 8, !noalias !584
  %i.vg = load i32, ptr %i.ua, align 8, !noalias !584
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i67.i, ptr %i.ve, ptr %i.ty ; 3 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i67.i, ptr %i.vf, ptr %i.tx ; 3 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i67.i, i32 %i.vg, i32 4 ; 4 uses
  %i.vh = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.vh, label %.loopexit.i.i122, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i121
  %i.vi = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.vj = ptrtoint ptr %i.vc to i64
  %i.vk = mul i64 %i.vj, -4658895280553007687     ; 2 uses
  %i.vl = lshr i64 %i.vk, 31
  %i.vm = xor i64 %i.vl, %i.vk
  %i.vn = trunc i64 %i.vm to i32
  %i.vo = and i32 %i.vi, %i.vn                    ; 3 uses
  %i.vp = zext i32 %i.vo to i64                   ; 2 uses
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.vp ; 2 uses
  %i.vr = lshr i64 %i.vp, 5
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !263
  %i.vu = and i32 %i.vo, 31
  %i.vv = lshr i32 %i.vt, %i.vu
  %i.vw = trunc i32 %i.vv to i1
  br i1 %i.vw, label %.lr.ph.i.i70.i, label %.loopexit.i.i122, !prof !264

.lr.ph.i.i70.i:                                   ; preds = %bb.bv, %bb.bw
  %i.vx = phi ptr [ %i.wd, %bb.bw ], [ %i.vq, %bb.bv ] ; 3 uses
  %.024.i.i.i139 = phi i32 [ %i.wb, %bb.bw ], [ %i.vo, %bb.bv ]
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !211
  %i.vz = icmp eq ptr %i.vc, %i.vy
  br i1 %i.vz, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i, label %bb.bw, !prof !259

bb.bw:                                            ; preds = %.lr.ph.i.i70.i
  %i.wa = add nuw i32 %.024.i.i.i139, 1
  %i.wb = and i32 %i.wa, %i.vi                    ; 3 uses
  %i.wc = zext i32 %i.wb to i64                   ; 2 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.wc ; 2 uses
  %i.we = lshr i64 %i.wc, 5
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !263
  %i.wh = and i32 %i.wb, 31
  %i.wi = lshr i32 %i.wg, %i.wh
  %i.wj = trunc i32 %i.wi to i1
  br i1 %i.wj, label %.lr.ph.i.i70.i, label %.loopexit.i.i122, !prof !265, !llvm.loop !3

.loopexit.i.i122:                                 ; preds = %bb.bw, %bb.bv, %.lr.ph.i121
  %.lcssa28.sink.i.ph.i.i123 = phi ptr [ %i.vq, %bb.bv ], [ null, %.lr.ph.i121 ], [ %i.wd, %bb.bw ]
  %i.wk = shl i32 %i.ux, 1
  %i.wl = and i32 %i.wk, -4
  %i.wm = add i32 %i.wl, 4
  %i.wn = mul i32 %.sink.i.i.i.i.i, 3
  %.not.i.i68.i = icmp ult i32 %i.wm, %i.wn
  br i1 %.not.i.i68.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, label %bb.bx, !prof !259

bb.bx:                                            ; preds = %.loopexit.i.i122
  %i.wo = shl i32 %.sink.i.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %28, i32 noundef %i.wo)
  %i.wp = load i32, ptr %28, align 8, !noalias !585
  %i.wq = and i32 %i.wp, 1
  %.not.i.i.i93.i = icmp eq i32 %i.wq, 0          ; 3 uses
  %i.wr = load ptr, ptr %i.ty, align 8, !noalias !585
  %i.ws = load ptr, ptr %i.tz, align 8, !noalias !585
  %i.wt = load i32, ptr %i.ua, align 8, !noalias !585
  %.sink2.i.i.i.i = select i1 %.not.i.i.i93.i, ptr %i.wr, ptr %i.ty ; 5 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i93.i, ptr %i.ws, ptr %i.tx ; 5 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i93.i, i32 %i.wt, i32 4 ; 2 uses
  %i.wu = icmp ne i32 %.sink.i.i.i.i, 0
  call void @llvm.assume(i1 %i.wu)
  %i.wv = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.ww = ptrtoint ptr %i.vc to i64
  %i.wx = mul i64 %i.ww, -4658895280553007687     ; 2 uses
  %i.wy = lshr i64 %i.wx, 31
  %i.wz = xor i64 %i.wy, %i.wx
  %i.xa = trunc i64 %i.wz to i32
  %i.xb = and i32 %i.wv, %i.xa                    ; 3 uses
  %i.xc = zext i32 %i.xb to i64                   ; 2 uses
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.xc ; 2 uses
  %i.xe = lshr i64 %i.xc, 5
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !263
  %i.xh = and i32 %i.xb, 31
  %i.xi = lshr i32 %i.xg, %i.xh
  %i.xj = trunc i32 %i.xi to i1
  br i1 %i.xj, label %.lr.ph.i.i137, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, !prof !264

.lr.ph.i.i137:                                    ; preds = %bb.bx, %bb.by
  %i.xk = phi ptr [ %i.xq, %bb.by ], [ %i.xd, %bb.bx ] ; 2 uses
  %.024.i.i138 = phi i32 [ %i.xo, %bb.by ], [ %i.xb, %bb.bx ]
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !211
  %i.xm = icmp eq ptr %i.vc, %i.xl
  br i1 %i.xm, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, label %bb.by, !prof !259

bb.by:                                            ; preds = %.lr.ph.i.i137
  %i.xn = add nuw i32 %.024.i.i138, 1
  %i.xo = and i32 %i.xn, %i.wv                    ; 3 uses
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.xp ; 2 uses
  %i.xr = lshr i64 %i.xp, 5
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !263
  %i.xu = and i32 %i.xo, 31
  %i.xv = lshr i32 %i.xt, %i.xu
  %i.xw = trunc i32 %i.xv to i1
  br i1 %i.xw, label %.lr.ph.i.i137, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i, !prof !265, !llvm.loop !3

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i: ; preds = %bb.by, %.lr.ph.i.i137, %bb.bx, %.loopexit.i.i122
  %.pre-phi82.i = phi ptr [ %.sink2.i.i.i.i.i, %.loopexit.i.i122 ], [ %.sink2.i.i.i.i, %bb.bx ], [ %.sink2.i.i.i.i, %.lr.ph.i.i137 ], [ %.sink2.i.i.i.i, %bb.by ]
  %.pre-phi81.i = phi ptr [ %.sink1.i.i.i.i.i, %.loopexit.i.i122 ], [ %.sink1.i.i.i.i, %bb.bx ], [ %.sink1.i.i.i.i, %.lr.ph.i.i137 ], [ %.sink1.i.i.i.i, %bb.by ]
  %i.xx = phi ptr [ %.lcssa28.sink.i.ph.i.i123, %.loopexit.i.i122 ], [ %i.xd, %bb.bx ], [ %i.xq, %bb.by ], [ %i.xk, %.lr.ph.i.i137 ] ; 4 uses
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = ptrtoint ptr %.pre-phi82.i to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = ashr exact i64 %i.ya, 4                 ; 2 uses
  %i.yc = trunc i64 %i.yb to i32
  %i.yd = and i32 %i.yc, 31
  %i.ye = shl nuw i32 1, %i.yd
  %i.yf = lshr i64 %i.yb, 5
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi81.i, i64 %i.yf ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !263
  %i.yi = or i32 %i.ye, %i.yh
  store i32 %i.yi, ptr %i.yg, align 4, !tbaa !263
  %i.yj = load i32, ptr %28, align 8, !noalias !583 ; 2 uses
  %i.yk = and i32 %i.yj, -2
  %i.yl = add i32 %i.yk, 2
  %i.ym = and i32 %i.yj, 1
  %i.yn = or disjoint i32 %i.yl, %i.ym
  store i32 %i.yn, ptr %28, align 8, !noalias !583
  store ptr %i.vc, ptr %i.xx, align 8, !tbaa !211
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store i32 0, ptr %i.yo, align 8, !tbaa !263
  %.pre.i124 = load i32, ptr %28, align 8, !noalias !584
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i70.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %.pre77.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !263
  %i.yp = add nsw i32 %.pre77.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i
  %i.yq = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.yp, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %i.yr = phi i32 [ %.pre.i124, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.ux, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.xx, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i ], [ %i.vx, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i ]
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  store i32 %i.yq, ptr %i.ys, align 4, !tbaa !263
  %i.yt = getelementptr inbounds nuw i8, ptr %.04148.i, i64 8 ; 2 uses
  %.not44.i = icmp eq ptr %i.yt, %i.uu
  br i1 %.not44.i, label %._crit_edge.i125, label %.lr.ph.i121
end_hunk_0
