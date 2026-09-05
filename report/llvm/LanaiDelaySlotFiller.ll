Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LanaiDelaySlotFiller?download=true
inline.NumInlined: 641
inline.NumDeleted: 397
begin_hunk_0_@_ZN4llvm24LanaiDelaySlotFillerPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.r = load i8, ptr %i.q, align 8, !tbaa !16, !range !17, !noalias !63, !noundef !18
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.f:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.t = load ptr, ptr %5, align 8, !tbaa !19, !noalias !63 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61, !noalias !63 ; 4 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.z, %.critedge.i.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.y = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !62, !noalias !63
  %.not15.i.i.i.i = icmp eq ptr %i.y, @_ZN4llvm11CFGAnalyses6SetKeyE
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64, !noalias !63
  %i.ac = icmp ult i32 %i.v, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nuw i32 %i.v, 1
  store i32 %i.ad, ptr %i.u, align 4, !tbaa !61, !noalias !63
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.x, align 8, !tbaa !62, !noalias !63
  br label %.loopexit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.ae = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull @_ZN4llvm11CFGAnalyses6SetKeyE) #15, !noalias !63 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !19, !alias.scope !65
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.af, align 8, !tbaa !64, !alias.scope !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ah, align 8, !tbaa !16, !alias.scope !65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !19, !alias.scope !65
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ak, align 8, !tbaa !64, !alias.scope !65
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.al, align 4, !tbaa !61, !alias.scope !65
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.am, align 8, !tbaa !16, !alias.scope !65
  store i32 1, ptr %i.ag, align 4, !tbaa !61, !alias.scope !65, !noalias !66
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !62, !alias.scope !65, !noalias !66
  br label %.critedge

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.g, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.an, ptr noundef nonnull align 8 dereferenceable(80) %5) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !16, !range !17, !noundef !18
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !19
  call void @free(ptr noundef %i.au) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.h, %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !16, !range !17, !noundef !18
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.ay = load ptr, ptr %5, align 8, !tbaa !19
  call void @free(ptr noundef %i.ay) #15
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110FillerImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.llvm::SmallSet", align 8    ; 18 uses
  %9 = alloca %"class.llvm::SmallSet", align 8    ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187, !nonnull !18, !align !188 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(519272) %i.h) #15
  store ptr %i.l, ptr %0, align 8, !tbaa !192
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(519272) %i.h) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.033.059 = load ptr, ptr %i.r, align 8, !tbaa !194 ; 2 uses
  %.not60 = icmp eq ptr %.sroa.033.059, %i.s
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 152 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.ak = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %i.al = shufflevector <2 x ptr> %i.ak, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %i.an = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.0.lcssa.i, %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit
  %.sroa.033.062 = phi ptr [ %.sroa.033.059, %.lr.ph ], [ %.sroa.033.0, %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit ] ; 6 uses
  %.061 = phi i1 [ false, %.lr.ph ], [ %.0.lcssa.i, %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 48 ; 5 uses
  store ptr %i.ao, ptr %i.t, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 56
  %.sroa.067.0106.i = load ptr, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %.not107.i = icmp eq ptr %.sroa.067.0106.i, %i.ao
  br i1 %.not107.i, label %_ZN12_GLOBAL__N_110FillerImpl22runOnMachineBasicBlockERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 40 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15MIBundleBuilderC2ERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES5_.exit.i, %.lr.ph.i
  %.sroa.067.0109.i = phi ptr [ %.sroa.067.0106.i, %.lr.ph.i ], [ %.sroa.067.0.i, %_ZN4llvm15MIBundleBuilderC2ERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES5_.exit.i ] ; 37 uses
  %.0108.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %_ZN4llvm15MIBundleBuilderC2ERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES5_.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !215
  %i.aw = and i64 %i.av, 131072
  %.not78.i = icmp eq i64 %i.aw, 0
  br i1 %.not78.i, label %_ZN4llvm15MIBundleBuilderC2ERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES5_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 52 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !216
  %i.az = icmp eq i32 %i.ay, 387
  br i1 %i.az, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %bb.f

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.d
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.067.0109.i, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %.0.copyload.i.i.i.i.i.i29.i = load i64, ptr %i.bb, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !199    ; 5 uses
  %12 = and i64 %.0.copyload.i.i.i.i.i.i29.i, -8
  %13 = inttoptr i64 %12 to ptr                   ; 7 uses
  %i.bc = icmp eq ptr %.sroa.067.0109.i, %13
  %i.bd = icmp eq ptr %11, %.sroa.067.0109.i
  %or.cond.i.i.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %13, ptr nonnull %.sroa.067.0109.i) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.067.0109.i, align 8
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %13, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.067.0109.i, ptr %i.bi, align 8, !tbaa !199
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %13, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %.sroa.067.0109.i, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %.sroa.067.0109.i, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %11, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %11, ptr %i.bo, align 8, !tbaa !199
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %13, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.bq = or disjoint i64 %i.bp, %i.bm
  store i64 %i.bq, ptr %13, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %13, ptr %i.br, align 8, !tbaa !199
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %11, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.bt = or disjoint i64 %i.bs, %i.be
  store i64 %i.bt, ptr %11, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18NopDelaySlotFiller, i64 120), align 8, !tbaa !32, !range !17, !noundef !18
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %i.u, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %i.v, align 8, !tbaa !33
  store i32 32, ptr %i.w, align 4, !tbaa !34
  store i32 0, ptr %i.x, align 8, !tbaa !217
  store ptr null, ptr %i.y, align 8, !tbaa !218
  store <2 x ptr> %i.al, ptr %i.z, align 8, !tbaa !39
  store i64 0, ptr %i.aa, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.ab, ptr %9, align 8, !tbaa !21
  store i32 0, ptr %i.ac, align 8, !tbaa !33
  store i32 32, ptr %i.ad, align 4, !tbaa !34
  store i32 0, ptr %i.ae, align 8, !tbaa !217
  store ptr null, ptr %i.af, align 8, !tbaa !218
  store <2 x ptr> %i.an, ptr %i.ag, align 8, !tbaa !39
  store i64 0, ptr %i.ah, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !219 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 40
  %i.bz = load i24, ptr %i.by, align 8            ; 2 uses
  %i.ca = zext i24 %i.bz to i64
  %.idx.i12 = shl nuw nsw i64 %i.ca, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i12
  %.not12.i13 = icmp eq i24 %i.bz, 0
  br i1 %.not12.i13, label %._crit_edge.i18, label %.lr.ph.i14

