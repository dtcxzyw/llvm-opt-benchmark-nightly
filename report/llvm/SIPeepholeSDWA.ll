Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIPeepholeSDWA?download=true
inline.NumInlined: 1511
inline.NumDeleted: 806
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_114SIPeepholeSDWA3runERN4llvm15MachineFunctionE:bb.a
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !421, !noalias !565
  %i.wj = and i32 %i.we, 31
  %i.wk = lshr i32 %i.wi, %i.wj
  %i.wl = trunc i32 %i.wk to i1
  br i1 %i.wl, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !424

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.cc, %bb.cb, %.lr.ph.i106
  %i.wm = zext i32 %i.vj to i64                   ; 2 uses
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.vh, i64 %i.wm
  br label %_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i.i = zext i32 %i.vj to i64
  br label %_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i

_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i.i.i.i ], [ %i.wm, %.loopexit.i.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i.i = phi ptr [ %i.wa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit.i.i.i.i ], [ %i.wn, %.loopexit.i.i.i.i.i.i ] ; 2 uses
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %i.vh, i64 %.pre-phi.i.i.i.i
  %i.wp = icmp eq ptr %.lcssa.sink.i.i.i.i.i.i, %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i.i, i64 8
  %.sink8.in.i.i.i.i = select i1 %i.wp, ptr %i.ag, ptr %i.wq
  %.sink8.i.i.i.i = load i32, ptr %.sink8.in.i.i.i.i, align 8, !tbaa !421
  %.val3.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !346
  %.not47.i = icmp eq i32 %.sink8.i.i.i.i, %.val3.i.i.i
  br i1 %.not47.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i
  %i.wr = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.ws = load ptr, ptr %i.ve, align 8, !tbaa !29
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  %i.wu = load ptr, ptr %i.wt, align 8
  %i.wv = call noundef zeroext i1 %i.wu(ptr noundef nonnull align 8 dereferenceable(24) %i.ve, ptr noundef nonnull align 8 dereferenceable(80) %.036.i, ptr noundef %i.wr) #19, !inline_history !536
  %i.ww = or i1 %.03851.i, %i.wv
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i
  %.1.i = phi i1 [ %i.ww, %bb.cd ], [ %.03851.i, %_ZNK4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EE5countERKS2_.exit.i ] ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.03950.i, i64 8 ; 2 uses
  %.not.i108 = icmp eq ptr %i.wx, %i.vd
  br i1 %.not.i108, label %._crit_edge.i, label %.lr.ph.i106

bb.cf:                                            ; preds = %._crit_edge.i
  %i.wy = load i32, ptr %i.bb, align 8, !tbaa !346 ; 2 uses
  %i.wz = load i32, ptr %i.bc, align 4, !tbaa !150
  %.not.i45.i = icmp ult i32 %i.wy, %i.wz
  br i1 %.not.i45.i, label %bb.ch, label %bb.cg, !prof !423

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef %.036.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.xa = zext i32 %i.wy to i64
  %i.xb = load ptr, ptr %i.ba, align 8, !tbaa !149
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.xa
  store ptr %.036.i, ptr %i.xc, align 1
  %i.xd = load i32, ptr %i.bb, align 8, !tbaa !346
  %i.xe = add i32 %i.xd, 1
  store i32 %i.xe, ptr %i.bb, align 8, !tbaa !346
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i: ; preds = %bb.ch, %bb.cg
  %i.xf = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !440 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.036.i, i64 40
  %i.xi = load i24, ptr %i.xh, align 8
  %i.xj = zext i24 %i.xi to i64                   ; 2 uses
  %i.xk = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.036.i) #19
  %i.xl = zext i32 %i.xk to i64                   ; 2 uses
  %i.xm = getelementptr inbounds nuw [32 x i8], ptr %i.xg, i64 %i.xj
  %.not4052.i = icmp samesign eq i64 %i.xl, %i.xj
  br i1 %.not4052.i, label %_ZN12_GLOBAL__N_114SIPeepholeSDWA13convertToSDWAERN4llvm12MachineInstrERKNS1_11SmallVectorIPNS_11SDWAOperandELj4EEE.exit, label %.lr.ph54.preheader.i

.lr.ph54.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %i.xn = getelementptr inbounds nuw [32 x i8], ptr %i.xg, i64 %i.xl
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.cj, %.lr.ph54.preheader.i
  %.03753.i = phi ptr [ %i.xu, %bb.cj ], [ %i.xn, %.lr.ph54.preheader.i ] ; 3 uses
  %i.xo = load i32, ptr %.03753.i, align 8
  %i.xp = and i32 %i.xo, 255
  %i.xq = icmp eq i32 %i.xp, 0
  br i1 %i.xq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph54.i
  %i.xr = load ptr, ptr %0, align 8, !tbaa !343
  %i.xs = getelementptr inbounds nuw i8, ptr %.03753.i, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !369
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.xr, i32 %i.xt) #19
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph54.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.03753.i, i64 32 ; 2 uses
  %.not40.i = icmp eq ptr %i.xu, %i.xm
  br i1 %.not40.i, label %_ZN12_GLOBAL__N_114SIPeepholeSDWA13convertToSDWAERN4llvm12MachineInstrERKNS1_11SmallVectorIPNS_11SDWAOperandELj4EEE.exit, label %.lr.ph54.i

