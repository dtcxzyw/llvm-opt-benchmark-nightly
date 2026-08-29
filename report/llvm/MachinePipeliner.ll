Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachinePipeliner?download=true
inline.NumInlined: 12134
inline.NumDeleted: 5204
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4llvm16MachinePipeliner15canPipelineLoopERNS_11MachineLoopE:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.fc, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.et, %bb.i ], [ %i.fa, %._crit_edge.i.loopexit.i.i.i ]
  %i.fd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.fe = shl nuw nsw i32 %i.fd, 5
  %.idx.i = zext nneg i32 %i.fe to i64
  %i.ff = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx.i ; 2 uses
  %.not35.i = icmp eq i64 %i.ff, %.idx83.i
  br i1 %.not35.i, label %.critedge.i, label %.lr.ph32.i

.lr.ph29.i:                                       ; preds = %bb.h, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.015.027.i = phi ptr [ %i.gb, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %i.dr, %bb.h ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.015.027.i, i64 32 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !407
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !334
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !314
  %i.fk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !415
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.027.i, i64 40 ; 2 uses
  %i.fm = load i24, ptr %i.fl, align 8
  %i.fn = icmp ugt i24 %i.fm, 1
  br i1 %i.fn, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph29.i
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fk, 0 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 20
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, %.lr.ph29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.027.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.015.027.i, align 8
  %i.fr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i24 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i24, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %._crit_edge.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.015.027.i, i64 44
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !420
  %i.fu = and i32 %i.ft, 8
  %.not34.i.i.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.fw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.015.027.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !384 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 44
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !420
  %i.fz = and i32 %i.fy, 8
  %.not3.i.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !421

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %._crit_edge.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.015.027.i, %._crit_edge.i ], [ %.sroa.015.027.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.fw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !384 ; 2 uses
  %.not.i25 = icmp eq ptr %i.gb, %i.ds
  br i1 %.not.i25, label %._crit_edge30.loopexit.i, label %.lr.ph29.i

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i ] ; 2 uses
  %i.gc = load ptr, ptr %i.fg, align 8, !tbaa !407
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !334 ; 2 uses
  %i.gg = load i32, ptr %i.fp, align 8, !tbaa !325 ; 2 uses
  %i.gh = load i32, ptr %i.fq, align 4, !tbaa !326
  %.not.i.i = icmp ult i32 %i.gg, %i.gh
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !422

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i32 noundef %i.gf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.l:                                             ; preds = %bb.j
  %i.gi = zext i32 %i.gg to i64
  %i.gj = load ptr, ptr %i.fo, align 8, !tbaa !21
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gi
  store i32 %i.gf, ptr %i.gk, align 1
  %i.gl = load i32, ptr %i.fp, align 8, !tbaa !325
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.fp, align 8, !tbaa !325
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.gn = load i24, ptr %i.fl, align 8
  %i.go = zext i24 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next.i, %i.go
  br i1 %i.gp, label %bb.j, label %._crit_edge.i, !llvm.loop !423

.lr.ph32.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i, %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i
  %.pn.i = phi i64 [ %i.hm, %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i ], [ %i.ff, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i ] ; 2 uses
  %.sroa.01.131.i = getelementptr i8, ptr %i.dx, i64 %.pn.i
  %i.gq = load i32, ptr %.sroa.01.131.i, align 8, !tbaa !424
  %i.gr = call fastcc noundef zeroext i1 @_ZL14hasPHICycleDFSjRKN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEERNS_8SmallSetIjLj8ESt4lessIjEEESF_(i32 noundef %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull align 8 dereferenceable(96) %16) ; 5 uses
  br i1 %i.gr, label %.critedge.loopexit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph32.i
  %i.gs = add i64 %.pn.i, 32
  %i.gt = ashr exact i64 %i.gs, 5                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.gt, %i.eq
  br i1 %.not.i.i.i, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.gu = lshr i64 %i.gt, 5                       ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !314
  %i.gx = trunc nuw i64 %i.gt to i32
  %i.gy = and i32 %i.gx, 31
  %i.gz = shl nsw i32 -1, %i.gy
  %i.ha = and i32 %i.gw, %i.gz                    ; 2 uses
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %i.hc = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %i.hd = icmp eq i64 %i.hc, %i.es
  br i1 %i.hd, label %.critedge.loopexit.i, label %.lr.ph280

.lr.ph.i.i.i:                                     ; preds = %.lr.ph280
  %i.he = add i64 %i.hg, 1                        ; 2 uses
  %i.hf = icmp eq i64 %i.he, %i.es
  br i1 %i.hf, label %.critedge.loopexit.i, label %.lr.ph280, !llvm.loop !406

.lr.ph280:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.hg = phi i64 [ %i.he, %.lr.ph.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !314 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.i.i, label %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i, !llvm.loop !406

_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i: ; preds = %.lr.ph280, %bb.n
  %.012.lcssa.i.i.i = phi i64 [ %i.gu, %bb.n ], [ %i.hg, %.lr.ph280 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ha, %bb.n ], [ %i.hi, %.lr.ph280 ]
  %i.hk = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i26 = shl i64 %.012.lcssa.i.i.i, 10
  %i.hl = shl nuw nsw i32 %i.hk, 5
  %.idx84.i = zext nneg i32 %i.hl to i64
  %i.hm = or disjoint i64 %.idx.i.i.i26, %.idx84.i ; 2 uses
  %.not36.i = icmp eq i64 %i.hm, %.idx83.i
  br i1 %.not36.i, label %.critedge.loopexit.i, label %.lr.ph32.i

.critedge.loopexit.i:                             ; preds = %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i, %bb.m, %.lr.ph32.i, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.hn = phi i1 [ false, %.lr.ph.i.i.i ], [ %i.gr, %.lr.ph.i.i.i.preheader ], [ %i.gr, %.lr.ph32.i ], [ %i.gr, %bb.m ], [ %i.gr, %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i ]
  %.pre50.i = load ptr, ptr %i.ek, align 8, !tbaa !399
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.i.i.i27, %.lr.ph.i.i.i.i27.preheader, %.critedge.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i, %._crit_edge30.i
  %i.ho = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i ], [ %.pre50.i, %.critedge.loopexit.i ], [ null, %._crit_edge30.i ], [ null, %.lr.ph.i.i.i.i27.preheader ], [ null, %.lr.ph.i.i.i.i27 ]
  %.lcssa.i = phi i1 [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i ], [ %i.hn, %.critedge.loopexit.i ], [ false, %._crit_edge30.i ], [ false, %.lr.ph.i.i.i.i27.preheader ], [ false, %.lr.ph.i.i.i.i27 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.hp, ptr noundef %i.ho)
  %i.hq = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.eg
  br i1 %i.hr, label %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  call void @free(ptr noundef %i.hq) #29
  br label %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit.i

_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit.i:    ; preds = %bb.o, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ht = load ptr, ptr %i.ec, align 8, !tbaa !399
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.hs, ptr noundef %i.ht)
  %i.hu = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.dy
  br i1 %i.hv, label %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit22.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit.i
  call void @free(ptr noundef %i.hu) #29
  br label %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit22.i

_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit22.i:  ; preds = %bb.p, %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.hw = load i32, ptr %i.ep, align 4, !tbaa !392 ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_ZL11hasPHICyclePKN4llvm17MachineBasicBlockERKNS_19MachineRegisterInfoE.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit22.i
  %i.hy = load ptr, ptr %14, align 8, !tbaa !385
  %i.hz = load ptr, ptr %i.eo, align 8, !tbaa !391
  %i.ia = zext i32 %i.hw to i64
  %i.ib = add nuw nsw i64 %i.ia, 31
  %i.ic = lshr i64 %i.ib, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i24.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i24.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv.i.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !314 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i24.i, label %.lr.ph.i.i23.i

.lr.ph.i.i23.i:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.if = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.q

bb.q:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i23.i
  %.0.i3.i.i.i = phi i32 [ %i.ie, %.lr.ph.i.i23.i ], [ %i.ip, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ig = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ih = or disjoint i32 %i.ig, %i.if
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.hy, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !21 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.il) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.io = add i32 %.0.i3.i.i.i, -1
  %i.ip = and i32 %i.io, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i24.i, label %bb.q, !llvm.loop !428

._crit_edge.i.i24.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i25.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ic
  br i1 %.not.i.i.i25.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !429

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i24.i
  %.pr.i.i = load i32, ptr %i.ep, align 4, !tbaa !392 ; 2 uses
  %i.iq = icmp eq i32 %.pr.i.i, 0
  br i1 %i.iq, label %_ZL11hasPHICyclePKN4llvm17MachineBasicBlockERKNS_19MachineRegisterInfoE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i.i
  %i.ir = load ptr, ptr %14, align 8, !tbaa !385
  %i.is = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.it = shl nuw nsw i64 %i.is, 5
  %i.iu = add nuw nsw i64 %i.is, 31
  %i.iv = lshr i64 %i.iu, 3
  %i.iw = and i64 %i.iv, 1073741820
  %i.ix = add nuw nsw i64 %i.iw, %i.it
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ir, i64 noundef %i.ix, i64 noundef 8) #29
  br label %_ZL11hasPHICyclePKN4llvm17MachineBasicBlockERKNS_19MachineRegisterInfoE.exit

_ZL11hasPHICyclePKN4llvm17MachineBasicBlockERKNS_19MachineRegisterInfoE.exit: ; preds = %_ZN4llvm8SmallSetIjLj8ESt4lessIjEED2Ev.exit22.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.lcssa.i, label %"_ZN4llvm32MachineOptimizationRemarkEmitter4emitIZNS_16MachinePipeliner15canPipelineLoopERNS_11MachineLoopEE3$_0EEvT_PDTclfL0p_EE.exit", label %bb.t

bb.t:                                             ; preds = %_ZL11hasPHICyclePKN4llvm17MachineBasicBlockERKNS_19MachineRegisterInfoE.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !347, !range !18, !noundef !19
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !242 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !248, !nonnull !19, !align !152
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !37, !nonnull !19, !align !152
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.je) #29
  %i.jg = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jf) #29
  %.not.i28 = icmp eq ptr %i.jg, null
  br i1 %.not.i28, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jh = load ptr, ptr %i.jc, align 8, !tbaa !248, !nonnull !19, !align !152
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !37, !nonnull !19, !align !152
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ji) #29
  %i.jk = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jj) #29 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(32) %i.jk) #29, !inline_history !430
  br i1 %i.jo, label %bb.w, label %"_ZN4llvm32MachineOptimizationRemarkEmitter4emitIZNS_16MachinePipeliner15canPipelineLoopERNS_11MachineLoopEE3$_0EEvT_PDTclfL0p_EE.exit"

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !431
  %i.jp = call ptr @_ZNK4llvm11MachineLoop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #29, !noalias !431
  store ptr %i.jp, ptr %12, align 8, !noalias !431
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #29, !noalias !431
  %i.jq = load ptr, ptr %i.c, align 8, !tbaa !255, !noalias !431
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !256, !noalias !431 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !257, !noalias !431
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !37, !noalias !431, !nonnull !19, !align !152
  %i.jv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 22, ptr %i.jv, align 8, !tbaa !306, !noalias !431
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i8 2, ptr %i.jw, align 4, !tbaa !309, !noalias !431
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ju, ptr %i.jx, align 8, !tbaa !310, !noalias !431
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !311, !noalias !431
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr @.str.80, ptr %i.jz, align 8, !tbaa !315, !noalias !431
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @.str.89, ptr %i.ka, align 8, !tbaa !27, !noalias !431
  %.sroa.2.0..sroa_idx.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 15, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i29, align 8, !tbaa !29, !noalias !431
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i8 0, ptr %i.kb, align 8, !tbaa !324, !noalias !431
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !21, !noalias !431
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  store i32 0, ptr %i.ke, align 8, !tbaa !325, !noalias !431
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 92
  store i32 4, ptr %i.kf, align 4, !tbaa !326, !noalias !431
  %i.kg = getelementptr inbounds nuw i8, ptr %10, i64 416 ; 2 uses
  store i8 0, ptr %i.kg, align 8, !tbaa !327, !noalias !431
  %i.kh = getelementptr inbounds nuw i8, ptr %10, i64 420
  store i32 -1, ptr %i.kh, align 4, !tbaa !328, !noalias !431
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 424 ; 2 uses
  store ptr %i.jr, ptr %i.ki, align 8, !tbaa !329, !noalias !431
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm33MachineOptimizationRemarkAnalysisE, i64 16), ptr %10, align 8, !tbaa !8, !noalias !431
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %10, ptr nonnull @.str.93, i64 19) #29, !noalias !431
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.kj, ptr noundef nonnull align 8 dereferenceable(5) %i.jv, i64 5, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %13, align 8, !tbaa !8, !alias.scope !431
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kl, ptr noundef nonnull align 8 dereferenceable(40) %i.jz, i64 40, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !21, !alias.scope !431
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  store i32 0, ptr %i.ko, align 8, !tbaa !325, !alias.scope !431
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 92
  store i32 4, ptr %i.kp, align 4, !tbaa !326, !alias.scope !431
  %i.kq = load i32, ptr %i.ke, align 8, !tbaa !325, !noalias !431
  %.not.i.i.i.i.i.i.i30 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZN4llvm33MachineOptimizationRemarkAnalysisC2EOS0_.exit.i.i31, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.km, ptr noundef nonnull align 8 dereferenceable(336) %i.kc) ; 0 uses
  %.pre.i.i = load i32, ptr %i.ke, align 8, !tbaa !325, !noalias !431
  br label %_ZN4llvm33MachineOptimizationRemarkAnalysisC2EOS0_.exit.i.i31

