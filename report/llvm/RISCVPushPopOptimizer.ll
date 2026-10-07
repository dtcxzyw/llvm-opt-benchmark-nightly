Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVPushPopOptimizer?download=true
inline.NumInlined: 430
inline.NumDeleted: 280
begin_hunk_0_@_ZN12_GLOBAL__N_115RISCVPushPopOpt20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.hq = sext i16 %i.hp to i32
  %i.hr = add i32 %.sroa.9.018.i.i, %i.hq
  %.not.i.i.i.i46 = icmp eq i16 %i.hp, 0
  br i1 %.not.i.i.i.i46, label %.loopexit21.i, label %bb.w

.loopexit21.i:                                    ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %bb.v
  %i.hs = load ptr, ptr %i.bo, align 8, !tbaa !33 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !77, !noalias !360 ; 2 uses
  %.not17.i28.i = icmp eq ptr %i.hu, null
  br i1 %.not17.i28.i, label %.loopexit.i, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.loopexit21.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !78, !noalias !360
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1888
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !80, !noalias !360 ; 2 uses
  %i.hz = lshr i32 %i.hy, 12
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.ia
  %i.ic = and i32 %i.hy, 4095
  %i.id = load ptr, ptr %i.bq, align 8, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i, %.lr.ph.i29.i
  %.sroa.510.019.i30.i = phi ptr [ %i.ib, %.lr.ph.i29.i ], [ %i.im, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i ] ; 2 uses
  %.sroa.9.018.i31.i = phi i32 [ %i.ic, %.lr.ph.i29.i ], [ %i.ip, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i ] ; 3 uses
  %i.ie = and i32 %.sroa.9.018.i31.i, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw i64 1, %i.if
  %i.ih = lshr i32 %.sroa.9.018.i31.i, 6
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !13
  %i.il = and i64 %i.ig, %i.ik
  %.not16.i32.i = icmp eq i64 %i.il, 0
  br i1 %.not16.i32.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i, label %.loopexit

_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i:       ; preds = %bb.x
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i30.i, i64 2
  %i.in = load i16, ptr %.sroa.510.019.i30.i, align 2, !tbaa !81 ; 2 uses
  %i.io = sext i16 %i.in to i32
  %i.ip = add i32 %.sroa.9.018.i31.i, %i.io
  %.not.i.i.i35.i = icmp eq i16 %i.in, 0
  br i1 %.not.i.i.i35.i, label %.loopexit.i, label %bb.x

