Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFMIPeephole?download=true
inline.NumInlined: 1372
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_124BPFMIPreEmitPeepholeImpl20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.not.i.i.4.i.i = icmp eq i16 %i.acc, 0
  br i1 %.not.i.i.4.i.i, label %select.unfold._crit_edge.loopexit.4.i.i, label %.lr.ph.4.i.i

select.unfold._crit_edge.loopexit.4.i.i:          ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.4.i.i
  %.pre78.i.i = load ptr, ptr %i.wh, align 8, !tbaa !583, !noalias !584
  %.pre79.i.i = load ptr, ptr %i.wi, align 8, !tbaa !585, !noalias !584
  %i.acf = select i1 %i.acb, i32 32, i32 0
  %i.acg = or i32 %i.acf, %.031.lcssa.3.i.i
  br label %select.unfold._crit_edge.4.i.i

select.unfold._crit_edge.4.i.i:                   ; preds = %select.unfold._crit_edge.loopexit.4.i.i, %select.unfold._crit_edge.3.i.i
  %i.ach = phi ptr [ %i.aba, %select.unfold._crit_edge.3.i.i ], [ %.pre79.i.i, %select.unfold._crit_edge.loopexit.4.i.i ]
  %i.aci = phi ptr [ %i.abb, %select.unfold._crit_edge.3.i.i ], [ %.pre78.i.i, %select.unfold._crit_edge.loopexit.4.i.i ]
  %.031.lcssa.4.i.i = phi i32 [ %.031.lcssa.3.i.i, %select.unfold._crit_edge.3.i.i ], [ %i.acg, %select.unfold._crit_edge.loopexit.4.i.i ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 148
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !587, !noalias !584
  %i.acl = zext i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.aci, i64 %i.acl ; 2 uses
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !588, !noalias !584 ; 2 uses
  %.not.i.i.i.i.5.i.i = icmp eq i16 %i.acn, 0
  br i1 %.not.i.i.i.i.5.i.i, label %select.unfold._crit_edge.5.i.i, label %.lr.ph.preheader.5.i.i

.lr.ph.preheader.5.i.i:                           ; preds = %select.unfold._crit_edge.4.i.i
  %i.aco = zext i16 %i.acn to i32
  %i.acp = add nuw nsw i32 %i.aco, 6
  br label %.lr.ph.5.i.i

.lr.ph.5.i.i:                                     ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i, %.lr.ph.preheader.5.i.i
  %.03162.5.i.i = phi i1 [ %i.adi, %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i ], [ false, %.lr.ph.preheader.5.i.i ]
  %.sroa.039.061.5.i.i = phi i32 [ %i.adl, %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i ], [ %i.acp, %.lr.ph.preheader.5.i.i ] ; 3 uses
  %.sroa.540.060.5.pn.i.i = phi ptr [ %.sroa.540.060.5.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i ], [ %i.acm, %.lr.ph.preheader.5.i.i ]
  %.sroa.540.060.5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.540.060.5.pn.i.i, i64 2 ; 2 uses
  %.sroa.9.063.5.i.i = trunc i32 %.sroa.039.061.5.i.i to i16
  %i.acq = and i32 %.sroa.039.061.5.i.i, 65535    ; 2 uses
  %i.acr = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.067.i.i, i32 %i.acq, ptr noundef nonnull %i.vj, i1 noundef zeroext false, i1 noundef zeroext false) #20
  %.not57.5.i.i = icmp eq i32 %i.acr, -1
  br i1 %.not57.5.i.i, label %bb.bc, label %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i

bb.bc:                                            ; preds = %.lr.ph.5.i.i
  %i.acs = zext nneg i32 %i.acq to i64
  %i.act = load ptr, ptr %i.ta, align 8, !tbaa !29
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acs
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !200
  %i.acw = zext i8 %i.acv to i32                  ; 2 uses
  %i.acx = load i64, ptr %i.sy, align 8, !tbaa !552 ; 3 uses
  %i.acy = trunc i64 %i.acx to i32                ; 2 uses
  %.not1521.i.i.i.i.i.5.i.i = icmp ult i32 %i.acw, %i.acy
  %.pre.i.i.i.i.i.5.i.i = load ptr, ptr %i.sw, align 8, !tbaa !551
  br i1 %.not1521.i.i.i.i.i.5.i.i, label %.lr.ph.i.i.i.i.i.5.i.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i