_ZN4llvm33MachineOptimizationRemarkAnalysisC2EOS0_.exit.i.i31: ; preds = %bb.x, %bb.w
  %i.ks = phi i32 [ 0, %bb.w ], [ %.pre.i.i, %bb.x ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 416
  %i.ku = load i64, ptr %i.kg, align 8, !noalias !431
  store i64 %i.ku, ptr %i.kt, align 8, !alias.scope !431
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 424
  %i.kw = load ptr, ptr %i.ki, align 8, !tbaa !329, !noalias !431
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !329, !alias.scope !431
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm33MachineOptimizationRemarkAnalysisE, i64 16), ptr %13, align 8, !tbaa !8, !alias.scope !431
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %10, align 8, !tbaa !8, !noalias !431
  %i.kx = load ptr, ptr %i.kc, align 8, !tbaa !21, !noalias !431 ; 3 uses
  %.not4.i.i.i.i.i32 = icmp eq i32 %i.ks, 0
  br i1 %.not4.i.i.i.i.i32, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i44, label %.lr.ph.i.preheader.i.i.i.i33

.lr.ph.i.preheader.i.i.i.i33:                     ; preds = %_ZN4llvm33MachineOptimizationRemarkAnalysisC2EOS0_.exit.i.i31
  %i.ky = zext i32 %i.ks to i64
  %.idx.i.i.i.i34 = mul nuw nsw i64 %i.ky, 80
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx.i.i.i.i34
  br label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40, %.lr.ph.i.preheader.i.i.i.i33
  %.05.i.i.i.i.i36 = phi ptr [ %i.la, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40 ], [ %i.kz, %.lr.ph.i.preheader.i.i.i.i33 ] ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %.05.i.i.i.i.i36, i64 -80 ; 3 uses
  %i.lb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i36, i64 -48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !331 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.05.i.i.i.i.i36, i64 -32 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i35
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !334
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i37
  %i.lh = load ptr, ptr %i.la, align 8, !tbaa !331 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %.05.i.i.i.i.i36, i64 -64 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i38
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !334
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #32
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i39
  %.not.i.i.i.i.i41 = icmp eq ptr %i.kx, %i.la
  br i1 %.not.i.i.i.i.i41, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i42, label %.lr.ph.i.i.i.i.i35, !llvm.loop !335

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i42: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i40
  %.pre.i.i.i.i43 = load ptr, ptr %i.kc, align 8, !tbaa !21, !noalias !431
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i44

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i44: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i42, %_ZN4llvm33MachineOptimizationRemarkAnalysisC2EOS0_.exit.i.i31
end_hunk_0
begin_hunk_1_@_ZN4llvm17SwingSchedulerDAG16schedulePipelineERNS_10SMScheduleE:bb.a
  %i.bcz = load i32, ptr %i.ma, align 4, !tbaa !1970, !noalias !2085 ; 2 uses
  %i.bda = icmp ne i32 %i.bcz, 0
  call void @llvm.assume(i1 %i.bda)
  %i.bdb = add i32 %i.bcz, -1                     ; 2 uses
  %i.bdc = and i32 %i.bdb, %i.aue                 ; 3 uses
  %i.bdd = zext i32 %i.bdc to i64                 ; 2 uses
  %i.bde = getelementptr inbounds nuw [16 x i8], ptr %i.bcx, i64 %i.bdd ; 2 uses
  %i.bdf = lshr i64 %i.bdd, 5
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %i.bdf
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !314, !noalias !1986
  %i.bdi = and i32 %i.bdc, 31
  %i.bdj = lshr i32 %i.bdh, %i.bdi
  %i.bdk = trunc i32 %i.bdj to i1
  br i1 %i.bdk, label %.lr.ph.i115.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i, !prof !655

.lr.ph.i115.i.i.i:                                ; preds = %bb.ej, %bb.ek
  %i.bdl = phi ptr [ %i.bdr, %bb.ek ], [ %i.bde, %bb.ej ] ; 2 uses
  %.024.i116.i.i.i = phi i32 [ %i.bdp, %bb.ek ], [ %i.bdc, %bb.ej ]
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !656, !noalias !1986
  %i.bdn = icmp eq ptr %i.asl, %i.bdm
  br i1 %i.bdn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i, label %bb.ek, !prof !422

bb.ek:                                            ; preds = %.lr.ph.i115.i.i.i
  %i.bdo = add nuw i32 %.024.i116.i.i.i, 1
  %i.bdp = and i32 %i.bdo, %i.bdb                 ; 3 uses
  %i.bdq = zext i32 %i.bdp to i64                 ; 2 uses
  %i.bdr = getelementptr inbounds nuw [16 x i8], ptr %i.bcx, i64 %i.bdq ; 2 uses
  %i.bds = lshr i64 %i.bdq, 5
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %i.bds
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !314, !noalias !1986
  %i.bdv = and i32 %i.bdp, 31
  %i.bdw = lshr i32 %i.bdu, %i.bdv
  %i.bdx = trunc i32 %i.bdw to i1
  br i1 %i.bdx, label %.lr.ph.i115.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i, !prof !657, !llvm.loop !1971

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i: ; preds = %bb.ek, %.lr.ph.i115.i.i.i, %bb.ej, %.loopexit.i89.i.i.i
  %i.bdy = phi ptr [ %i.bbm, %.loopexit.i89.i.i.i ], [ %i.bcx, %bb.ej ], [ %i.bcx, %.lr.ph.i115.i.i.i ], [ %i.bcx, %bb.ek ]
  %i.bdz = phi ptr [ %i.bbl, %.loopexit.i89.i.i.i ], [ %i.bcy, %bb.ej ], [ %i.bcy, %.lr.ph.i115.i.i.i ], [ %i.bcy, %bb.ek ]
  %i.bea = phi ptr [ %.lcssa28.sink.i.ph.i90.i.i.i, %.loopexit.i89.i.i.i ], [ %i.bde, %bb.ej ], [ %i.bdr, %bb.ek ], [ %i.bdl, %.lr.ph.i115.i.i.i ] ; 3 uses
  %i.beb = ptrtoint ptr %i.bea to i64
  %i.bec = ptrtoint ptr %i.bdy to i64
  %i.bed = sub i64 %i.beb, %i.bec
  %i.bee = ashr exact i64 %i.bed, 4               ; 2 uses
  %i.bef = trunc i64 %i.bee to i32
  %i.beg = and i32 %i.bef, 31
  %i.beh = shl nuw i32 1, %i.beg
  %i.bei = lshr i64 %i.bee, 5
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bdz, i64 %i.bei ; 2 uses
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !314, !noalias !1986
  %i.bel = or i32 %i.beh, %i.bek
  store i32 %i.bel, ptr %i.bej, align 4, !tbaa !314, !noalias !1986
  %i.bem = load i32, ptr %i.mb, align 8, !tbaa !1972, !noalias !1986
  %i.ben = add i32 %i.bem, 1
  store i32 %i.ben, ptr %i.mb, align 8, !tbaa !1972, !noalias !1986
  store ptr %i.asl, ptr %i.bea, align 8, !tbaa !656, !noalias !1986
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  store i32 0, ptr %i.beo, align 8, !tbaa !314, !noalias !1986
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.loopexit.i.i.i: ; preds = %.lr.ph.i.i100.i.i.i
  %.phi.trans.insert243.i.i.i = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  %.pre244.i.i.i = load i32, ptr %.phi.trans.insert243.i.i.i, align 4, !tbaa !314, !noalias !1986
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.loopexit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i
  %i.bep = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i95.i.i.i ], [ %.pre244.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.loopexit.i.i.i ]
  %i.beq = load i32, ptr %i.auf, align 4, !tbaa !449, !noalias !1986 ; 2 uses
  %i.ber = icmp eq i32 %i.beq, 0
  %i.bes = icmp eq i32 %i.beq, 74
  %spec.select.i.i62.i.i.i = or i1 %i.ber, %i.bes
  %i.bet = zext i1 %spec.select.i.i62.i.i.i to i32
  %i.beu = add i32 %i.bep, %i.bet
  %i.bev = icmp ult i32 %i.bbt, %i.beu
  br i1 %i.bev, label %bb.el, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit.thread.i.i.i

bb.el:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.i.i.i
  store ptr %i.asl, ptr %i.ayc, align 8, !tbaa !2068, !noalias !1986
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit.thread.i.i.i

_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit.thread.i.i.i: ; preds = %bb.dx, %bb.el, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit102.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JRS4_EEESt4pairIPS9_bEOT_DpOT0_.exit.thread.i.i.i, %bb.dw, %.lr.ph205.split.i.i.i
  %i.bew = getelementptr inbounds nuw i8, ptr %.0204.i.i.i, i64 16 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.bew, %i.atz
  br i1 %.not.i.i24.i, label %.loopexit.i.i25.i, label %.lr.ph205.splitthread-pre-split.i.i.i, !llvm.loop !2090

._crit_edge214.loopexit.i.i.i:                    ; preds = %_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i, %.lr.ph213.i.i.i, %.lr.ph.i.i.i55.i.i.preheader, %.lr.ph.i.i.i55.i.i
  %.pre252.i.i.i = load i32, ptr %i.mp, align 4, !tbaa !2031, !noalias !1986
  br label %._crit_edge214.i.i.i

._crit_edge214.i.i.i:                             ; preds = %.lr.ph.i.i.i52.i.i.i, %.lr.ph.i.i.i52.i.i.i.preheader, %._crit_edge214.loopexit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E5beginEv.exit.i.i.i, %._crit_edge210.i.i.i
  %i.bex = phi i32 [ %.pre252.i.i.i, %._crit_edge214.loopexit.i.i.i ], [ %.pre249.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E5beginEv.exit.i.i.i ], [ %.pre249.i.i.i, %._crit_edge210.i.i.i ], [ %.pre249.i.i.i, %.lr.ph.i.i.i52.i.i.i.preheader ], [ %.pre249.i.i.i, %.lr.ph.i.i.i52.i.i.i ] ; 2 uses
  %i.bey = icmp eq i32 %i.bex, 0
  br i1 %i.bey, label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %._crit_edge214.i.i.i
  %i.bez = load ptr, ptr %12, align 8, !tbaa !2024, !noalias !1986
  %i.bfa = zext i32 %i.bex to i64                 ; 2 uses
  %i.bfb = shl nuw nsw i64 %i.bfa, 4
  %i.bfc = add nuw nsw i64 %i.bfa, 31
  %i.bfd = lshr i64 %i.bfc, 3
  %i.bfe = and i64 %i.bfd, 1073741820
  %i.bff = add nuw nsw i64 %i.bfe, %i.bfb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bez, i64 noundef %i.bff, i64 noundef 8) #29, !noalias !1978
  br label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i.i.i: ; preds = %bb.em, %._crit_edge214.i.i.i
  %.pr = load i32, ptr %i.mm, align 4, !tbaa !1863, !noalias !1986 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !1986
  %i.bfg = icmp eq i32 %.pr, 0
  br i1 %i.bfg, label %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i.i.i
  %i.bfh = load ptr, ptr %11, align 8, !tbaa !1854, !noalias !1986
  %i.bfi = zext i32 %.pr to i64                   ; 2 uses
  %i.bfj = add nuw nsw i64 %i.bfi, 31
  %i.bfk = lshr i64 %i.bfj, 5
  %i.bfl = add nuw nsw i64 %i.bfk, %i.bfi
  %i.bfm = shl nuw nsw i64 %i.bfl, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bfh, i64 noundef %i.bfm, i64 noundef 4) #29, !noalias !1978
  br label %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i

.lr.ph213.i.i.i:                                  ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E5beginEv.exit.i.i.i, %_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i
  %.pn.i.i.i = phi i64 [ %i.bgk, %_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i ], [ %i.asj, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E5beginEv.exit.i.i.i ] ; 2 uses
  %.sroa.0122.0212.i.i.i = getelementptr i8, ptr %.pre245.i.i.i, i64 %.pn.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !1986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0122.0212.i.i.i, i64 16, i1 false), !noalias !1978
  %i.bfn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.mr), !noalias !1978
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.bfn, 0
  %i.bfo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  %i.bfp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bfo, ptr noundef nonnull align 4 dereferenceable(4) %13), !noalias !2091 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !1986
  %i.bfq = add i64 %.pn.i.i.i, 16
  %i.bfr = ashr exact i64 %i.bfq, 4               ; 3 uses
  %.not.i.i.i54.i.i = icmp ult i64 %i.bfr, %i.aru
  br i1 %.not.i.i.i54.i.i, label %bb.eo, label %._crit_edge214.loopexit.i.i.i