.loopexit.i:                                      ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i34.i, %.loopexit21.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i37.i = load i64, ptr %storemerge33.i, align 8
  %i.iq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i37.i, -8
  %i.ir = inttoptr i64 %i.iq to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ir) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i38.i = load i64, ptr %i.ir, align 8
  %i.is = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i38.i, 4
  %.not.i.i.i.i.i.i39.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i.i39.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i: ; preds = %.loopexit.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 44
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !73
  %i.iv = and i32 %i.iu, 4
  %.not45.i.i.i.i.i.i63.i = icmp eq i32 %i.iv, 0
  br i1 %.not45.i.i.i.i.i.i63.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i
  %.sroa.0.06.i.i.i.i.i.i65.i = phi ptr [ %i.ix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i ], [ %i.ir, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i66.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i65.i, align 8
  %i.iw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i66.i, -8
  %i.ix = inttoptr i64 %i.iw to ptr               ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 44
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !73
  %i.ja = and i32 %i.iz, 4
  %.not4.i.i.i.i.i.i67.i = icmp eq i32 %i.ja, 0
  br i1 %.not4.i.i.i.i.i.i67.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i, !llvm.loop !91

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i, %.loopexit.i
  %.sroa.0.1.i.i.i.i.i.i41.i = phi ptr [ %i.ir, %.loopexit.i ], [ %i.ir, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i62.i ], [ %i.ix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i64.i ] ; 3 uses
  %.not7.i.i42.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i41.i, %i.fa
  br i1 %.not7.i.i42.i, label %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i, label %.lr.ph.i.i43.i

.lr.ph.i.i43.i:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i
  %.sroa.03.08.i.i44.i = phi ptr [ %.sroa.0.1.i.i.i.i.i10.i54.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i ], [ %.sroa.0.1.i.i.i.i.i.i41.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i44.i, i64 52
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !353
  switch i32 %i.jc, label %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i [
    i32 25, label %.critedge2.i.i49.i
    i32 18, label %.critedge2.i.i49.i
    i32 17, label %.critedge2.i.i49.i
    i32 16, label %.critedge2.i.i49.i
    i32 15, label %.critedge2.i.i49.i
    i32 14, label %.critedge2.i.i49.i
  ]

.critedge2.i.i49.i:                               ; preds = %.lr.ph.i.i43.i, %.lr.ph.i.i43.i, %.lr.ph.i.i43.i, %.lr.ph.i.i43.i, %.lr.ph.i.i43.i, %.lr.ph.i.i43.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i6.i50.i = load i64, ptr %.sroa.03.08.i.i44.i, align 8
  %i.jd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i6.i50.i, -8
  %i.je = inttoptr i64 %i.jd to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.je) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i7.i51.i = load i64, ptr %i.je, align 8
  %i.jf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i7.i51.i, 4
  %.not.i.i.i.i.i8.i52.i = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i.i8.i52.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i: ; preds = %.critedge2.i.i49.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 44
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !73
  %i.ji = and i32 %i.jh, 4
  %.not45.i.i.i.i.i12.i57.i = icmp eq i32 %i.ji, 0
  br i1 %.not45.i.i.i.i.i12.i57.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i
  %.sroa.0.06.i.i.i.i.i14.i59.i = phi ptr [ %i.jk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i ], [ %i.je, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i15.i60.i = load i64, ptr %.sroa.0.06.i.i.i.i.i14.i59.i, align 8
  %i.jj = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i15.i60.i, -8
  %i.jk = inttoptr i64 %i.jj to ptr               ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 44
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !73
  %i.jn = and i32 %i.jm, 4
  %.not4.i.i.i.i.i16.i61.i = icmp eq i32 %i.jn, 0
  br i1 %.not4.i.i.i.i.i16.i61.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i, !llvm.loop !91

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i, %.critedge2.i.i49.i
  %.sroa.0.1.i.i.i.i.i10.i54.i = phi ptr [ %i.je, %.critedge2.i.i49.i ], [ %i.je, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i11.i56.i ], [ %i.jk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i13.i58.i ] ; 3 uses
  %.not.i.i55.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i10.i54.i, %i.fa
  br i1 %.not.i.i55.i, label %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i, label %.lr.ph.i.i43.i, !llvm.loop !93

_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i, %.lr.ph.i.i43.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i
  %.sroa.03.0.lcssa.i.i48.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i41.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i.i40.i ], [ %.sroa.0.1.i.i.i.i.i10.i54.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i9.i53.i ], [ %.sroa.03.08.i.i44.i, %.lr.ph.i.i43.i ] ; 2 uses
  %.not34.i = icmp eq ptr %.sroa.03.0.lcssa.i.i48.i, %i.fa
  br i1 %.not34.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !99

bb.y:                                             ; preds = %bb.u
  %i.jo = call noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %storemerge33.i) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i, %bb.w, %bb.x, %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit.i, %bb.y
  %i.jp = phi i64 [ -14163, %bb.y ], [ -14162, %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit.i ], [ -14162, %bb.w ], [ -14162, %bb.x ], [ -14162, %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i ]
  %i.jq = phi i64 [ -15600, %bb.y ], [ -15599, %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit.i ], [ -15599, %bb.w ], [ -15599, %bb.x ], [ -15599, %_ZN4llvm10next_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEET_S4_S4_b.exit68.i ]
  %.in = load i32, ptr %i.et, align 4, !tbaa !353
  %i.jr = icmp eq i32 %.in, 14161
  %.sroa.010.0.copyload.i7276.in = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %.sroa.010.0.copyload.i7276 = load ptr, ptr %.sroa.010.0.copyload.i7276.in, align 8, !tbaa !361
  %.val21.pn = load ptr, ptr %i.o, align 8, !tbaa !348
  %.val21.val7178.in = getelementptr i8, ptr %.val21.pn, i64 8
  %.val21.val7178 = load ptr, ptr %.val21.val7178.in, align 8, !tbaa !362
  %.0.i.neg.i = select i1 %i.jr, i64 %i.jp, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !75 ; 2 uses
  %i.ju = getelementptr inbounds [32 x i8], ptr %.val21.val7178, i64 %.0.i.neg.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !406 ; 4 uses
  %i.jx = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.ju, ptr %.sroa.010.0.copyload.i7276, i1 noundef zeroext false) #13 ; 10 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef %i.jx) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i47 = load i64, ptr %i.dn, align 8
  %i.jz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i47, -8 ; 2 uses
  %i.ka = inttoptr i64 %i.jz to ptr
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.dn, ptr %i.kb, align 8, !tbaa !72
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.jx, align 8
  %i.kc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.kd = or disjoint i64 %i.kc, %i.jz
  store i64 %i.kd, ptr %i.jx, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.jx, ptr %i.ke, align 8, !tbaa !72
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8
  %i.kf = ptrtoint ptr %i.jx to i64
  %i.kg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.kh = or disjoint i64 %i.kg, %i.kf
  store i64 %i.kh, ptr %i.dn, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 32 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !82
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jx, ptr noundef nonnull align 8 dereferenceable(1065) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.kj) #13
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !82
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jx, ptr noundef nonnull align 8 dereferenceable(1065) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.kl) #13
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 44 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !73
  %i.ko = or i32 %i.kn, 2
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !73
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !407 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i16, ptr %i.kr, align 4, !tbaa !409 ; 2 uses
  %i.kt = zext i16 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 10
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !410 ; 2 uses
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add nuw nsw i32 %i.kw, %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 11
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !411 ; 2 uses
  %i.la = zext i8 %i.kz to i32
  %i.lb = add nuw nsw i32 %i.kx, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 40 ; 2 uses
  %i.ld = load i24, ptr %i.lc, align 8
  %i.le = zext i24 %i.ld to i32
  %i.lf = icmp samesign ult i32 %i.lb, %i.le
  br i1 %i.lf, label %.lr.ph.preheader.i, label %_ZN12_GLOBAL__N_115RISCVPushPopOpt9usePopRetERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES5_b.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.lg = zext i16 %i.ks to i64
  %i.lh = zext i8 %i.kv to i64
  %i.li = add nuw nsw i64 %i.lh, %i.lg
  %3 = zext i8 %i.kz to i64
  %i.lj = add nuw nsw i64 %i.li, %3
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.lj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i48 ] ; 2 uses
  %i.lk = load ptr, ptr %i.ki, align 8, !tbaa !82
  %i.ll = getelementptr inbounds nuw [32 x i8], ptr %i.lk, i64 %indvars.iv.i
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jx, ptr noundef nonnull align 8 dereferenceable(1065) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.ll) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lm = load i24, ptr %i.lc, align 8
  %i.ln = zext i24 %i.lm to i64
  %i.lo = icmp samesign ult i64 %indvars.iv.next.i, %i.ln
  br i1 %i.lo, label %.lr.ph.i48, label %_ZN12_GLOBAL__N_115RISCVPushPopOpt9usePopRetERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES5_b.exit, !llvm.loop !100

