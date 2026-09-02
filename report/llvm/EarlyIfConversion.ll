Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EarlyIfConversion?download=true
inline.NumInlined: 2369
inline.NumDeleted: 1278
begin_hunk_0_@_ZN12_GLOBAL__N_19SSAIfConv18canSpeculateInstrsEPN4llvm17MachineBasicBlockE:bb.a
  %.val23 = load i24, ptr %i.ak, align 8
  %i.al = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19SSAIfConv28InstrDependenciesAllowIfConvEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr %.val, i24 %.val23)
  br i1 %i.al, label %bb.j, label %.thread36

.thread36:                                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread31

.thread31:                                        ; preds = %.lr.ph, %bb.j
  %.12134 = phi i32 [ %i.l, %bb.j ], [ %.02043, %.lr.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.042) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.025.042, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %.thread31
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !389
  %i.ap = and i32 %i.ao, 8
  %.not34.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ar, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.025.042, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !401 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !389
  %i.au = and i32 %i.at, 8
  %.not3.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !529

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %.thread31, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.025.042, %.thread31 ], [ %.sroa.025.042, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.ar, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !401 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.i
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.d, %bb.d, %bb.c, %bb.f, %.split, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.b, %.thread36, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %.thread36 ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %.split ], [ false, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19SSAIfConv18findInsertionPointEv(ptr noundef nonnull align 8 dereferenceable(704) initializes((640, 644)) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallVector.395", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 9 uses
  store i32 0, ptr %i.b, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i32 0, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 8, ptr %i.e, align 4, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !478
  %i.h = call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %i.g) #21
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !478  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !401  ; 2 uses
  %.not85111 = icmp eq ptr %i.j, %i.l
  br i1 %.not85111, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %.backedge
  %.sroa.071.0112 = phi ptr [ %i.j, %.lr.ph114 ], [ %.sroa.0.1.i.i.i, %.backedge ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.071.0112, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !389
  %i.y = and i32 %i.x, 4
  %.not45.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.aa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !389
  %i.ad = and i32 %i.ac, 4
  %.not4.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !415

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.aa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ] ; 11 uses
  %i.ae = load i8, ptr %i.n, align 8, !tbaa !14, !range !18, !noundef !19
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !103 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01218.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.al = load ptr, ptr %.01218.i.i, align 8, !tbaa !23
  %.not15.i.i = icmp eq ptr %i.al, %.sroa.0.1.i.i.i
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79, label %bb.d

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit
  %i.am = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.m, ptr noundef nonnull %.sroa.0.1.i.i.i) #21
  %.not86 = icmp eq ptr %i.am, null
  br i1 %.not86, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !365 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 40
  %i.aq = load i24, ptr %i.ap, align 8            ; 2 uses
  %i.ar = zext i24 %i.aq to i64
  %.idx = shl nuw nsw i64 %i.ar, 5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %.not21102 = icmp eq i24 %i.aq, 0
  br i1 %.not21102, label %.preheader, label %.lr.ph104

.preheader:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread
  %i.at = load i32, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %.not.i26109 = icmp eq i32 %i.at, 0
  br i1 %.not.i26109, label %._crit_edge, label %.lr.ph110

.lr.ph104:                                        ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit
  %.020103 = phi ptr [ %i.cv, %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit ], [ %i.ao, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread ] ; 4 uses
  %i.au = load i32, ptr %.020103, align 8         ; 4 uses
  %i.av = and i32 %i.au, 255
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