bb.eo:                                            ; preds = %.lr.ph213.i.i.i
  %i.bfs = lshr i64 %i.bfr, 5                     ; 3 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.pre247.i.i.i, i64 %i.bfs
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !314, !noalias !1978
  %i.bfv = trunc nuw i64 %i.bfr to i32
  %i.bfw = and i32 %i.bfv, 31
  %i.bfx = shl nsw i32 -1, %i.bfw
  %i.bfy = and i32 %i.bfu, %i.bfx                 ; 2 uses
  %i.bfz = icmp eq i32 %i.bfy, 0
  br i1 %i.bfz, label %.lr.ph.i.i.i55.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i

.lr.ph.i.i.i55.i.i.preheader:                     ; preds = %bb.eo
  %i.bga = add nuw nsw i64 %i.bfs, 1              ; 2 uses
  %i.bgb = icmp eq i64 %i.bga, %i.arw
  br i1 %i.bgb, label %._crit_edge214.loopexit.i.i.i, label %.lr.ph711

.lr.ph.i.i.i55.i.i:                               ; preds = %.lr.ph711
  %i.bgc = add i64 %i.bge, 1                      ; 2 uses
  %i.bgd = icmp eq i64 %i.bgc, %i.arw
  br i1 %i.bgd, label %._crit_edge214.loopexit.i.i.i, label %.lr.ph711, !llvm.loop !2036

.lr.ph711:                                        ; preds = %.lr.ph.i.i.i55.i.i.preheader, %.lr.ph.i.i.i55.i.i
  %i.bge = phi i64 [ %i.bgc, %.lr.ph.i.i.i55.i.i ], [ %i.bga, %.lr.ph.i.i.i55.i.i.preheader ] ; 3 uses
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %.pre247.i.i.i, i64 %i.bge
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !314, !noalias !1978 ; 2 uses
  %i.bgh = icmp eq i32 %i.bgg, 0
  br i1 %i.bgh, label %.lr.ph.i.i.i55.i.i, label %_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i, !llvm.loop !2036

_ZN4llvm16DenseMapIteratorINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EELb0EEppEv.exit.i.i.i: ; preds = %.lr.ph711, %bb.eo
  %.012.lcssa.i.i.i.i.i125 = phi i64 [ %i.bfs, %bb.eo ], [ %i.bge, %.lr.ph711 ]
  %.0.lcssa.i.i.i.i.i126 = phi i32 [ %i.bfy, %bb.eo ], [ %i.bgg, %.lr.ph711 ]
  %i.bgi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i126, i1 true)
  %.idx.i.i.i.i.i127 = shl i64 %.012.lcssa.i.i.i.i.i125, 9
  %i.bgj = shl nuw nsw i32 %i.bgi, 4
  %.idx319.i.i.i = zext nneg i32 %i.bgj to i64
  %i.bgk = or disjoint i64 %.idx.i.i.i.i.i127, %.idx319.i.i.i ; 2 uses
  %.not175.i.i.i = icmp eq i64 %i.bgk, %.idx318.i.i.i
  br i1 %.not175.i.i.i, label %._crit_edge214.loopexit.i.i.i, label %.lr.ph213.i.i.i

_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i: ; preds = %bb.en, %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !1986
  %.not277.i.i = icmp eq i32 %i.aky, 0
  br i1 %.not277.i.i, label %._crit_edge276.i.i, label %.lr.ph275.split.i.i

._crit_edge276.i.i:                               ; preds = %._crit_edge273.i.i, %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i
  %.pr528 = load i32, ptr %i.mt, align 4, !tbaa !2098, !noalias !1978 ; 2 uses
  %i.bgl = icmp eq i32 %.pr528, 0
  br i1 %i.bgl, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %._crit_edge276.i.i
  %i.bgm = load ptr, ptr %15, align 8, !tbaa !2101, !noalias !1978
  %i.bgn = load ptr, ptr %i.ms, align 8, !tbaa !2102, !noalias !1978
  %i.bgo = zext i32 %.pr528 to i64
  %i.bgp = add nuw nsw i64 %i.bgo, 31
  %i.bgq = lshr i64 %i.bgp, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %indvars.iv.i.i.i.i
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !314, !noalias !1978 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.bgs, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i56.i.i

.lr.ph.i.i56.i.i:                                 ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.bgt = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.ep

bb.ep:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i56.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.bgs, %.lr.ph.i.i56.i.i ], [ %i.bhm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bgu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.bgv = or disjoint i32 %i.bgu, %i.bgt
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [40 x i8], ptr %i.bgm, i64 %i.bgw ; 3 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 8
  %i.bgz = load i32, ptr %i.bgy, align 8, !noalias !1978
  %i.bha = and i32 %i.bgz, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bha, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eq, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgx, i64 32
  %i.bhc = load i32, ptr %i.bhb, align 8, !tbaa !334, !noalias !1978 ; 2 uses
  %i.bhd = icmp eq i32 %i.bhc, 0
  br i1 %i.bhd, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgx, i64 16
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !334, !noalias !1978
  %i.bhg = zext i32 %i.bhc to i64                 ; 2 uses
  %i.bhh = add nuw nsw i64 %i.bhg, 31
  %i.bhi = lshr i64 %i.bhh, 5
  %i.bhj = add nuw nsw i64 %i.bhi, %i.bhg
  %i.bhk = shl nuw nsw i64 %i.bhj, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bhf, i64 noundef %i.bhk, i64 noundef 4) #29, !noalias !1978
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.er, %bb.eq, %bb.ep
  %i.bhl = add i32 %.0.i3.i.i.i.i, -1
  %i.bhm = and i32 %i.bhl, %.0.i3.i.i.i.i         ; 2 uses
  %.not11.i.i.i57.i.i = icmp eq i32 %i.bhm, 0
  br i1 %.not11.i.i.i57.i.i, label %._crit_edge.i.i.i.i, label %bb.ep, !llvm.loop !2103

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i58.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.bgq
  br i1 %.not.i.i.i58.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !2104

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i59.i.i = load i32, ptr %i.mt, align 4, !tbaa !2098, !noalias !1978 ; 2 uses
  %i.bhn = icmp eq i32 %.pr.i59.i.i, 0
  br i1 %i.bhn, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i, label %bb.es

bb.es:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i.i.i
  %i.bho = load ptr, ptr %15, align 8, !tbaa !2101, !noalias !1978
  %i.bhp = zext i32 %.pr.i59.i.i to i64           ; 2 uses
  %i.bhq = mul nuw nsw i64 %i.bhp, 40
  %i.bhr = add nuw nsw i64 %i.bhp, 31
  %i.bhs = lshr i64 %i.bhr, 3
  %i.bht = and i64 %i.bhs, 1073741820
  %i.bhu = add nuw nsw i64 %i.bht, %i.bhq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bho, i64 noundef %i.bhu, i64 noundef 8) #29, !noalias !1978
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i: ; preds = %._crit_edge276.i.i.thread, %bb.es, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i.i.i, %._crit_edge276.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !1978
  %.not.i.i.i60.i.i = icmp eq ptr %i.aln, null
  br i1 %.not.i.i.i60.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.et

bb.et:                                            ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aln, i64 noundef %i.ali) #32, !noalias !1978
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.et, %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit.i.i
  %i.bhv = load ptr, ptr %14, align 8, !tbaa !21, !noalias !1978 ; 3 uses
  %i.bhw = load i32, ptr %i.md, align 8, !tbaa !325, !noalias !1978 ; 2 uses
  %.not4.i.i61.i.i = icmp eq i32 %i.bhw, 0
  br i1 %.not4.i.i61.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.bhx = zext i32 %i.bhw to i64
  %.idx.i62.i.i = mul nuw nsw i64 %i.bhx, 80
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %.idx.i62.i.i
  br label %.lr.ph.i.i63.i.i

.lr.ph.i.i63.i.i:                                 ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bhz, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i ], [ %i.bhy, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bhz = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80 ; 3 uses
  %i.bia = load i32, ptr %i.bhz, align 8, !noalias !1978
  %i.bib = and i32 %i.bia, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bib, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.eu, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i

bb.eu:                                            ; preds = %.lr.ph.i.i63.i.i
  %i.bic = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -56
  %i.bid = load i32, ptr %i.bic, align 8, !tbaa !334, !noalias !1978 ; 2 uses
  %i.bie = icmp eq i32 %i.bid, 0
  br i1 %i.bie, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bif = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -72
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !334, !noalias !1978
  %i.bih = zext i32 %i.bid to i64                 ; 2 uses
  %i.bii = add nuw nsw i64 %i.bih, 31
  %i.bij = lshr i64 %i.bii, 5
  %i.bik = add nuw nsw i64 %i.bij, %i.bih
  %i.bil = shl nuw nsw i64 %i.bik, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.big, i64 noundef %i.bil, i64 noundef 4) #29, !noalias !1978
  br label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i

_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i: ; preds = %bb.ev, %bb.eu, %.lr.ph.i.i63.i.i
  %.not.i.i64.i.i = icmp eq ptr %i.bhv, %i.bhz
  br i1 %.not.i.i64.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i63.i.i, !llvm.loop !2105

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i.i.i
  %.pre.i65.i.i = load ptr, ptr %14, align 8, !tbaa !21, !noalias !1978
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.bim = phi ptr [ %.pre.i65.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %i.bhv, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ] ; 2 uses
  %i.bin = icmp eq ptr %i.bim, %i.mc
  br i1 %i.bin, label %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector21computeMaxSetPressureERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEEj.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  call void @free(ptr noundef %i.bim) #29, !noalias !1978
  br label %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector21computeMaxSetPressureERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEEj.exit.i

.lr.ph275.split.i.i:                              ; preds = %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i, %._crit_edge273.i.i
  %.038274.i.i = phi i32 [ %i.bio, %._crit_edge273.i.i ], [ 0, %_ZNK12_GLOBAL__N_128HighRegisterPressureDetector15computeLastUsesERKSt6vectorIPN4llvm12MachineInstrESaIS4_EERNS2_8DenseMapIS4_jNS2_12DenseMapInfoIS4_vEENS2_6detail12DenseMapPairIS4_jEEEE.exit.i.i ] ; 5 uses
  br label %.lr.ph272.i.i

._crit_edge273.i.i:                               ; preds = %.loopexit213.i.i
  %i.bio = add nuw i32 %.038274.i.i, 1
  %exitcond.not.i31.i = icmp eq i32 %.038274.i.i, %i.tg
  br i1 %exitcond.not.i31.i, label %._crit_edge276.i.i, label %.lr.ph275.split.i.i, !llvm.loop !2106

.lr.ph272.i.i:                                    ; preds = %.loopexit213.i.i, %.lr.ph275.split.i.i
  %.sroa.0186.0270.i.i = phi ptr [ %i.cgm, %.loopexit213.i.i ], [ %.sroa.046.4.i, %.lr.ph275.split.i.i ] ; 2 uses
  %i.bip = load ptr, ptr %.sroa.0186.0270.i.i, align 8, !tbaa !656, !noalias !1978 ; 13 uses
  %i.biq = load ptr, ptr %18, align 8, !tbaa !1961, !noalias !2107 ; 3 uses
  %i.bir = load ptr, ptr %i.lz, align 8, !tbaa !1969, !noalias !2107 ; 3 uses
  %i.bis = load i32, ptr %i.ma, align 4, !tbaa !1970, !noalias !2107 ; 4 uses
  %i.bit = icmp eq i32 %i.bis, 0
  br i1 %i.bit, label %.loopexit.i130.i.i, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph272.i.i
  %i.biu = add i32 %i.bis, -1                     ; 2 uses
  %i.biv = ptrtoint ptr %i.bip to i64
  %i.biw = mul i64 %i.biv, -4658895280553007687   ; 2 uses
  %i.bix = lshr i64 %i.biw, 31
  %i.biy = xor i64 %i.bix, %i.biw
  %i.biz = trunc i64 %i.biy to i32
  %i.bja = and i32 %i.biu, %i.biz                 ; 3 uses
  %i.bjb = zext i32 %i.bja to i64                 ; 2 uses
  %i.bjc = getelementptr inbounds nuw [16 x i8], ptr %i.biq, i64 %i.bjb ; 2 uses
  %i.bjd = lshr i64 %i.bjb, 5
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.bjd
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !314, !noalias !1978
  %i.bjg = and i32 %i.bja, 31
  %i.bjh = lshr i32 %i.bjf, %i.bjg
  %i.bji = trunc i32 %i.bjh to i1
  br i1 %i.bji, label %.lr.ph.i.i134.i.i, label %.loopexit.i130.i.i, !prof !655

.lr.ph.i.i134.i.i:                                ; preds = %bb.ex, %bb.ey
  %i.bjj = phi ptr [ %i.bjp, %bb.ey ], [ %i.bjc, %bb.ex ] ; 2 uses
  %.024.i.i135.i.i = phi i32 [ %i.bjn, %bb.ey ], [ %i.bja, %bb.ex ]
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !656, !noalias !1978
  %i.bjl = icmp eq ptr %i.bip, %i.bjk
  br i1 %i.bjl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit.i.i, label %bb.ey, !prof !422