_ZN12_GLOBAL__N_114SIPeepholeSDWA13convertToSDWAERN4llvm12MachineInstrERKNS1_11SmallVectorIPNS_11SDWAOperandELj4EEE.exit: ; preds = %bb.cj, %bb.ca, %._crit_edge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %.sink.i = phi ptr [ %.036.i, %._crit_edge.i ], [ %.036.i, %bb.ca ], [ %i.sd, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i ], [ %i.sd, %bb.cj ]
  %i.xv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sink.i) #19 ; 0 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.051220, i64 56 ; 2 uses
  %.not59 = icmp eq ptr %i.xw, %i.jr
  br i1 %.not59, label %._crit_edge223, label %.lr.ph222

.lr.ph225:                                        ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EE5clearEv.exit104, %_ZNK12_GLOBAL__N_114SIPeepholeSDWA22legalizeScalarOperandsERN4llvm12MachineInstrERKNS1_12GCNSubtargetE.exit
  %i.xx = phi i32 [ %.pr, %_ZNK12_GLOBAL__N_114SIPeepholeSDWA22legalizeScalarOperandsERN4llvm12MachineInstrERKNS1_12GCNSubtargetE.exit ], [ %i.sc, %_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EE5clearEv.exit104 ] ; 2 uses
  %i.xy = load ptr, ptr %i.ba, align 8, !tbaa !149
  %i.xz = zext i32 %i.xx to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xz
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 -8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !420 ; 8 uses
  %i.yd = add i32 %i.xx, -1
  store i32 %i.yd, ptr %i.bb, align 8, !tbaa !346
  %i.ye = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 52
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !368
  %i.yi = load ptr, ptr %i.yf, align 8, !tbaa !377
  %i.yj = zext i32 %i.yh to i64
  %i.yk = sub nsw i64 0, %i.yj
  %i.yl = getelementptr inbounds [32 x i8], ptr %i.yi, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yc, i64 32
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !440 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yc, i64 40
  %i.yp = load i24, ptr %i.yo, align 8
  %i.yq = zext i24 %i.yp to i64
  %i.yr = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.yc) #19
  %i.ys = zext i32 %i.yr to i64
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ys, i64 %i.yq) ; 2 uses
  %i.yt = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.yc) #19
  %i.yu = zext i32 %i.yt to i64                   ; 2 uses
  %i.yv = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %..i.i.i
  %.not52.i = icmp samesign eq i64 %..i.i.i, %i.yu
  br i1 %.not52.i, label %_ZNK12_GLOBAL__N_114SIPeepholeSDWA22legalizeScalarOperandsERN4llvm12MachineInstrERKNS1_12GCNSubtargetE.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.lr.ph225
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %i.yu
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yc, i64 72
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cs, %.lr.ph.i110
  %.055.i = phi i32 [ 0, %.lr.ph.i110 ], [ %.1.i111, %bb.cs ] ; 6 uses
  %.03853.i = phi ptr [ %i.yw, %.lr.ph.i110 ], [ %i.aag, %bb.cs ] ; 8 uses
  %i.yz = load i32, ptr %.03853.i, align 8
  %trunc.i = trunc i32 %i.yz to i8
  switch i8 %trunc.i, label %bb.cs [
    i8 0, label %bb.cl
    i8 1, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.za = load ptr, ptr %i.j, align 8, !tbaa !545
  %i.zb = load ptr, ptr %0, align 8, !tbaa !343
  %i.zc = getelementptr inbounds nuw i8, ptr %.03853.i, i64 4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !369
  %i.ze = call noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo6isVGPRERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.za, ptr noundef nonnull align 8 dereferenceable(520) %i.zb, i32 %i.zd) #19
  br i1 %i.ze, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.zf = load i8, ptr %i.bd, align 1, !tbaa !566, !range !151, !noundef !147
  %i.zg = trunc nuw i8 %i.zf to i1
  %i.zh = icmp eq i32 %.055.i, 0
  %or.cond.i = select i1 %i.zg, i1 %i.zh, i1 false
  br i1 %or.cond.i, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.zi = call noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.03853.i) #19
  %i.zj = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.zk = call noundef ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj(ptr noundef nonnull align 8 dereferenceable(112) %i.zj, ptr noundef nonnull align 8 dereferenceable(32) %i.yl, i32 noundef %i.zi) #19 ; 2 uses
  %.not41.i = icmp eq ptr %i.zk, null
  br i1 %.not41.i, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 50
  %i.zm = load i8, ptr %i.zl, align 2, !tbaa !568
  %i.zn = and i8 %i.zm, 28
  %i.zo = icmp eq i8 %i.zn, 20
  br i1 %i.zo, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, label %bb.cs

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i: ; preds = %bb.co
  %i.zp = load ptr, ptr %0, align 8, !tbaa !343
  %i.zq = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.zp, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1024), ptr nonnull @.str.2, i64 0) #19 ; 2 uses
  %i.zr = load ptr, ptr %i.yx, align 8, !tbaa !374 ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.yy, align 8, !tbaa !376
  %i.zs = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !377
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -334656
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !419 ; 4 uses
  %i.zy = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %i.zv, ptr %.sroa.04.0.copyload.i, i1 noundef zeroext false) #19 ; 4 uses
  %i.zz = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.zr, ptr nonnull align 8 dereferenceable(80) %i.yc, ptr noundef %i.zy) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.be, align 8, !tbaa !372, !alias.scope !569
  store i32 %i.zq, ptr %i.bf, align 4, !tbaa !369, !alias.scope !569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !569
  store i32 16777216, ptr %6, align 8, !alias.scope !569
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zy, ptr noundef nonnull align 8 dereferenceable(1065) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.aaa = load i32, ptr %.03853.i, align 8       ; 3 uses
  %trunc50.i = trunc i32 %i.aaa to i8
  switch i8 %trunc50.i, label %bb.cr [
    i8 1, label %bb.cp
    i8 0, label %bb.cq
  ]