.lr.ph.i.i.i.i.i.5.i.i:                           ; preds = %bb.bc, %bb.bd
  %.01222.i.i.i.i.i.5.i.i = phi i32 [ %i.adc, %bb.bd ], [ %i.acw, %bb.bc ] ; 2 uses
  %i.acz = zext i32 %.01222.i.i.i.i.i.5.i.i to i64 ; 2 uses
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i.i.i.5.i.i, i64 %i.acz
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !588
  %.not.i.i.i.i.i.5.i.i = icmp eq i16 %i.adb, %.sroa.9.063.5.i.i
  br i1 %.not.i.i.i.i.i.5.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.5.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.5.i.i
  %i.adc = add i32 %.01222.i.i.i.i.i.5.i.i, 256   ; 2 uses
  %.not15.i.i.i.i.i.5.i.i = icmp ult i32 %i.adc, %i.acy
  br i1 %.not15.i.i.i.i.i.5.i.i, label %.lr.ph.i.i.i.i.i.5.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.5.i.i, !llvm.loop !375

_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.5.i.i: ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.5.i.i
  %.lcssa27.sink.i.i.ph.i.i.i.5.i.i = phi i64 [ %i.acz, %.lr.ph.i.i.i.i.i.5.i.i ], [ %i.acx, %bb.bd ]
  %i.add = icmp samesign ne i64 %.lcssa27.sink.i.i.ph.i.i.i.5.i.i, %i.acx
  %i.ade = zext i1 %i.add to i32
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i:        ; preds = %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.5.i.i, %bb.bc, %.lr.ph.5.i.i
  %i.adf = phi i32 [ 0, %.lr.ph.5.i.i ], [ 0, %bb.bc ], [ %i.ade, %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.5.i.i ]
  %i.adg = zext i1 %.03162.5.i.i to i32
  %i.adh = or i32 %i.adf, %i.adg
  %i.adi = icmp ne i32 %i.adh, 0                  ; 2 uses
  %i.adj = load i16, ptr %.sroa.540.060.5.i.i, align 2, !tbaa !588 ; 2 uses
  %i.adk = zext i16 %i.adj to i32
  %i.adl = add i32 %.sroa.039.061.5.i.i, %i.adk
  %.not.i.i.5.i.i = icmp eq i16 %i.adj, 0
  br i1 %.not.i.i.5.i.i, label %select.unfold._crit_edge.loopexit.5.i.i, label %.lr.ph.5.i.i

select.unfold._crit_edge.loopexit.5.i.i:          ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.5.i.i
  %i.adm = select i1 %i.adi, i32 64, i32 0
  %i.adn = or i32 %i.adm, %.031.lcssa.4.i.i
  br label %select.unfold._crit_edge.5.i.i

select.unfold._crit_edge.5.i.i:                   ; preds = %select.unfold._crit_edge.loopexit.5.i.i, %select.unfold._crit_edge.4.i.i
  %.031.lcssa.5.i.i = phi i32 [ %.031.lcssa.4.i.i, %select.unfold._crit_edge.4.i.i ], [ %i.adn, %select.unfold._crit_edge.loopexit.5.i.i ] ; 3 uses
  %.not34.i.i = icmp eq i32 %.031.lcssa.5.i.i, 0
  br i1 %.not34.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i, label %bb.bg

.lr.ph.i40.i:                                     ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %.lr.ph.preheader.i.i
  %.03162.i.i = phi i1 [ %i.aeg, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ false, %.lr.ph.preheader.i.i ]
  %.sroa.039.061.i.i = phi i32 [ %i.aej, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.xd, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.540.060.pn.i.i = phi ptr [ %.sroa.540.060.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.xa, %.lr.ph.preheader.i.i ]
  %.sroa.540.060.i.i = getelementptr inbounds nuw i8, ptr %.sroa.540.060.pn.i.i, i64 2 ; 2 uses
  %.sroa.9.063.i.i = trunc i32 %.sroa.039.061.i.i to i16
  %i.ado = and i32 %.sroa.039.061.i.i, 65535      ; 2 uses
  %i.adp = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.067.i.i, i32 %i.ado, ptr noundef nonnull %i.vj, i1 noundef zeroext false, i1 noundef zeroext false) #20
  %.not57.i.i = icmp eq i32 %i.adp, -1
  br i1 %.not57.i.i, label %bb.be, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