bb.ey:                                            ; preds = %.lr.ph.i.i134.i.i
  %i.bjm = add nuw i32 %.024.i.i135.i.i, 1
  %i.bjn = and i32 %i.bjm, %i.biu                 ; 3 uses
  %i.bjo = zext i32 %i.bjn to i64                 ; 2 uses
  %i.bjp = getelementptr inbounds nuw [16 x i8], ptr %i.biq, i64 %i.bjo ; 2 uses
  %i.bjq = lshr i64 %i.bjo, 5
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.bjq
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !314, !noalias !1978
  %i.bjt = and i32 %i.bjn, 31
  %i.bju = lshr i32 %i.bjs, %i.bjt
  %i.bjv = trunc i32 %i.bju to i1
  br i1 %i.bjv, label %.lr.ph.i.i134.i.i, label %.loopexit.i130.i.i, !prof !657, !llvm.loop !1971

.loopexit.i130.i.i:                               ; preds = %bb.ey, %bb.ex, %.lr.ph272.i.i
  %.lcssa28.sink.i.ph.i.i26.i = phi ptr [ %i.bjc, %bb.ex ], [ null, %.lr.ph272.i.i ], [ %i.bjp, %bb.ey ]
  %i.bjw = load i32, ptr %i.mb, align 8, !tbaa !1972, !noalias !1978
  %i.bjx = shl i32 %i.bjw, 2
  %i.bjy = add i32 %i.bjx, 4
  %i.bjz = mul i32 %i.bis, 3
  %.not.i.i131.i.i = icmp ult i32 %i.bjy, %i.bjz
  br i1 %.not.i.i131.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i27.i, label %bb.ez, !prof !422

bb.ez:                                            ; preds = %.loopexit.i130.i.i
  %i.bka = shl i32 %i.bis, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %i.bka), !noalias !1978
  %i.bkb = load ptr, ptr %18, align 8, !tbaa !1961, !noalias !2112 ; 5 uses
  %i.bkc = load ptr, ptr %i.lz, align 8, !tbaa !1969, !noalias !2112 ; 5 uses
  %i.bkd = load i32, ptr %i.ma, align 4, !tbaa !1970, !noalias !2112 ; 2 uses
  %i.bke = icmp ne i32 %i.bkd, 0
  call void @llvm.assume(i1 %i.bke)
  %i.bkf = add i32 %i.bkd, -1                     ; 2 uses
  %i.bkg = ptrtoint ptr %i.bip to i64
  %i.bkh = mul i64 %i.bkg, -4658895280553007687   ; 2 uses
  %i.bki = lshr i64 %i.bkh, 31
  %i.bkj = xor i64 %i.bki, %i.bkh
  %i.bkk = trunc i64 %i.bkj to i32
end_hunk_1
begin_hunk_2_@_ZN4llvm29PeelingModuloScheduleExpanderC2ERNS_15MachineFunctionERNS_14ModuloScheduleEPNS_13LiveIntervalsE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 512 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !2224
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !2222
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.av, ptr %i.bd, align 8, !tbaa !2223
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.az, ptr %i.be, align 8, !tbaa !2224
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !2225
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !2226
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %i.bh, align 8, !tbaa !325
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 4, ptr %i.bi, align 4, !tbaa !326
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr null, ptr %i.bj, align 8, !tbaa !2227
  ret void
}

declare void @_ZN4llvm29PeelingModuloScheduleExpander6expandEv(ptr noundef nonnull align 8 dereferenceable(496)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm29PeelingModuloScheduleExpanderD2Ev(ptr noundef nonnull align 8 dead_on_return(496) dereferenceable(496) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm15TargetInstrInfo17PipelinerLoopInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm15TargetInstrInfo17PipelinerLoopInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm15TargetInstrInfo17PipelinerLoopInfoEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #29, !inline_history !439
  br label %_ZNSt10unique_ptrIN4llvm15TargetInstrInfo17PipelinerLoopInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm15TargetInstrInfo17PipelinerLoopInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm15TargetInstrInfo17PipelinerLoopInfoEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm15TargetInstrInfo17PipelinerLoopInfoESt14default_deleteIS2_EED2Ev.exit
  tail call void @free(ptr noundef %i.g) #29
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm15TargetInstrInfo17PipelinerLoopInfoESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2220 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2228 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !2229 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i.i, align 8, !tbaa !2221
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #32
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !2230

_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !2220
  br label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.c
  %i.u = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.k, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load i64, ptr %i.v, align 8, !tbaa !2219
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #32
  br label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit

_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2220 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit7, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2228 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !2229 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = icmp ult ptr %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i3, label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i2

.lr.ph.i.i.i3:                                    ; preds = %bb.d, %.lr.ph.i.i.i3
  %.06.i.i.i4 = phi ptr [ %i.ah, %.lr.ph.i.i.i3 ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ag = load ptr, ptr %.06.i.i.i4, align 8, !tbaa !2221
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef 512) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i4, i64 8
  %i.ai = icmp ult ptr %.06.i.i.i4, %i.ad
  br i1 %i.ai, label %.lr.ph.i.i.i3, label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i5, !llvm.loop !2230

_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i5: ; preds = %.lr.ph.i.i.i3
  %.pre.i.i6 = load ptr, ptr %i.y, align 8, !tbaa !2220
  br label %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i2

_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i2: ; preds = %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i5, %bb.d
  %i.aj = phi ptr [ %.pre.i.i6, %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i5 ], [ %i.z, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2219
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #32
  br label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit7

_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit7: ; preds = %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, %_ZNSt11_Deque_baseIPN4llvm17MachineBasicBlockESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !2231 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2232
  %i.as = zext i32 %i.ao to i64                   ; 2 uses
  %i.at = mul nuw nsw i64 %i.as, 24
  %i.au = add nuw nsw i64 %i.as, 31
  %i.av = lshr i64 %i.au, 3
  %i.aw = and i64 %i.av, 1073741820
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.ax, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEED2Ev.exit: ; preds = %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit7, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !817 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !812
  %i.bd = zext i32 %i.az to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEED2Ev.exit, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1970 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1961
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !2233 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !2234
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2235
  %i.cb = zext i32 %i.bw to i64
  %i.cc = add nuw nsw i64 %i.cb, 31
  %i.cd = lshr i64 %i.cc, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !314 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.cg = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.cf, %.lr.ph.i.i ], [ %i.cq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ch = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.cm) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.cp = add i32 %.0.i3.i.i, -1
  %i.cq = and i32 %i.cp, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.h, !llvm.loop !2236

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cd
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2237

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.bv, align 4, !tbaa !2233 ; 2 uses
  %i.cr = icmp eq i32 %.pr.i, 0
  br i1 %i.cr, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.cs = load ptr, ptr %i.bu, align 8, !tbaa !2234
  %i.ct = zext i32 %.pr.i to i64                  ; 2 uses
  %i.cu = mul nuw nsw i64 %i.ct, 80
  %i.cv = add nuw nsw i64 %i.ct, 31
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = and i64 %i.cw, 1073741820
  %i.cy = add nuw nsw i64 %i.cx, %i.cu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cs, i64 noundef %i.cy, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !2233 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22, label %.lr.ph7.preheader.i.i8

.lr.ph7.preheader.i.i8:                           ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !2234
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2235
  %i.dg = zext i32 %i.db to i64
  %i.dh = add nuw nsw i64 %i.dg, 31
  %i.di = lshr i64 %i.dh, 5
  br label %.lr.ph7.i.i9

.lr.ph7.i.i9:                                     ; preds = %._crit_edge.i.i17, %.lr.ph7.preheader.i.i8
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph7.preheader.i.i8 ], [ %indvars.iv.next.i.i18, %._crit_edge.i.i17 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i10
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !314 ; 2 uses
  %.not11.i2.i.i11 = icmp eq i32 %i.dk, 0
  br i1 %.not11.i2.i.i11, label %._crit_edge.i.i17, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph7.i.i9
  %indvars.iv.tr.i.i13 = trunc i64 %indvars.iv.i.i10 to i32
  %i.dl = shl i32 %indvars.iv.tr.i.i13, 5
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15, %.lr.ph.i.i12
  %.0.i3.i.i14 = phi i32 [ %i.dk, %.lr.ph.i.i12 ], [ %i.dv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15 ] ; 3 uses
  %i.dm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i14, i1 true)
  %i.dn = or disjoint i32 %i.dm, %i.dl
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [80 x i8], ptr %i.dd, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !21 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.dr) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15: ; preds = %bb.l, %bb.k
  %i.du = add i32 %.0.i3.i.i14, -1
  %i.dv = and i32 %i.du, %.0.i3.i.i14             ; 2 uses
  %.not11.i.i.i16 = icmp eq i32 %i.dv, 0
  br i1 %.not11.i.i.i16, label %._crit_edge.i.i17, label %bb.k, !llvm.loop !2236

._crit_edge.i.i17:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i15, %.lr.ph7.i.i9
  %indvars.iv.next.i.i18 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %.not.i.i.i19 = icmp eq i64 %indvars.iv.next.i.i18, %i.di
  br i1 %.not.i.i.i19, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i20, label %.lr.ph7.i.i9, !llvm.loop !2237

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i20: ; preds = %._crit_edge.i.i17
  %.pr.i21 = load i32, ptr %i.da, align 4, !tbaa !2233 ; 2 uses
  %i.dw = icmp eq i32 %.pr.i21, 0
  br i1 %i.dw, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i20
  %i.dx = load ptr, ptr %i.cz, align 8, !tbaa !2234
  %i.dy = zext i32 %.pr.i21 to i64                ; 2 uses
  %i.dz = mul nuw nsw i64 %i.dy, 80
  %i.ea = add nuw nsw i64 %i.dy, 31
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = and i64 %i.eb, 1073741820
  %i.ed = add nuw nsw i64 %i.ec, %i.dz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dx, i64 noundef %i.ed, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22: ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i20, %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22
  tail call void @free(ptr noundef %i.ef) #29
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit22, %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit23, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.ej) #29
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit23

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit23: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, %bb.o
  ret void
}