bb.e:                                             ; preds = %.lr.ph104
  %i.ax = getelementptr inbounds nuw i8, ptr %.020103, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !375 ; 4 uses
  %i.az = add i32 %i.ay, -1
  %i.ba = icmp ult i32 %i.az, 1073741823
  br i1 %i.ba, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = and i32 %i.au, 16777216
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %.loopexit92, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !498 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !577, !noalias !578 ; 2 uses
  %.not8799 = icmp eq ptr %i.be, null
  br i1 %.not8799, label %.loopexit92, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !581, !noalias !578
  %i.bh = zext nneg i32 %i.ay to i64
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !582, !noalias !578 ; 2 uses
  %i.bl = lshr i32 %i.bk, 12
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bm
  %i.bo = and i32 %i.bk, 4095
  %.pre = load i32, ptr %i.b, align 8, !tbaa !100
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit
  %i.bp = phi i32 [ %3, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit ], [ %.pre, %.lr.ph.preheader ] ; 6 uses
  %.sroa.553.0101 = phi ptr [ %i.ch, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit ], [ %i.bn, %.lr.ph.preheader ] ; 2 uses
  %.sroa.955.0100 = phi i32 [ %i.ck, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit ], [ %i.bo, %.lr.ph.preheader ] ; 3 uses
  %i.bq = zext i32 %.sroa.955.0100 to i64
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !375
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %.not1521.i.i.i = icmp ugt i32 %i.bp, %i.bu
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !21 ; 3 uses
  br i1 %.not1521.i.i.i, label %.lr.ph.i.i.i, label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = add i32 %.01222.i.i.i, 256              ; 2 uses
  %.not15.i.i.i = icmp ult i32 %i.bv, %i.bp
  br i1 %.not15.i.i.i, label %.lr.ph.i.i.i, label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit, !llvm.loop !584

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %bb.h
  %.01222.i.i.i = phi i32 [ %i.bv, %bb.h ], [ %i.bu, %.lr.ph ] ; 3 uses
  %i.bw = zext i32 %.01222.i.i.i to i64           ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !585
  %.not.i.i.i = icmp eq i32 %.sroa.955.0100, %i.by
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %.idx.i = shl nuw nsw i64 %i.bw, 2              ; 2 uses
  %.pre.i = zext i32 %i.bp to i64
  %.idx6.i = shl nuw nsw i64 %.pre.i, 2
  %i.bz = add nsw i64 %.idx6.i, -4                ; 2 uses
  %.not.i.i22 = icmp eq i64 %.idx.i, %i.bz
  br i1 %.not.i.i22, label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.idx.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !585 ; 2 uses
  store i32 %i.cb, ptr %2, align 4, !tbaa !585
  %i.cc = trunc i32 %.01222.i.i.i to i8
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !375
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i

_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i: ; preds = %bb.j, %bb.i
  %i.cf = phi i32 [ %.pre.i.i, %bb.j ], [ %i.bp, %bb.i ]
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.b, align 8, !tbaa !100
  br label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit

_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit: ; preds = %bb.h, %.lr.ph, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i
  %3 = phi i32 [ %i.cg, %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i ], [ %i.bp, %.lr.ph ], [ %i.bp, %bb.h ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.553.0101, i64 2
  %i.ci = load i16, ptr %.sroa.553.0101, align 2, !tbaa !587 ; 2 uses
  %i.cj = sext i16 %i.ci to i32
  %i.ck = add i32 %.sroa.955.0100, %i.cj
  %.not.i.i23 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i23, label %.loopexit92.loopexit, label %.lr.ph

.loopexit92.loopexit:                             ; preds = %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE5eraseERKS1_.exit
  %.pre122 = load i32, ptr %.020103, align 8
  br label %.loopexit92

.loopexit92:                                      ; preds = %.loopexit92.loopexit, %bb.g, %bb.f
  %i.cl = phi i32 [ %.pre122, %.loopexit92.loopexit ], [ %i.au, %bb.g ], [ %i.au, %bb.f ] ; 2 uses
  %i.cm = and i32 %i.cl, 805306368
  %or.cond.not.i = icmp ne i32 %i.cm, 0
  %i.cn = and i32 %i.cl, 17825536
  %or.cond.not = icmp eq i32 %i.cn, 16777216
  %or.cond = or i1 %or.cond.not.i, %or.cond.not
  br i1 %or.cond, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread: ; preds = %.loopexit92
  %i.co = load i32, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.cp = load i32, ptr %i.e, align 4, !tbaa !101
  %.not.i25 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i25, label %bb.l, label %bb.k, !prof !376

bb.k:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %i.ay)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

bb.l:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %i.cq = zext i32 %i.co to i64
  %i.cr = load ptr, ptr %1, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.ay, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.d, align 8, !tbaa !100
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.d, align 8, !tbaa !100
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit: ; preds = %.loopexit92, %bb.e, %bb.k, %bb.l, %.lr.ph104
  %i.cv = getelementptr inbounds nuw i8, ptr %.020103, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %i.cv, %i.as
  br i1 %.not21, label %.preheader, label %.lr.ph104

.loopexit.loopexit:                               ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit37
  %.pre123 = load i32, ptr %i.d, align 8, !tbaa !100
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph110
  %i.cw = phi i32 [ %.pre123, %.loopexit.loopexit ], [ %i.dd, %.lr.ph110 ] ; 2 uses
  %.not.i26 = icmp eq i32 %i.cw, 0
  br i1 %.not.i26, label %._crit_edge, label %.lr.ph110, !llvm.loop !588