bb.be:                                            ; preds = %.lr.ph.i40.i
  %i.adq = zext nneg i32 %i.ado to i64
  %i.adr = load ptr, ptr %i.ta, align 8, !tbaa !29
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adq
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !200
  %i.adu = zext i8 %i.adt to i32                  ; 2 uses
  %i.adv = load i64, ptr %i.sy, align 8, !tbaa !552 ; 3 uses
  %i.adw = trunc i64 %i.adv to i32                ; 2 uses
  %.not1521.i.i.i.i.i.i.i = icmp ult i32 %i.adu, %i.adw
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.sw, align 8, !tbaa !551
  br i1 %.not1521.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.adx = add i32 %.01222.i.i.i.i.i.i.i, 256     ; 2 uses
  %.not15.i.i.i.i.i.i.i = icmp ult i32 %i.adx, %i.adw
  br i1 %.not15.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.i.i, !llvm.loop !375

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.be, %bb.bf
  %.01222.i.i.i.i.i.i.i = phi i32 [ %i.adx, %bb.bf ], [ %i.adu, %bb.be ] ; 2 uses
  %i.ady = zext i32 %.01222.i.i.i.i.i.i.i to i64  ; 2 uses
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.ady
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !588
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.aea, %.sroa.9.063.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.i.i, label %bb.bf

_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bf
  %.lcssa27.sink.i.i.ph.i.i.i.i.i = phi i64 [ %i.ady, %.lr.ph.i.i.i.i.i.i.i ], [ %i.adv, %bb.bf ]
  %i.aeb = icmp samesign ne i64 %.lcssa27.sink.i.i.ph.i.i.i.i.i, %i.adv
  %i.aec = zext i1 %i.aeb to i32
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i.i:          ; preds = %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.i.i, %bb.be, %.lr.ph.i40.i
  %i.aed = phi i32 [ 0, %.lr.ph.i40.i ], [ 0, %bb.be ], [ %i.aec, %_ZNK4llvm9SparseSetIttNS_8identityEhE4findERKt.exit.loopexit.i.i.i.i.i ]
  %i.aee = zext i1 %.03162.i.i to i32
  %i.aef = or i32 %i.aed, %i.aee
  %i.aeg = icmp ne i32 %i.aef, 0                  ; 2 uses
  %i.aeh = load i16, ptr %.sroa.540.060.i.i, align 2, !tbaa !588 ; 2 uses
  %i.aei = zext i16 %i.aeh to i32
  %i.aej = add i32 %.sroa.039.061.i.i, %i.aei
  %.not.i.i.i41.i = icmp eq i16 %i.aeh, 0
  br i1 %.not.i.i.i41.i, label %select.unfold._crit_edge.loopexit.i.i, label %.lr.ph.i40.i

bb.bg:                                            ; preds = %select.unfold._crit_edge.5.i.i
  %i.aek = load i32, ptr %i.su, align 8, !tbaa !271 ; 2 uses
  %i.ael = load i32, ptr %i.sv, align 4, !tbaa !533
  %.not.i.i.i31 = icmp ult i32 %i.aek, %i.ael
  br i1 %.not.i.i.i31, label %bb.bi, label %bb.bh, !prof !272

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %.sroa.049.067.i.i, i32 range(i32 1, 0) %.031.lcssa.5.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.aem = zext i32 %i.aek to i64
  %.val.i.i.i = load ptr, ptr %10, align 8, !tbaa !24
  %i.aen = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.aem ; 2 uses
  store ptr %.sroa.049.067.i.i, ptr %i.aen, align 1
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  store i32 %.031.lcssa.5.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1
  %i.aeo = load i32, ptr %i.su, align 8, !tbaa !271
  %i.aep = add i32 %i.aeo, 1
  store i32 %i.aep, ptr %i.su, align 8, !tbaa !271
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i: ; preds = %bb.bi, %bb.bh, %select.unfold._crit_edge.5.i.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i.i, %.split.i.i
  call void @_ZN4llvm12LivePhysRegs12stepBackwardERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.067.i.i) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i23 = load i64, ptr %.sroa.049.067.i.i, align 8
  %i.aeq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i23, -8
  %i.aer = inttoptr i64 %i.aeq to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aer) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i24 = load i64, ptr %i.aer, align 8
  %i.aes = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i24, 4
  %.not.i.i.i.i36.i.i = icmp eq i64 %i.aes, 0
  br i1 %.not.i.i.i.i36.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 44
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !210
  %i.aev = and i32 %i.aeu, 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.aev, 0
  br i1 %.not45.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.aex, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %i.aer, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.aew = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i, -8
  %i.aex = inttoptr i64 %i.aew to ptr             ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 44
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !210
  %i.afa = and i32 %i.aez, 4
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.afa, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !372

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.aer, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111BPFFastCallELb1EE9push_backES2_.exit.i.i ], [ %i.aer, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.aex, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ] ; 2 uses
  %.not54.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i, %i.vv
  br i1 %.not54.i.i, label %_ZN12_GLOBAL__N_119collectBPFFastCallsEPKN4llvm18TargetRegisterInfoERNS0_12LivePhysRegsERNS0_17MachineBasicBlockERNS0_15SmallVectorImplINS_11BPFFastCallEEE.exit.i, label %bb.at

