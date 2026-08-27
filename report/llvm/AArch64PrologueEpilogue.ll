Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64PrologueEpilogue?download=true
inline.NumInlined: 1641
inline.NumDeleted: 683
begin_hunk_0_@_ZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_b:bb.a
  br i1 %.not45.i.i.i.i.i54, label %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i53, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55
  %.sroa.0.06.i.i.i.i.i56 = phi ptr [ %i.ch, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55 ], [ %i.cb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i53 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i57 = load i64, ptr %.sroa.0.06.i.i.i.i.i56, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i57, -8
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !365
  %i.ck = and i32 %i.cj, 4
  %.not4.i.i.i.i.i58 = icmp eq i32 %i.ck, 0
  br i1 %.not4.i.i.i.i.i58, label %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55, !llvm.loop !377

"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59": ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55, %.lr.ph58, %.lr.ph.i.preheader.i49, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i53
  %.sroa.02.0.i48 = phi ptr [ %.sroa.0.057, %.lr.ph58 ], [ %i.cb, %.lr.ph.i.preheader.i49 ], [ %i.cb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i53 ], [ %i.ch, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i55 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i48, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !326
  switch i32 %i.cm, label %.critedge2 [
    i32 4465, label %bb.g
    i32 7263, label %bb.g
    i32 7698, label %bb.g
    i32 5173, label %bb.g
    i32 5773, label %bb.g
    i32 1232, label %_ZN4llvmL22isPartOfZPRCalleeSavesENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.thread
  ]

bb.g:                                             ; preds = %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59"
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i48, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !365
  %i.cp = and i32 %i.co, 3
  %or.cond42.not = icmp eq i32 %i.cp, 0
  br i1 %or.cond42.not, label %.critedge2, label %_ZN4llvmL22isPartOfZPRCalleeSavesENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.thread

_ZN4llvmL22isPartOfZPRCalleeSavesENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.thread: ; preds = %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %bb.g
  br i1 %5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvmL22isPartOfZPRCalleeSavesENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.thread
  %.0.copyload.i.i.i.i.i.i.i.i.i63 = load i64, ptr %.sroa.0.057, align 8
  %i.cq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i63, -8
  %i.cr = inttoptr i64 %i.cq to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i64 = load i64, ptr %i.cr, align 8
  %i.cs = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i64, 4
  %.not.i5.i.i65 = icmp eq i64 %i.cs, 0
  br i1 %.not.i5.i.i65, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67: ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !365
  %i.cv = and i32 %i.cu, 4
  %.not45.i.i.i68 = icmp eq i32 %i.cv, 0
  br i1 %.not45.i.i.i68, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69
  %.sroa.0.06.i.i.i70 = phi ptr [ %i.cx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69 ], [ %i.cr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i71 = load i64, ptr %.sroa.0.06.i.i.i70, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i71, -8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !365
  %i.da = and i32 %i.cz, 4
  %.not4.i.i.i72 = icmp eq i32 %i.da, 0
  br i1 %.not4.i.i.i72, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69, !llvm.loop !377

bb.i:                                             ; preds = %_ZN4llvmL22isPartOfZPRCalleeSavesENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.057) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i75 = load i64, ptr %.sroa.0.057, align 8
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i75, 4
  %.not.i.i.i76 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i76, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78: ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !365
  %i.de = and i32 %i.dd, 8
  %.not34.i.i.i79 = icmp eq i32 %i.de, 0
  br i1 %.not34.i.i.i79, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80
  %.sroa.0.05.i.i.i81 = phi ptr [ %i.dg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80 ], [ %.sroa.0.057, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i81, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !366 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !365
  %i.dj = and i32 %i.di, 8
  %.not3.i.i.i82 = icmp eq i32 %i.dj, 0
  br i1 %.not3.i.i.i82, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80, !llvm.loop !367

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80, %bb.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78
  %.sroa.0.1.i.i.i77 = phi ptr [ %.sroa.0.057, %bb.i ], [ %.sroa.0.057, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i78 ], [ %i.dg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i80 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i77, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !366
  br label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67, %bb.h, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83
  %.sroa.0.1 = phi ptr [ %i.dl, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit83 ], [ %i.cr, %bb.h ], [ %i.cr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i67 ], [ %i.cx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i69 ] ; 2 uses
  %.not43 = icmp eq ptr %.sroa.0.1, %storemerge192934
  br i1 %.not43, label %.critedge2, label %.lr.ph58, !llvm.loop !1039

.critedge2:                                       ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59", %bb.g, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit47", %.critedge
  %i.dm = phi i64 [ %i.be, %.critedge ], [ %i.bz, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit47" ], [ %i.bz, %bb.g ], [ %i.bz, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59" ], [ %i.bz, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.05.2, %.critedge ], [ %storemerge192934, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit47" ], [ %storemerge192934, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit73 ], [ %.sroa.0.057, %"_ZZN4llvmL14partitionSVECSERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_11StackOffsetES5_bENK3$_0clIS4_EEDaT_.exit59" ], [ %.sroa.0.057, %bb.g ] ; 2 uses
  br i1 %5, label %.critedge2.thread81, label %.critedge2..critedge2.thread_crit_edge

.critedge2..critedge2.thread_crit_edge:           ; preds = %.critedge2
  %.pre = ptrtoint ptr %.sroa.0.2 to i64
  br label %.critedge2.thread

.critedge2.thread81:                              ; preds = %.critedge.thread70, %.critedge2
  %.sroa.0.283 = phi ptr [ %.sroa.0.2, %.critedge2 ], [ %2, %.critedge.thread70 ]
  %i.dn = phi i64 [ %i.dm, %.critedge2 ], [ %i.bh, %.critedge.thread70 ] ; 2 uses
  store i64 %i.dn, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = ptrtoint ptr %.sroa.0.283 to i64
  store i64 %i.dq, ptr %i.dp, align 8
  br label %bb.j

.critedge2.thread:                                ; preds = %.critedge2..critedge2.thread_crit_edge, %.critedge.thread
  %.pre-phi = phi i64 [ %.pre, %.critedge2..critedge2.thread_crit_edge ], [ %i.bk, %.critedge.thread ]
  %i.dr = phi i64 [ %i.dm, %.critedge2..critedge2.thread_crit_edge ], [ %i.bk, %.critedge.thread ] ; 2 uses
  store ptr %2, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dr, ptr %i.dt, align 8
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.thread, %.critedge2.thread81
  %.pre-phi.sink = phi i64 [ %.pre-phi, %.critedge2.thread ], [ %i.dn, %.critedge2.thread81 ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.pre-phi.sink, ptr %i.du, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::CFIInstBuilder", align 8 ; 11 uses
  %3 = alloca %"class.llvm::MCRegister", align 4  ; 5 uses
  %4 = alloca %"class.llvm::StackOffset", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477, !nonnull !63, !align !65 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !772
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !772
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !376, !nonnull !63, !align !65 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !380  ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !344
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.l, align 8, !tbaa !345
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !435
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 1, ptr %i.o, align 4, !tbaa !444
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66, !nonnull !63, !align !65 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(344) %i.r) #16, !inline_history !445
  store ptr %i.v, ptr %i.p, align 8, !tbaa !446
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !66, !nonnull !63, !align !65 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !356
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(344) %i.x) #16, !inline_history !445
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !379
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -96
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !447
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.m, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !363, !nonnull !63, !align !65
  %i.ai = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !63, !align !65
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ai) #16
  br i1 %i.aj, label %bb.c, label %._crit_edge64

._crit_edge64:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !363
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !772, !noalias !1040 ; 4 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !772, !noalias !1049
  %i.am = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = sdiv exact i64 %i.ao, 12
  %i.aq = ashr i64 %i.ap, 2                       ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %.neg.i.i.i = mul nsw i64 %i.aq, -48            ; 2 uses
  %6 = add i64 %.neg.i.i.i, %i.am                 ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ak, i64 %.neg.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i
  %i.as = phi ptr [ %i.bd, %bb.j ], [ %i.ak, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.at = phi i64 [ %i.bi, %bb.j ], [ %i.am, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.aq, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -12
  %.val.i.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !462, !noalias !1056
  %i.aw = icmp eq i32 %.val.i.i.i.i.i, 9
  br i1 %i.aw, label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.val.i8.i.i.i.i = load i32, ptr %i.ax, align 4, !tbaa !462, !noalias !1056
  %i.ay = icmp eq i32 %.val.i8.i.i.i.i, 9
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -12
  %.cast.i.i.i.i = ptrtoint ptr %i.az to i64
  br label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit"

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -36
  %.val.i9.i.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !462, !noalias !1056
  %i.bb = icmp eq i32 %.val.i9.i.i.i.i, 9
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.cast22.i.i.i.i = ptrtoint ptr %i.bc to i64
  br label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit"

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds i8, ptr %i.as, i64 -48 ; 3 uses
  %.val.i10.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !462, !noalias !1056
  %i.be = icmp eq i32 %.val.i10.i.i.i.i, 9
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 -36
  %.cast23.i.i.i.i = ptrtoint ptr %i.bf to i64
  br label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.bg = add nsw i64 %.036.i.i.i.i, -1
  %i.bh = icmp sgt i64 %.036.i.i.i.i, 1
  %i.bi = ptrtoint ptr %i.bd to i64
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1065

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %.pre53.i.i.i.i = sub i64 %6, %i.an
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi54.i.i.i.i = phi i64 [ %.pre53.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ao, %bb.c ]
  %i.bj = phi i64 [ %6, %._crit_edge.loopexit.i.i.i.i ], [ %i.am, %bb.c ] ; 4 uses
  %i.bk = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ak, %bb.c ] ; 2 uses
  %i.bl = sdiv exact i64 %.pre-phi54.i.i.i.i, 12
  switch i64 %i.bl, label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit" [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = inttoptr i64 %i.bj to ptr
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -12
  %.val.i13.i.i.i.i = load i32, ptr %i.bn, align 4, !tbaa !462, !noalias !1056
  %i.bo = icmp eq i32 %.val.i13.i.i.i.i, 9
  br i1 %i.bo, label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -12 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %i.br = phi ptr [ %i.bp, %bb.l ], [ %i.bk, %._crit_edge.i.i.i.i ]
  %i.bs = phi i64 [ %i.bq, %bb.l ], [ %i.bj, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -12
  %.val.i14.i.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !462, !noalias !1056
  %i.bv = icmp eq i32 %.val.i14.i.i.i.i, 9
  br i1 %i.bv, label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.bx = ptrtoint ptr %i.bw to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %i.by = phi i64 [ %i.bx, %bb.n ], [ %i.bj, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %.val.i15.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !462, !noalias !1056
  %i.cb = icmp eq i32 %.val.i15.i.i.i.i, 9
  %spec.select.i.i.i = select i1 %i.cb, i64 %i.by, i64 %i.an
  br label %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.e, %bb.g, %bb.i, %._crit_edge.i.i.i.i, %bb.k, %bb.m, %bb.o
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.o ], [ %i.bs, %bb.m ], [ %i.bj, %bb.k ], [ %i.an, %._crit_edge.i.i.i.i ], [ %.cast23.i.i.i.i, %bb.i ], [ %.cast22.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i, %bb.e ], [ %i.at, %.lr.ph.i.i.i.i ]
  %i.cc = inttoptr i64 %.sink.i.i.i.i to ptr
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !370
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !477, !nonnull !63, !align !65 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !585
  %i.ch = add i32 %i.cg, %.sroa.3.0.copyload
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !586
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !587
  %i.cm = load ptr, ptr %i.ag, align 8, !tbaa !363, !nonnull !63, !align !65 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !774
  %i.cp = sext i32 %i.co to i64
  %i.cq = sub nsw i64 %i.cl, %i.cp
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge64, %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit"
  %i.cr = phi ptr [ %i.cm, %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit" ], [ %.pre, %._crit_edge64 ]
  %.sroa.033.0 = phi i64 [ %i.cq, %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit" ], [ undef, %._crit_edge64 ]
  %.sroa.434.0 = phi i8 [ 1, %"_ZN4llvm7find_ifINS_14iterator_rangeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKNS_15CalleeSavedInfoESt6vectorIS5_SaIS5_EEEEEEEZNKS_22AArch64PrologueEmitter27emitCalleeSavedSVELocationsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit" ], [ 0, %._crit_edge64 ]
  %i.cs = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !63, !align !65
  %i.ct = tail call { i64, i64 } @_ZNK4llvm20AArch64FrameLowering15getPPRStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cs) #16 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !772 ; 2 uses
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !772 ; 2 uses
  %.not53 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.aj, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ak

bb.q:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.021.054 = phi ptr [ %i.cw, %.lr.ph ], [ %i.gy, %bb.aj ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.021.054, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !370 ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !477, !nonnull !63, !align !65 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !585
  %i.dn = add i32 %i.dm, %i.di
  %i.do = zext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !586
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dp, i64 %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 21
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !773
  switch i8 %i.ds, label %bb.aj [
    i8 4, label %bb.r
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.021.054, align 4, !tbaa !462 ; 2 uses
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4
  %i.dt = load ptr, ptr %i.cy, align 8, !tbaa !374, !nonnull !63, !align !65
  %i.du = call noundef zeroext i1 @_ZNK4llvm19AArch64RegisterInfo11regNeedsCFIENS_10MCRegisterERS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.dt, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  br i1 %i.du, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !477, !nonnull !63, !align !65 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !585 ; 4 uses
  %i.dz = add i32 %i.dy, %i.di
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !586 ; 4 uses
  %i.ec = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !587 ; 2 uses
  %i.ee = load ptr, ptr %i.cz, align 8, !tbaa !8  ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !1066, !range !62, !noundef !63
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !772 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !772 ; 2 uses
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %_ZNK4llvm19AArch64FunctionInfo23getCalleeSavedStackSizeERKNS_16MachineFrameInfoE.exit, label %.preheader.i

bb.u:                                             ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 228
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !1067 ; 2 uses
  %.not.i = icmp eq i32 %i.eo, 2147483647
  br i1 %.not.i, label %bb.y, label %bb.x

.preheader.i:                                     ; preds = %bb.t, %bb.w
  %.07584.i = phi i64 [ %.1.i, %bb.w ], [ 9223372036854775807, %bb.t ] ; 2 uses
  %.07683.i = phi i64 [ %.177.i, %bb.w ], [ -9223372036854775808, %bb.t ] ; 2 uses
  %.sroa.058.082.i = phi ptr [ %i.fa, %bb.w ], [ %i.ej, %bb.t ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.058.082.i, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !370
  %i.er = add i32 %i.eq, %i.dy
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 21
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !773
  %.not25.i = icmp eq i8 %i.ev, 0
  br i1 %.not25.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader.i
  %i.ew = load i64, ptr %i.et, align 8, !tbaa !587 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !1068
  %.sroa.speculated54.i = call i64 @llvm.smin.i64(i64 %.07584.i, i64 %i.ew)
  %i.ez = add nsw i64 %i.ey, %i.ew
  %.sroa.speculated49.i = call i64 @llvm.smax.i64(i64 %i.ez, i64 %.07683.i)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.i
  %.177.i = phi i64 [ %.sroa.speculated49.i, %bb.v ], [ %.07683.i, %.preheader.i ] ; 3 uses
  %.1.i = phi i64 [ %.sroa.speculated54.i, %bb.v ], [ %.07584.i, %.preheader.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.058.082.i, i64 12 ; 2 uses
  %.not80.i = icmp eq ptr %i.fa, %i.el
  br i1 %.not80.i, label %bb.u, label %.preheader.i

bb.x:                                             ; preds = %bb.u
  %i.fb = add i32 %i.eo, %i.dy
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %i.fc ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !587 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !1068
  %.sroa.speculated44.i = call i64 @llvm.smin.i64(i64 %.1.i, i64 %i.fe)
  %i.fh = add nsw i64 %i.fg, %i.fe
  %.sroa.speculated39.i = call i64 @llvm.smax.i64(i64 %i.fh, i64 %.177.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.278.i = phi i64 [ %.177.i, %bb.u ], [ %.sroa.speculated39.i, %bb.x ] ; 2 uses
  %.2.i = phi i64 [ %.1.i, %bb.u ], [ %.sroa.speculated44.i, %bb.x ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !1069 ; 2 uses
  %.not24.i = icmp eq i32 %i.fj, 2147483647
  br i1 %.not24.i, label %bb.aa, label %bb.z
end_hunk_0