bb.cp:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i
  %i.aab = getelementptr inbounds nuw i8, ptr %.03853.i, i64 16
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 1, ptr %5, align 8, !alias.scope !570
  store ptr null, ptr %i.bk, align 8, !tbaa !372, !alias.scope !570
  store i64 %i.aac, ptr %i.bl, align 8, !tbaa !369, !alias.scope !570
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zy, ptr noundef nonnull align 8 dereferenceable(1065) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i
  %i.aad = getelementptr inbounds nuw i8, ptr %.03853.i, i64 4
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %i.bh, align 8, !tbaa !372, !alias.scope !571
  %20 = shl i32 %i.aaa, 2
  %i.aaf = and i32 %20, 67108864
  store i32 %i.aae, ptr %i.bi, align 4, !tbaa !369, !alias.scope !571
  %21 = xor i32 %i.aaf, 68157184
  %22 = and i32 %21, %i.aaa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !571
  store i32 %22, ptr %4, align 8, !alias.scope !571
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zy, ptr noundef nonnull align 8 dereferenceable(1065) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i
  call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %.03853.i, i32 %i.zq, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #19
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %.1.i111 = phi i32 [ 1, %bb.cm ], [ %.055.i, %bb.cl ], [ %.055.i, %bb.ck ], [ %.055.i, %bb.cn ], [ %.055.i, %bb.co ], [ %.055.i, %bb.cr ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.03853.i, i64 32 ; 2 uses
  %.not.i112 = icmp eq ptr %i.aag, %i.yv
  br i1 %.not.i112, label %_ZNK12_GLOBAL__N_114SIPeepholeSDWA22legalizeScalarOperandsERN4llvm12MachineInstrERKNS1_12GCNSubtargetE.exit, label %bb.ck

_ZNK12_GLOBAL__N_114SIPeepholeSDWA22legalizeScalarOperandsERN4llvm12MachineInstrERKNS1_12GCNSubtargetE.exit: ; preds = %bb.cs, %.lr.ph225
  %.pr = load i32, ptr %i.bb, align 8, !tbaa !346 ; 2 uses
  %.not.i109 = icmp eq i32 %.pr, 0
  br i1 %.not.i109, label %._crit_edge226.loopexit, label %.lr.ph225, !llvm.loop !485

split:                                            ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EE5clearEv.exit104
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0181.0230, i64 8
  %.sroa.0181.0 = load ptr, ptr %i.aah, align 8, !tbaa !546 ; 2 uses
  %.not204 = icmp eq ptr %.sroa.0181.0, %i.n
  br i1 %.not204, label %.loopexit208, label %.preheader

.loopexit208:                                     ; preds = %split, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.1, %split ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114SIPeepholeSDWAD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(184) dereferenceable(184) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #19
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !149 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val2.i.i = load i32, ptr %i.g, align 8, !tbaa !346 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit
  %i.h = zext i32 %.val2.i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.h, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.l) #19
  br label %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i

_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.val.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPN4llvm12MachineInstrENS0_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !149
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit
  %i.o = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i ], [ %.val.i.i, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_IPN12_GLOBAL__N_111SDWAOperandELj4EEEELj0EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  tail call void @free(ptr noundef %i.o) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_IPN12_GLOBAL__N_111SDWAOperandELj4EEEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_IPN12_GLOBAL__N_111SDWAOperandELj4EEEELj0EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEEELb0EE13destroy_rangeEPS9_SB_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !348  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_IPN12_GLOBAL__N_111SDWAOperandELj4EEEELj0EED2Ev.exit.i
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !350
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #19
  br label %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrENS0_IPN12_GLOBAL__N_111SDWAOperandELj4EEEELj0EED2Ev.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i.i1 = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i2 = load i32, ptr %i.ac, align 8, !tbaa !346 ; 2 uses
  %.not4.i.i.i3 = icmp eq i32 %.val2.i.i2, 0
  br i1 %.not4.i.i.i3, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.i.i, label %.lr.ph.i.preheader.i.i4

.lr.ph.i.preheader.i.i4:                          ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.ad = zext i32 %.val2.i.i2 to i64
  %.idx.i.i5 = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i1, i64 %.idx.i.i5
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i4
  %.05.i.i.i7 = phi ptr [ %i.af, %_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i ], [ %i.ae, %.lr.ph.i.preheader.i.i4 ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i7, i64 -16 ; 2 uses
  %i.ag = getelementptr i8, ptr %.05.i.i.i7, i64 -8
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !352 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111SDWAOperandEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111SDWAOperandEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.ah = load ptr, ptr %.val.i.i.i, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i) #19, !inline_history !572
  br label %_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i

_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111SDWAOperandEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i6
  %.not.i.i.i8 = icmp eq ptr %.val.i.i1, %i.af
  br i1 %.not.i.i.i8, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i.i, label %.lr.ph.i.i.i6, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPN4llvm12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EEED2Ev.exit.i.i.i
  %.pre.i.i9 = load ptr, ptr %i.ab, align 8, !tbaa !149
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i.i, %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit
  %i.ak = phi ptr [ %.pre.i.i9, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i.i ], [ %.val.i.i1, %_ZN4llvm9MapVectorIPNS_12MachineInstrENS_11SmallVectorIPN12_GLOBAL__N_111SDWAOperandELj4EEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS3_ISt4pairIS2_S7_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELj0EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.i.i
  tail call void @free(ptr noundef %i.ak) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELj0EED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELb0EE13destroy_rangeEPSA_SC_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !348 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELj0EED2Ev.exit.i
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !350
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #19
  br label %_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS5_EENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S8_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_12MachineInstrESt10unique_ptrIN12_GLOBAL__N_111SDWAOperandESt14default_deleteIS6_EEELj0EED2Ev.exit.i, %bb.g
  ret void
}

declare void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_120SIPeepholeSDWALegacyEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_120SIPeepholeSDWALegacy2IDE, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_120SIPeepholeSDWALegacyE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114SDWADstOperandD0Ev:bb.a
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_114SDWADstOperand18potentialToConvertEPKN4llvm11SIInstrInfoERKNS1_12GCNSubtargetEPNS1_9MapVectorIPNS1_12MachineInstrENS1_11SmallVectorIPNS_11SDWAOperandELj4EEENS1_8DenseMapISA_jNS1_12DenseMapInfoISA_vEENS1_6detail12DenseMapPairISA_jEEEENSB_ISt4pairISA_SE_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !439
  %i.b = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load ptr, ptr %i.b, align 8, !tbaa !372
  %i.c = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.val20.val) #19
  %.val = load ptr, ptr %i.a, align 8, !tbaa !439
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !372 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !441 ; 2 uses
  %i.f = load i32, ptr %.val21, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !322  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val21, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !369  ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.o = and i32 %i.l, 2147483647
  %i.p = zext nneg i32 %i.o to i64
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.u = zext nneg i32 %i.l to i64
  %i.v = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %.0.in.i.i.i.i = select i1 %i.m, ptr %i.s, ptr %i.w
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !373 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %.0.i.i.i.i, align 8
  %i.y = and i32 %i.x, 16777216
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !369 ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i4.i.i.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 16777216
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i