_ZN12_GLOBAL__N_119collectBPFFastCallsEPKN4llvm18TargetRegisterInfoERNS0_12LivePhysRegsERNS0_17MachineBasicBlockERNS0_15SmallVectorImplINS_11BPFFastCallEEE.exit.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i
  %.pre.i25 = load i32, ptr %i.su, align 8, !tbaa !271 ; 2 uses
  %.val.i = load ptr, ptr %10, align 8, !tbaa !24 ; 2 uses
  %i.afb = zext i32 %.pre.i25 to i64
  %.idx.i = shl nuw nsw i64 %i.afb, 4
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  %.not91.i = icmp eq i32 %.pre.i25, 0
  br i1 %.not91.i, label %._crit_edge.i29, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZN12_GLOBAL__N_119collectBPFFastCallsEPKN4llvm18TargetRegisterInfoERNS0_12LivePhysRegsERNS0_17MachineBasicBlockERNS0_15SmallVectorImplINS_11BPFFastCallEEE.exit.i
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.076.096.i, i64 32 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bj, %.preheader.lr.ph.i
  %.03692.i = phi ptr [ %.val.i, %.preheader.lr.ph.i ], [ %i.afh, %bb.bj ] ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.03692.i, i64 8
  br label %bb.bk

._crit_edge.i29:                                  ; preds = %bb.bj, %_ZN12_GLOBAL__N_119collectBPFFastCallsEPKN4llvm18TargetRegisterInfoERNS0_12LivePhysRegsERNS0_17MachineBasicBlockERNS0_15SmallVectorImplINS_11BPFFastCallEEE.exit.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i.i
  %i.aff = phi i1 [ %.095.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i.i ], [ %.095.i, %_ZN12_GLOBAL__N_119collectBPFFastCallsEPKN4llvm18TargetRegisterInfoERNS0_12LivePhysRegsERNS0_17MachineBasicBlockERNS0_15SmallVectorImplINS_11BPFFastCallEEE.exit.i ], [ true, %bb.bj ] ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.076.096.i, i64 8
  %.sroa.076.0.i = load ptr, ptr %i.afg, align 8, !tbaa !180 ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.076.0.i, %i.uo
  br i1 %.not79.i, label %._crit_edge97.i, label %bb.am

bb.bj:                                            ; preds = %bb.bl
  %i.afh = getelementptr inbounds nuw i8, ptr %.03692.i, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.afh, %i.afc
  br i1 %.not.i28, label %._crit_edge.i29, label %.preheader.i