._crit_edge.i18:                                  ; preds = %bb.k, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.067.0109.i, i64 44 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !220 ; 3 uses
  %i.ce = and i32 %i.cd, 12                       ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = and i32 %i.cd, 4
  %i.ch = icmp ne i32 %i.cg, 0
  %or.cond.i.i.i19 = or i1 %i.cf, %i.ch
  br i1 %or.cond.i.i.i19, label %.split.i29, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i20

.split.i29:                                       ; preds = %._crit_edge.i18
  %i.ci = load ptr, ptr %i.as, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !215
  %i.cl = and i64 %i.ck, 128
  %.not10.i30 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i30, label %bb.l, label %bb.m

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i20: ; preds = %._crit_edge.i18
  %i.cm = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.067.0109.i, i64 noundef 128, i32 noundef 1) #15
  br i1 %i.cm, label %bb.m, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i21

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i21: ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i20
  %.pre.i22 = load i32, ptr %i.cc, align 4, !tbaa !220 ; 2 uses
  %.pre14.i23 = and i32 %.pre.i22, 12
  br label %bb.l

.lr.ph.i14:                                       ; preds = %bb.g, %bb.k
  %.01513.i15 = phi ptr [ %i.cs, %bb.k ], [ %i.bx, %bb.g ] ; 3 uses
  %i.cn = load i32, ptr %.01513.i15, align 8      ; 2 uses
  %i.co = and i32 %i.cn, 255
  %cond.i16 = icmp eq i32 %i.co, 0
  br i1 %cond.i16, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.i14
  %i.cp = getelementptr inbounds nuw i8, ptr %.01513.i15, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !41 ; 2 uses
  %i.cr = and i32 %i.cn, 16777216
  %.not9.i31 = icmp eq i32 %i.cr, 0
  br i1 %.not9.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !42
  call void @_ZN4llvm8SmallSetIjLj32ESt4lessIjEE10insertImplIjEESt4pairINS_16SmallSetIteratorIjLj32ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !42
  call void @_ZN4llvm8SmallSetIjLj32ESt4lessIjEE10insertImplIjEESt4pairINS_16SmallSetIteratorIjLj32ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i14
  %i.cs = getelementptr inbounds nuw i8, ptr %.01513.i15, i64 32 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cs, %i.cb
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i14