_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i: ; preds = %bb.e, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.c ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !369 ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i3.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 16777216
  %.not.i.i.i4.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i4.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit: ; preds = %bb.f, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !369 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = and i32 %i.ai, 2147483647
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = zext nneg i32 %i.ai to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ao
  %.0.in.i.i.i = select i1 %i.aj, ptr %i.an, ptr %i.ap
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !373 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit
  %i.aq = load i32, ptr %.0.i.i.i, align 8
  %i.ar = and i32 %i.aq, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.h ], [ %.0.i.i.i, %bb.g ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !369 ; 4 uses
  %.not.i.i.i.i22 = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i22, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.critedge2.i.i.i.i
  %i.as = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.at = and i32 %i.as, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i, !llvm.loop !4

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %storemerge.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !372
  %.not1949 = icmp eq ptr %i.av, %.val.val
  br i1 %.not1949, label %.critedge2.i.i, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

.lr.ph.loopexit:                                  ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !372
  %.not19 = icmp eq ptr %i.ax, %.val.val
  br i1 %.not19, label %.critedge2.i.i.backedge, label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

.critedge2.i.i:                                   ; preds = %.lr.ph.preheader, %.critedge2.i.i.backedge
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.critedge2.i.i.backedge ], [ %.sroa.0.0.i.i, %.lr.ph.preheader ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !369 ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ay = load i32, ptr %storemerge.i.i, align 8
  %i.az = and i32 %i.ay, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.az, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, label %.critedge2.i.i.backedge

.critedge2.i.i.backedge:                          ; preds = %bb.i, %.lr.ph.loopexit, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  br label %.critedge2.i.i, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !372
  %i.bc = icmp eq ptr %i.bb, %.val.val
  br i1 %i.bc, label %.critedge2.i.i.backedge, label %.lr.ph.loopexit

.critedge:                                        ; preds = %.critedge2.i.i.i.i, %.critedge2.i.i, %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !372 ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !29
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef %1) #19
  %i.bi = select i1 %i.bh, ptr %i.be, ptr null
  br label %_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

_ZL16findSingleRegDefPKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread: ; preds = %.lr.ph.loopexit, %.lr.ph.preheader, %bb.d, %bb.b, %bb.f, %bb.e, %bb.a, %.critedge
  %.3 = phi ptr [ %i.bi, %.critedge ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.b ], [ null, %.lr.ph.preheader ], [ null, %.lr.ph.loopexit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_114SDWADstOperand13convertToSDWAERN4llvm12MachineInstrEPKNS1_11SIInstrInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368
  switch i32 %i.b, label %bb.c [
    i32 9459, label %bb.b
    i32 9469, label %bb.b
    i32 9803, label %bb.b
    i32 9808, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val16 = load i32, ptr %i.c, align 8, !tbaa !445
  %.not = icmp eq i32 %.val16, 6
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 0) #22 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val17 = load ptr, ptr %i.e, align 8, !tbaa !439 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val17, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !369
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 %i.g) #19
  %i.h = load i32, ptr %.val17, align 8
  %i.i = and i32 %i.h, 1048320
  %i.j = load i32, ptr %i.d, align 8              ; 2 uses
  %i.k = and i32 %i.j, -1048321
  %i.l = or disjoint i32 %i.k, %i.i               ; 2 uses
  store i32 %i.l, ptr %i.d, align 8
  %i.m = load i32, ptr %.val17, align 8
  %i.n = and i32 %i.m, 268435456
  %i.o = and i32 %i.l, -268435457
  %i.p = or disjoint i32 %i.o, %i.n               ; 2 uses
  store i32 %i.p, ptr %i.d, align 8
  %i.q = and i32 %i.j, 16777216
  %.not.i.i = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %.val17, align 8           ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %3 = shl i32 %i.r, 2
  %.lobit.i.i = and i32 %3, 67108864
  %i.s = xor i32 %.lobit.i.i, 67108864
  %i.t = and i32 %i.s, %i.r
  br label %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = and i32 %i.r, 83886080
  %i.v = icmp eq i32 %i.u, 83886080
  %i.w = select i1 %i.v, i32 67108864, i32 0
  br label %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit

