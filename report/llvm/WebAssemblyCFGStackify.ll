Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyCFGStackify?download=true
inline.NumInlined: 3297
inline.NumDeleted: 1230
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_122WebAssemblyCFGStackify20addNestedTryDelegateEPN4llvm12MachineInstrES3_PNS1_17MachineBasicBlockE:_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE6insertES3_.exit
  %.sroa.0.1.i.i.i9.i121 = phi ptr [ %i.u, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.thread ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i123 ], [ %i.am, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i125 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i9.i121, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !304
  %i.as = add i32 %i.ar, -3
  %spec.select.i130 = icmp ult i32 %i.as, 4
  br i1 %spec.select.i130, label %.critedge, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i120
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141: ; preds = %.lr.ph.i132.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !300
  %i.av = and i32 %i.au, 4
  %.not45.i.i.i.i142 = icmp eq i32 %i.av, 0
  br i1 %.not45.i.i.i.i142, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143
  %.sroa.0.06.i.i.i.i144 = phi ptr [ %i.ax, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143 ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i145 = load i64, ptr %.sroa.0.06.i.i.i.i144, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i145, -8
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !300
  %i.ba = and i32 %i.az, 4
  %.not4.i.i.i.i146 = icmp eq i32 %i.ba, 0
  br i1 %.not4.i.i.i.i146, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141, %.lr.ph.i132.preheader
  %.sroa.0.1.i.i.i9.i139 = phi ptr [ %i.u, %.lr.ph.i132.preheader ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i141 ], [ %i.ax, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i143 ]
  %i.bb = call noundef zeroext i1 @_ZN4llvm11WebAssembly7isChildERKNS_12MachineInstrERKNS_23WebAssemblyFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i9.i139, ptr noundef nonnull align 8 dereferenceable(200) %i.l) #15
  br i1 %i.bb, label %.lr.ph.i149.preheader, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit147._crit_edge

.lr.ph.i149.preheader:                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i152 = load i64, ptr %.sroa.0252.0281, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i152, -8
  %i.bd = inttoptr i64 %i.bc to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i153 = load i64, ptr %i.bd, align 8
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i153, 4
  %.not.i5.i.i.i154 = icmp eq i64 %i.be, 0
  br i1 %.not.i5.i.i.i154, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158: ; preds = %.lr.ph.i149.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !300
  %i.bh = and i32 %i.bg, 4
  %.not45.i.i.i.i159 = icmp eq i32 %i.bh, 0
  br i1 %.not45.i.i.i.i159, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160
  %.sroa.0.06.i.i.i.i161 = phi ptr [ %i.bj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160 ], [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i162 = load i64, ptr %.sroa.0.06.i.i.i.i161, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i162, -8
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !300
  %i.bm = and i32 %i.bl, 4
  %.not4.i.i.i.i163 = icmp eq i32 %i.bm, 0
  br i1 %.not4.i.i.i.i163, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158, %.lr.ph.i149.preheader
  %.sroa.0.1.i.i.i9.i156 = phi ptr [ %i.bd, %.lr.ph.i149.preheader ], [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i158 ], [ %i.bj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i160 ] ; 3 uses
  %i.bn = load i8, ptr %i.q, align 8, !tbaa !321, !range !232, !noalias !876, !noundef !176
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.a, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i165

bb.a:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155
  %i.bp = load ptr, ptr %6, align 8, !tbaa !318, !noalias !876 ; 2 uses
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !320, !noalias !876 ; 4 uses
  %i.br = zext i32 %i.bq to i64
  %.idx.i.i180 = shl nuw nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i180 ; 2 uses
  %.not22.i.i181 = icmp eq i32 %i.bq, 0
  br i1 %.not22.i.i181, label %._crit_edge.i.i187, label %.lr.ph.i.i182

.lr.ph.i.i182:                                    ; preds = %bb.a, %.critedge.i.i185
  %.023.i.i183 = phi ptr [ %i.bu, %.critedge.i.i185 ], [ %i.bp, %bb.a ] ; 2 uses
  %i.bt = load ptr, ptr %.023.i.i183, align 8, !tbaa !17, !noalias !876
  %.not15.i.i184 = icmp eq ptr %i.bt, %.sroa.0.1.i.i.i9.i156
  br i1 %.not15.i.i184, label %.critedge, label %.critedge.i.i185

.critedge.i.i185:                                 ; preds = %.lr.ph.i.i182
  %i.bu = getelementptr inbounds nuw i8, ptr %.023.i.i183, i64 8 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.bu, %i.bs
  br i1 %.not.i.i186, label %._crit_edge.i.i187, label %.lr.ph.i.i182

._crit_edge.i.i187:                               ; preds = %.critedge.i.i185, %bb.a
  %i.bv = load i32, ptr %i.o, align 8, !tbaa !319, !noalias !876
  %i.bw = icmp ult i32 %i.bq, %i.bv
  br i1 %i.bw, label %bb.b, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i165

bb.b:                                             ; preds = %._crit_edge.i.i187
  %i.bx = add nuw i32 %i.bq, 1
  store i32 %i.bx, ptr %i.p, align 4, !tbaa !320, !noalias !876
  store ptr %.sroa.0.1.i.i.i9.i156, ptr %i.bs, align 8, !tbaa !17, !noalias !876
  br label %.critedge

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i165: ; preds = %._crit_edge.i.i187, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i155
  %i.by = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull %.sroa.0.1.i.i.i9.i156) #15, !noalias !876 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i182, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i165, %bb.b, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.thread, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i120
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0252.0281, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.ca, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %.critedge
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !300
  %i.ce = and i32 %i.cd, 4
  %.not45.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.cg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.ca, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !300
  %i.cj = and i32 %i.ci, 4
  %.not4.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %.critedge, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.ca, %.critedge ], [ %i.ca, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.cg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ] ; 2 uses
  %.not266 = icmp eq ptr %.sroa.0.1.i.i.i, %i.s
  br i1 %.not266, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit147._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !869

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit147._crit_edge: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i138, %_ZN4llvm15SmallPtrSetImplIPKNS_12MachineInstrEE6insertES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ck, ptr %7, align 8, !tbaa !318
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 4, ptr %i.cl, align 8, !tbaa !319
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !320
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i8 1, ptr %i.cn, align 8, !tbaa !321
  %i.co = call fastcc ptr @_ZL18getLatestInsertPosIN4llvm11SmallPtrSetIPKNS0_12MachineInstrELj4EEEENS0_26MachineInstrBundleIteratorIS2_Lb0EEEPNS0_17MachineBasicBlockERKT_SC_(ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 4 uses
  %i.cp = load i8, ptr %i.cn, align 8, !tbaa !321, !range !232, !noundef !176
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit147._crit_edge
  %i.cr = load ptr, ptr %7, align 8, !tbaa !318
  call void @free(ptr noundef %i.cr) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.c, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit147._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.056.0.copyload = load ptr, ptr %i.cs, align 8, !tbaa !324
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 456 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !315
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -60320
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !282 ; 2 uses
  %i.cx = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr %.sroa.056.0.copyload, i1 noundef zeroext false) #15 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef %i.cx) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.co, ptr %i.db, align 8, !tbaa !299
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cx, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.dd = or disjoint i64 %i.dc, %i.cz
  store i64 %i.dd, ptr %i.cx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cx, ptr %i.de, align 8, !tbaa !299
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.co, align 8
  %i.df = ptrtoint ptr %i.cx to i64
  %i.dg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.dh = or disjoint i64 %i.dg, %i.df
  store i64 %i.dh, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 1, ptr %5, align 8, !alias.scope !877
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !323, !alias.scope !877
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 64, ptr %i.dj, align 8, !tbaa !306, !alias.scope !877
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(1065) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.dk = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.j, ptr noundef null, i64 undef, i8 0) #15 ; 21 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !316
  %.not = icmp eq ptr %3, %i.dm
  br i1 %.not, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.dk, ptr noundef %3, i32 -1) #15
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.d, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !299 ; 15 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 7 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !234 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef %i.dk) #15
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !311 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !234
  store ptr %i.du, ptr %i.dk, align 8, !tbaa !311
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dk, ptr %i.dw, align 8, !tbaa !234
  store ptr %i.dk, ptr %i.ds, align 8, !tbaa !311
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.h, ptr noundef nonnull %i.dk, i32 -1) #15
  br label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.e:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !280, !range !232, !noundef !176
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.lr.ph284, label %.critedge103