declare noundef zeroext i1 @_ZN4llvm25ModuloScheduleExpanderMVE8canApplyERNS_11MachineLoopE(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare void @_ZN4llvm25ModuloScheduleExpanderMVE6expandEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #4

declare void @_ZN4llvm22ModuloScheduleExpander6expandEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #4

declare void @_ZN4llvm22ModuloScheduleExpander7cleanupEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #4

declare void @_ZN4llvm15MachineFunction18deleteMachineInstrEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm17ScheduleDAGInstrs11finishBlockEv(ptr noundef nonnull align 8 dereferenceable(3472)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_5SUnitENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1009
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !325  ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx4.i
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !837    ; 8 uses
  %i.l = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !837
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !837
  %i.q = icmp eq ptr %i.p, %i.k
  br i1 %i.q, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !837
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !837
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.y = add nsw i64 %.047.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1010

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.aa = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i = phi i32 [ %i.aa, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge: ; preds = %._crit_edge.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !837
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.thread

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.pre53.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !837
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !837
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !837
  %i.ac = load ptr, ptr %1, align 8, !tbaa !837   ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i.i
  %i.af = phi ptr [ %i.ac, %bb.i ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %i.ag = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !837
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge52.i.i.i.i
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %.pre53.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !837
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5SUnitELj8EEES3_EEbOT_RKT0_.exit
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !314
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !3101

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !314
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.c, !prof !422

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3102
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !393
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3102
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !391
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !385
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !314
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !393
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !314
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !314
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !325
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 2, ptr %i.bf, align 4, !tbaa !326
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !385, !noalias !3103 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !391, !noalias !3103 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !392, !noalias !3103 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !314    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !314
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !655

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !314
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3101

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !314
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !422

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3102
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.864", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !392
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !385
  store ptr %i.y, ptr %i.q, align 8, !tbaa !391
  store i32 0, ptr %i.p, align 16, !tbaa !393
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3102   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !877 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store ptr %i.z, ptr %2, align 16, !tbaa !3102
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !24
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !877
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !314
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !314
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !428

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !429

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !392 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !385
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 5
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !391
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !392  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !391  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !385
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !392
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !314  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !3108

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 6 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !325
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  store i32 2, ptr %i.ak, align 4, !tbaa !326
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !325 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ao = icmp eq ptr %i.ag, %i.u
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !21
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !325
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !326
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !326
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !326
  br label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ugt i32 %i.am, 2
  br i1 %i.au, label %bb.h, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext i32 %i.am to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.av, i64 noundef 4) #29
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.g, %bb.h
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ay, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %bb.i, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.al, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i.sink.split, %bb.e, %bb.d
  %i.ba = shl nuw i32 1, %i.ab
  %i.bb = load i32, ptr %i.af, align 4, !tbaa !314
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.af, align 4, !tbaa !314
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.be) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIjLj2EEC2EOS1_.exit.i, %bb.j
  %i.bh = add i32 %.0.i18, -1
  %i.bi = and i32 %i.bh, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3109

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3110

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !392
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bj = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !393
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !393
  %i.bn = icmp eq i32 %i.bj, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !385
  %i.bp = zext i32 %i.bj to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 5
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8SmallSetIjLj8ESt4lessIjEE10insertImplIRKjEESt4pairINS_16SmallSetIteratorIjLj8ES2_EEbEOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.891") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !402
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !855 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !314    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.c ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !314  ; 2 uses
  %i.i = icmp ult i32 %i.f, %i.h                  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE:bb.a
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !325
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !325
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #29 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !325 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !326
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !422

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !325
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !325
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !664
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !663
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.425", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !680
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !667
  store ptr %i.y, ptr %i.q, align 8, !tbaa !679
  store i32 0, ptr %i.p, align 16, !tbaa !683
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3124
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !667
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !680  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !679  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !667
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !680
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3125

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !656
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !334
  store i64 %i.av, ptr %i.at, align 8, !tbaa !334
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !314
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !314
  %i.ba = add i32 %.0.i16, -1
  %i.bb = and i32 %i.ba, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3126

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3127

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !680
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !683
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !683
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !667
  %i.bi = zext i32 %i.bc to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm17ScheduleDAGInstrsC2ERNS_15MachineFunctionEPKNS_15MachineLoopInfoEb(ptr noundef nonnull align 8 dereferenceable(3472), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvm26ScheduleDAGTopologicalSortC1ERSt6vectorINS_5SUnitESaIS2_EEPS2_(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17ScheduleDAGInstrsD2Ev(ptr noundef nonnull align 8 dead_on_return(3472) dereferenceable(3472) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4llvm17ScheduleDAGInstrsE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm12LiveRegUnitsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #29
  br label %_ZN4llvm12LiveRegUnitsD2Ev.exit

_ZN4llvm12LiveRegUnitsD2Ev.exit:                  ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3128 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrES3_ESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3129
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #32
  br label %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrES3_ESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm12MachineInstrES3_ESaIS4_EED2Ev.exit: ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %i.m = load i32, ptr %i.l, align 4, !tbaa !930  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvm8DenseMapISt4pairIiiEbNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrES3_ESaIS4_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !931
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820
  %i.v = add nuw nsw i64 %i.u, %i.r
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.p, i64 noundef %i.v, i64 noundef 4) #29
  br label %_ZN4llvm8DenseMapISt4pairIiiEbNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIiiEbNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrES3_ESaIS4_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIiiEbNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEED2Ev.exit.i
  tail call void @free(ptr noundef %i.x) #29
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.e, %_ZN4llvm8DenseMapISt4pairIiiEbNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !932 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !933
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.f, %_ZN4llvm9BitVectorD2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !932 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !933
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.g, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4llvm26ScheduleDAGTopologicalSortD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  tail call void @free(ptr noundef %i.ap) #29
  br label %_ZN4llvm26ScheduleDAGTopologicalSortD2Ev.exit

_ZN4llvm26ScheduleDAGTopologicalSortD2Ev.exit:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt22_Optional_payload_baseIN4llvm14BatchAAResultsEE10_M_destroyEv:bb.a
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #29
  br label %_ZN4llvm14BatchAAResultsD2Ev.exit

_ZN4llvm14BatchAAResultsD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17SwingSchedulerDDGD2Ev(ptr noundef nonnull align 8 dead_on_return(984) dereferenceable(984) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #29
  br label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.g) #29
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj8EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #29
  br label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i
  tail call void @free(ptr noundef %i.n) #29
  br label %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit

_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i1, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit
  tail call void @free(ptr noundef %i.s) #29
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i1

_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i1: ; preds = %bb.f, %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i2, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i1
  tail call void @free(ptr noundef %i.w) #29
  br label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i2

_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i2: ; preds = %bb.g, %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i1
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i2
  tail call void @free(ptr noundef %i.z) #29
  br label %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3

_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3: ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i2, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1118 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3135 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3, %_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i ], [ %i.ad, %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3 ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 304
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.ah) #29
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 160
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.al) #29
  br label %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN4llvm11SmallVectorIPNS_5SUnitELj4EED2Ev.exit.i.i.i.i.i
  %i.ao = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.ao) #29
  br label %_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorINS_21SwingSchedulerDDGEdgeELj4EED2Ev.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 336 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3136

_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ac, align 8, !tbaa !1118
  br label %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exitthread-pre-split.i, %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exitthread-pre-split.i ], [ %i.ad, %_ZN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesD2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3137
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #32
  br label %_ZNSt6vectorIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm17SwingSchedulerDDG22SwingSchedulerDDGEdgesEEvT_S4_.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IjbEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3118
  tail call void @_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IjbEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3117 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3138

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1908 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1901
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1907
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1917 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1948 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1949 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.y = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !869
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef 512) #32
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.aa = icmp ult ptr %.06.i.i.i.i.i, %i.v
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !1953

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !1917
  br label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.c
  %i.ab = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.r, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1916
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i, %bb.b
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3139

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3140

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1908 ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1901
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 88
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3118
  tail call void @_ZNSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3117 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3141

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1001 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !992
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1000
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #29
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !759  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !760
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3142

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3143

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1001 ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !992
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 112
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr30isDereferenceableInvariantLoadEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_127LoopCarriedOrderDepsTracker19NoBarrierInstsChunkELb0EE13destroy_rangeEPS3_S5_(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #20 align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN12_GLOBAL__N_127LoopCarriedOrderDepsTracker19NoBarrierInstsChunkD2Ev.exit
  %.05 = phi ptr [ %i.a, %_ZN12_GLOBAL__N_127LoopCarriedOrderDepsTracker19NoBarrierInstsChunkD2Ev.exit ], [ %1, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %.05, i64 -984 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %.05, i64 -120 ; 2 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !21 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %.05, i64 -112
  %.val2.i.i = load i32, ptr %i.c, align 8, !tbaa !325 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph
  %i.d = zext i32 %.val2.i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.d, 104
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i ], [ %i.e, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -104 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.h) #29
  br label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.val.i.i, %i.f
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3144

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %.lr.ph
  %i.k = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %.val.i.i, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05, i64 -104
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  tail call void @free(ptr noundef %i.k) #29
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.n = getelementptr inbounds i8, ptr %.05, i64 -552 ; 2 uses
  %.val.i1.i = load ptr, ptr %i.n, align 8, !tbaa !21 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.05, i64 -544
  %.val2.i2.i = load i32, ptr %i.o, align 8, !tbaa !325 ; 2 uses
  %.not4.i.i3.i = icmp eq i32 %.val2.i2.i, 0
  br i1 %.not4.i.i3.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i12.i, label %.lr.ph.i.preheader.i4.i

.lr.ph.i.preheader.i4.i:                          ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i
  %i.p = zext i32 %.val2.i2.i to i64
  %.idx.i5.i = mul nuw nsw i64 %i.p, 104
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i1.i, i64 %.idx.i5.i
  br label %.lr.ph.i.i6.i

.lr.ph.i.i6.i:                                    ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i, %.lr.ph.i.preheader.i4.i
  %.05.i.i7.i = phi ptr [ %i.r, %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i ], [ %i.q, %.lr.ph.i.preheader.i4.i ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i7.i, i64 -104 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i7.i, i64 -96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i7.i, i64 -80
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i6.i
  tail call void @free(ptr noundef %i.t) #29
  br label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i

_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i: ; preds = %bb.d, %.lr.ph.i.i6.i
  %.not.i.i9.i = icmp eq ptr %.val.i1.i, %i.r
  br i1 %.not.i.i9.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i10.i, label %.lr.ph.i.i6.i, !llvm.loop !3144

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i10.i: ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i8.i
  %.pre.i11.i = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i12.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i12.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i10.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i
  %i.w = phi ptr [ %.pre.i11.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i10.i ], [ %.val.i1.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj1EED2Ev.exit.i ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05, i64 -536
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj4EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i12.i
  tail call void @free(ptr noundef %i.w) #29
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj4EED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i12.i
  %.val.i13.i = load ptr, ptr %i.a, align 8, !tbaa !21 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.05, i64 -976
  %.val2.i14.i = load i32, ptr %i.z, align 8, !tbaa !325 ; 2 uses
  %.not4.i.i15.i = icmp eq i32 %.val2.i14.i, 0
  br i1 %.not4.i.i15.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i24.i, label %.lr.ph.i.preheader.i16.i

.lr.ph.i.preheader.i16.i:                         ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_116SUnitWithMemInfoELj4EED2Ev.exit.i
  %i.aa = zext i32 %.val2.i14.i to i64
  %.idx.i17.i = mul nuw nsw i64 %i.aa, 104
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 %.idx.i17.i
  br label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i, %.lr.ph.i.preheader.i16.i
  %.05.i.i19.i = phi ptr [ %i.ac, %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i ], [ %i.ab, %.lr.ph.i.preheader.i16.i ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i19.i, i64 -104 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i19.i, i64 -96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i19.i, i64 -80
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i18.i
  tail call void @free(ptr noundef %i.ae) #29
  br label %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i

_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i: ; preds = %bb.f, %.lr.ph.i.i18.i
  %.not.i.i21.i = icmp eq ptr %.val.i13.i, %i.ac
  br i1 %.not.i.i21.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i22.i, label %.lr.ph.i.i18.i, !llvm.loop !3144

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i22.i: ; preds = %_ZN12_GLOBAL__N_116SUnitWithMemInfoD2Ev.exit.i.i20.i
  %.pre.i23.i = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116SUnitWithMemInfoELb0EE13destroy_rangeEPS2_S4_.exit.i24.i
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3190
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2390
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2382
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2393
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !837
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !837
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !314
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2382, !noalias !3191 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2390, !noalias !3191 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2391, !noalias !3191 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !837    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !837
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !2392

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3190
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1045", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2391
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2382
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2390
  store i32 0, ptr %i.p, align 16, !tbaa !2393
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3190
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2382   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2391 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2390 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2382
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2391
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !837  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3196

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !837
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !314
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !314
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !314
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !314
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3197

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3198

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2391
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2393
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !2393
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2391
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !325  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i.i) #29
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3199

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !325 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i
  %i.m = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.m, 56
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.o, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i ], [ %i.n, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i, i64 -56 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !14, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !20
  call void @free(ptr noundef %i.s) #29
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2414

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i
  %i.t = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i ] ; 2 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !29
  %i.v = icmp eq ptr %i.t, %i.b
  br i1 %i.v, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE21takeAllocationForGrowEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit
  call void @free(ptr noundef %i.t) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE21takeAllocationForGrowEPS4_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE21takeAllocationForGrowEPS4_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallPtrSetIPNS_5SUnitELj4EEELb0EE19moveElementsForGrowEPS4_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.w = trunc i64 %i.u to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIiLj4EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !325  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIiLj4EEELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11SmallVectorIiLj4EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIiLj4EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm11SmallVectorIiLj4EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !325
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !326
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
end_hunk_6
begin_hunk_7_@_ZN4llvm8SmallSetINS_13VirtRegOrUnitELj4ESt4lessIS1_EE10insertImplIS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setIN4llvm13VirtRegOrUnitESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !402
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %.lr.ph.i
  %i.f = phi i64 [ %.pre, %.lr.ph.i ], [ %i.ag, %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ah, %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 6 uses
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !855  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1178
  %i.j = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1178
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.02022.i.i = load ptr, ptr %i.d, align 8, !tbaa !855 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1178 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1178 ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !855 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i5, label %._crit_edge.i.i, label %bb.e, !llvm.loop !3203

._crit_edge.i.i:                                  ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.g

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.d
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !400
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #33
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !1178
  %.pre82.i = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1178
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.f ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.f ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.g, %._crit_edge.thread.i.i, %bb.c
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.c ], [ %.019.lcssa28.i.i, %bb.g ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1178
  %i.y = load i32, ptr %i.w, align 4, !tbaa !1178
  %i.z = icmp ult i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.h ], [ true, %select.unfold ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !314
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !314
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !402
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !402
  br label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i: ; preds = %bb.g, %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ag = phi i64 [ %i.f, %bb.g ], [ %i.af, %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %2
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %bb.b, !llvm.loop !3208

_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_13VirtRegOrUnitELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i32 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3118
  tail call void @_ZNSt8_Rb_treeIN4llvm13VirtRegOrUnitES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3117 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3209

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #4

declare void @_ZN4llvm5SUnit13ComputeHeightEv(ptr noundef nonnull align 8 dereferenceable(259)) local_unnamed_addr #4

declare void @_ZN4llvm5SUnit12ComputeDepthEv(ptr noundef nonnull align 8 dereferenceable(259)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2005 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1994
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2004
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ad, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [440 x i8], ptr %i.d, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #29
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.w) #29
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i.i.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i.i.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i.i.i
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i.i.i
  tail call void @free(ptr noundef %i.z) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i.i.i
  %i.ac = add i32 %.0.i3.i, -1
  %i.ad = and i32 %i.ac, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3210

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3211

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !2005 ; 2 uses
  %i.ae = icmp eq i32 %.pr, 0
  br i1 %i.ae, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !1994
  %i.ag = zext i32 %.pr to i64                    ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 440
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, %bb.f
  ret void
}

declare void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1994, !noalias !3212 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2004, !noalias !3212 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2005, !noalias !3212 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [440 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !655

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [440 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !3217

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3218
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3219
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3218
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2004
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1994
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 14 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 440               ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3219
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.bj, i8 0, i64 416, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bl, align 8, !tbaa !325
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 8, ptr %i.bm, align 4, !tbaa !326
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 164
  store i32 8, ptr %i.bp, align 4, !tbaa !326
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 296
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 312
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 308
  store i32 8, ptr %i.bs, align 4, !tbaa !326
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1994, !noalias !3220 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2004, !noalias !3220 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2005, !noalias !3220 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [440 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [440 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3217

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3218
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.768", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2005
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 440                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1994
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2004
  store i32 0, ptr %i.p, align 16, !tbaa !3219
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !314
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !314
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !314
  call void @_ZN4llvm8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1994
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2004
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2005 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2004 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1994
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2005
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i49 = icmp eq i64 %i.n, 0
  br i1 %.not.i49, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i47 = icmp eq i32 %i.p, 0
  br i1 %.not11.i47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph52
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i48 = phi i32 [ %i.p, %.lr.ph ], [ %i.dp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_16RegisterOperandsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i48, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [440 x i8], ptr %i.a, i64 %i.t ; 22 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3225

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [440 x i8], ptr %i.h, i64 %.lcssa12.i ; 16 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !656
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !325
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 8, ptr %i.aw, align 4, !tbaa !326
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !325 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i24

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i24: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !21
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !325
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !326
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !326
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  store i32 0, ptr %i.be, align 4, !tbaa !326
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp ugt i32 %i.ay, 8
  br i1 %i.bg, label %bb.f, label %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i31

bb.f:                                             ; preds = %bb.e
  %i.bh = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(432) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bh, i64 noundef 16) #29
  br label %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i31

_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i31: ; preds = %bb.e, %bb.f
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i33 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i33, label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i36, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i31
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !21
  %gepdiff.i35 = shl nuw nsw i64 %i.bj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 8 %i.bk, i64 %gepdiff.i35, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i36

_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i36: ; preds = %bb.g, %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i31
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i.sink.split

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i24, %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i36
  store i32 0, ptr %i.ax, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i: ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i.sink.split, %bb.c, %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 152 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 168 ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 160 ; 3 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !325
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 164 ; 2 uses
  store i32 8, ptr %i.bp, align 4, !tbaa !326
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !325 ; 5 uses
  %.not.i.i4.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i4.i.i, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 3 uses
  %i.bt = icmp eq ptr %i.as, %i.u
  br i1 %i.bt, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.j, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i9

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i9: ; preds = %bb.i
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !21
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !325
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 164 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !326
  store i32 %i.by, ptr %i.bp, align 4, !tbaa !326
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !21
  store i32 0, ptr %i.bx, align 4, !tbaa !326
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i.sink.split

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp ugt i32 %i.br, 8
  br i1 %i.bz, label %bb.k, label %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i16

bb.k:                                             ; preds = %bb.j
  %i.ca = zext i32 %i.br to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.ca, i64 noundef 16) #29
  br label %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i16

_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i16: ; preds = %bb.j, %bb.k
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !325 ; 2 uses
  %.not.i.i.i18 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i18, label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i16
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.ce = load ptr, ptr %i.bm, align 8, !tbaa !21
  %gepdiff.i20 = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 8 %i.cd, i64 %gepdiff.i20, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i21

_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i21: ; preds = %bb.l, %_ZSt4moveIPN4llvm14VRegMaskOrUnitES2_ET0_T_S4_S3_.exit34.i16
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i.sink.split

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i9, %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i21
  store i32 0, ptr %i.bq, align 8, !tbaa !325
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i: ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i.sink.split, %bb.h, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 296 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 312 ; 2 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 304 ; 3 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !325
  %i.ci = getelementptr inbounds nuw i8, ptr %i.as, i64 308 ; 2 uses
  store i32 8, ptr %i.ci, align 4, !tbaa !326
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 304 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !325 ; 5 uses
  %.not.i.i6.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i6.i.i, label %_ZN4llvm16RegisterOperandsC2EOS0_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EEC2EOS2_.exit5.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 296 ; 3 uses
  %i.cm = icmp eq ptr %i.as, %i.u
  br i1 %i.cm, label %_ZN4llvm16RegisterOperandsC2EOS0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 312 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.o, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12assignRemoteEOS2_.exit.i: ; preds = %bb.n
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !21
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !325
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 308 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !326
  store i32 %i.cr, ptr %i.ci, align 4, !tbaa !326
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3233
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1864
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3233
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1862
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1854
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !314
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1864
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !314
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !314
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1854, !noalias !3234 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1862, !noalias !3234 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1863, !noalias !3234 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !1067   ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !314
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !655

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !314
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !1881

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1067
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !422

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3233
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1121", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1863
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #29 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !1854
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1862
  store i32 0, ptr %i.p, align 16, !tbaa !1864
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.ac = load ptr, ptr %0, align 8, !tbaa !3233
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !314
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !314
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !314
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #29
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1854   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1862
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1863 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1862 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1854
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1863
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1067 ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3239

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !314
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !314
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !314
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3240

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3241

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1863
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1864
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !1864
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1863
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare noundef i32 @_ZNK4llvm17RegisterClassInfo16computePSetLimitEj(ptr noundef nonnull align 8 dereferenceable(320), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1910 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1908 ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !1901
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1907
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !314  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1917 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1948 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !1949 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !869
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #32
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ag = icmp ult ptr %.06.i.i.i.i.i, %i.ab
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !1953

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1917
  br label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.g
  %i.ah = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.x, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1916
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i, %bb.f
  %i.al = add i32 %.0.i3.i, -1
  %i.am = and i32 %i.al, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !3139

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !3140

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !1908
  %i.an = zext i32 %.pre to i64
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit, %bb.e
  %i.ar = phi i64 [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1907
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.ar, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !1910
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1910 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1908 ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !1901
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1907
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !314  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1917 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1948 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !1949 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !869
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #32
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ag = icmp ult ptr %.06.i.i.i.i.i, %i.ab
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !1953

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1917
  br label %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.d
  %i.ah = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.x, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1916
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm5SUnitESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i, %bb.c
  %i.al = add i32 %.0.i3.i, -1
  %i.am = and i32 %i.al, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !3139

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3140

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1910
  %i.an = load i32, ptr %i.g, align 4, !tbaa !1908 ; 2 uses
  %.not.i3 = icmp eq i32 %i.an, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1907
  %i.aq = zext i32 %i.an to i64
  %i.ar = add nuw nsw i64 %i.aq, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.at, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  %i.au = load i32, ptr %i.g, align 4, !tbaa !1908 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1901
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = mul nuw nsw i64 %i.ax, 88
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aw, i64 noundef %i.bc, i64 noundef 8) #29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !1908
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  %i.bd = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 88
  %i.be = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  %i.bi = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bh, i64 noundef 8) #29 ; 2 uses
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !1908 ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !1901
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1907
  store i32 0, ptr %i.a, align 8, !tbaa !1910
  %.not.i.i5 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %i.bk, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.bq, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.646", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1970
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1961
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1969
  store i32 0, ptr %i.p, align 16, !tbaa !1972
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3242
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1961   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1969
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1970 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1969 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1961
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1970
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3243

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !656
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !314
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !314
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !314
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !314
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3244

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3245

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1970
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1972
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1972
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1970
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !325  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 1, ptr %.09.i.i.i.i.i.i, align 8
  store i32 0, ptr %i.i, align 8
  call void @_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_(ptr noundef nonnull align 8 dereferenceable(80) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.04.08.i.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3246

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !325 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i
  %i.l = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.l, 80
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.n, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i ], [ %i.m, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i.i, i64 -80 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds i8, ptr %.05.i.i, i64 -56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !334  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !334
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 31
  %i.x = lshr i64 %i.w, 5
  %i.y = add nuw nsw i64 %i.x, %i.v
  %i.z = shl nuw nsw i64 %i.y, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.z, i64 noundef 4) #29
  br label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i

_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.n
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2105

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit.loopexit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i
  %i.aa = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE21takeAllocationForGrowEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit
  call void @free(ptr noundef %i.aa) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE21takeAllocationForGrowEPS5_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE21takeAllocationForGrowEPS5_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13SmallDenseSetINS_8RegisterELj16ENS_12DenseMapInfoIS2_vEEEELb0EE19moveElementsForGrowEPS5_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::SmallDenseMap<llvm::Register, llvm::detail::DenseSetEmpty, 16, llvm::DenseMapInfo<Register>, llvm::detail::DenseSetPair<llvm::Register>>::LargeRep", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::SmallDenseMap<llvm::Register, llvm::detail::DenseSetEmpty, 16, llvm::DenseMapInfo<Register>, llvm::detail::DenseSetPair<llvm::Register>>::LargeRep", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, -2
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, -2
  %i.e = and i32 %i.a, 1
  %i.f = or disjoint i32 %i.d, %i.e
  store i32 %i.f, ptr %1, align 8
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 1                          ; 2 uses
  %i.i = or disjoint i32 %i.h, %i.b               ; 2 uses
  store i32 %i.i, ptr %0, align 8
  %.not = icmp eq i32 %i.h, 0
end_hunk_8
begin_hunk_9_@_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !314
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !314
  %.pre93 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cs = phi i32 [ %.pre93, %bb.af ], [ %i.cn, %bb.ae ] ; 2 uses
  %i.ct = and i32 %i.cs, 1024
  %.not109 = icmp eq i32 %i.ct, 0
  br i1 %.not109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !314
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !314
  %.pre94 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cx = phi i32 [ %.pre94, %bb.ah ], [ %i.cs, %bb.ag ] ; 2 uses
  %i.cy = and i32 %i.cx, 2048
  %.not110 = icmp eq i32 %i.cy, 0
  br i1 %.not110, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.db = load i32, ptr %i.da, align 4, !tbaa !314
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !314
  %.pre95 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dc = phi i32 [ %.pre95, %bb.aj ], [ %i.cx, %bb.ai ] ; 2 uses
  %i.dd = and i32 %i.dc, 4096
  %.not111 = icmp eq i32 %i.dd, 0
  br i1 %.not111, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !314
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !314
  %.pre96 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dh = phi i32 [ %.pre96, %bb.al ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.di = and i32 %i.dh, 8192
  %.not112 = icmp eq i32 %i.di, 0
  br i1 %.not112, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !314
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !314
  %.pre97 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dm = phi i32 [ %.pre97, %bb.an ], [ %i.dh, %bb.am ] ; 2 uses
  %i.dn = and i32 %i.dm, 16384
  %.not113 = icmp eq i32 %i.dn, 0
  br i1 %.not113, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !314
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !314
  %.pre98 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dr = phi i32 [ %.pre98, %bb.ap ], [ %i.dm, %bb.ao ] ; 2 uses
  %i.ds = and i32 %i.dr, 32768
  %.not114 = icmp eq i32 %i.ds, 0
  br i1 %.not114, label %.preheader, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %i.du = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !314
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !314
  %.pre99 = load i32, ptr %i.au, align 8, !tbaa !314
  br label %.preheader

.preheader:                                       ; preds = %bb.ar, %bb.aq
  %i.dw = phi i32 [ %.pre99, %bb.ar ], [ %i.dr, %bb.aq ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !314
  %i.dy = load i32, ptr %i.ar, align 8
  %i.dz = and i32 %i.dy, -2
  store i32 %i.dz, ptr %i.ar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !3248
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.as

bb.as:                                            ; preds = %.preheader78, %.preheader, %bb.l
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1170", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2031
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2024
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2030
  store i32 0, ptr %i.p, align 16, !tbaa !2032
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3249
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2024   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2030
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2031 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2030 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2024
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2031
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1067 ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3250

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !656
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !656
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !314
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !314
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3251

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3252

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2031
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !2032
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2031
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_12MachineInstrENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !3253 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3253 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !noalias !3253
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.h ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.j = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !1067   ; 2 uses
  %i.m = mul i32 %i.l, 37
  %.024.i = and i32 %i.m, %i.k                    ; 3 uses
  %i.n = zext i32 %.024.i to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !314
  %i.s = and i32 %.024.i, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !655

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.v, %i.k                      ; 3 uses
  %i.w = zext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !3258

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1067
  %i.ag = icmp eq i32 %i.l, %i.af
  br i1 %i.ag, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit, label %bb.c, !prof !422

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !3233
  %i.ah = shl i32 %i.b, 1
  %i.ai = and i32 %i.ah, -4
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !3233
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ao = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.ap = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.aq = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.h
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.an, ptr %i.d
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !314
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !314
  %i.bd = load i32, ptr %0, align 8               ; 2 uses
  %i.be = and i32 %i.bd, -2
  %i.bf = add i32 %i.be, 2
  %i.bg = and i32 %i.bd, 1
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = load i32, ptr %1, align 4, !tbaa !314
  store i32 %i.bi, ptr %i.ap, align 4, !tbaa !314
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ae, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !3259
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !3259
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_:bb.a
.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.w, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1067
  %i.af = icmp eq i32 %i.k, %i.ae                 ; 3 uses
  br i1 %i.af, label %.thread, label %bb.c, !prof !422

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.w, %bb.c ], [ %i.ad, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !3233
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1163", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 31                 ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.u, i64 noundef 4) #29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !334
  %i.x = shl nuw nsw i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !334
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !334
  %i.ab = lshr i64 %i.r, 3
  %i.ac = and i64 %i.ab, 1073741820
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ad = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.ac, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ae = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.af = load i32, ptr %2, align 8               ; 3 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit
  store i32 %i.af, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !3248
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !334
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, -2
  store i32 %i.am, ptr %0, align 8
  %i.an = zext i32 %.0.i4 to i64                  ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ar, i64 noundef 4) #29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !334
  %i.au = shl nuw nsw i64 %i.an, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !334
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %.0.i4, ptr %i.ax, align 8, !tbaa !334
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.ay = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.ay, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi i64 [ 4, %.thread.i ], [ %i.bd, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  %i.bf = phi ptr [ %i.ak, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.be, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit
  %i.bg = phi i32 [ %i.af, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit ]
  %i.bh = and i32 %i.bg, 1
  %.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !334 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !334
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 31
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = add nuw nsw i64 %i.bp, %i.bn
  %i.br = shl nuw nsw i64 %i.bq, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.br, i64 noundef 4) #29
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = load i32, ptr %i.f, align 8
  %i.k = select i1 %.not.i.i, i32 %i.j, i32 4
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = load i32, ptr %i.n, align 8
  %i.v = add i32 %i.u, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.z, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !314 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ac = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1067 ; 2 uses
  %i.ai = mul i32 %i.ah, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ai, %bb.b ], [ %i.aq, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.w                  ; 3 uses
  %i.aj = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !314
  %i.an = and i32 %.0.i11, 31                     ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i11, 1
  br i1 %i.ap, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3264

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aj
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !314
  %i.at = shl nuw i32 1, %i.an
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !314
  %i.av = or i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !314
  %i.aw = add i32 %.0.i21, -1
  %i.ax = and i32 %i.aw, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3265

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !3266

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.az = and i32 %i.ay, -2
  %i.ba = or disjoint i32 %.pre-phi, %i.az
  store i32 %i.ba, ptr %0, align 8
  %i.bb = load i32, ptr %1, align 8               ; 3 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i.i12 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !334 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = add nuw nsw i64 %i.bi, %i.bg
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bk, i64 noundef 4) #29
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.bl = phi i32 [ %i.bb, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bb, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bm = and i32 %i.bl, -2
  store i32 %i.bm, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1158", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 31                 ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.u, i64 noundef 4) #29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !334
  %i.x = shl nuw nsw i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !334
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !334
  %i.ab = lshr i64 %i.r, 3
  %i.ac = and i64 %i.ab, 1073741820
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ad = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.ac, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ae = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.af = load i32, ptr %2, align 8               ; 3 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit
  store i32 %i.af, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !3248
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !334
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEEC2EjNS_12DenseMapBaseIS8_S1_S3_S5_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, -2
  store i32 %i.am, ptr %0, align 8
  %i.an = zext i32 %.0.i4 to i64                  ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ar, i64 noundef 4) #29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !334
  %i.au = shl nuw nsw i64 %i.an, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !334
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.ax, align 8, !tbaa !334
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.ay = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.ba
  %i.bb = zext i32 %i.az to i64
  %i.bc = add nuw nsw i64 %i.bb, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.ay, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  %i.bf = phi i64 [ 4, %.thread.i ], [ %i.be, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  %i.bg = phi ptr [ %i.ak, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit
  %i.bh = phi i32 [ %i.af, %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24initWithExactBucketCountEj.exit ]
  %i.bi = and i32 %i.bh, 1
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !334 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !334
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 31
  %i.bq = lshr i64 %i.bp, 5
  %i.br = add nuw nsw i64 %i.bq, %i.bo
  %i.bs = shl nuw nsw i64 %i.br, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bs, i64 noundef 4) #29
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 16
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 15
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !314 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1067 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3267

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.al
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !314
  %i.av = shl nuw i32 1, %i.ap
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !314
  %i.ax = or i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !314
  %i.ay = add i32 %.0.i21, -1
  %i.az = and i32 %i.ay, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3268

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !3269

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bb = and i32 %i.ba, -2
  %i.bc = or disjoint i32 %.pre-phi, %i.bb
  store i32 %i.bc, ptr %0, align 8
  %i.bd = load i32, ptr %1, align 8               ; 3 uses
  %i.be = and i32 %i.bd, 1
  %.not.i.i12 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !334 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.bi = zext i32 %i.bf to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 31
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = add nuw nsw i64 %i.bk, %i.bi
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bm, i64 noundef 4) #29
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.bn = phi i32 [ %i.bd, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bd, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bo = and i32 %i.bn, -2
  store i32 %i.bo, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2101, !noalias !3270 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2102, !noalias !3270 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2098, !noalias !3270 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !655

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !2132

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3275
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2133
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3275
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2102
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2133
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bi, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2101, !noalias !3276 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2102, !noalias !3276 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2098, !noalias !3276 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !2132

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3275
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1152", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2098
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2101
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2102
  store i32 0, ptr %i.p, align 16, !tbaa !2133
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3275   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !877 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store ptr %i.z, ptr %2, align 16, !tbaa !3275
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !24
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !877
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !314
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !314
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !334 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !334
  %i.bb = zext i32 %i.ax to i64                   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 31
  %i.bd = lshr i64 %i.bc, 5
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  %i.bf = shl nuw nsw i64 %i.be, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bf, i64 noundef 4) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.bg = add i32 %.0.i3.i.i, -1
  %i.bh = and i32 %i.bg, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !2103

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2104

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2098 ; 2 uses
  %i.bi = icmp eq i32 %.pr.i, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i
  %i.bj = load ptr, ptr %2, align 16, !tbaa !2101
  %i.bk = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2101
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2102
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2098 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2102 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2098
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3281

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !656
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i32 1, ptr %i.at, align 8
  store i32 0, ptr %i.av, align 8
  tail call void @_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !314
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !314
  %i.ba = load i32, ptr %i.au, align 8
  %i.bb = and i32 %i.ba, 1
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !334 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !334
  %i.bh = zext i32 %i.bd to i64                   ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 31
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bj, %i.bh
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bl, i64 noundef 4) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.bm = add i32 %.0.i17, -1
  %i.bn = and i32 %i.bm, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3282

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !3283

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2098
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !2133
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !2133
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bt = load ptr, ptr %1, align 8, !tbaa !2101
  %i.bu = zext i32 %i.bo to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 40
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2098
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS4_vEEEENS5_IS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_13SmallDenseSetINS_8RegisterELj4ENS_12DenseMapInfoIS8_vEEEENS9_IS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::SmallDenseMap<llvm::Register, llvm::detail::DenseSetEmpty, 4, llvm::DenseMapInfo<Register>, llvm::detail::DenseSetPair<llvm::Register>>::LargeRep", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::SmallDenseMap<llvm::Register, llvm::detail::DenseSetEmpty, 4, llvm::DenseMapInfo<Register>, llvm::detail::DenseSetPair<llvm::Register>>::LargeRep", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, -2
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, -2
  %i.e = and i32 %i.a, 1
  %i.f = or disjoint i32 %i.d, %i.e
  store i32 %i.f, ptr %1, align 8
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 1                          ; 2 uses
  %i.i = or disjoint i32 %i.h, %i.b               ; 2 uses
  store i32 %i.i, ptr %0, align 8
  %.not = icmp eq i32 %i.h, 0
  %i.j = load i32, ptr %1, align 8                ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not72 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not72, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !314  ; 2 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %i.r = trunc i32 %i.q to i1
  %i.s = and i32 %i.p, 1
  %i.t = and i32 %i.s, %i.q
  %or.cond.not = icmp eq i32 %i.t, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !314
  %i.v = load i32, ptr %i.o, align 8, !tbaa !314
  store i32 %i.v, ptr %i.n, align 8, !tbaa !314
  store i32 %i.u, ptr %i.o, align 8, !tbaa !314
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.w = trunc i32 %i.p to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.n, align 8, !tbaa !314
  store i32 %i.x, ptr %i.o, align 8, !tbaa !314
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.o, align 8, !tbaa !314
  store i32 %i.y, ptr %i.n, align 8, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %i.z = load i32, ptr %i.l, align 8, !tbaa !314
  %i.aa = lshr i32 %i.z, 1                        ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !314
  %i.ac = lshr i32 %i.ab, 1                       ; 2 uses
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = and i32 %i.aa, 1
  %i.af = and i32 %i.ae, %i.ac
  %or.cond.not.1 = icmp eq i32 %i.af, 0
  br i1 %or.cond.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !314
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !314
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !314
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !314
  br label %bb.o

bb.k:                                             ; preds = %bb.i
end_hunk_10
begin_hunk_11_@_ZN4llvm13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE8swapImplERS8_:bb.a

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8RegisterENS_6detail13DenseSetEmptyELj16ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = add i32 %i.a, -2
  store i32 %i.b, ptr %0, align 8
  %i.c = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not.i.i.i, ptr %i.i, ptr %i.g ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = select i1 %.not.i.i.i, i32 %i.m, i32 15  ; 4 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = and i32 %i.t, %i.n                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !314
  %i.z = and i32 %i.u, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.ac = phi i64 [ %i.aq, %bb.c ], [ %i.v, %bb.a ]
  %i.ad = phi i32 [ %i.ap, %bb.c ], [ %i.u, %bb.a ] ; 3 uses
  %.03338 = phi i32 [ %.2, %bb.c ], [ %i.s, %bb.a ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1067 ; 2 uses
  %i.ag = mul i32 %i.af, 37                       ; 2 uses
  %i.ah = sub i32 %.03338, %i.ag
  %i.ai = and i32 %i.ah, %i.n
  %i.aj = sub i32 %i.ad, %i.ag
  %i.ak = and i32 %i.aj, %i.n
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.am = zext i32 %.03338 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.am
  store i32 %i.af, ptr %i.an, align 4, !tbaa !314
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03338, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ao = add i32 %i.ad, 1
  %i.ap = and i32 %i.ao, %i.n                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !314
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.s, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.ax = and i32 %.033.lcssa, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = xor i32 %i.ay, -1
  %i.ba = lshr i32 %.033.lcssa, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = and i32 %i.bd, %i.az
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  ret void
}

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #19

declare noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZNK4llvm12MachineInstr5printERNS_11raw_ostreamEbbbbPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm16TargetSchedModel18hasInstrSchedModelEv(ptr noundef nonnull align 8 dereferenceable(298)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #21

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.840", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2931
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2948
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2954
  store i32 0, ptr %i.p, align 16, !tbaa !2947
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2930
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2948   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2954
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2931 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2954 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2948
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2931
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.015.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3284

_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !314
  store i32 %i.av, ptr %i.at, align 8, !tbaa !314
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !314
  %i.ay = or i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !314
  %i.az = add i32 %.0.i14, -1
  %i.ba = and i32 %i.az, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3285

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3286

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2931
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2947
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2947
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2931
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17RegisterClassInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !877  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  tail call void @free(ptr noundef %i.d) #29
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm9BitVectorD2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  tail call void @free(ptr noundef %i.h) #29
  br label %_ZN4llvm9BitVectorD2Ev.exit1

_ZN4llvm9BitVectorD2Ev.exit1:                     ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3287 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvm11SmallVectorItLj20EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit1
  tail call void @free(ptr noundef %i.l) #29
  br label %_ZN4llvm11SmallVectorItLj20EED2Ev.exit

_ZN4llvm11SmallVectorItLj20EED2Ev.exit:           ; preds = %_ZN4llvm9BitVectorD2Ev.exit1, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3287 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorItLj16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorItLj20EED2Ev.exit
  tail call void @free(ptr noundef %i.p) #29
  br label %_ZN4llvm11SmallVectorItLj16EED2Ev.exit

_ZN4llvm11SmallVectorItLj16EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorItLj20EED2Ev.exit, %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !3288   ; 4 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_N4llvm17RegisterClassInfo6RCInfoESt14default_deleteIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorItLj16EED2Ev.exit
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.u, 24                    ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNKSt14default_deleteIA_N4llvm17RegisterClassInfo6RCInfoEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4llvm17RegisterClassInfo6RCInfoD2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.x = phi ptr [ %i.y, %_ZN4llvm17RegisterClassInfo6RCInfoD2Ev.exit.i.i ], [ %i.w, %.preheader.preheader.i.i ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3289 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm17RegisterClassInfo6RCInfoD2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #32
  br label %_ZN4llvm17RegisterClassInfo6RCInfoD2Ev.exit.i.i

_ZN4llvm17RegisterClassInfo6RCInfoD2Ev.exit.i.i:  ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %.preheader.i.i
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1009
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1079
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1011
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !760
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1009
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !837
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !837
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !760, !noalias !3295 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1011, !noalias !3295 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !759, !noalias !3295 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !837    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !837
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !1024

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1079
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.550", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !759
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !760
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1011
  store i32 0, ptr %i.p, align 16, !tbaa !1009
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1079
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !760    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1011
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !759  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1011 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !760
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !759
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !837  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3300

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !837
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !314
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3301

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3302

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !759
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1009
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1009
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !759
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1901, !noalias !3303 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1907, !noalias !3303 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1908, !noalias !3303 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !314    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !314
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !655

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !314
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !1909

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !314
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit, label %bb.c, !prof !422

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3308
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1910
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3308
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1907
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1901
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 13 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 88                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !314
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1910
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !314
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !314
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.bd, align 8, !tbaa !1916
  %i.be = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !1917
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !1916
  %i.bg = add i64 %i.bf, -1
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh ; 3 uses
  %i.bj = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31 ; 6 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !869
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !834
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !1918
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 512 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !835
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store ptr %i.bi, ptr %i.bq, align 8, !tbaa !834
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.bj, ptr %i.br, align 8, !tbaa !1918
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !835
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !1919
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !1895
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1901, !noalias !3309 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1907, !noalias !3309 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1908, !noalias !3309 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !314    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !314
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !655

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !314
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !1909

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !314
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !422

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3308
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.604", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1908
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 88                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1901
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1907
  store i32 0, ptr %i.p, align 16, !tbaa !1910
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !314
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !314
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !314
  call void @_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1901
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1907
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1908 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1907 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1901
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1908
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.p, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.p, %.lr.ph ], [ %i.bl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.t ; 11 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !314  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i7, 31                      ; 3 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !3314

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 4 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.x ; 11 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i8 0, i64 80, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i64 8, ptr %i.aj, align 8, !tbaa !1916
  %i.ak = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 2 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !1917
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1916
  %i.am = add i64 %i.al, -1
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an ; 6 uses
  %i.ap = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31 ; 10 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !869
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !834
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !1918
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 512 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !835
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store ptr %i.ao, ptr %i.aw, align 8, !tbaa !834
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.ap, ptr %i.ax, align 8, !tbaa !1918
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !835
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1919
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !1895
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !1917
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i.thread, label %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i

_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i.thread: ; preds = %bb.d
  %i.ba = shl nuw i32 1, %i.ab
  %i.bb = load i32, ptr %i.af, align 4, !tbaa !314
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.af, align 4, !tbaa !314
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i64 80, i1 false), !tbaa.struct !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1951
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.ao, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !1952
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.ap, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.ap, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.at, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !869
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store ptr %i.ao, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.pr = load ptr, ptr %i.ai, align 8, !tbaa !1917
  %i.bd = shl nuw i32 1, %i.ab
  %i.be = load i32, ptr %i.af, align 4, !tbaa !314
  %i.bf = or i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.af, align 4, !tbaa !314
  %.not.i.i11.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i11.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !869
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef 512) #32
  %.pre.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !1917
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1916
  %i.bj = shl i64 %i.bi, 3
  tail call void @_ZdlPvm(ptr noundef %.pre.i.i.i, i64 noundef %i.bj) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i.thread, %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EEC2EOS4_.exit.i, %.lr.ph.i.i.i.i
  %i.bk = add i32 %.0.i20, -1
  %i.bl = and i32 %i.bk, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3315

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !3316

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1908
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bm = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1910
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !1910
  %i.bq = icmp eq i32 %i.bm, 0
  br i1 %i.bq, label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.br = load ptr, ptr %1, align 8, !tbaa !1901
  %i.bs = zext i32 %i.bm to i64                   ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 88
  %i.bu = add nuw nsw i64 %i.bs, 31
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741820
  %i.bx = add nuw nsw i64 %i.bw, %i.bt
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.br, i64 noundef %i.bx, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1908
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit

_ZN4llvm8DenseMapIiSt5dequeIPNS_5SUnitESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt5dequeIPNS_5SUnitESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !838, !noalias !3317 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !846, !noalias !3317 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !847, !noalias !3317 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !655

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !876
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !846
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !838
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !849
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !314
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !838, !noalias !3322 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !846, !noalias !3322 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !847, !noalias !3322 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !848

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !876
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.588", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !847
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !838
  store ptr %i.y, ptr %i.q, align 8, !tbaa !846
  store i32 0, ptr %i.p, align 16, !tbaa !849
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !876
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !838    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !846
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !847  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !846  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !838
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !847
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3327

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !656
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !314
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !314
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !314
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !314
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3328

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3329

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !847
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !849
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !849
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !847
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEiNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !3330, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3330, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIiE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !3331, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !3331, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !3332, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !3332, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl11ValuesClass5applyINS0_3optINS_20WindowSchedulingFlagELb0ENS0_6parserIS4_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::cl::parser<llvm::WindowSchedulingFlag>::OptionInfo", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !325  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm2cl6parserINS_20WindowSchedulingFlagEE16addLiteralOptionIiEEvNS_9StringRefERKT_S5_.exit, %bb.a
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEES4_IPSB_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !899
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3371
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !911
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3373
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !1067
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %i.bj, align 8, !tbaa !888
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !911, !noalias !3374 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3371, !noalias !3374 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !910, !noalias !3374 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3372

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !899
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.638", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !910
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !911
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3371
  store i32 0, ptr %i.p, align 16, !tbaa !3373
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !899
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !911
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3371
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !910  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3371 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !911
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !910
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !3379

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !656
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !314
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3380

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3381

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !910
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3373
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3373
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !911
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !910
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JEEES4_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !927, !noalias !3382 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2720, !noalias !3382 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !926, !noalias !3382 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !837    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !655

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !837
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !3387

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3388
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3389
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3388
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2720
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !927
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3389
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !837
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !837
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !1067
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %i.bj, align 8, !tbaa !888
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !927, !noalias !3390 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2720, !noalias !3390 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !926, !noalias !3390 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !837    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !837
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3387

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3388
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.557", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !926
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !927
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2720
  store i32 0, ptr %i.p, align 16, !tbaa !3389
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3388
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !927
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2720
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !926  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2720 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !927
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !926
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !837  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !3395

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !837
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !314
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3396

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3397

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !926
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3389
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3389
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !927
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !926
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !818  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !817  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !817  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !818
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !816
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !812
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #29
  store i32 0, ptr %i.r, align 4, !tbaa !817
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !817
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #29 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !817 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !812
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !816
  store i32 0, ptr %i.a, align 8, !tbaa !818
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.595", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1001
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 112                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !992
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1000
  store i32 0, ptr %i.p, align 16, !tbaa !1003
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !314
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !314
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !314
  call void @_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !992
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1001 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1000 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !992
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1001
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.cn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.a, i64 %i.t ; 12 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !837  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3398

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %.lcssa12.i ; 9 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !837
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !24
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !24
  store ptr null, ptr %i.au, align 8, !tbaa !1079
  store ptr null, ptr %i.av, align 8, !tbaa !877
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !314
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !314
  store i32 0, ptr %i.ay, align 8, !tbaa !314
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !314
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !314
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !314
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !314
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 3 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !325
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 44 ; 2 uses
  store i32 8, ptr %i.bh, align 4, !tbaa !326
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !325 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.bl = icmp eq ptr %i.as, %i.u
  br i1 %i.bl, label %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !21 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_5SUnitEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_5SUnitEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bm, ptr %i.be, align 8, !tbaa !21
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !325
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !326
  store i32 %i.bq, ptr %i.bh, align 4, !tbaa !326
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !21
  store i32 0, ptr %i.bp, align 4, !tbaa !326
  br label %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.br = zext i32 %i.bj to i64                   ; 2 uses
  %i.bs = icmp ugt i32 %i.bj, 8
  br i1 %i.bs, label %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull %i.bf, i64 noundef %i.br, i64 noundef 8) #29
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !325 ; 2 uses
  %.pre27 = zext i32 %.pre to i64
  %.not.i.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi39 = phi i64 [ %.pre27, %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i ], [ %i.br, %bb.e ]
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %.pre-phi39, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 8 %i.bt, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm5SUnitES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !325
  br label %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i.sink.split

_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5SUnitEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.bi, align 8, !tbaa !325
  br label %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i

_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i: ; preds = %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bv = shl nuw i32 1, %.lcssa.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !314
  %i.by = or i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !314
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.ca) #29
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN4llvm14SmallSetVectorIPNS_5SUnitELj8EEC2EOS3_.exit.i
  %i.cd = load i32, ptr %i.bb, align 4, !tbaa !759 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !760
  %i.cg = zext i32 %i.cd to i64                   ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741820
  %i.cl = add nuw nsw i64 %i.ck, %i.ch
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 8) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit.i.i, %bb.g
  %i.cm = add i32 %.0.i18, -1
  %i.cn = and i32 %i.cm, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3399

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3400

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !1001
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.co = phi i32 [ %.pre26, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1003
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !1003
  %i.cs = icmp eq i32 %i.co, 0
  br i1 %i.cs, label %_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ct = load ptr, ptr %1, align 8, !tbaa !992
  %i.cu = zext i32 %i.co to i64                   ; 2 uses
  %i.cv = mul nuw nsw i64 %i.cu, 112
  %i.cw = add nuw nsw i64 %i.cu, 31
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = and i64 %i.cx, 1073741820
  %i.cz = add nuw nsw i64 %i.cy, %i.cv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ct, i64 noundef %i.cz, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1001
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS2_Lj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_14SmallSetVectorIS6_Lj8EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_4SDepELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_14
begin_hunk_15_@_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE17_M_reallocate_mapEmb:bb.a
  store ptr %i.aq, ptr %0, align 8, !tbaa !1917
  store i64 %i.am, ptr %i.k, align 8, !tbaa !1916
  br label %_ZSt4copyIPPPN4llvm5SUnitES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPPN4llvm5SUnitES4_ET0_T_S6_S5_.exit:   ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPN4llvm5SUnitES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPN4llvm5SUnitES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !834
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !869  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1918
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !835
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !834
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !869 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !1918
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !835
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E21eraseFromFilledBucketIZNS8_21eraseFromFilledBucketEPS6_EUlRS6_E_EEvSA_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2326
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2326
  %i.d = load ptr, ptr %0, align 8, !tbaa !2318   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2324 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2325
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.an, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.am, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !314  ; 2 uses
  %i.aa = mul i32 %i.z, 37                        ; 2 uses
  %i.ab = sub i32 %.03337, %i.aa
  %i.ac = and i32 %i.ab, %i.i
  %i.ad = sub i32 %i.x, %i.aa
  %i.ae = and i32 %i.ad, %i.i
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ag = zext i32 %.03337 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag ; 2 uses
  store i32 %i.z, ptr %i.ah, align 4, !tbaa !314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !314
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !314
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.al = add i32 %i.x, 1
  %i.am = and i32 %i.al, %i.i                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !314
  %i.ar = and i32 %i.am, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.au = and i32 %.033.lcssa, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = xor i32 %i.av, -1
  %i.ax = lshr i32 %.033.lcssa, 5
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !314
  %i.bb = and i32 %i.ba, %i.aw
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !314
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.690", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2325
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2318
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2324
  store i32 0, ptr %i.p, align 16, !tbaa !2326
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3401
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #29
  br label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit

_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2318   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2324
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2325 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2324 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2318
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2325
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !314  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3402

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !314
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !314
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !314
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !314
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3403

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3404

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2325
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2326
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !2326
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit

_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !325
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !325
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1009
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1009
  %i.d = load ptr, ptr %0, align 8, !tbaa !760    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1011 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !759
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.x = phi i64 [ %i.ap, %bb.c ], [ %i.q, %bb.a ]
  %i.y = phi i32 [ %i.ao, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !837 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = sub i32 %.03337, %i.af
  %i.ah = and i32 %i.ag, %i.i
  %i.ai = sub i32 %i.y, %i.af
  %i.aj = and i32 %i.ai, %i.i
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.al = zext i32 %.03337 to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.al
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !837
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %i.an = add i32 %i.y, 1
  %i.ao = and i32 %i.an, %i.i                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !314
  %i.at = and i32 %i.ao, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.aw = and i32 %.033.lcssa, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = xor i32 %i.ax, -1
  %i.az = lshr i32 %.033.lcssa, 5
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !314
  %i.bd = and i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !314
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm17SwingSchedulerDAG8NodeInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !928    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !929
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3425
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !886
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !880
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3426
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !837
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !880, !noalias !3427 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !886, !noalias !3427 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !887, !noalias !3427 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3424

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3425
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.476", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !887
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !880
  store ptr %i.y, ptr %i.q, align 8, !tbaa !886
  store i32 0, ptr %i.p, align 16, !tbaa !3426
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3425
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !880    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !886
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !887  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !886  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !887
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3432

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !656
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !837
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !837
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !314
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3433

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3434

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !887
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3426
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3426
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !887
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !812, !noalias !3435 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !816, !noalias !3435 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !817, !noalias !3435 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !314
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !655

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !314
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !657, !llvm.loop !3440

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3441
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !818
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !422

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3441
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !816
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !812
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !314
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !818
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !656
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !656
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !812, !noalias !3442 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816, !noalias !3442 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !817, !noalias !3442 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !655

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !656
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !422

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !657, !llvm.loop !3440

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3441
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.559", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !817
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !812
  store ptr %i.y, ptr %i.q, align 8, !tbaa !816
  store i32 0, ptr %i.p, align 16, !tbaa !818
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !24
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3441
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !24
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !24
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !314
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !314
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !314
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !314
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !812    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !817  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !816  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !812
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !817
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3447

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !656
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !656
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !656
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !314
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3448

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3449

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !817
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !818
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !818
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !817
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !834  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !834
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !823
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1918
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !835
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !823
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1916
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1917
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4llvm5SUnitESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1949
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !869
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1895
  %i.aq = load ptr, ptr %1, align 8, !tbaa !837
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !837
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !834
  store ptr %i.am, ptr %i.o, align 8, !tbaa !1918
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !835
  store ptr %i.am, ptr %i.a, align 8, !tbaa !1895
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !402
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !855  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !837
  %i.i = load ptr, ptr %2, align 8, !tbaa !837
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !855 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !837    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !837  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
end_hunk_16