_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit: ; preds = %bb.d, %bb.e
  %.sink12.i = phi i32 [ -67108865, %bb.e ], [ -83886081, %bb.d ]
  %.sink.i = phi i32 [ %i.w, %bb.e ], [ %i.t, %bb.d ]
  %i.x = and i32 %.sink12.i, %i.p
  %i.y = or disjoint i32 %.sink.i, %i.x
  store i32 %i.y, ptr %i.d, align 8
  %i.z = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 67) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !369
  %i.ac = trunc i64 %i.ab to i32                  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.ad, align 8, !tbaa !445 ; 4 uses
  %i.ae = icmp eq i32 %i.ac, 6
  br i1 %i.ae, label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit
  %i.af = icmp eq i32 %.val, %i.ac
  %i.ag = icmp eq i32 %.val, 6
  %or.cond.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i, label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.ac, label %bb.h [
    i32 5, label %.critedge
    i32 3, label %.critedge
    i32 2, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %.val, label %.critedge [
    i32 4, label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit
    i32 5, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ac, label %.critedge [
    i32 0, label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit
    i32 1, label %bb.j
    i32 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit

bb.k:                                             ; preds = %bb.i
  br label %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.g, %bb.g, %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit
  %.sroa.0.0.i = phi i32 [ %i.ac, %bb.f ], [ %.val, %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit ], [ 5, %bb.k ], [ 2, %bb.i ], [ %i.ac, %bb.h ], [ 3, %bb.j ]
  %i.ah = zext i32 %.sroa.0.0.i to i64
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !369
  %i.ai = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 68) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val18 = load i32, ptr %i.aj, align 4, !tbaa !446
  %i.ak = zext i32 %.val18 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !369
  %.val19 = load ptr, ptr %i.e, align 8, !tbaa !439
  %i.am = getelementptr i8, ptr %.val19, i64 8
  %.val19.val = load ptr, ptr %i.am, align 8, !tbaa !372
  %i.an = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.val19.val) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit
  %.0 = phi i1 [ true, %_ZNOSt8optionalIN4llvm6AMDGPU4SDWA7SdwaSelEE5valueEv.exit ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @abort() #20
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_114SDWASrcOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(80) %1, ptr nofree noundef readonly %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !377
  %i.e = zext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !437
  %i.j = and i64 %i.i, 16384
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.k, align 8, !tbaa !441 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i32, ptr %i.l, align 8, !tbaa !448 ; 6 uses
  %i.m = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext 1) #22 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %i.m, align 8           ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val11.i = load i32, ptr %i.n, align 4
  %.val12.i = load i32, ptr %.val8, align 8       ; 2 uses
  %i.o = getelementptr i8, ptr %.val8, i64 4
  %.val13.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val.i, 255
  %i.q = icmp eq i32 %i.p, 0
  %i.r = and i32 %.val12.i, 255
  %i.s = icmp eq i32 %i.r, 0
  %or.cond.i.i = select i1 %i.q, i1 %i.s, i1 false
  %i.t = icmp eq i32 %.val11.i, %.val13.i
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.t, i1 false
  br i1 %or.cond7.i.i, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i, label %bb.i

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i: ; preds = %bb.c
  %i.u = xor i32 %.val12.i, %.val.i
  %i.v = and i32 %i.u, 1048320
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i
  %i.x = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext range(i8 67, 71) 69) #22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !369
  %i.aa = trunc i64 %i.z to i32                   ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 6
  br i1 %i.ab, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i32 %.val10, %i.aa
  %i.ad = icmp eq i32 %.val10, 6
  %or.cond.i.i.i = or i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.aa, label %bb.g [
    i32 5, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit
    i32 3, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit
    i32 2, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit
  ]

bb.g:                                             ; preds = %bb.f
  switch i32 %.val10, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit [
    i32 4, label %bb.i
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %i.aa, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit [
    i32 0, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i, %bb.b, %bb.e, %bb.d, %bb.g, %bb.c
  %i.ae = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext 25) #22 ; 3 uses
  %.not.i11 = icmp eq ptr %i.ae, null
  br i1 %.not.i11, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i12 = load i32, ptr %i.ae, align 8        ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val11.i13 = load i32, ptr %i.af, align 4
  %.val12.i14 = load i32, ptr %.val8, align 8     ; 2 uses
  %i.ag = getelementptr i8, ptr %.val8, i64 4
  %.val13.i15 = load i32, ptr %i.ag, align 4
  %i.ah = and i32 %.val.i12, 255
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = and i32 %.val12.i14, 255
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond.i.i16 = select i1 %i.ai, i1 %i.ak, i1 false
  %i.al = icmp eq i32 %.val11.i13, %.val13.i15
  %or.cond7.i.i17 = select i1 %or.cond.i.i16, i1 %i.al, i1 false
  br i1 %or.cond7.i.i17, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i19, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i19: ; preds = %bb.j
  %i.am = xor i32 %.val12.i14, %.val.i12
  %i.an = and i32 %i.am, 1048320
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit

bb.k:                                             ; preds = %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.i19
  %i.ap = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext range(i8 67, 71) 70) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !369 ; 2 uses
  %i.as = trunc i64 %i.ar to i32                  ; 4 uses
  %i.at = icmp eq i32 %i.as, 6
  br i1 %i.at, label %_ZL15canCombineOpSelRKN4llvm12MachineInstrEPKNS_11SIInstrInfoENS_6AMDGPU6OpNameES7_PNS_14MachineOperandENS6_4SDWA7SdwaSelE.exit, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_114SDWASrcOperand18potentialToConvertEPKN4llvm11SIInstrInfoERKNS1_12GCNSubtargetEPNS1_9MapVectorIPNS1_12MachineInstrENS1_11SmallVectorIPNS_11SDWAOperandELj4EEENS1_8DenseMapISA_jNS1_12DenseMapInfoISA_vEENS1_6detail12DenseMapPairISA_jEEEENSB_ISt4pairISA_SE_ELj0EEELj0EEE:bb.a
  %or.cond.i = icmp eq i32 %i.cy, 16777216
  br i1 %or.cond.i, label %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit, label %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit: ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !322
  %i.db = getelementptr inbounds nuw i8, ptr %.val36, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !369
  %i.dd = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo15getOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.da, i32 %i.dc) #19 ; 2 uses
  %.not31 = icmp eq ptr %i.dd, null
  br i1 %.not31, label %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !372 ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !29
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef %1) #19
  %i.dj = select i1 %i.di, ptr %i.df, ptr null
  br label %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread

_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit.thread: ; preds = %.lr.ph114, %.lr.ph.loopexit, %.critedge2.i.i.i.i43, %.critedge2.i.i55, %.lr.ph.preheader, %.critedge33, %bb.p, %bb.q, %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit, %bb.b
  %.5 = phi ptr [ null, %.critedge33 ], [ null, %bb.b ], [ null, %bb.p ], [ null, %_ZL16findSingleRegUsePKN4llvm14MachineOperandEPKNS_19MachineRegisterInfoE.exit ], [ %i.dj, %bb.q ], [ null, %.critedge2.i.i.i.i43 ], [ null, %.lr.ph.preheader ], [ null, %.critedge2.i.i55 ], [ null, %.lr.ph.loopexit ], [ null, %.lr.ph114 ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_114SDWASrcOperand13convertToSDWAERN4llvm12MachineInstrEPKNS1_11SIInstrInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368  ; 6 uses
  switch i32 %i.b, label %bb.c [
    i32 8824, label %.critedge
    i32 8785, label %.critedge
    i32 9066, label %.critedge
    i32 9054, label %.critedge
    i32 8605, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 2, !tbaa !451, !range !151, !noundef !147
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 1) #22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val85 = load ptr, ptr %i.g, align 8, !tbaa !441 ; 2 uses
  %.val77 = load i32, ptr %i.f, align 8           ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %.val78 = load i32, ptr %i.h, align 4
  %.val79 = load i32, ptr %.val85, align 8        ; 3 uses
  %i.i = getelementptr i8, ptr %.val85, i64 4
  %.val80 = load i32, ptr %i.i, align 4           ; 2 uses
  %i.j = and i32 %.val77, 255
  %i.k = icmp eq i32 %i.j, 0
  %i.l = and i32 %.val79, 255
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = icmp eq i32 %.val78, %.val80
  %or.cond7.i = select i1 %or.cond.i, i1 %i.n, i1 false
  br i1 %or.cond7.i, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.thread

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit:   ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 31) #22
  %i.p = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 69) #22
  %i.q = xor i32 %.val79, %.val77
  %i.r = and i32 %i.q, 1048320
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.thread

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.thread: ; preds = %bb.c, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit
  %i.t = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 25) #22 ; 6 uses
  %i.u = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 70) #22 ; 3 uses
  %i.v = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 66) #22 ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread, label %bb.d