_ZN12_GLOBAL__N_115RISCVPushPopOpt9usePopRetERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES5_b.exit: ; preds = %.lr.ph.i48, %.loopexit
  %i.lp = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.0.lcssa.i.i) #13 ; 0 uses
  %i.lq = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dn) #13 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit, %bb.s, %_ZN12_GLOBAL__N_115RISCVPushPopOpt9usePopRetERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES5_b.exit, %bb.p, %bb.o, %bb.q
  %.2 = phi i1 [ %.01895, %bb.p ], [ %.01895, %bb.q ], [ %.01895, %bb.o ], [ true, %_ZN12_GLOBAL__N_115RISCVPushPopOpt9usePopRetERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES5_b.exit ], [ %.01895, %bb.s ], [ %.01895, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.063.096, i64 8
  %.sroa.063.0 = load ptr, ptr %i.lr, align 8, !tbaa !352 ; 2 uses
  %.not80 = icmp eq ptr %.sroa.063.0, %i.dk
  br i1 %.not80, label %.loopexit84, label %bb.o

.loopexit84:                                      ; preds = %.critedge, %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit44, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit44 ], [ %.2, %.critedge ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12LiveRegUnits19accumulateUsedDefedERKNS_12MachineInstrERS0_S4_PKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = and i32 %i.b, 4
  %.not2.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %0, %bb.a ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !412

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph.i.i.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 40
  %i.o = load i24, ptr %i.n, align 8              ; 2 uses
  %i.p = zext i24 %i.o to i64
  %.idx.i.i = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i ; 3 uses
  %i.r = icmp eq i24 %i.o, 0
  br i1 %i.r, label %.lr.ph.i5.i.i.preheader, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit

.lr.ph.i5.i.i.preheader:                          ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i5.i.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  %i.x = and i32 %i.w, 4
  %.not.i6.i.i92 = icmp eq i32 %i.x, 0
  br i1 %.not.i6.i.i92, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit, label %.lr.ph93

.lr.ph.i5.i.i:                                    ; preds = %.lr.ph93
  %i.y = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 3 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !413

.lr.ph:                                           ; preds = %.lr.ph.i5.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ad = and i32 %i.ac, 4
  %.not.i6.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i6.i.i, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit, label %.lr.ph93, !llvm.loop !413

.lr.ph93:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.z, %.lr.ph ], [ %i.t, %.lr.ph.preheader ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i24, ptr %i.af, align 8            ; 4 uses
  %i.ah = icmp eq i24 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i5.i.i, label %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge, !llvm.loop !413

._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge: ; preds = %.lr.ph93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82 ; 2 uses
  %i.ak = zext i24 %i.ag to i64
  %.idx.i.i.i.le = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.le
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit, !llvm.loop !413

.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge: ; preds = %.lr.ph.i5.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82 ; 2 uses
  %i.ao = zext i24 %i.ag to i64
  %.idx.i.i.i.le146 = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i.le146
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit, !llvm.loop !413

_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit: ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 2 uses
  %i.as = zext i24 %i.ag to i64
  %.idx.i.i.i.le148 = shl nuw nsw i64 %i.as, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.le148
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit

_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit: ; preds = %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit, %.lr.ph.preheader, %.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge, %.lr.ph.i5.i.i.preheader, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i
  %.sroa.019.1 = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.ae, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.k, %.lr.ph.i5.i.i.preheader ], [ %i.k, %.lr.ph.preheader ], [ %i.k, %.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.k, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit ]
  %.sroa.22.2 = phi ptr [ %i.q, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.al, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.q, %.lr.ph.i5.i.i.preheader ], [ %i.q, %.lr.ph.preheader ], [ %i.ap, %.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.at, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %i.m, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.aj, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.m, %.lr.ph.i5.i.i.preheader ], [ %i.m, %.lr.ph.preheader ], [ %i.an, %.lr.ph.i5.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.ar, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit ] ; 2 uses
  %.not52 = icmp eq ptr %.sroa.11.2, %.sroa.22.2
  br i1 %.not52, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit
  ret void

bb.b:                                             ; preds = %.lr.ph56, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit
  %.sroa.11.055 = phi ptr [ %.sroa.11.2, %.lr.ph56 ], [ %.sroa.11.4, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit ] ; 5 uses
  %.sroa.22.054 = phi ptr [ %.sroa.22.2, %.lr.ph56 ], [ %.sroa.22.4, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit ] ; 4 uses
  %.sroa.019.053 = phi ptr [ %.sroa.019.1, %.lr.ph56 ], [ %.sroa.019.2, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit ] ; 2 uses
  %i.aw = load i32, ptr %.sroa.11.055, align 8    ; 2 uses
  %i.ax = and i32 %i.aw, 255
  %i.ay = icmp eq i32 %i.ax, 12
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.11.055, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  tail call void @_ZN4llvm12LiveRegUnits13addRegsInMaskEPKj(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.ba) #13
  %.pre = load i32, ptr %.sroa.11.055, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = phi i32 [ %.pre, %bb.c ], [ %i.aw, %bb.b ] ; 2 uses
  %i.bc = and i32 %i.bb, 255
end_hunk_0
