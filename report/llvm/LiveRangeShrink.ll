Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveRangeShrink?download=true
inline.NumInlined: 751
inline.NumDeleted: 415
begin_hunk_0_@_ZN12_GLOBAL__N_115LiveRangeShrink20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.uj = lshr i64 %i.uh, 5
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !235
  %i.um = and i32 %i.ug, 31
  %i.un = lshr i32 %i.ul, %i.um
  %i.uo = trunc i32 %i.un to i1
  br i1 %i.uo, label %.lr.ph.i216, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203, !prof !236

.lr.ph.i216:                                      ; preds = %bb.bj, %bb.bk
  %i.up = phi ptr [ %i.uv, %bb.bk ], [ %i.ui, %bb.bj ] ; 2 uses
  %.01624.i217 = phi i32 [ %i.ut, %bb.bk ], [ %i.ug, %bb.bj ]
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !237
  %i.ur = icmp eq ptr %storemerge349, %i.uq
  br i1 %i.ur, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203, label %bb.bk, !prof !239

bb.bk:                                            ; preds = %.lr.ph.i216
  %i.us = add nuw i32 %.01624.i217, 1
  %i.ut = and i32 %i.us, %i.ua                    ; 3 uses
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %i.tw, i64 %i.uu ; 2 uses
  %i.uw = lshr i64 %i.uu, 5
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !235
  %i.uz = and i32 %i.ut, 31
  %i.va = lshr i32 %i.uy, %i.uz
  %i.vb = trunc i32 %i.va to i1
  br i1 %i.vb, label %.lr.ph.i216, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203, !prof !240, !llvm.loop !241

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203: ; preds = %bb.bk, %.lr.ph.i216, %bb.bj, %.loopexit.i197
  %.pre408 = phi ptr [ %.pre408410, %.loopexit.i197 ], [ %i.tw, %bb.bj ], [ %i.tw, %.lr.ph.i216 ], [ %i.tw, %bb.bk ] ; 2 uses
  %i.vc = phi ptr [ %i.sl, %.loopexit.i197 ], [ %i.tw, %bb.bj ], [ %i.tw, %.lr.ph.i216 ], [ %i.tw, %bb.bk ]
  %i.vd = phi ptr [ %i.sm, %.loopexit.i197 ], [ %i.tx, %bb.bj ], [ %i.tx, %.lr.ph.i216 ], [ %i.tx, %bb.bk ]
  %i.ve = phi ptr [ %.lcssa28.sink.i.ph.i198, %.loopexit.i197 ], [ %i.ui, %bb.bj ], [ %i.uv, %bb.bk ], [ %i.up, %.lr.ph.i216 ] ; 3 uses
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 4                 ; 2 uses
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = and i32 %i.vj, 31
  %i.vl = shl nuw i32 1, %i.vk
  %i.vm = lshr i64 %i.vi, 5
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.vm ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !235
  %i.vp = or i32 %i.vl, %i.vo
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !235
  %i.vq = load i32, ptr %i.w, align 8, !tbaa !242
  %i.vr = add i32 %i.vq, 1
  store i32 %i.vr, ptr %i.w, align 8, !tbaa !242
  store ptr %storemerge349, ptr %i.ve, align 8, !tbaa !237
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store i32 0, ptr %i.vs, align 8, !tbaa !235
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i208
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %.pre414 = load i32, ptr %.phi.trans.insert413, align 4, !tbaa !235
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203
  %i.vt = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203 ], [ %.pre414, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %.pre408411 = phi ptr [ %.pre408, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203 ], [ %.pre408410, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %i.vu = phi ptr [ %.pre408, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i203 ], [ %i.sl, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %i.vv = icmp eq i32 %i.vt, %.0.lcssa
  br i1 %i.vv, label %bb.bl, label %.critedge7

bb.bl:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit
  %i.vw = icmp eq ptr %storemerge349, %.0283.lcssa
  br i1 %i.vw, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.bl
  %i.vx = getelementptr inbounds nuw i8, ptr %storemerge349, i64 24
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !306
  %i.vz = getelementptr inbounds nuw i8, ptr %storemerge349, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !161 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 48
  %i.wc = icmp eq ptr %i.wa, %i.wb
  %.not134484 = icmp eq ptr %i.wa, null
  %.not134 = or i1 %i.wc, %.not134484
  br i1 %.not134, label %.critedge7, label %.lr.ph351

.critedge7:                                       ; preds = %select.unfold, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit
  %.pre415 = load ptr, ptr %i.b, align 8
  %i.wd = icmp ne ptr %.pre415, null
  %i.we = icmp ne ptr %.3124.ph, null
  %or.cond9 = select i1 %i.we, i1 %i.wd, i1 false
  %i.wf = icmp ugt i32 %.4129.ph, 1
  %or.cond11 = select i1 %or.cond9, i1 %i.wf, i1 false
  br i1 %or.cond11, label %bb.bm, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

bb.bm:                                            ; preds = %.critedge7
  %i.wg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i154 = extractvalue { ptr, i8 } %i.wg, 0
  %i.wh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i154, i64 8
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !235
  %.not135 = icmp ugt i32 %.0.lcssa, %i.wi
  br i1 %.not135, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader: ; preds = %bb.bm
  %i.wj = load ptr, ptr %i.b, align 8, !tbaa !237
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !161 ; 3 uses
  %.not302352 = icmp eq ptr %i.wl, %i.ar
  br i1 %.not302352, label %.critedge13, label %.lr.ph354

.lr.ph354:                                        ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0226.0353 = phi ptr [ %i.wy, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.wl, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ] ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0226.0353, i64 52
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !279
  switch i32 %i.wn, label %.critedge13 [
    i32 74, label %.critedge15
    i32 0, label %.critedge15
    i32 25, label %.critedge15
    i32 18, label %.critedge15
    i32 17, label %.critedge15
    i32 16, label %.critedge15
    i32 15, label %.critedge15
    i32 14, label %.critedge15
  ]

.critedge15:                                      ; preds = %.lr.ph354, %.lr.ph354, %.lr.ph354, %.lr.ph354, %.lr.ph354, %.lr.ph354, %.lr.ph354, %.lr.ph354
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0226.0353, align 8
  %i.wo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i157 = icmp eq i64 %i.wo, 0
  br i1 %.not.i.i.i.i157, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.critedge15
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0226.0353, i64 44
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !217
  %i.wr = and i32 %i.wq, 8
  %.not34.i.i.i.i = icmp eq i32 %i.wr, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.wt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0226.0353, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !161 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 44
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !217
  %i.ww = and i32 %i.wv, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ww, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !227

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.critedge15
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0226.0353, %.critedge15 ], [ %.sroa.0226.0353, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.wt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !161 ; 3 uses
  %.not302.a = icmp eq ptr %i.wy, %i.ar
  br i1 %.not302.a, label %.critedge13, label %.lr.ph354, !llvm.loop !323

.critedge13:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph354, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  %.sroa.0226.0.lcssa = phi ptr [ %i.wl, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ], [ %.sroa.0226.0353, %.lr.ph354 ], [ %i.wy, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 7 uses
  %i.wz = icmp eq ptr %.sroa.0226.0.lcssa, %.sroa.0269.1366
  br i1 %i.wz, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164, !llvm.loop !278

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164: ; preds = %.critedge13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %.sroa.0226.0.lcssa, ptr %i.c, align 8, !tbaa !237
  %i.xa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i159 = extractvalue { ptr, i8 } %i.xa, 0
  %i.xb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i159, i64 8
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr %.sroa.0269.1366, ptr %i.d, align 8, !tbaa !237
  %i.xd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i160 = extractvalue { ptr, i8 } %i.xd, 0
  %i.xe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i160, i64 8
  store i32 %i.xc, ptr %i.xe, align 4, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0269.1366, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !161 ; 3 uses
  %i.xh = load ptr, ptr %i.gn, align 8, !tbaa !248
  %i.xi = load i32, ptr %i.xh, align 8
  %i.xj = and i32 %i.xi, 255
  %i.xk = icmp ne i32 %i.xj, 0
  %.not303357 = icmp eq ptr %i.xg, %i.ar
  %or.cond376 = select i1 %i.xk, i1 true, i1 %.not303357
  br i1 %or.cond376, label %.critedge17, label %.lr.ph359

.lr.ph359:                                        ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176
  %.sroa.0220.0358 = phi ptr [ %i.yn, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176 ], [ %i.xg, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164 ] ; 12 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.0220.0358, i64 52
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !279 ; 2 uses
  %i.xn = and i32 %i.xm, -2
  %spec.select.i165 = icmp eq i32 %i.xn, 14
  br i1 %spec.select.i165, label %bb.bn, label %.critedge17

bb.bn:                                            ; preds = %.lr.ph359
  %i.xo = load ptr, ptr %i.gn, align 8, !tbaa !248
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !249
  %i.xr = icmp eq i32 %i.xm, 14                   ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0220.0358, i64 32
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !248
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0220.0358, i64 40
  %i.xv = load i24, ptr %i.xu, align 8            ; 2 uses
  %i.xw = icmp ne i24 %i.xv, 0
  %..i.i.i = zext i1 %i.xw to i64
  %i.xx = zext i24 %i.xv to i64
  %i.xy = add nsw i64 %i.xx, -2
  %.sroa.05.0.idx.i.i.a = select i1 %i.xr, i64 %..i.i.i, i64 %i.xy
  %.sroa.05.0.idx.i.i = select i1 %i.xr, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %i.xz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.05.0.i.i, i64 %.sroa.05.0.idx.i.i.a ; 2 uses
  %i.ya = call noundef ptr @_ZSt9__find_ifIPKN4llvm14MachineOperandEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12MachineInstr21hasDebugOperandForRegENS0_8RegisterEEUlRS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %.sroa.05.0.i.i, ptr noundef %i.xz, i32 %i.xq)
  %.not304 = icmp eq ptr %i.xz, %i.ya
  br i1 %.not304, label %.critedge17, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr %.sroa.0220.0358, ptr %i.e, align 8, !tbaa !237
  %i.yb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i166 = extractvalue { ptr, i8 } %i.yb, 0
  %i.yc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i166, i64 8
  store i32 %i.xc, ptr %i.yc, align 4, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0220.0358) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i168 = load i64, ptr %.sroa.0220.0358, align 8
  %i.yd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i168, 4
  %.not.i.i.i169 = icmp eq i64 %i.yd, 0
  br i1 %.not.i.i.i169, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171: ; preds = %bb.bo
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0220.0358, i64 44
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !217
  %i.yg = and i32 %i.yf, 8
  %.not34.i.i.i172 = icmp eq i32 %i.yg, 0
  br i1 %.not34.i.i.i172, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173
  %.sroa.0.05.i.i.i174 = phi ptr [ %i.yi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173 ], [ %.sroa.0220.0358, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171 ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i174, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !161 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 44
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !217
  %i.yl = and i32 %i.yk, 8
  %.not3.i.i.i175 = icmp eq i32 %i.yl, 0
  br i1 %.not3.i.i.i175, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173, !llvm.loop !227

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173, %bb.bo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171
  %.sroa.0.1.i.i.i170 = phi ptr [ %.sroa.0220.0358, %bb.bo ], [ %.sroa.0220.0358, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i171 ], [ %i.yi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i173 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i170, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !161 ; 3 uses
  %.not303 = icmp eq ptr %i.yn, %i.ar
  br i1 %.not303, label %.critedge17, label %.lr.ph359, !llvm.loop !324

.critedge17:                                      ; preds = %bb.bn, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176, %.lr.ph359, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164
  %.sroa.0220.1 = phi ptr [ %i.xg, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit164 ], [ %.sroa.0220.0358, %.lr.ph359 ], [ %.sroa.0220.0358, %bb.bn ], [ %i.yn, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit176 ] ; 7 uses
  %i.yo = icmp eq ptr %.sroa.0269.1366, %.sroa.0220.1
  %i.yp = icmp eq ptr %.sroa.0226.0.lcssa, %.sroa.0220.1
  %or.cond.i.i = or i1 %i.yo, %i.yp
  br i1 %or.cond.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.bp

bb.bp:                                            ; preds = %.critedge17
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr nonnull %.sroa.0269.1366, ptr %.sroa.0220.1) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i177 = load i64, ptr %.sroa.0220.1, align 8
  %i.yq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i177, -8 ; 2 uses
  %i.yr = inttoptr i64 %i.yq to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %.sroa.0269.1366, align 8
  %i.ys = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.yt = inttoptr i64 %i.ys to ptr
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr %.sroa.0220.1, ptr %i.yu, align 8, !tbaa !161
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %.sroa.0269.1366, align 8
  %i.yv = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %.sroa.0220.1, align 8
  %i.yw = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.yx = or disjoint i64 %i.yw, %i.yv
  store i64 %i.yx, ptr %.sroa.0220.1, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %.sroa.0226.0.lcssa, align 8
  %i.yy = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.yz = inttoptr i64 %i.yy to ptr
  %i.za = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  store ptr %.sroa.0226.0.lcssa, ptr %i.za, align 8, !tbaa !161
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %.sroa.0269.1366, align 8
  %i.zb = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.zc = or disjoint i64 %i.zb, %i.yy
  store i64 %i.zc, ptr %.sroa.0269.1366, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store ptr %.sroa.0269.1366, ptr %i.zd, align 8, !tbaa !161
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %.sroa.0226.0.lcssa, align 8
  %i.ze = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.zf = or disjoint i64 %i.ze, %i.yq
  store i64 %i.zf, ptr %.sroa.0226.0.lcssa, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %bb.am, %_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit, %bb.as, %bb.aq, %bb.an, %bb.ap, %bb.al, %bb.aj, %bb.bl, %bb.ag, %.loopexit, %.critedge13, %bb.bp, %.critedge17, %.critedge7, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ae, %_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit, %bb.af, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit
  %.not299 = icmp eq ptr %i.dd, %i.ar
  br i1 %.not299, label %._crit_edge368, label %bb.n

._crit_edge368:                                   ; preds = %.critedge4, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt4pairIjPNS_12MachineInstrEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge368, %bb.g, %bb.e
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0274.0371, i64 8
  %.sroa.0274.0 = load ptr, ptr %i.zg, align 8, !tbaa !152 ; 2 uses
  %.not298 = icmp eq ptr %.sroa.0274.0, %i.q
  br i1 %.not298, label %._crit_edge375, label %bb.e

bb.br:                                            ; preds = %bb.a, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  ret i1 false
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare ptr @_ZN4llvm17MachineBasicBlock22SkipPHIsLabelsAndDebugENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(360), ptr, i32, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17BuildInstOrderMapN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_8DenseMapIPS1_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !157  ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = icmp ugt i32 %i.g, 64
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.l = zext i32 %i.g to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  store i32 0, ptr %i.b, align 8, !tbaa !242
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !306
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %.not15 = icmp eq ptr %0, %i.r
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.017 = phi i32 [ %i.v, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit ] ; 2 uses
  %.sroa.010.016 = phi ptr [ %i.ai, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit ] ; 8 uses
  %i.s = call noundef zeroext i1 @_ZNK4llvm12MachineInstr23hasUnmodeledSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.016) #14
  br i1 %i.s, label %_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit, label %_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit.thread

_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !279
  %.not14 = icmp eq i32 %i.u, 25
  br i1 %.not14, label %_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit.thread, label %.critedge

_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit.thread: ; preds = %.lr.ph, %_ZL19isCodeMotionBarrierRN4llvm12MachineInstrE.exit
  %i.v = add i32 %.017, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.sroa.010.016, ptr %i.a, align 8, !tbaa !237
  %i.w = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %.017, ptr %i.x, align 4, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.016, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.y, 0
end_hunk_0