bb.d:                                             ; preds = %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.thread
  %.val73 = load i32, ptr %i.t, align 8           ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %.val74 = load i32, ptr %i.w, align 4
  %i.x = and i32 %.val73, 255
  %i.y = icmp eq i32 %i.x, 0
  %or.cond.i88 = select i1 %i.y, i1 %i.m, i1 false
  %i.z = icmp eq i32 %.val74, %.val80
  %or.cond7.i89 = select i1 %or.cond.i88, i1 %i.z, i1 false
  br i1 %or.cond7.i89, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90: ; preds = %bb.d
  %i.aa = xor i32 %.val73, %.val79
  %i.ab = and i32 %i.aa, 1048320
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread: ; preds = %bb.d, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit.thread
  %i.ad = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 0) #22
  %.not69 = icmp eq ptr %i.ad, null
  br i1 %.not69, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread
  %i.ae = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 68) #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !369
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.b, i8 noundef zeroext 67) #22
  %i.aj = sext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !440
  %i.am = and i64 %i.aj, 4294967295
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !369
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 5
  br i1 %i.ar, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val87 = load i32, ptr %i.as, align 8, !tbaa !448
  %i.at = icmp eq i32 %.val87, 4
  br i1 %i.at, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.au = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.b, i8 noundef zeroext 0) #22
  %i.av = sext i16 %i.au to i32
  %i.aw = tail call noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.av) #19
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !440
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ay
  %.pre = load i32, ptr %i.a, align 4, !tbaa !368
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90
  %i.ba = phi i32 [ %i.b, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90 ], [ %.pre, %bb.h ], [ %i.b, %bb.e ], [ %i.b, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread ]
  %.367 = phi ptr [ %i.u, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90 ], [ null, %bb.h ], [ %i.u, %bb.e ], [ %i.u, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread ] ; 2 uses
  %.362 = phi ptr [ %i.v, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90 ], [ null, %bb.h ], [ %i.v, %bb.e ], [ %i.v, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread ] ; 2 uses
  %.357 = phi ptr [ %i.t, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90 ], [ %i.az, %bb.h ], [ %i.t, %bb.e ], [ %i.t, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread ] ; 4 uses
  %.352 = phi i1 [ false, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90 ], [ true, %bb.h ], [ false, %bb.e ], [ false, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit90.thread ] ; 2 uses
  switch i32 %i.ba, label %bb.k [
    i32 9459, label %bb.j
    i32 9469, label %bb.j
    i32 9803, label %bb.j
    i32 9808, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %.val83 = load ptr, ptr %i.g, align 8, !tbaa !441 ; 2 uses
  %.357.val = load i32, ptr %.357, align 8        ; 2 uses
  %i.bb = getelementptr i8, ptr %.357, i64 4
  %.357.val71 = load i32, ptr %i.bb, align 4
  %.val = load i32, ptr %.val83, align 8          ; 2 uses
  %i.bc = getelementptr i8, ptr %.val83, i64 4
  %.val72 = load i32, ptr %i.bc, align 4
  %i.bd = and i32 %.357.val, 255
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = and i32 %.val, 255
  %i.bg = icmp eq i32 %i.bf, 0
  %or.cond.i91 = select i1 %i.be, i1 %i.bg, i1 false
  %i.bh = icmp eq i32 %.357.val71, %.val72
  %or.cond7.i92 = select i1 %or.cond.i91, i1 %i.bh, i1 false
  br i1 %or.cond7.i92, label %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93, label %.critedge

_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93: ; preds = %bb.j
  %i.bi = xor i32 %.val, %.357.val
  %i.bj = and i32 %i.bi, 1048320
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.i, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit
  %.468 = phi ptr [ %i.p, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit ], [ %.367, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93 ], [ %.367, %bb.i ]
  %.463 = phi ptr [ %i.o, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit ], [ %.362, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93 ], [ %.362, %bb.i ]
  %.458 = phi ptr [ %i.f, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit ], [ %.357, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93 ], [ %.357, %bb.i ] ; 8 uses
  %.453 = phi i1 [ false, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit ], [ %.352, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93 ], [ %.352, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val82 = load ptr, ptr %i.bl, align 8, !tbaa !439 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val82, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !369
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.458, i32 %i.bn) #19
  %i.bo = load i32, ptr %.val82, align 8
  %i.bp = and i32 %i.bo, 1048320
  %i.bq = load i32, ptr %.458, align 8            ; 2 uses
  %i.br = and i32 %i.bq, -1048321
  %i.bs = or disjoint i32 %i.br, %i.bp            ; 2 uses
  store i32 %i.bs, ptr %.458, align 8
  %i.bt = load i32, ptr %.val82, align 8
  %i.bu = and i32 %i.bt, 268435456
  %i.bv = and i32 %i.bs, -268435457
  %i.bw = or disjoint i32 %i.bv, %i.bu            ; 2 uses
  store i32 %i.bw, ptr %.458, align 8
  %i.bx = and i32 %i.bq, 16777216
  %.not.i.i = icmp eq i32 %i.bx, 0
  %i.by = load i32, ptr %.val82, align 8          ; 3 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %3 = shl i32 %i.by, 2
  %.lobit.i.i = and i32 %3, 67108864
  %i.bz = xor i32 %.lobit.i.i, 67108864
  %i.ca = and i32 %i.bz, %i.by
  br label %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit

bb.m:                                             ; preds = %bb.k
  %i.cb = and i32 %i.by, 83886080
  %i.cc = icmp eq i32 %i.cb, 83886080
  %i.cd = select i1 %i.cc, i32 67108864, i32 0
  br label %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit

_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit: ; preds = %bb.l, %bb.m
  %.sink12.i = phi i32 [ -67108865, %bb.m ], [ -83886081, %bb.l ]
  %.sink.i = phi i32 [ %i.cd, %bb.m ], [ %i.ca, %bb.l ]
  %i.ce = and i32 %.sink12.i, %i.bw
  %i.cf = or disjoint i32 %.sink.i, %i.ce
  store i32 %i.cf, ptr %.458, align 8
  br i1 %.453, label %bb.z, label %bb.n

bb.n:                                             ; preds = %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.468, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !369
  %i.ci = trunc i64 %i.ch to i32                  ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val86 = load i32, ptr %i.cj, align 8, !tbaa !448 ; 4 uses
  %i.ck = icmp eq i32 %i.ci, 6
  br i1 %i.ck, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp eq i32 %.val86, %i.ci
  %i.cm = icmp eq i32 %.val86, 6
  %or.cond.i94 = or i1 %i.cl, %i.cm
  br i1 %or.cond.i94, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %i.ci, label %bb.q [
    i32 5, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit
    i32 3, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit
    i32 2, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit
  ]

bb.q:                                             ; preds = %bb.p
  %cond = icmp eq i32 %.val86, 5
  br i1 %cond, label %bb.r, label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit

bb.r:                                             ; preds = %bb.q
  %switch.selectcmp = icmp eq i32 %i.ci, 1
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 2
  %switch.selectcmp96 = icmp eq i32 %i.ci, 4
  %switch.select97 = select i1 %switch.selectcmp96, i32 5, i32 %switch.select
  br label %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit

_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit: ; preds = %bb.r, %bb.q, %bb.n, %bb.o, %bb.p, %bb.p, %bb.p
  %.sroa.0.0.i = phi i32 [ %i.ci, %bb.o ], [ %.val86, %bb.n ], [ undef, %bb.p ], [ undef, %bb.p ], [ %i.ci, %bb.q ], [ %switch.select97, %bb.r ], [ undef, %bb.p ]
  %i.cn = zext i32 %.sroa.0.0.i to i64
  store i64 %i.cn, ptr %i.cg, align 8, !tbaa !369
  %i.co = getelementptr inbounds nuw i8, ptr %.458, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !372 ; 4 uses
  %i.cq = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.cp, i8 noundef zeroext 1) #22
  %i.cr = icmp eq ptr %i.cq, %.458
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit
  %i.cs = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.cp, i8 noundef zeroext 31) #22 ; 2 uses
  %.not22.i = icmp eq ptr %i.cs, null
  br i1 %.not22.i, label %bb.v, label %.sink.split.i