.lr.ph284:                                        ; preds = %bb.e, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0232.0283 = phi ptr [ %i.em, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.do, %bb.e ] ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0232.0283, i64 52
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !304
  %.off.i196 = add i32 %i.eb, -727
  %switch.i197 = icmp ult i32 %.off.i196, 12
  br i1 %switch.i197, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph284
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0232.0283) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i199 = load i64, ptr %.sroa.0232.0283, align 8
  %i.ec = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i199, 4
  %.not.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201: ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0232.0283, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !300
  %i.ef = and i32 %i.ee, 8
  %.not34.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202
  %.sroa.0.05.i.i.i = phi ptr [ %i.eh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202 ], [ %.sroa.0232.0283, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !299 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !300
  %i.ek = and i32 %i.ej, 8
  %.not3.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202, %bb.f, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201
  %.sroa.0.1.i.i.i200 = phi ptr [ %.sroa.0232.0283, %bb.f ], [ %.sroa.0232.0283, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i201 ], [ %i.eh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i202 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i200, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !299 ; 2 uses
  %.not267 = icmp eq ptr %i.em, %i.dp
  br i1 %.not267, label %.critedge103, label %.lr.ph284, !llvm.loop !872

.critedge103:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.e
  %i.en = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.j, ptr noundef null, i64 undef, i8 0) #15 ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !234 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef %i.en) #15
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !311 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !234
  store ptr %i.er, ptr %i.en, align 8, !tbaa !311
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.en, ptr %i.et, align 8, !tbaa !234
  store ptr %i.en, ptr %i.ep, align 8, !tbaa !311
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !234 ; 3 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef %i.dk) #15
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !311 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !234
  store ptr %i.ev, ptr %i.dk, align 8, !tbaa !311
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.dk, ptr %i.ex, align 8, !tbaa !234
  store ptr %i.dk, ptr %i.eu, align 8, !tbaa !311
  %i.ey = icmp eq ptr %i.en, %i.h
  br i1 %i.ey, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.g

