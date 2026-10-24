Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFixupHwLoops?download=true
inline.NumInlined: 427
inline.NumDeleted: 290
begin_hunk_0_@_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #6

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #6

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_119HexagonFixupHwLoops16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119HexagonFixupHwLoops20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.55", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !192, !nonnull !15, !align !32
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.c) #17
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193, !nonnull !15, !align !32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(344) %i.f) #17, !inline_history !66 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %.sroa.020.041.i = load ptr, ptr %i.k, align 8, !tbaa !194 ; 3 uses
  %.not42.i = icmp eq ptr %.sroa.020.041.i, %i.l
  br i1 %.not42.i, label %.preheader.i, label %.lr.ph46.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.i
  %.sroa.012.055.pre.i = load ptr, ptr %i.k, align 8, !tbaa !194
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.b
  %.sroa.012.055.i = phi ptr [ %.sroa.012.055.pre.i, %.preheader.loopexit.i ], [ %.sroa.020.041.i, %bb.b ] ; 2 uses
  %.not2356.i = icmp eq ptr %.sroa.012.055.i, %i.l
  br i1 %.not2356.i, label %._crit_edge60.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.f

.lr.ph46.i:                                       ; preds = %bb.b, %._crit_edge.i
  %.sroa.020.044.i = phi ptr [ %.sroa.020.0.i, %._crit_edge.i ], [ %.sroa.020.041.i, %bb.b ] ; 5 uses
  %.043.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.020.044.i, i64 208
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.p, align 8, !tbaa !195 ; 2 uses
  %.not26.i = icmp eq i8 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not26.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph46.i
  %i.q = zext i32 %.043.i to i64
  %i.r = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %i.s = shl nuw i64 1, %i.r                      ; 2 uses
  %i.t = add nuw nsw i64 %i.q, 4294967295
  %i.u = add nuw i64 %i.t, %i.s
  %i.v = sub i64 0, %i.s
  %i.w = and i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph46.i
  %.1.i = phi i32 [ %i.x, %bb.c ], [ %.043.i, %.lr.ph46.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %.sroa.020.044.i, ptr %i.a, align 8, !tbaa !34
  %i.y = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i32 %.1.i, ptr %i.z, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.020.044.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.020.044.i, i64 48 ; 2 uses
  %.sroa.016.037.i = load ptr, ptr %i.aa, align 8, !tbaa !200 ; 2 uses
  %.not2738.i = icmp eq ptr %.sroa.016.037.i, %i.ab
  br i1 %.not2738.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.d
  %.2.lcssa.i = phi i32 [ %.1.i, %bb.d ], [ %i.ae, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.044.i, i64 8
  %.sroa.020.0.i = load ptr, ptr %i.ac, align 8, !tbaa !194 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.020.0.i, %i.l
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph46.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.016.040.i = phi ptr [ %.sroa.016.0.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.016.037.i, %bb.d ] ; 6 uses
  %.239.i = phi i32 [ %i.ae, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %.1.i, %bb.d ]
  %i.ad = call noundef i32 @_ZNK4llvm16HexagonInstrInfo7getSizeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.040.i) #17
  %i.ae = add i32 %i.ad, %.239.i                  ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.016.040.i, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.040.i, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !212
  %i.ai = and i32 %i.ah, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.016.040.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !212
  %i.an = and i32 %i.am, 8
  %.not3.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !67

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.lr.ph.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.016.040.i, %.lr.ph.i ], [ %.sroa.016.040.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.016.0.i = load ptr, ptr %i.ao, align 8, !tbaa !200 ; 2 uses
  %.not27.i = icmp eq ptr %.sroa.016.0.i, %i.ab
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge60.i:                                  ; preds = %._crit_edge53.i, %.preheader.i
  %.032.lcssa.i = phi i1 [ false, %.preheader.i ], [ %.133.lcssa.i, %._crit_edge53.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15fixupLoopInstrsERN4llvm15MachineFunctionE.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge60.i
  %i.as = load ptr, ptr %2, align 8, !tbaa !38
  %i.at = zext i32 %i.aq to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #17
  br label %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15fixupLoopInstrsERN4llvm15MachineFunctionE.exit

bb.f:                                             ; preds = %._crit_edge53.i, %.lr.ph59.i
  %.sroa.012.058.i = phi ptr [ %.sroa.012.055.i, %.lr.ph59.i ], [ %.sroa.012.0.i, %._crit_edge53.i ] ; 5 uses
  %.03257.i = phi i1 [ false, %.lr.ph59.i ], [ %.133.lcssa.i, %._crit_edge53.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr %.sroa.012.058.i, ptr %i.b, align 8, !tbaa !34
  %i.az = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i39.i = extractvalue { ptr, i8 } %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i39.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.058.i, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !200 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.058.i, i64 48 ; 2 uses
  %.not2447.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not2447.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.058.i, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %.lr.ph52.i
  %.350.i = phi i32 [ %i.bb, %.lr.ph52.i ], [ %.4.i, %bb.q ] ; 3 uses
  %.13349.i = phi i1 [ %.03257.i, %.lr.ph52.i ], [ %.436.i, %bb.q ] ; 2 uses
  %.sroa.03.048.i = phi ptr [ %i.bd, %.lr.ph52.i ], [ %.sroa.03.3.i, %bb.q ] ; 33 uses
  %i.bg = call noundef i32 @_ZNK4llvm16HexagonInstrInfo7getSizeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.048.i) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !213
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !216
  %i.bl = and i64 %i.bk, 16
  %.not25.i = icmp eq i64 %i.bl, 0
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i.i.i.i.i.i.i41.i = load i64, ptr %.sroa.03.048.i, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i41.i, 4
  %.not.i.i.i42.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i42.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 44
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !212
  %i.bp = and i32 %i.bo, 8
  %.not34.i.i.i44.i = icmp eq i32 %i.bp, 0
  br i1 %.not34.i.i.i44.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i45.i = phi ptr [ %i.br, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i45.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !200 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !212
  %i.bu = and i32 %i.bt, 8
  %.not3.i.i.i46.i = icmp eq i32 %i.bu, 0
  br i1 %.not3.i.i.i46.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !68

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.h
  %.sroa.0.1.i.i.i43.i = phi ptr [ %.sroa.03.048.i, %bb.h ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.br, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i43.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !200
  br label %bb.q, !llvm.loop !69

bb.i:                                             ; preds = %bb.g
  %i.bx = getelementptr i8, ptr %.sroa.03.048.i, i64 52 ; 2 uses
  %.val.i = load i32, ptr %i.bx, align 4, !tbaa !217
  %i.by = add i32 %.val.i, -1390
  %switch.and.i.i = and i32 %i.by, -7
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 32 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !218
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !195 ; 5 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !38, !noalias !219 ; 3 uses
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !39, !noalias !219 ; 3 uses
  %i.cf = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !219 ; 4 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = add i32 %i.cf, -1                       ; 2 uses
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = mul i64 %i.ci, -4658895280553007687     ; 2 uses
  %i.ck = lshr i64 %i.cj, 31
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.ch, %i.cm                    ; 3 uses
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.co ; 2 uses
  %i.cq = lshr i64 %i.co, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !35
  %i.ct = and i32 %i.cn, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !40

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %i.cw = phi ptr [ %i.dc, %bb.l ], [ %i.cp, %bb.k ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.da, %bb.l ], [ %i.cn, %bb.k ]
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !34
  %i.cy = icmp eq ptr %i.cc, %i.cx
  br i1 %i.cy, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cz = add nuw i32 %.024.i.i.i, 1
  %i.da = and i32 %i.cz, %i.ch                    ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.db ; 2 uses
  %i.dd = lshr i64 %i.db, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35
  %i.dg = and i32 %i.da, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !42, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.l, %bb.k, %bb.j
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.cp, %bb.k ], [ null, %bb.j ], [ %i.dc, %bb.l ]
  %i.dj = load i32, ptr %i.o, align 8, !tbaa !43
  %i.dk = shl i32 %i.dj, 2
  %i.dl = add i32 %i.dk, 4
  %i.dm = mul i32 %i.cf, 3
  %.not.i.i.i = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i, label %bb.m, !prof !41

bb.m:                                             ; preds = %.loopexit.i.i
  %i.dn = shl i32 %i.cf, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.dn)
  %i.do = load ptr, ptr %2, align 8, !tbaa !38, !noalias !220 ; 5 uses
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !39, !noalias !220 ; 5 uses
  %i.dq = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !220 ; 2 uses
  %i.dr = icmp ne i32 %i.dq, 0
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add i32 %i.dq, -1                       ; 2 uses
  %i.dt = ptrtoint ptr %i.cc to i64
  %i.du = mul i64 %i.dt, -4658895280553007687     ; 2 uses
  %i.dv = lshr i64 %i.du, 31
  %i.dw = xor i64 %i.dv, %i.du
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.ds, %i.dx                    ; 3 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dz ; 2 uses
  %i.eb = lshr i64 %i.dz, 5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !35
  %i.ee = and i32 %i.dy, 31
  %i.ef = lshr i32 %i.ed, %i.ee
  %i.eg = trunc i32 %i.ef to i1
  br i1 %i.eg, label %.lr.ph.i70.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i, !prof !40

.lr.ph.i70.i:                                     ; preds = %bb.m, %bb.n
  %i.eh = phi ptr [ %i.en, %bb.n ], [ %i.ea, %bb.m ] ; 2 uses
  %.024.i.i = phi i32 [ %i.el, %bb.n ], [ %i.dy, %bb.m ]
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !34
  %i.ej = icmp eq ptr %i.cc, %i.ei
  br i1 %i.ej, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %.lr.ph.i70.i
  %i.ek = add nuw i32 %.024.i.i, 1
  %i.el = and i32 %i.ek, %i.ds                    ; 3 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.em ; 2 uses
  %i.eo = lshr i64 %i.em, 5
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !35
  %i.er = and i32 %i.el, 31
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i1
  br i1 %i.et, label %.lr.ph.i70.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i, !prof !42, !llvm.loop !0

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i: ; preds = %bb.n, %.lr.ph.i70.i, %bb.m, %.loopexit.i.i
  %i.eu = phi ptr [ %i.cd, %.loopexit.i.i ], [ %i.do, %bb.m ], [ %i.do, %.lr.ph.i70.i ], [ %i.do, %bb.n ]
  %i.ev = phi ptr [ %i.ce, %.loopexit.i.i ], [ %i.dp, %bb.m ], [ %i.dp, %.lr.ph.i70.i ], [ %i.dp, %bb.n ]
  %i.ew = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.ea, %bb.m ], [ %i.en, %bb.n ], [ %i.eh, %.lr.ph.i70.i ] ; 3 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 4                 ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = and i32 %i.fb, 31
  %i.fd = shl nuw i32 1, %i.fc
  %i.fe = lshr i64 %i.fa, 5
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !35
  %i.fh = or i32 %i.fd, %i.fg
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !35
  %i.fi = load i32, ptr %i.o, align 8, !tbaa !43
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.o, align 8, !tbaa !43
  store ptr %i.cc, ptr %i.ew, align 8, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 0, ptr %i.fk, align 8, !tbaa !35
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !35
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i
  %i.fl = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i ], [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit.i ]
  %i.fm = sub nsw i32 %.350.i, %i.fl
  %3 = call noundef i32 @llvm.abs.i32(i32 %i.fm, i1 true)
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 120), align 8, !tbaa !49
  %i.fo = icmp ugt i32 %3, %i.fn
  br i1 %i.fo, label %switch.lookup, label %bb.o