.lr.ph110:                                        ; preds = %.preheader, %.loopexit
  %i.cx = phi i32 [ %i.cw, %.loopexit ], [ %i.at, %.preheader ] ; 2 uses
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !498 ; 2 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !21
  %i.da = zext i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4
  %.sroa.0.0.copyload.i = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.dd = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.d, align 8, !tbaa !100
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !577, !noalias !589 ; 2 uses
  %.not88105 = icmp eq ptr %i.df, null
  br i1 %.not88105, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.lr.ph110
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !581, !noalias !589
  %i.di = zext i32 %.sroa.0.0.copyload.i to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !582, !noalias !589 ; 2 uses
  %i.dm = lshr i32 %i.dl, 12
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dn
  %i.dp = and i32 %i.dl, 4095
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %_ZN4llvm17MCRegUnitIteratorppEv.exit37
  %.sroa.541.0107 = phi ptr [ %i.er, %_ZN4llvm17MCRegUnitIteratorppEv.exit37 ], [ %i.do, %.lr.ph108.preheader ] ; 2 uses
  %.sroa.9.0106 = phi i32 [ %i.eu, %_ZN4llvm17MCRegUnitIteratorppEv.exit37 ], [ %i.dp, %.lr.ph108.preheader ] ; 7 uses
  %i.dq = and i32 %.sroa.9.0106, 63
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = lshr i32 %.sroa.9.0106, 6
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dy = and i64 %i.dx, %i.ds
  %.not89 = icmp eq i64 %i.dy, 0
  br i1 %.not89, label %_ZN4llvm17MCRegUnitIteratorppEv.exit37, label %bb.m

bb.m:                                             ; preds = %.lr.ph108
  %i.dz = zext i32 %.sroa.9.0106 to i64
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !375
  %i.ed = zext i8 %i.ec to i32                    ; 2 uses
  %i.ee = load i32, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  %.not1521.i.i = icmp ugt i32 %i.ee, %i.ed
  %.pre.i.i29 = load ptr, ptr %i.a, align 8, !tbaa !21
  br i1 %.not1521.i.i, label %.lr.ph.i.i33, label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE9findIndexEj.exit.thread.i

bb.n:                                             ; preds = %.lr.ph.i.i33
  %i.ef = add i32 %.01222.i.i, 256                ; 2 uses
  %.not15.i.i35 = icmp ult i32 %i.ef, %i.ee
  br i1 %.not15.i.i35, label %.lr.ph.i.i33, label %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE9findIndexEj.exit.thread.i, !llvm.loop !584

.lr.ph.i.i33:                                     ; preds = %bb.m, %bb.n
  %.01222.i.i = phi i32 [ %i.ef, %bb.n ], [ %i.ed, %bb.m ] ; 2 uses
  %i.eg = zext i32 %.01222.i.i to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i29, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !585
  %.not.i.i34 = icmp eq i32 %.sroa.9.0106, %i.ei
  br i1 %.not.i.i34, label %_ZN4llvm17MCRegUnitIteratorppEv.exit37, label %bb.n

_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE9findIndexEj.exit.thread.i: ; preds = %bb.n, %bb.m
  %i.ej = trunc i32 %i.ee to i8
  store i8 %i.ej, ptr %i.eb, align 1, !tbaa !375
  %i.ek = load i32, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %i.el = load i32, ptr %i.s, align 4, !tbaa !101
  %.not.i4.i = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i4.i, label %bb.p, label %bb.o, !prof !376

bb.o:                                             ; preds = %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE9findIndexEj.exit.thread.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCRegUnitELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(62) %i.a, i32 noundef %.sroa.9.0106)
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit37

bb.p:                                             ; preds = %_ZN4llvm9SparseSetINS_9MCRegUnitES1_NS_16MCRegUnitToIndexEhE9findIndexEj.exit.thread.i
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  store i32 %.sroa.9.0106, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.b, align 8, !tbaa !100
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.b, align 8, !tbaa !100
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit37

_ZN4llvm17MCRegUnitIteratorppEv.exit37:           ; preds = %.lr.ph.i.i33, %bb.p, %bb.o, %.lr.ph108
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.541.0107, i64 2
  %i.es = load i16, ptr %.sroa.541.0107, align 2, !tbaa !587 ; 2 uses
  %i.et = sext i16 %i.es to i32
  %i.eu = add i32 %.sroa.9.0106, %i.et
  %.not.i.i36 = icmp eq i16 %i.es, 0
  br i1 %.not.i.i36, label %.loopexit.loopexit, label %.lr.ph108

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.not90 = icmp eq ptr %.sroa.0.1.i.i.i, %i.h
  br i1 %.not90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 44
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !389 ; 2 uses
  %i.ex = and i32 %i.ew, 12
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = and i32 %i.ew, 4
  %i.fa = icmp ne i32 %i.ez, 0
  %or.cond.i.i = or i1 %i.ey, %i.fa
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !390
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !391
  %i.ff = and i64 %i.fe, 512
  %.not91 = icmp eq i64 %i.ff, 0
  br i1 %.not91, label %bb.r, label %.backedge

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit: ; preds = %bb.q
  %i.fg = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i, i64 noundef 512, i32 noundef 1) #21
  br i1 %i.fg, label %.backedge, label %bb.r