bb.g:                                             ; preds = %.critedge103
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 48 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr %i.do, ptr nonnull %i.dp) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i211 = load i64, ptr %i.dp, align 8
  %i.fc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i211, -8 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.do, align 8
  %i.fe = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.dp, ptr %i.fg, align 8, !tbaa !299
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.do, align 8
  %i.fh = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.dp, align 8
  %i.fi = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.fj = or disjoint i64 %i.fi, %i.fh
  store i64 %i.fj, ptr %i.dp, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.ez, align 8
  %i.fk = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.ez, ptr %i.fm, align 8, !tbaa !299
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.do, align 8
  %i.fn = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.fo = or disjoint i64 %i.fn, %i.fk
  store i64 %i.fo, ptr %i.do, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.do, ptr %i.fp, align 8, !tbaa !299
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.ez, align 8
  %i.fq = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.fr = or disjoint i64 %i.fq, %i.fc
  store i64 %i.fr, ptr %i.ez, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %.critedge103, %bb.g
  call void @_ZN4llvm17MachineBasicBlock18transferSuccessorsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.en, ptr noundef nonnull %i.h) #15
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit220

bb.h:                                             ; preds = %.lr.ph284
  %i.fs = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.j, ptr noundef null, i64 undef, i8 0) #15 ; 9 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.j, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef %i.fs) #15
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !311 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.h, ptr %i.fv, align 8, !tbaa !234
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !311
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fs, ptr %i.fw, align 8, !tbaa !234
  store ptr %i.fs, ptr %i.h, align 8, !tbaa !311
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef %i.dk) #15
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !311 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.h, ptr %i.fy, align 8, !tbaa !234
  store ptr %i.fx, ptr %i.dk, align 8, !tbaa !311
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.dk, ptr %i.fz, align 8, !tbaa !234
  store ptr %i.dk, ptr %i.h, align 8, !tbaa !311
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !299 ; 7 uses
  %i.gd = icmp eq ptr %i.gc, %i.do
  %i.ge = icmp eq ptr %i.ga, %i.do
  %or.cond.i.i212 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond.i.i212, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit220, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr %i.gc, ptr %i.do) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i213 = load i64, ptr %i.do, align 8
  %i.gh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i213, -8 ; 2 uses
  %i.gi = inttoptr i64 %i.gh to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i214 = load i64, ptr %i.gc, align 8
  %i.gj = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i214, -8
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.do, ptr %i.gl, align 8, !tbaa !299
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i215 = load i64, ptr %i.gc, align 8
  %i.gm = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i215, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i216 = load i64, ptr %i.do, align 8
  %i.gn = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i216, 7
  %i.go = or disjoint i64 %i.gn, %i.gm
  store i64 %i.go, ptr %i.do, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i217 = load i64, ptr %i.ga, align 8
  %i.gp = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i217, -8 ; 2 uses
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.ga, ptr %i.gr, align 8, !tbaa !299
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i218 = load i64, ptr %i.gc, align 8
  %i.gs = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i218, 7
  %i.gt = or disjoint i64 %i.gs, %i.gp
  store i64 %i.gt, ptr %i.gc, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gc, ptr %i.gu, align 8, !tbaa !299
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i219 = load i64, ptr %i.ga, align 8
  %i.gv = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i219, 7
  %i.gw = or disjoint i64 %i.gv, %i.gh
  store i64 %i.gw, ptr %i.ga, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit220

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit220: ; preds = %bb.i, %bb.h, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit
  %.0100 = phi ptr [ %i.en, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit ], [ %i.h, %bb.h ], [ %i.h, %bb.i ] ; 2 uses
  %.099 = phi ptr [ %i.h, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit ], [ %i.fs, %bb.h ], [ %i.fs, %bb.i ] ; 3 uses
  call fastcc void @_ZL28unstackifyVRegsUsedInSplitBBRN4llvm17MachineBasicBlockES1_(ptr noundef nonnull align 8 dereferenceable(360) %.099, ptr noundef nonnull align 8 dereferenceable(360) %.0100)
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %.099, ptr noundef nonnull %i.dk, i32 -1) #15
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %.099, ptr noundef nonnull %.0100, i32 -1) #15
  br label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
end_hunk_0