switch.lookup:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i
  %.val37.i = load ptr, ptr %i.e, align 8, !tbaa !193 ; 2 uses
  %i.fp = load ptr, ptr %.val37.i, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(344) %.val37.i) #17, !inline_history !78
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !221 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 72
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.fv, align 8, !tbaa !222
  %i.fw = load i32, ptr %i.bx, align 4, !tbaa !217
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_119HexagonFixupHwLoops20runOnMachineFunctionERN4llvm15MachineFunctionE, i64 %i.fx
  %switch.gep = getelementptr i8, ptr %i.fy, i64 -11120
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !225
  %i.gb = getelementptr inbounds [32 x i8], ptr %i.ga, i64 %switch.load
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !269 ; 2 uses
  %i.ge = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, ptr %.sroa.06.0.copyload.i.i, i1 noundef zeroext false) #17 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef %i.ge) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.048.i, align 8
  %i.gg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %.sroa.03.048.i, ptr %i.gi, align 8, !tbaa !200
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.ge, align 8
  %i.gj = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  %i.gk = or disjoint i64 %i.gj, %i.gg
  store i64 %i.gk, ptr %i.ge, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.ge, ptr %i.gl, align 8, !tbaa !200
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.048.i, align 8
  %i.gm = ptrtoint ptr %i.ge to i64
  %i.gn = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 7
  %i.go = or disjoint i64 %i.gn, %i.gm            ; 2 uses
  store i64 %i.go, ptr %.sroa.03.048.i, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 40 ; 2 uses
  %i.gq = load i24, ptr %i.gp, align 8
  %.not.i.i = icmp eq i24 %i.gq, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %switch.lookup, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %switch.lookup ] ; 2 uses
  %i.gr = load ptr, ptr %i.bz, align 8, !tbaa !218
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %indvars.iv.i.i
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(1065) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.gs) #17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gt = load i24, ptr %i.gp, align 8
  %i.gu = zext i24 %i.gt to i64
  %i.gv = icmp samesign ult i64 %indvars.iv.next.i.i, %i.gu
  br i1 %i.gv, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.loopexit.i, !llvm.loop !79