bb.t:                                             ; preds = %_ZL14combineSdwaSelN4llvm6AMDGPU4SDWA7SdwaSelES2_.exit
  %i.ct = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.cp, i8 noundef zeroext 25) #22
  %i.cu = icmp eq ptr %i.ct, %.458
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.cp, i8 noundef zeroext 66) #22 ; 2 uses
  %.not.i95 = icmp eq ptr %i.cv, null
  br i1 %.not.i95, label %bb.v, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.u, %bb.s
  %.sink25.i = phi ptr [ %i.cs, %bb.s ], [ %i.cv, %bb.u ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !369
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %bb.u, %bb.t, %bb.s
  %.2.i = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.u ], [ %i.cx, %.sink.split.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !449, !range !151, !noundef !147 ; 2 uses
  %i.da = trunc nuw i8 %i.cz to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !450, !range !151 ; 2 uses
  br i1 %i.da, label %._crit_edge.i, label %bb.w

._crit_edge.i:                                    ; preds = %bb.v
  %i.db = zext nneg i8 %.pre.i to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = trunc nuw i8 %.pre.i to i1
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %i.dd = phi i64 [ %i.db, %._crit_edge.i ], [ 1, %bb.w ]
  %i.de = shl nuw nsw i8 %i.cz, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = or i64 %.2.i, %i.df
  %i.dh = xor i64 %i.dd, %i.dg
  br label %_ZNK12_GLOBAL__N_114SDWASrcOperand10getSrcModsEPKN4llvm11SIInstrInfoEPKNS1_14MachineOperandE.exit

bb.y:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !451, !range !151, !noundef !147
  %i.dk = shl nuw nsw i8 %i.dj, 4
  %i.dl = zext nneg i8 %i.dk to i64
  %spec.select.i = or i64 %.2.i, %i.dl
  br label %_ZNK12_GLOBAL__N_114SDWASrcOperand10getSrcModsEPKN4llvm11SIInstrInfoEPKNS1_14MachineOperandE.exit

_ZNK12_GLOBAL__N_114SDWASrcOperand10getSrcModsEPKN4llvm11SIInstrInfoEPKNS1_14MachineOperandE.exit: ; preds = %bb.x, %bb.y
  %.3.i = phi i64 [ %i.dh, %bb.x ], [ %spec.select.i, %bb.y ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.463, i64 16
  store i64 %.3.i, ptr %i.dm, align 8, !tbaa !369
  br label %bb.z

bb.z:                                             ; preds = %_ZNK12_GLOBAL__N_114SDWASrcOperand10getSrcModsEPKN4llvm11SIInstrInfoEPKNS1_14MachineOperandE.exit, %_ZL14copyRegOperandRN4llvm14MachineOperandERKS0_.exit
  %.val81 = load ptr, ptr %i.bl, align 8, !tbaa !439 ; 2 uses
  %i.dn = load i32, ptr %.val81, align 8
  %i.do = and i32 %i.dn, -67108865
  store i32 %i.do, ptr %.val81, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.g, %bb.f, %bb.z, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ true, %bb.z ], [ false, %_ZL9isSameRegRKN4llvm14MachineOperandES2_.exit93 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.j ]
  ret i1 %.4
}

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo15getOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef, i8 noundef zeroext) local_unnamed_addr #9

declare noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_122SDWADstPreserveOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(80) %1, ptr nofree noundef readonly %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !377
  %i.e = zext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !437
  %i.j = and i64 %i.i, 16384
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.k, align 8, !tbaa !445 ; 3 uses
  %i.l = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %2, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext 67) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !369  ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %.val.i, %i.o
  %i.r = icmp eq i32 %.val.i, 6
  %or.cond.i.i.i = or i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.o, label %bb.e [
    i32 5, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit
    i32 3, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit
    i32 2, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit
  ]

bb.e:                                             ; preds = %bb.d
  switch i32 %.val.i, label %bb.g [
    i32 4, label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit
    i32 5, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ult i32 %i.o, 5
  br i1 %i.s, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit

switch.lookup:                                    ; preds = %bb.f
  %switch.cast = trunc i64 %i.n to i5
  %switch.downshift = lshr i5 -13, %switch.cast
  %switch.masked = trunc i5 %switch.downshift to i1
  br label %_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit

_ZN12_GLOBAL__N_114SDWADstOperand20canCombineSelectionsERKN4llvm12MachineInstrEPKNS1_11SIInstrInfoE.exit: ; preds = %switch.lookup, %bb.a, %bb.b, %bb.c, %bb.d, %bb.d, %bb.d, %bb.e, %bb.g
  %.0.i = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.g ], [ false, %bb.d ], [ true, %bb.e ], [ %switch.masked, %switch.lookup ], [ false, %bb.d ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_111SDWAOperandD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(24) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122SDWADstPreserveOperandD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
end_hunk_2