bb.bk:                                            ; preds = %bb.bl, %.preheader.i
  %.034.idx90.i = phi i64 [ 0, %.preheader.i ], [ %.034.add.i, %bb.bl ] ; 2 uses
  %.03589.i = phi i64 [ %.014.lcssa.i.i, %.preheader.i ], [ %.1.i, %bb.bl ] ; 2 uses
  %.034.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_115CallerSavedRegsE, i64 %.034.idx90.i
  %i.afi = load i32, ptr %.034.ptr.i, align 4, !tbaa !256 ; 3 uses
  %i.afj = shl nuw i32 1, %i.afi
  %i.afk = load i32, ptr %i.afe, align 8, !tbaa !590
  %i.afl = and i32 %i.afj, %i.afk
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %bb.bl, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit49.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit49.i: ; preds = %bb.bk
  %i.afn = add nsw i64 %.03589.i, -8              ; 4 uses
  %i.afo = call noundef i32 @_ZN4llvm16MachineFrameInfo27CreateFixedSpillStackObjectEmlb(ptr noundef nonnull align 8 dereferenceable(728) %i.ss, i64 noundef 8, i64 noundef %i.afn, i1 noundef zeroext false) #20 ; 0 uses
  %i.afp = load ptr, ptr %.03692.i, align 8, !tbaa !591 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 72
  %.sroa.04.0.copyload.i27 = load ptr, ptr %i.afq, align 8, !tbaa !202
  %i.afr = load ptr, ptr %i.l, align 8, !tbaa !391
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !206
  %i.afu = getelementptr inbounds i8, ptr %i.aft, i64 -15904
  %i.afv = load ptr, ptr %i.afd, align 8, !tbaa !254 ; 4 uses
  %i.afw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.afv, ptr noundef nonnull align 8 dereferenceable(32) %i.afu, ptr %.sroa.04.0.copyload.i27, i1 noundef zeroext false) #20 ; 4 uses
  %i.afx = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.076.096.i, ptr %i.afp, ptr noundef %i.afw) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr null, ptr %i.up, align 8, !tbaa !209, !alias.scope !592
  store i32 %i.afi, ptr %i.uq, align 4, !tbaa !200, !alias.scope !592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ur, i8 0, i64 16, i1 false), !alias.scope !592
  store i32 67108864, ptr %9, align 8, !alias.scope !592
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afw, ptr noundef nonnull align 8 dereferenceable(1065) %i.afv, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %i.us, align 8, !tbaa !209, !alias.scope !593
  store i32 11, ptr %i.ut, align 4, !tbaa !200, !alias.scope !593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i8 0, i64 16, i1 false), !alias.scope !593
  store i32 0, ptr %8, align 8, !alias.scope !593
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afw, ptr noundef nonnull align 8 dereferenceable(1065) %i.afv, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 1, ptr %7, align 8, !alias.scope !594
  store ptr null, ptr %i.uv, align 8, !tbaa !209, !alias.scope !594
  store i64 %i.afn, ptr %i.uw, align 8, !tbaa !200, !alias.scope !594
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.afw, ptr noundef nonnull align 8 dereferenceable(1065) %i.afv, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.afy = load ptr, ptr %.03692.i, align 8, !tbaa !591 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !185
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afy, i64 72
  %.sroa.01.0.copyload.i = load ptr, ptr %i.agb, align 8, !tbaa !202
  %i.agc = load ptr, ptr %i.l, align 8, !tbaa !391
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !206
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 -13632
  %i.agg = load ptr, ptr %i.afd, align 8, !tbaa !254 ; 4 uses
  %i.agh = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.agg, ptr noundef nonnull align 8 dereferenceable(32) %i.agf, ptr %.sroa.01.0.copyload.i, i1 noundef zeroext false) #20 ; 4 uses
  %i.agi = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.076.096.i, ptr %i.aga, ptr noundef %i.agh) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %i.ux, align 8, !tbaa !209, !alias.scope !595
  store i32 %i.afi, ptr %i.uy, align 4, !tbaa !200, !alias.scope !595
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, i8 0, i64 16, i1 false), !alias.scope !595
  store i32 16777216, ptr %6, align 8, !alias.scope !595
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.agh, ptr noundef nonnull align 8 dereferenceable(1065) %i.agg, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %i.va, align 8, !tbaa !209, !alias.scope !596
  store i32 11, ptr %i.vb, align 4, !tbaa !200, !alias.scope !596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i8 0, i64 16, i1 false), !alias.scope !596
  store i32 0, ptr %5, align 8, !alias.scope !596
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.agh, ptr noundef nonnull align 8 dereferenceable(1065) %i.agg, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 1, ptr %4, align 8, !alias.scope !597
  store ptr null, ptr %i.vd, align 8, !tbaa !209, !alias.scope !597
  store i64 %i.afn, ptr %i.ve, align 8, !tbaa !200, !alias.scope !597
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.agh, ptr noundef nonnull align 8 dereferenceable(1065) %i.agg, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit49.i, %bb.bk
  %.1.i = phi i64 [ %i.afn, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit49.i ], [ %.03589.i, %bb.bk ]
  %.034.add.i = add nuw nsw i64 %.034.idx90.i, 4  ; 2 uses
  %.not37.i = icmp eq i64 %.034.add.i, 24
  br i1 %.not37.i, label %bb.bj, label %bb.bk