_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i48.pre.i = load i64, ptr %.sroa.03.048.i, align 8
  br label %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i

_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i: ; preds = %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.loopexit.i, %switch.lookup
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i48.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i.i.i48.pre.i, %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.loopexit.i ], [ %i.go, %switch.lookup ]
  %i.gw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i48.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 44
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !212
  %i.gz = and i32 %i.gy, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.hb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !200 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 44
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !212
  %i.he = and i32 %i.hd, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !68

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %.sroa.03.048.i, %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15useExtLoopInstrERN4llvm15MachineFunctionERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.hb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !200 ; 4 uses
  %.not4.i.i.i.i = icmp eq ptr %.sroa.03.048.i, %i.hg
  br i1 %.not4.i.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i ], [ %.sroa.03.048.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ] ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !200 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull %.sroa.03.05.i.i.i.i) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8
  %i.hj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load ptr, ptr %i.hh, align 8, !tbaa !200 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hl, align 8
  %i.hm = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i, 7
  %i.hn = or disjoint i64 %i.hm, %i.hj
  store i64 %i.hn, ptr %i.hl, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !200
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8
  %i.hp = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i, 7
  store i64 %i.hp, ptr %.sroa.03.05.i.i.i.i, align 8
  store ptr null, ptr %i.hh, align 8, !tbaa !200
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull %.sroa.03.05.i.i.i.i) #17
  %.not.i.i.i49.i = icmp eq ptr %i.hi, %i.hg
  br i1 %.not.i.i.i49.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !80

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i.i51.i = load i64, ptr %.sroa.03.048.i, align 8
  %i.hq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i51.i, 4
  %.not.i.i.i52.i = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i52.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i: ; preds = %bb.o
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 44
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !212
  %i.ht = and i32 %i.hs, 8
  %.not34.i.i.i55.i = icmp eq i32 %i.ht, 0
  br i1 %.not34.i.i.i55.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i
  %.sroa.0.05.i.i.i57.i = phi ptr [ %i.hv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i57.i, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !200 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 44
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !212
  %i.hy = and i32 %i.hx, 8
  %.not3.i.i.i58.i = icmp eq i32 %i.hy, 0
  br i1 %.not3.i.i.i58.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i, !llvm.loop !68

bb.p:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i.i.i.i.i.i61.i = load i64, ptr %.sroa.03.048.i, align 8
  %i.hz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i61.i, 4
  %.not.i.i.i62.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i62.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i: ; preds = %bb.p
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.03.048.i, i64 44
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !212
  %i.ic = and i32 %i.ib, 8
  %.not34.i.i.i65.i = icmp eq i32 %i.ic, 0
  br i1 %.not34.i.i.i65.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i
  %.sroa.0.05.i.i.i67.i = phi ptr [ %i.ie, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i ]
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i67.i, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !200 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 44
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !212
  %i.ih = and i32 %i.ig, 8
  %.not3.i.i.i68.i = icmp eq i32 %i.ih, 0
  br i1 %.not3.i.i.i68.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i, !llvm.loop !68

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i, %bb.p, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i, %bb.o
  %.sroa.0.1.i.i.i53.sink.i = phi ptr [ %i.hv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i56.i ], [ %.sroa.03.048.i, %bb.o ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i54.i ], [ %.sroa.03.048.i, %bb.p ], [ %.sroa.03.048.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i64.i ], [ %i.ie, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i66.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i53.sink.i, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !200
  br label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i
  %.sroa.03.2.i = phi ptr [ %i.hg, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %i.ij, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i ], [ %i.hg, %.lr.ph.i.i.i.i ]
  %.335.i = phi i1 [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %.13349.i, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.sink.split.i ], [ true, %.lr.ph.i.i.i.i ]
  %i.ik = add i32 %i.bg, %.350.i
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.03.3.i = phi ptr [ %i.bw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.03.2.i, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i ] ; 2 uses
  %.436.i = phi i1 [ %.13349.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.335.i, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i ] ; 2 uses
  %.4.i = phi i32 [ %.350.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.ik, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.i ]
  %.not24.i = icmp eq ptr %.sroa.03.3.i, %i.be
  br i1 %.not24.i, label %._crit_edge53.i, label %bb.g

._crit_edge53.i:                                  ; preds = %bb.q, %bb.f
  %.133.lcssa.i = phi i1 [ %.03257.i, %bb.f ], [ %.436.i, %bb.q ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.012.058.i, i64 8
  %.sroa.012.0.i = load ptr, ptr %i.il, align 8, !tbaa !194 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.012.0.i, %i.l
  br i1 %.not23.i, label %._crit_edge60.i, label %bb.f

_ZN12_GLOBAL__N_119HexagonFixupHwLoops15fixupLoopInstrsERN4llvm15MachineFunctionE.exit: ; preds = %._crit_edge60.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15fixupLoopInstrsERN4llvm15MachineFunctionE.exit
  %.0 = phi i1 [ %.032.lcssa.i, %_ZN12_GLOBAL__N_119HexagonFixupHwLoops15fixupLoopInstrsERN4llvm15MachineFunctionE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_119HexagonFixupHwLoops21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i64 8
}
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !280

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !35
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !35
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !35
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !35
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !281

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !282

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !37
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !43
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !51, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !51, !range !14, !noundef !15
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

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #6

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

declare void @__once_proxy() #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !285, !nonnull !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286, !nonnull !15, !align !32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !289
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #17, !inline_history !283
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_HexagonFixupHwLoops.cpp() #14 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12MaxLoopRange, i32 noundef 0, i32 noundef 0) #17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 120), align 8, !tbaa !49
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 128), align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL12MaxLoopRange, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 144), align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12MaxLoopRange, ptr nonnull align 1 dereferenceable(19) @.str, i64 18) #17
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 10), align 2
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 120), align 8, !tbaa !49
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 140), align 4, !tbaa !51
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 136), align 8, !tbaa !290
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 32), align 8, !tbaa !20
  store i64 51, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxLoopRange, i64 40), align 8, !tbaa !22
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12MaxLoopRange) #17
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL12MaxLoopRange, ptr nonnull @__dso_handle) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !36}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!11, !11, i64 0}
!18 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !11, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !11, i64 0}
!24 = !{!"_ZTSN4llvm8PassKindE", !5, i64 0}
!25 = !{!"_ZTSN4llvm4PassE", !23, i64 8, !11, i64 16, !24, i64 24}
!26 = !{!25, !23, i64 8}
!27 = !{!25, !11, i64 16}
!28 = !{!25, !24, i64 24}
!29 = !{!"p1 int", !11, i64 0}
!30 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !11, i64 0}
!31 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !30, i64 0, !29, i64 8, !6, i64 16, !6, i64 20}
!32 = !{i64 8}
!33 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!31, !6, i64 20}
!38 = !{!31, !30, i64 0}
!39 = !{!31, !29, i64 8}
!40 = !{!"branch_weights", i32 1, i32 1999}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!"branch_weights", i32 0, i32 1}
!43 = !{!31, !6, i64 16}
!44 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!45 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !44, i64 0, !6, i64 8, !13, i64 12}
!46 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !46, i64 0}
!48 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !6, i64 0, !47, i64 8}
!49 = !{!48, !6, i64 0}
!50 = !{!30, !30, i64 0}
!51 = !{!45, !13, i64 12}
!52 = distinct !{null}
!53 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!54 = !{!53, !11, i64 16}
!55 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !12, i64 0, !6, i64 8, !6, i64 12, !13, i64 16}
!56 = !{!55, !13, i64 16}
!57 = !{!55, !12, i64 0}
!58 = !{!16, !11, i64 0}
!59 = !{!18, !18, i64 0}
!60 = !{!"_ZTSN4llvm9StringRefE", !19, i64 0, !21, i64 8}
!61 = !{!"_ZTSN4llvm8PassInfoE", !60, i64 0, !60, i64 16, !11, i64 32, !13, i64 40, !13, i64 41, !11, i64 48}
!62 = !{!61, !11, i64 32}
!63 = !{!61, !13, i64 40}
!64 = !{!61, !13, i64 41}
!65 = !{!61, !11, i64 48}
!66 = distinct !{null}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6getRepEv"}
!71 = distinct !{!71, !70, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6getRepEv: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE6getRepEv"}
!73 = distinct !{!73, !72, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE6getRepEv: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6getRepEv"}
!75 = distinct !{!75, !74, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E6getRepEv: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE6getRepEv"}
!77 = distinct !{!77, !76, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE6getRepEv: argument 0"}
!78 = distinct !{null, null}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!"p1 _ZTSN4llvm8FunctionE", !11, i64 0}
!82 = !{!"p1 _ZTSN4llvm13TargetMachineE", !11, i64 0}
!83 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !11, i64 0}
!84 = !{!"p1 _ZTSN4llvm9MCContextE", !11, i64 0}
!85 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !11, i64 0}
!86 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !11, i64 0}
!87 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !11, i64 0}
!88 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !11, i64 0}
!89 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !11, i64 0}
!90 = !{!"p1 _ZTSN4llvm9MCSectionE", !11, i64 0}
!91 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !11, i64 0}
!92 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !12, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !95, i64 0}
!97 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !16, i64 0}
!98 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !97, i64 0}
!99 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !98, i64 0}
!100 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !5, i64 0}
!101 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !99, i64 0, !100, i64 16}
!102 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !16, i64 0}
!103 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !102, i64 0}
!104 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !103, i64 0}
!105 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !19, i64 0, !21, i64 8, !101, i64 16, !105, i64 64}
!107 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !11, i64 0}
!108 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !107, i64 0}
!109 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !16, i64 0}
!110 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !109, i64 0}
!111 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !5, i64 0}
!113 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !111, i64 0, !112, i64 16}
!114 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !113, i64 0}
!115 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !11, i64 0}
!116 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !115, i64 0}
!117 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !11, i64 0}
!118 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !117, i64 0, !117, i64 8}
!119 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !118, i64 0}
!120 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !119, i64 0}
!121 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !120, i64 0}
!122 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !121, i64 0}
!123 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm5AlignE", !5, i64 0}
!126 = !{!"_ZTSSt12_Base_bitsetILm1EE", !21, i64 0}
!127 = !{!"_ZTSSt6bitsetILm12EE", !126, i64 0}
!128 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !127, i64 0}
!129 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !11, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !129, i64 0}
!131 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !130, i64 0}
!132 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !133, i64 0}
!135 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !134, i64 0}
!136 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !11, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!138 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !137, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !138, i64 0}
!140 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !139, i64 0}
!141 = !{!"p2 _ZTSN4llvm8MCSymbolE", !12, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !142, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !143, i64 0}
!145 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !144, i64 0}
!146 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !11, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!148 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !147, i64 0}
!149 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !148, i64 0}
!150 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !149, i64 0}
!151 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !11, i64 0}
!152 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !151, i64 0, !29, i64 8, !6, i64 16, !6, i64 20}
!153 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !11, i64 0}
!154 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !153, i64 0, !29, i64 8, !6, i64 16, !6, i64 20}
!155 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !11, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!157 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !156, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !157, i64 0}
!159 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !158, i64 0}
!160 = !{!"_ZTSN4llvm17BasicBlockSectionE", !5, i64 0}
!161 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !11, i64 0}
!162 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !161, i64 0, !29, i64 8, !6, i64 16, !6, i64 20}
!163 = !{!"p2 _ZTSN4llvm11GlobalValueE", !12, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!165 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !164, i64 0}
!166 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !165, i64 0}
!167 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !166, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!169 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !168, i64 0}
!170 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !169, i64 0}
!171 = !{!"_ZTSSt6vectorIjSaIjEE", !170, i64 0}
!172 = !{!"_ZTSN4llvm13EHPersonalityE", !5, i64 0}
!173 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !11, i64 0}
end_hunk_1
