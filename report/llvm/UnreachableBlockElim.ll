Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnreachableBlockElim?download=true
inline.NumInlined: 915
inline.NumDeleted: 604
begin_hunk_0_@_ZN12_GLOBAL__N_127UnreachableMachineBlockElim3runERN4llvm15MachineFunctionE:bb.a
._crit_edge256:                                   ; preds = %bb.bl, %_ZN4llvm11SmallPtrSetIPNS_17MachineBasicBlockELj8EEC2INS_14iterator_rangeIPS2_EEEENS_12from_range_tEOT_.exit
  %.1.lcssa = phi i1 [ %.0260, %_ZN4llvm11SmallPtrSetIPNS_17MachineBasicBlockELj8EEC2INS_14iterator_rangeIPS2_EEEENS_12from_range_tEOT_.exit ], [ %.4, %bb.bl ] ; 2 uses
  %i.io = load i8, ptr %i.gr, align 8, !tbaa !37, !range !49, !noundef !50
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit115, label %bb.az

bb.az:                                            ; preds = %._crit_edge256
  %i.iq = load ptr, ptr %7, align 8, !tbaa !35
  call void @free(ptr noundef %i.iq) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit115

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit115:        ; preds = %._crit_edge256, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0153.0261, i64 8
  %.sroa.0153.0 = load ptr, ptr %i.ir, align 8, !tbaa !144 ; 2 uses
  %.not205.a = icmp eq ptr %.sroa.0153.0, %i.aw
  br i1 %.not205.a, label %._crit_edge263, label %bb.aw

bb.ba:                                            ; preds = %.lr.ph255, %bb.bl
  %.1254 = phi i1 [ %.0260, %.lr.ph255 ], [ %.4, %bb.bl ] ; 2 uses
  %.sroa.0145.0253 = phi ptr [ %i.ik, %.lr.ph255 ], [ %i.jc, %bb.bl ] ; 12 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0145.0253, align 8
  %i.is = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i116 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i116, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.ba
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0145.0253, i64 44
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !243
  %i.iv = and i32 %i.iu, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.0145.0253, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !231 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 44
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !243
  %i.ja = and i32 %i.iz, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !135

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %bb.ba, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.0145.0253, %bb.ba ], [ %.sroa.0145.0253, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !231 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0145.0253, i64 40 ; 2 uses
  %i.je = load i24, ptr %i.jd, align 8            ; 2 uses
  %i.jf = zext i24 %i.je to i32
  %i.jg = add nsw i32 %i.jf, -1                   ; 3 uses
  %i.jh = icmp ugt i32 %i.jg, 1
  br i1 %i.jh, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0145.0253, i64 32
  %i.jj = zext i32 %i.jg to i64
  br label %bb.bb

._crit_edge250.loopexit:                          ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200
  %.pre = load i24, ptr %i.jd, align 8
  br label %._crit_edge250

._crit_edge250:                                   ; preds = %._crit_edge250.loopexit, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit
  %i.jk = phi i24 [ %i.je, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit ], [ %.pre, %._crit_edge250.loopexit ]
  %.2.lcssa = phi i1 [ %.1254, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit ], [ %.3, %._crit_edge250.loopexit ]
  %i.jl = icmp eq i24 %i.jk, 3
  br i1 %i.jl, label %bb.be, label %bb.bl

bb.bb:                                            ; preds = %.lr.ph249, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200
  %indvars.iv = phi i64 [ %i.jj, %.lr.ph249 ], [ %indvars.iv.next, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200 ] ; 3 uses
  %.2248 = phi i1 [ %.1254, %.lr.ph249 ], [ %.3, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200 ] ; 2 uses
  %.073247 = phi i32 [ %i.jg, %.lr.ph249 ], [ %i.kb, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200 ]
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !244
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jm, i64 %indvars.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !245 ; 2 uses
  %i.jq = load i8, ptr %i.gr, align 8, !tbaa !37, !range !49, !noundef !50
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bc, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124

bb.bc:                                            ; preds = %bb.bb
  %i.js = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.jt = load i32, ptr %i.gq, align 4, !tbaa !38 ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %.idx.i.i118 = shl nuw nsw i64 %i.ju, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %.idx.i.i118
  %.not17.i.i119 = icmp eq i32 %i.jt, 0
  br i1 %.not17.i.i119, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread, label %.lr.ph.i.i120

bb.bd:                                            ; preds = %.lr.ph.i.i120
  %i.jw = getelementptr inbounds nuw i8, ptr %.01218.i.i121, i64 8 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.jw, %i.jv
  br i1 %.not.i.i123, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %bb.bc, %bb.bd
  %.01218.i.i121 = phi ptr [ %i.jw, %bb.bd ], [ %i.js, %bb.bc ] ; 2 uses
  %i.jx = load ptr, ptr %.01218.i.i121, align 8, !tbaa !11
  %.not15.i.i122 = icmp eq ptr %i.jx, %i.jp
  br i1 %.not15.i.i122, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200, label %bb.bd

_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124: ; preds = %bb.bb
  %i.jy = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %i.jp) #15
  %.not209 = icmp eq ptr %i.jy, null
  br i1 %.not209, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200