.backedge:                                        ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit, %bb.r, %.split
  %.not85 = icmp eq ptr %.sroa.0.1.i.i.i, %i.l
  br i1 %.not85, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79, label %bb.b, !llvm.loop !592

bb.r:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit, %._crit_edge
  %i.fh = load i32, ptr %i.b, align 8, !tbaa !100
  %.not.i.i38 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i38, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.fj = ptrtoint ptr %.sroa.0.1.i.i.i to i64
  store i64 %i.fj, ptr %i.fi, align 8
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit, %.backedge, %.lr.ph.i.i, %bb.a, %bb.s
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.s ], [ false, %.lr.ph.i.i ], [ false, %.backedge ], [ false, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit ]
  %i.fk = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.c
  br i1 %i.fl, label %_ZN4llvm11SmallVectorINS_10MCRegisterELj8EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79
  call void @free(ptr noundef %i.fk) #21
  br label %_ZN4llvm11SmallVectorINS_10MCRegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_10MCRegisterELj8EED2Ev.exit: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread79, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19SSAIfConv7PHIInfoELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #11 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::SSAIfConv::PHIInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !593
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #21
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !100
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !100
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #4

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19SSAIfConv28InstrDependenciesAllowIfConvEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr nofree readonly captures(address) %.32.val, i24 %.40.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i24 %.40.val to i64
  %.idx = shl nuw nsw i64 %i.a, 5
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 %.idx
  %.not32 = icmp eq i24 %.40.val, 0
  br i1 %.not32, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18
  %.02433 = phi ptr [ %.32.val, %.lr.ph ], [ %i.by, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18 ] ; 4 uses
  %i.k = load i32, ptr %.02433, align 8           ; 4 uses
  %trunc = trunc i32 %i.k to i8
  switch i8 %trunc, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18 [
    i8 12, label %select.unfold
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.02433, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !375  ; 4 uses
  %i.n = and i32 %i.k, 16777216
  %i.o = icmp ne i32 %i.n, 0
  %i.p = add i32 %i.m, -1
  %i.q = icmp ult i32 %i.p, 1073741823
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !498  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !577, !noalias !594 ; 2 uses
  %.not2528 = icmp eq ptr %i.t, null
  br i1 %.not2528, label %.loopexit, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph:       ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !581, !noalias !594
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !582, !noalias !594 ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = and i32 %i.z, 4095
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit

_ZN4llvm17MCRegUnitIteratorppEv.exit:             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph, %_ZN4llvm17MCRegUnitIteratorppEv.exit
  %.sroa.56.030 = phi ptr [ %i.ac, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph ], [ %i.an, %_ZN4llvm17MCRegUnitIteratorppEv.exit ] ; 2 uses
  %.sroa.9.029 = phi i32 [ %i.ad, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph ], [ %i.aq, %_ZN4llvm17MCRegUnitIteratorppEv.exit ] ; 3 uses
  %i.af = and i32 %.sroa.9.029, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i32 %.sroa.9.029, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.am = or i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.56.030, i64 2
  %i.ao = load i16, ptr %.sroa.56.030, align 2, !tbaa !587 ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add i32 %.sroa.9.029, %i.ap
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %.loopexit.loopexit, label %_ZN4llvm17MCRegUnitIteratorppEv.exit

.loopexit.loopexit:                               ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit
  %.pre = load i32, ptr %.02433, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %i.ar = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = and i32 %i.ar, 805306368
  %or.cond.not.i = icmp eq i32 %i.as, 0
  br i1 %or.cond.not.i, label %bb.e, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18

bb.e:                                             ; preds = %.loopexit
  %i.at = and i32 %i.ar, 17825536
  %or.cond22 = icmp ne i32 %i.at, 16777216
  %i.au = icmp slt i32 %i.m, 0
  %or.cond23 = select i1 %or.cond22, i1 %i.au, i1 false
  br i1 %or.cond23, label %bb.f, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !499
  %i.aw = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.av, i32 %i.m) #21 ; 8 uses
  %.not30 = icmp eq ptr %i.aw, null
  br i1 %.not30, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !387
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !478
  %.not31 = icmp eq ptr %i.ay, %i.az
  br i1 %.not31, label %bb.h, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread18
end_hunk_0