bb.l:                                             ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i21, %.split.i29
  %.pre-phi.i24 = phi i32 [ %.pre14.i23, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i21 ], [ %i.ce, %.split.i29 ]
  %i.ct = phi i32 [ %.pre.i22, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i21 ], [ %i.cd, %.split.i29 ]
  %i.cu = icmp eq i32 %.pre-phi.i24, 0
  %i.cv = and i32 %i.ct, 4
  %i.cw = icmp ne i32 %i.cv, 0
  %or.cond.i.i16.i25 = or i1 %i.cu, %i.cw
  br i1 %or.cond.i.i16.i25, label %.split8.i27, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i26

.split8.i27:                                      ; preds = %bb.l
  %i.cx = load ptr, ptr %i.as, align 8, !tbaa !212
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !215
  %i.da = and i64 %i.cz, 32
  %.not11.i28 = icmp eq i64 %i.da, 0
  br i1 %.not11.i28, label %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32, label %bb.m

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i26: ; preds = %bb.l
  %i.db = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.067.0109.i, i64 noundef 32, i32 noundef 1) #15
  br i1 %i.db, label %bb.m, label %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32

bb.m:                                             ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i26, %.split8.i27, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i20, %.split.i29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 5, ptr %i.c, align 4, !tbaa !42
  call void @_ZN4llvm8SmallSetIjLj32ESt4lessIjEE10insertImplIjEESt4pairINS_16SmallSetIteratorIjLj32ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32

_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32: ; preds = %.split8.i27, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i26, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.016.0.in.in62.i.i = load i64, ptr %.sroa.067.0109.i, align 8
  %.sroa.016.0.in63.i.i = and i64 %.sroa.016.0.in.in62.i.i, -8 ; 2 uses
  %.sroa.016.064.i.i = inttoptr i64 %.sroa.016.0.in63.i.i to ptr ; 2 uses
  %.not65.i.i = icmp eq ptr %i.ao, %.sroa.016.064.i.i
  br i1 %.not65.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32, %bb.ak
  %.sroa.016.069.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.ak ], [ %.sroa.016.064.i.i, %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32 ] ; 16 uses
  %.sroa.016.0.in68.i.i = phi i64 [ %.sroa.016.0.in.i.i, %bb.ak ], [ %.sroa.016.0.in63.i.i, %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32 ]
  %.067.i.i = phi i1 [ %.2.i.i, %bb.ak ], [ false, %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32 ] ; 6 uses
  %.02766.i.i = phi i8 [ %.229.i.i, %bb.ak ], [ 0, %_ZN12_GLOBAL__N_110FillerImpl14insertDefsUsesEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_8SmallSetIjLj32ESt4lessIjEEESC_.exit32 ] ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i.i, i64 52 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !216
  %.off.i.i.i = add i32 %i.dd, -14
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 5
  br i1 %switch.i.i.i, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.de = call noundef zeroext i1 @_ZNK4llvm12MachineInstr23hasUnmodeledSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.069.i.i) #15
  br i1 %i.de, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !216 ; 2 uses
  switch i32 %i.df, label %bb.p [
    i32 6, label %.thread.i.i
    i32 5, label %.thread.i.i
    i32 4, label %.thread.i.i
    i32 2, label %.thread.i.i
    i32 1, label %.thread.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.dh = icmp eq ptr %i.dg, %.sroa.016.069.i.i
  br i1 %i.dh, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i.i, i64 16 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !212
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !215 ; 2 uses
  %i.dm = and i64 %i.dl, 8
  %.not41.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not41.i.i, label %bb.r, label %.thread.i.i

bb.r:                                             ; preds = %bb.q
  switch i32 %i.df, label %bb.s [
    i32 10, label %.loopexit.i.i
    i32 7, label %.loopexit.i.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i.i, i64 44 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !220 ; 2 uses
  %i.dp = and i32 %i.do, 12
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = and i32 %i.do, 4
  %i.ds = icmp ne i32 %i.dr, 0
  %or.cond.i.i.i.i.i = or i1 %i.dq, %i.ds
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.s
  %i.dt = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.069.i.i, i64 noundef 524288, i32 noundef 1) #15
  br i1 %i.dt, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i.i.i, label %bb.t

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i.i.i: ; preds = %bb.s
  %i.du = and i64 %i.dl, 524288
  %.not118.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not118.i.i.i, label %bb.t, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i.i.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i.i.i: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i.i.i, %.split.i.i.i
end_hunk_0