_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread: ; preds = %bb.bd, %bb.bc, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124
  %i.jz = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0145.0253, i32 noundef %i.jz) #15
  %i.ka = add i32 %i.jz, -1
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0145.0253, i32 noundef %i.ka) #15
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200

_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread200: ; preds = %.lr.ph.i.i120, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread
  %.3 = phi i1 [ %.2248, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124 ], [ true, %_ZNK4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE5countEPKS1_.exit124.thread ], [ %.2248, %.lr.ph.i.i120 ] ; 2 uses
  %i.kb = add i32 %.073247, -2                    ; 2 uses
  %i.kc = icmp ugt i32 %i.kb, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -2
  br i1 %i.kc, label %bb.bb, label %._crit_edge250.loopexit, !llvm.loop !136

bb.be:                                            ; preds = %._crit_edge250
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0145.0253, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !244 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 36 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !245 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !245 ; 4 uses
  %.not207.a = icmp eq i32 %i.kh, %i.kj
  br i1 %.not207.a, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kk = load ptr, ptr %i.gs, align 8, !tbaa !343 ; 3 uses
  %i.kl = load i32, ptr %i.kf, align 8
  %i.km = lshr i32 %i.kl, 8
  %i.kn = and i32 %i.km, 4095                     ; 2 uses
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.bg, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

bb.bg:                                            ; preds = %bb.bf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.kq = and i32 %i.kj, 2147483647
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kr
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.kt, align 8
  %i.ku = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.kk, i32 %i.kh, ptr noundef %i.kv, i32 noundef 0) #15
  %.not = icmp eq ptr %i.kw, null
  br i1 %.not, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kx = load i32, ptr %i.kf, align 8
  %i.ky = and i32 %i.kx, 268435456
  %.not208 = icmp eq i32 %i.ky, 0
  br i1 %.not208, label %bb.bi, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.kk, i32 %i.kj, i32 %i.kh) #15
  br label %bb.bk

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %bb.bf, %bb.bg, %bb.bh
  %i.kz = load ptr, ptr %i.gt, align 8, !tbaa !344, !nonnull !50, !align !54 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 128
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = call noundef ptr %i.lc(ptr noundef nonnull align 8 dereferenceable(344) %i.kz) #15
  %i.le = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0153.0261) #15 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0145.0253, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.lf, align 8, !tbaa !345
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !349
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -640
  %i.lj = load ptr, ptr %i.im, align 8, !tbaa !232 ; 3 uses
  %i.lk = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #15 ; 8 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef %i.lk) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.le, align 8
  %i.ll = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %i.le, ptr %i.ln, align 8, !tbaa !231
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.lk, align 8
  %i.lo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.lp = or disjoint i64 %i.lo, %i.ll
  store i64 %i.lp, ptr %i.lk, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %i.lk, ptr %i.lq, align 8, !tbaa !231
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.le, align 8
  %i.lr = ptrtoint ptr %i.lk to i64
  %i.ls = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.lt = or disjoint i64 %i.ls, %i.lr
  store i64 %i.lt, ptr %i.le, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr null, ptr %i.gu, align 8, !tbaa !352, !alias.scope !353
  store i32 %i.kj, ptr %i.gv, align 4, !tbaa !245, !alias.scope !353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false), !alias.scope !353
  store i32 16777216, ptr %3, align 8, !alias.scope !353
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.lk, ptr noundef nonnull align 8 dereferenceable(1065) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.lu = load i32, ptr %i.kf, align 8            ; 6 uses
  %i.lv = load i32, ptr %i.kg, align 4, !tbaa !245
  %i.lw = add i32 %i.lv, -1
  %i.lx = icmp ult i32 %i.lw, 1073741823
  br i1 %i.lx, label %bb.bj, label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit

bb.bj:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.ly = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.kf) #15
  %i.lz = select i1 %i.ly, i32 134217728, i32 0
  br label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit

_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %bb.bj
  %i.ma = phi i32 [ 0, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ %i.lz, %bb.bj ]
  %8 = icmp slt i32 %i.lu, 0
  %9 = select i1 %8, i16 128, i16 0
  %10 = lshr i32 %i.lu, 21
  %11 = trunc nuw nsw i32 %10 to i16
  %12 = and i16 %11, 256
  %13 = lshr i32 %i.lu, 23
  %14 = trunc nuw nsw i32 %13 to i16              ; 2 uses
  %15 = and i16 %14, 32
  %i.mb = and i32 %i.lu, 83886080
  %16 = icmp eq i32 %i.mb, 83886080
  %17 = select i1 %16, i16 16, i16 0              ; 2 uses
  %i.mc = lshr i32 %i.lu, 24
  %.lobit.i.i = and i32 %i.mc, 1
  %i.md = xor i32 %.lobit.i.i, 1
  %i.me = lshr i32 %i.lu, 26
  %i.mf = and i32 %i.md, %i.me
  %18 = trunc nuw nsw i32 %i.mf to i16            ; 2 uses
  %19 = shl nuw nsw i16 %18, 3
  %20 = and i16 %14, 6
  %21 = or disjoint i16 %19, %20
  %22 = or disjoint i16 %21, %17
  %23 = or disjoint i16 %15, %9
  %24 = or disjoint i16 %23, %12
  %25 = or i16 %24, %22                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %26 = and i16 %25, 256
  store ptr null, ptr %i.gx, align 8, !tbaa !352, !alias.scope !354
  %27 = or disjoint i16 %17, %18
  %28 = icmp eq i16 %27, 0
  %i.mg = select i1 %28, i32 0, i32 67108864
  %29 = zext nneg i16 %26 to i32
  %30 = shl nuw nsw i32 %29, 21
  %31 = and i16 %25, 38
  %32 = zext nneg i16 %31 to i32
  %33 = shl nuw nsw i32 %32, 23
  %34 = or disjoint i32 %33, %i.mg
  %35 = and i16 %25, 192
  %36 = zext nneg i16 %35 to i32
  %37 = shl nuw i32 %36, 24
  %.masked11.masked.i.i = or disjoint i32 %34, %37
  store i32 %i.kh, ptr %i.gy, align 4, !tbaa !245, !alias.scope !354
  %i.mh = shl nuw nsw i32 %i.kn, 8
  %.masked.i.i = or disjoint i32 %.masked11.masked.i.i, %30
  %i.mi = or disjoint i32 %i.ma, %.masked.i.i
  %i.mj = or disjoint i32 %i.mi, %i.mh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !354
  store i32 %i.mj, ptr %2, align 8, !alias.scope !354
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.lk, ptr noundef nonnull align 8 dereferenceable(1065) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit, %bb.bi
  %i.mk = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0145.0253) #15 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.be, %bb.bk, %._crit_edge250
  %.4 = phi i1 [ %.2.lcssa, %._crit_edge250 ], [ true, %bb.bk ], [ true, %bb.be ] ; 2 uses
  %.not206 = icmp eq ptr %i.jc, %i.il
  br i1 %.not206, label %._crit_edge256, label %bb.ba
}

declare void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_130UnreachableBlockElimLegacyPassEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_130UnreachableBlockElimLegacyPass2IDE, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_130UnreachableBlockElimLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !32
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_130UnreachableBlockElimLegacyPassD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_130UnreachableBlockElimLegacyPass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.e, 3          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx4.i.i.i
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.h = and i64 %.idx4.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i.i.i, align 8, !tbaa !11
  %i.j = icmp eq ptr %i.i, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.j, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = icmp eq ptr %i.l, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.m, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = icmp eq ptr %i.o, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.p, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit49, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = icmp eq ptr %i.r, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.s, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !11
  %i.y = icmp eq ptr %i.x, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.y, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !11
  %i.ab = icmp eq ptr %i.aa, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.ab, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !11
  %i.ae = icmp eq ptr %i.ad, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.ae, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit49: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit49, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51 ], [ %i.ag, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit49 ], [ %i.af, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.f
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !70
  %.not.i2.i.i = icmp ult i32 %i.d, %i.aj
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !66
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  store ptr @_ZN4llvm24DominatorTreeWrapperPass2IDE, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.c, align 8, !tbaa !66
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.c, align 8, !tbaa !66
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  %i.an = phi i32 [ %i.d, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i ], [ %.pre, %bb.j ], [ %i.am, %bb.k ] ; 4 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.ap = zext i32 %i.an to i64                   ; 3 uses
  %.idx4.i.i.i2 = shl nuw nsw i64 %i.ap, 3        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx4.i.i.i2
end_hunk_0