_ZN12_GLOBAL__N_124BPFMIPreEmitPeepholeImpl30insertMissingCallerSavedSpillsEv.exit: ; preds = %_ZN4llvm12LivePhysRegsD2Ev.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.val6 = load ptr, ptr %0, align 8, !tbaa !390
  %i.agj = getelementptr inbounds nuw i8, ptr %.val6, i64 296 ; 3 uses
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !515 ; 3 uses
  %.not2733.i = icmp eq ptr %i.agk, %i.agj
  br i1 %.not2733.i, label %_ZN12_GLOBAL__N_124BPFMIPreEmitPeepholeImpl17removeMayGotoZeroEv.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %_ZN12_GLOBAL__N_124BPFMIPreEmitPeepholeImpl30insertMissingCallerSavedSpillsEv.exit
  %i.agl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ago = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ca, %.lr.ph38.i
  %.036.i = phi i1 [ false, %.lr.ph38.i ], [ %.5.i35, %bb.ca ] ; 12 uses
  %.04135.i = phi ptr [ null, %.lr.ph38.i ], [ %.6.i34, %bb.ca ] ; 5 uses
  %.sroa.013.034.i = phi ptr [ %i.agk, %.lr.ph38.i ], [ %i.agr, %bb.ca ] ; 21 uses
  %i.agr = load ptr, ptr %.sroa.013.034.i, align 8, !tbaa !515 ; 2 uses
  %i.ags = icmp eq ptr %.04135.i, null
  br i1 %i.ags, label %bb.ca, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.013.034.i, i64 48 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agt, align 8
  %i.agu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.agv = inttoptr i64 %i.agu to ptr             ; 7 uses
  %i.agw = icmp eq ptr %i.agt, %i.agv
  br i1 %i.agw, label %bb.ca, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agv) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.agv, align 8
  %i.agx = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i, 4
  %.not.i5.i.i.i.i = icmp eq i64 %i.agx, 0
  br i1 %.not.i5.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.bo
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 44
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !210
  %i.aha = and i32 %i.agz, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.aha, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.ahc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.agv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.ahb = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.ahc = inttoptr i64 %i.ahb to ptr             ; 3 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 44
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !210
  %i.ahf = and i32 %i.ahe, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.ahf, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !372

_ZN4llvm17MachineBasicBlock4backEv.exit.i:        ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.bo
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.agv, %bb.bo ], [ %i.agv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ahc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 52
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !198
  %.not.i33 = icmp eq i32 %i.ahh, 2
  br i1 %.not.i33, label %bb.bp, label %bb.ca

bb.bp:                                            ; preds = %_ZN4llvm17MachineBasicBlock4backEv.exit.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 32 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !199
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.agl, ptr %2, align 8, !tbaa !24
  store i32 0, ptr %i.agm, align 8, !tbaa !271
  store i32 4, ptr %i.agn, align 4, !tbaa !533
  %.not.i.i37 = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i37, label %_ZN4llvm9StringRefC2EPKc.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ahm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahl) #20
  br label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.i.i = phi i64 [ %i.ahm, %bb.bq ], [ 0, %bb.bp ]
  call void @_ZN4llvm11SplitStringENS_9StringRefERNS_15SmallVectorImplIS0_EES0_(ptr %i.ahl, i64 %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.8, i64 2) #20
  %i.ahn = load i32, ptr %i.agm, align 8, !tbaa !271
  %.not51.i = icmp eq i32 %i.ahn, 1
  br i1 %.not51.i, label %bb.br, label %bb.by

bb.br:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.ago, ptr %3, align 8, !tbaa !24
  store i32 0, ptr %i.agp, align 8, !tbaa !271
  store i32 4, ptr %i.agq, align 4, !tbaa !533
  %i.aho = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  %.sroa.014.0.copyload.i = load ptr, ptr %i.aho, align 8, !tbaa !29
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %.sroa.215.0.copyload.i = load i64, ptr %.sroa.215.0..sroa_idx.i, align 8, !tbaa !31
  call void @_ZN4llvm11SplitStringENS_9StringRefERNS_15SmallVectorImplIS0_EES0_(ptr %.sroa.014.0.copyload.i, i64 %.sroa.215.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.9, i64 1) #20
  %i.ahp = load i32, ptr %i.agp, align 8, !tbaa !271
  %.not52.i = icmp eq i32 %i.ahp, 2
  br i1 %.not52.i, label %bb.bs, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.i

bb.bs:                                            ; preds = %bb.br
  %i.ahq = load ptr, ptr %3, align 8, !tbaa !24   ; 4 uses
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %.sroa.213.0.copyload.i = load i64, ptr %.sroa.213.0..sroa_idx.i, align 8, !tbaa !31
end_hunk_0
