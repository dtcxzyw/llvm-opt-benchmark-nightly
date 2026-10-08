Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineCSE?download=true
inline.NumInlined: 2411
inline.NumDeleted: 1305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_114MachineCSEImpl16PhysRegDefsReachEPN4llvm12MachineInstrES3_RKNS1_8SmallSetINS1_10MCRegisterELj8ESt4lessIS5_EEERKNS1_11SmallVectorISt4pairIjNS1_8RegisterEELj2EEERb:bb.a
  %.05040 = phi i32 [ %.050.ph48, %.preheader.lr.ph ], [ %i.do, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81 ] ; 2 uses
  %.sroa.09.039.in = phi ptr [ %.sroa.09.0.ph46.in, %.preheader.lr.ph ], [ %i.dy, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81 ]
  %.sroa.09.039 = load ptr, ptr %.sroa.09.039.in, align 8, !tbaa !201 ; 4 uses
  %i.bs = icmp ne ptr %.sroa.09.039, %2
  %i.bt = icmp ne ptr %.sroa.09.039, %.sroa.05.0.ph47
  %or.cond30 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond30, label %.lr.ph32, label %.critedge

.lr.ph32:                                         ; preds = %.preheader, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.09.131 = phi ptr [ %i.cg, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.09.039, %.preheader ] ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.131, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !227
  %.off.i = add i32 %i.bv, -14
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.131) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.131, align 8
  %i.bw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.131, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !213
  %i.bz = and i32 %i.by, 8
  %.not34.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.cb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.09.131, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !201 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !213
  %i.ce = and i32 %i.cd, 8
  %.not3.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.g, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.09.131, %bb.g ], [ %.sroa.09.131, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.cb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !201 ; 4 uses
  %i.ch = icmp ne ptr %i.cg, %2
  %i.ci = icmp ne ptr %i.cg, %.sroa.05.0.ph47
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %.lr.ph32, label %.critedge, !llvm.loop !552

.critedge:                                        ; preds = %.lr.ph32, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %.preheader
  %.sroa.09.1.lcssa = phi ptr [ %.sroa.09.039, %.preheader ], [ %i.cg, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.09.131, %.lr.ph32 ] ; 10 uses
  %i.cj = icmp eq ptr %.sroa.09.1.lcssa, %.sroa.05.0.ph47
  br i1 %i.cj, label %.outer, label %bb.h

.outer:                                           ; preds = %.critedge
  store i8 1, ptr %4, align 1, !tbaa !249
  br label %.preheader.lr.ph

bb.h:                                             ; preds = %.critedge
  %i.ck = icmp eq ptr %.sroa.09.1.lcssa, %2       ; 3 uses
  br i1 %i.ck, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.09.1.lcssa, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !228 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.09.1.lcssa, i64 40
  %i.co = load i24, ptr %i.cn, align 8            ; 2 uses
  %i.cp = zext i24 %i.co to i64
  %.idx50 = shl nuw nsw i64 %i.cp, 5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx50
  %.not6335 = icmp eq i24 %i.co, 0
  br i1 %.not6335, label %.critedge70, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.i, %select.unfold
  %.036 = phi ptr [ %i.dn, %select.unfold ], [ %i.cm, %bb.i ] ; 3 uses
  %i.cr = load i32, ptr %.036, align 8            ; 2 uses
  %trunc = trunc i32 %i.cr to i8
  switch i8 %trunc, label %select.unfold [
    i8 12, label %.loopexit
    i8 0, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph37
  %i.cs = and i32 %i.cr, 16777216
  %.not20 = icmp eq i32 %i.cs, 0
  br i1 %.not20, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.036, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !222 ; 4 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = load i64, ptr %i.bn, align 8, !tbaa !221
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %i.cz = load i32, ptr %i.bq, align 8, !tbaa !76 ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.da, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i.i ; 3 uses
  %.not11.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not11.i.i.i, label %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %.0812.i.i.i = phi ptr [ %i.de, %bb.n ], [ %i.cy, %bb.m ] ; 3 uses
  %i.dc = load i32, ptr %.0812.i.i.i, align 4, !tbaa !257
  %i.dd = icmp eq i32 %i.dc, %i.cu
  br i1 %i.dd, label %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i.i71, label %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i, %bb.m
  %.1.i.i.i = phi ptr [ %i.db, %bb.m ], [ %.0812.i.i.i, %.lr.ph.i.i.i ], [ %i.db, %bb.n ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.da
  %.not76 = icmp eq ptr %.1.i.i.i, %i.df
  br i1 %.not76, label %select.unfold, label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !219 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not10.i.i.i.i.i, label %select.unfold, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.o ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bp, %bb.o ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !257
  %i.dj = icmp ult i32 %i.di, %i.cu               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.dj, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.dj, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !220 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = icmp eq ptr %.19.i.i.i.i.i, %i.bp
  br i1 %i.dk, label %select.unfold, label %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5countERKS1_.exit

_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5countERKS1_.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !257
  %.not75 = icmp ult i32 %i.cu, %i.dm
  br i1 %.not75, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %.lr.ph37, %_ZNKSt8_Rb_treeIN4llvm10MCRegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i, %bb.o, %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5countERKS1_.exit, %bb.j, %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %.036, i64 32 ; 2 uses
  %.not63 = icmp eq ptr %i.dn, %i.cq
  br i1 %.not63, label %.critedge70, label %.lr.ph37

.critedge70:                                      ; preds = %select.unfold, %bb.i
  %i.do = add i32 %.05040, -1                     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.1.lcssa) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i73 = load i64, ptr %.sroa.09.1.lcssa, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i73, 4
  %.not.i.i.i74 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i74, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76: ; preds = %.critedge70
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.09.1.lcssa, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !213
  %i.ds = and i32 %i.dr, 8
  %.not34.i.i.i77 = icmp eq i32 %i.ds, 0
  br i1 %.not34.i.i.i77, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78
  %.sroa.0.05.i.i.i79 = phi ptr [ %i.du, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78 ], [ %.sroa.09.1.lcssa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i79, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !201 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !213
  %i.dx = and i32 %i.dw, 8
  %.not3.i.i.i80 = icmp eq i32 %i.dx, 0
  br i1 %.not3.i.i.i80, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78, %.critedge70, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76
  %.sroa.0.1.i.i.i75 = phi ptr [ %.sroa.09.1.lcssa, %.critedge70 ], [ %.sroa.09.1.lcssa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i76 ], [ %i.du, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i78 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i75, i64 8
  %.not62 = icmp eq i32 %i.do, 0
  br i1 %.not62, label %.loopexit, label %.preheader, !llvm.loop !553

.loopexit:                                        ; preds = %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81, %bb.h, %.lr.ph37, %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5countERKS1_.exit, %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b, %bb.c
  %.10 = phi i1 [ false, %bb.b ], [ false, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ false, %bb.c ], [ false, %.lr.ph37 ], [ %i.ck, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit81 ], [ false, %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i ], [ false, %_ZNK4llvm8SmallSetINS_10MCRegisterELj8ESt4lessIS1_EE5countERKS1_.exit ], [ %i.ck, %bb.h ], [ false, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread ], [ false, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit ]
  ret i1 %.10
}

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

declare i32 @_ZN4llvm19MachineRegisterInfo20cloneVirtualRegisterENS_8RegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114MachineCSEImpl17isProfitableToCSEEN4llvm8RegisterES2_PNS1_17MachineBasicBlockEPNS1_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(748) %0, i32 %1, i32 %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallPtrSet.397", align 8 ; 14 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AggressiveMachineCSE, i64 120), align 8, !tbaa !288, !range !27, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.critedge285, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  %i.d = icmp slt i32 %2, 0                       ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 8, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i8 1, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = and i32 %1, 2147483647
  %i.m = zext nneg i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !652 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %.0.i.i.i, align 8
  %i.r = and i32 %i.q, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.e ], [ %.0.i.i.i, %bb.d ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !222 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %.critedge2.i.i.i.i
  %i.s = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.t = and i32 %i.s, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i, !llvm.loop !644

.lr.ph.preheader:                                 ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %storemerge.i.i.i.i, %bb.e ] ; 2 uses
  %.phi.trans.insert418 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.pre419 = load ptr, ptr %.phi.trans.insert418, align 8, !tbaa !654
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, %.lr.ph.preheader
  %i.u = phi ptr [ %.pre419, %.lr.ph.preheader ], [ %i.ax, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 3 uses
  %i.v = phi i8 [ 1, %.lr.ph.preheader ], [ %i.am, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.w = phi i32 [ 0, %.lr.ph.preheader ], [ %i.an, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 5 uses
  %i.x = phi i32 [ 8, %.lr.ph.preheader ], [ %i.ao, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 3 uses
  %i.y = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.ap, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 3 uses
  %i.z = phi i8 [ 1, %.lr.ph.preheader ], [ %i.aq, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ]
  %.052249 = phi i1 [ false, %.lr.ph.preheader ], [ %.052., %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ]
  %.066248 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %.sroa.0199.0247 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.preheader ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0199.0247, i64 8
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.f:                                             ; preds = %.lr.ph
  %i.ac = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.w, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.af, %.critedge.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %.023.i.i, align 8, !tbaa !32, !noalias !655
  %.not15.i.i = icmp eq ptr %i.ae, %i.u
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.f
  %i.ag = icmp ult i32 %i.w, %i.x
  br i1 %i.ag, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nuw i32 %i.w, 1
  store i32 %i.ah, ptr %i.g, align 4, !tbaa !80, !noalias !655
  store ptr %i.u, ptr %i.ad, align 8, !tbaa !32, !noalias !655
  %i.ai = load ptr, ptr %5, align 8, !tbaa !29, !noalias !655
  %.pre = load i32, ptr %i.g, align 4, !noalias !655
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph
  %i.aj = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull %i.u) #18, !noalias !655 ; 0 uses
  %.pre.i = load i8, ptr %i.h, align 8, !tbaa !26, !range !27, !noalias !655
  %.pre.fr.i = freeze i8 %.pre.i                  ; 2 uses
  %.pre5.i = load ptr, ptr %5, align 8, !noalias !655
  %i.ak = load i32, ptr %i.g, align 4, !noalias !655
  %i.al = load i32, ptr %i.f, align 8, !noalias !655
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.g
  %i.am = phi i8 [ %.pre.fr.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.v, %bb.g ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %i.an = phi i32 [ %i.ak, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.g ], [ %i.w, %.lr.ph.i.i ]
  %i.ao = phi i32 [ %i.al, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.x, %bb.g ], [ %i.x, %.lr.ph.i.i ]
  %i.ap = phi ptr [ %.pre5.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.ai, %bb.g ], [ %i.y, %.lr.ph.i.i ] ; 2 uses
  %i.aq = phi i8 [ %.pre.fr.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 1, %bb.g ], [ 1, %.lr.ph.i.i ]
  %i.ar = add nuw nsw i32 %.066248, 1
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15CSUsesThreshold, i64 120), align 8, !tbaa !293
  %.not = icmp sge i32 %.066248, %i.as            ; 2 uses
  %.052. = select i1 %.not, i1 true, i1 %.052249  ; 2 uses
  br i1 %.not, label %.critedge.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !654
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.backedge, %bb.h
  %.pn.i.i = phi ptr [ %.sroa.0199.0247, %bb.h ], [ %storemerge.i.i, %.critedge2.i.i.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !222 ; 5 uses
  %.not.i.i83 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i83, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.au = load i32, ptr %storemerge.i.i, align 8
  %i.av = and i32 %i.au, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.av, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, label %.critedge2.i.i.backedge

.critedge2.i.i.backedge:                          ; preds = %bb.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  br label %.critedge2.i.i, !llvm.loop !647

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i: ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !654 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %.critedge2.i.i.backedge, label %.lr.ph, !llvm.loop !647

._crit_edge:                                      ; preds = %.critedge2.i.i
  br i1 %.052., label %.critedge.critedge, label %._crit_edge.._crit_edge.thread_crit_edge

._crit_edge.._crit_edge.thread_crit_edge:         ; preds = %._crit_edge
  %.pre415 = load ptr, ptr %i.i, align 8, !tbaa !73
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre415, i64 48
  %.pre416 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge2.i.i.i.i, %._crit_edge.._crit_edge.thread_crit_edge, %bb.c
  %i.az = phi i8 [ %i.am, %._crit_edge.._crit_edge.thread_crit_edge ], [ 1, %bb.c ], [ 1, %.critedge2.i.i.i.i ]
  %i.ba = phi ptr [ %.pre416, %._crit_edge.._crit_edge.thread_crit_edge ], [ %i.n, %bb.c ], [ %i.n, %.critedge2.i.i.i.i ]
  %i.bb = and i32 %2, 2147483647
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.0.i.i.i85 = load ptr, ptr %i.be, align 8, !tbaa !652 ; 4 uses
  %.not.i.i.i86 = icmp eq ptr %.0.i.i.i85, null
  br i1 %.not.i.i.i86, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  %i.bf = load i32, ptr %.0.i.i.i85, align 8
  %i.bg = and i32 %i.bf, -2130706432
  %or.cond.not.i.i.i87 = icmp eq i32 %i.bg, 0
  br i1 %or.cond.not.i.i.i87, label %.lr.ph253.preheader, label %.critedge2.i.i.i.i88

.critedge2.i.i.i.i88:                             ; preds = %bb.j, %bb.k
  %.pn.i.i.i.i89 = phi ptr [ %storemerge.i.i.i.i91, %bb.k ], [ %.0.i.i.i85, %bb.j ]
  %storemerge.in.i.i.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i89, i64 24
  %storemerge.i.i.i.i91 = load ptr, ptr %storemerge.in.i.i.i.i90, align 8, !tbaa !222 ; 4 uses
  %.not.i.i.i.i92 = icmp eq ptr %storemerge.i.i.i.i91, null
  br i1 %.not.i.i.i.i92, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.critedge2.i.i.i.i88
  %i.bh = load i32, ptr %storemerge.i.i.i.i91, align 8
  %i.bi = and i32 %i.bh, -2130706432
  %or.cond.not.i.i.i.i93 = icmp eq i32 %i.bi, 0
  br i1 %or.cond.not.i.i.i.i93, label %.lr.ph253.preheader, label %.critedge2.i.i.i.i88, !llvm.loop !644

.lr.ph253.preheader:                              ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i94 = phi ptr [ %.0.i.i.i85, %bb.j ], [ %storemerge.i.i.i.i91, %bb.k ] ; 2 uses
  %.phi.trans.insert420 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i94, i64 8
  %.pre421 = load ptr, ptr %.phi.trans.insert420, align 8, !tbaa !654
  br label %.lr.ph253

.lr.ph253.loopexit:                               ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i111
  %.pre417 = load i8, ptr %i.h, align 8, !tbaa !26, !range !27
  br label %.lr.ph253, !llvm.loop !647

.lr.ph253:                                        ; preds = %.lr.ph253.loopexit, %.lr.ph253.preheader
  %i.bj = phi ptr [ %.pre421, %.lr.ph253.preheader ], [ %i.by, %.lr.ph253.loopexit ] ; 3 uses
  %i.bk = phi i8 [ %i.az, %.lr.ph253.preheader ], [ %.pre417, %.lr.ph253.loopexit ]
  %.sroa.0191.0252 = phi ptr [ %.sroa.0.0.i.i94, %.lr.ph253.preheader ], [ %storemerge.i.i108, %.lr.ph253.loopexit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0191.0252, i64 8
  %i.bm = trunc nuw i8 %i.bk to i1
  br i1 %i.bm, label %bb.l, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit

bb.l:                                             ; preds = %.lr.ph253
  %i.bn = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bo = load i32, ptr %i.g, align 4, !tbaa !80  ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.idx.i.i100 = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i100
  %.not17.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %.lr.ph.i.i101

bb.m:                                             ; preds = %.lr.ph.i.i101
  %i.br = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i.i103, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %bb.l, %bb.m
  %.01218.i.i = phi ptr [ %i.br, %bb.m ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bs = load ptr, ptr %.01218.i.i, align 8, !tbaa !32
  %.not15.i.i102 = icmp eq ptr %i.bs, %i.bj
  br i1 %.not15.i.i102, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213, label %bb.m

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit: ; preds = %.lr.ph253
  %i.bt = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull %i.bj) #18
  %.not221 = icmp eq ptr %i.bt, null
  br i1 %.not221, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213_crit_edge

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213_crit_edge: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit
  %.pre305 = load ptr, ptr %i.bl, align 8, !tbaa !654
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213: ; preds = %.lr.ph.i.i101, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213_crit_edge
  %i.bu = phi ptr [ %.pre305, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213_crit_edge ], [ %i.bj, %.lr.ph.i.i101 ]
  br label %.critedge2.i.i105

.critedge2.i.i105:                                ; preds = %.critedge2.i.i105.backedge, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213
  %.pn.i.i106 = phi ptr [ %.sroa.0191.0252, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread213 ], [ %storemerge.i.i108, %.critedge2.i.i105.backedge ]
  %storemerge.in.i.i107 = getelementptr inbounds nuw i8, ptr %.pn.i.i106, i64 24
  %storemerge.i.i108 = load ptr, ptr %storemerge.in.i.i107, align 8, !tbaa !222 ; 5 uses
  %.not.i.i109 = icmp eq ptr %storemerge.i.i108, null
  br i1 %.not.i.i109, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %.critedge2.i.i105
  %i.bv = load i32, ptr %storemerge.i.i108, align 8
  %i.bw = and i32 %i.bv, -2130706432
  %or.cond.not.i.i110 = icmp eq i32 %i.bw, 0
  br i1 %or.cond.not.i.i110, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i111, label %.critedge2.i.i105.backedge

.critedge2.i.i105.backedge:                       ; preds = %bb.n, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i111
  br label %.critedge2.i.i105, !llvm.loop !647

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i111: ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge.i.i108, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !654 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bu
  br i1 %i.bz, label %.critedge2.i.i105.backedge, label %.lr.ph253.loopexit

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread: ; preds = %.critedge2.i.i.i.i88, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit, %bb.l, %bb.m, %.critedge2.i.i105, %._crit_edge.thread
  %.557 = phi i1 [ true, %bb.m ], [ false, %._crit_edge.thread ], [ true, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit ], [ false, %.critedge2.i.i105 ], [ true, %bb.l ], [ false, %.critedge2.i.i.i.i88 ]
  %i.ca = load i8, ptr %i.h, align 8, !tbaa !26, !range !27, !noundef !28
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread
  %i.cc = load ptr, ptr %5, align 8, !tbaa !29
  call void @free(ptr noundef %i.cc) #18
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.557, label %.critedge, label %.critedge285

.critedge.critedge:                               ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit, %._crit_edge
  %6 = trunc nuw i8 %i.am to i1
  br i1 %6, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit114, label %7

7:                                                ; preds = %.critedge.critedge
  call void @free(ptr noundef %i.ap) #18
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit114

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit114:        ; preds = %.critedge.critedge, %7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit114, %bb.b, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !185   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 184
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(80) %4) #18
  br i1 %i.ch, label %bb.p, label %.critedge80

bb.p:                                             ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !270 ; 2 uses
  %.not77 = icmp eq ptr %3, %i.cj
  br i1 %.not77, label %.critedge80, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr noundef %i.cj) #18
  br i1 %i.ck, label %.critedge80, label %.critedge285

.critedge80:                                      ; preds = %bb.p, %bb.q, %.critedge
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !228, !noalias !656 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.co = load i24, ptr %i.cn, align 8, !noalias !656
  %i.cp = zext i24 %i.co to i64                   ; 2 uses
  %i.cq = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #18, !noalias !656
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %i.ct = getelementptr [32 x i8], ptr %i.cm, i64 %i.cp ; 5 uses
  %.not1.i.i.i.i.i113 = icmp samesign eq i64 %i.cr, %i.cp
  br i1 %.not1.i.i.i.i.i113, label %_ZN4llvm12MachineInstr8all_usesEv.exit, label %.lr.ph.i.i.i.i.i114

.lr.ph.i.i.i.i.i114:                              ; preds = %.critedge80, %bb.r
  %.sroa.011.0.i.i = phi ptr [ %i.cx, %bb.r ], [ %i.cs, %.critedge80 ] ; 3 uses
  %i.cu = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !657
  %i.cv = and i32 %i.cu, 16777471
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN4llvm12MachineInstr8all_usesEv.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i114
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.cx, %i.ct
  br i1 %.not.i.i.i.i.i115, label %.critedge284, label %.lr.ph.i.i.i.i.i114, !llvm.loop !1

_ZN4llvm12MachineInstr8all_usesEv.exit:           ; preds = %.lr.ph.i.i.i.i.i114, %.critedge80
  %.sroa.011.1.i.i = phi ptr [ %i.cs, %.critedge80 ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i114 ] ; 2 uses
  %.not222258 = icmp eq ptr %.sroa.011.1.i.i, %i.ct
  br i1 %.not222258, label %.critedge284, label %.lr.ph261

.lr.ph261:                                        ; preds = %_ZN4llvm12MachineInstr8all_usesEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.063260 = phi i1 [ %..063, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ false, %_ZN4llvm12MachineInstr8all_usesEv.exit ]
  %.sroa.0183.0259 = phi ptr [ %.sroa.0183.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_usesEv.exit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0183.0259, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !222
  %i.da = icmp slt i32 %i.cz, 0                   ; 2 uses
  %..063 = select i1 %i.da, i1 true, i1 %.063260  ; 2 uses
  br i1 %i.da, label %.critedge226, label %bb.s

bb.s:                                             ; preds = %.lr.ph261
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0183.0259, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.db, %i.ct
  br i1 %.not1.i.i, label %._crit_edge262, label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %bb.s, %bb.t
  %.sroa.0183.1 = phi ptr [ %i.df, %bb.t ], [ %i.db, %bb.s ] ; 4 uses
  %i.dc = load i32, ptr %.sroa.0183.1, align 8
  %i.dd = and i32 %i.dc, 16777471
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i116
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0183.1, i64 32 ; 2 uses
  %.not.i.i117 = icmp eq ptr %i.df, %i.ct
  br i1 %.not.i.i117, label %._crit_edge262, label %.lr.ph.i.i116, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i116
  %.not222 = icmp eq ptr %.sroa.0183.1, %i.ct
  br i1 %.not222, label %._crit_edge262, label %.lr.ph261

._crit_edge262:                                   ; preds = %bb.s, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.t
  br i1 %..063, label %.critedge226, label %.critedge284

.critedge284:                                     ; preds = %bb.r, %_ZN4llvm12MachineInstr8all_usesEv.exit, %._crit_edge262
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !73 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = and i32 %2, 2147483647
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.di, align 8
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  %i.dp = zext nneg i32 %2 to i64
  %i.dq = load ptr, ptr %i.do, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dp
  %.0.in.i.i.i118 = select i1 %i.d, ptr %i.dn, ptr %i.dr
  %.0.i.i.i119 = load ptr, ptr %.0.in.i.i.i118, align 8, !tbaa !652 ; 4 uses
  %.not.i.i.i120 = icmp eq ptr %.0.i.i.i119, null
  br i1 %.not.i.i.i120, label %.critedge285, label %bb.u

bb.u:                                             ; preds = %.critedge284
  %i.ds = load i32, ptr %.0.i.i.i119, align 8
  %i.dt = and i32 %i.ds, -2130706432
  %or.cond.not.i.i.i121 = icmp eq i32 %i.dt, 0
  br i1 %or.cond.not.i.i.i121, label %.lr.ph267.preheader, label %.critedge2.i.i.i.i122

.critedge2.i.i.i.i122:                            ; preds = %bb.u, %bb.v
  %.pn.i.i.i.i123 = phi ptr [ %storemerge.i.i.i.i125, %bb.v ], [ %.0.i.i.i119, %bb.u ]
  %storemerge.in.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i123, i64 24
  %storemerge.i.i.i.i125 = load ptr, ptr %storemerge.in.i.i.i.i124, align 8, !tbaa !222 ; 4 uses
  %.not.i.i.i.i126 = icmp eq ptr %storemerge.i.i.i.i125, null
  br i1 %.not.i.i.i.i126, label %.critedge285, label %bb.v

bb.v:                                             ; preds = %.critedge2.i.i.i.i122
  %i.du = load i32, ptr %storemerge.i.i.i.i125, align 8
  %i.dv = and i32 %i.du, -2130706432
  %or.cond.not.i.i.i.i127 = icmp eq i32 %i.dv, 0
  br i1 %or.cond.not.i.i.i.i127, label %.lr.ph267.preheader, label %.critedge2.i.i.i.i122, !llvm.loop !644

.lr.ph267.preheader:                              ; preds = %bb.v, %bb.u
  %.sroa.0.0.i.i128 = phi ptr [ %.0.i.i.i119, %bb.u ], [ %storemerge.i.i.i.i125, %bb.v ] ; 2 uses
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i128, i64 8
  %.pre423 = load ptr, ptr %.phi.trans.insert422, align 8, !tbaa !654
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142, %.lr.ph267.preheader
  %i.dw = phi ptr [ %.pre423, %.lr.ph267.preheader ], [ %i.ee, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142 ] ; 2 uses
  %.060266 = phi i1 [ false, %.lr.ph267.preheader ], [ %.060., %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142 ]
  %.sroa.0175.0265 = phi ptr [ %.sroa.0.0.i.i128, %.lr.ph267.preheader ], [ %storemerge.i.i139, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !227 ; 3 uses
  %i.dz = icmp ne i32 %i.dy, 20
  %i.ea = icmp ne i32 %i.dy, 12
  %spec.select.i134.not = and i1 %i.dz, %i.ea
  %.060. = select i1 %spec.select.i134.not, i1 true, i1 %.060266 ; 2 uses
  switch i32 %i.dy, label %.critedge226 [
    i32 20, label %.critedge2.i.i136.preheader
    i32 12, label %.critedge2.i.i136.preheader
  ]

.critedge2.i.i136.preheader:                      ; preds = %.lr.ph267, %.lr.ph267
  br label %.critedge2.i.i136

.critedge2.i.i136:                                ; preds = %.critedge2.i.i136.backedge, %.critedge2.i.i136.preheader
  %.pn.i.i137 = phi ptr [ %.sroa.0175.0265, %.critedge2.i.i136.preheader ], [ %storemerge.i.i139, %.critedge2.i.i136.backedge ]
  %storemerge.in.i.i138 = getelementptr inbounds nuw i8, ptr %.pn.i.i137, i64 24
  %storemerge.i.i139 = load ptr, ptr %storemerge.in.i.i138, align 8, !tbaa !222 ; 5 uses
  %.not.i.i140 = icmp eq ptr %storemerge.i.i139, null
  br i1 %.not.i.i140, label %._crit_edge268, label %bb.w

bb.w:                                             ; preds = %.critedge2.i.i136
  %i.eb = load i32, ptr %storemerge.i.i139, align 8
  %i.ec = and i32 %i.eb, -2130706432
  %or.cond.not.i.i141 = icmp eq i32 %i.ec, 0
  br i1 %or.cond.not.i.i141, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142, label %.critedge2.i.i136.backedge

.critedge2.i.i136.backedge:                       ; preds = %bb.w, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142
  br label %.critedge2.i.i136, !llvm.loop !647

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i142: ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge.i.i139, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !654 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dw
  br i1 %i.ef, label %.critedge2.i.i136.backedge, label %.lr.ph267, !llvm.loop !647

._crit_edge268:                                   ; preds = %.critedge2.i.i136
  br i1 %.060., label %.critedge226, label %.critedge285

.critedge226:                                     ; preds = %.lr.ph261, %.lr.ph267, %._crit_edge268, %._crit_edge262
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !73 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = and i32 %1, 2147483647
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = load ptr, ptr %i.ei, align 8
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 312
  %i.ep = zext nneg i32 %1 to i64
  %i.eq = load ptr, ptr %i.eo, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  %.0.in.i.i.i144 = select i1 %i.c, ptr %i.en, ptr %i.er
  %.0.i.i.i145 = load ptr, ptr %.0.in.i.i.i144, align 8, !tbaa !652 ; 4 uses
  %.not.i.i.i146 = icmp eq ptr %.0.i.i.i145, null
  br i1 %.not.i.i.i146, label %.critedge285, label %bb.x

bb.x:                                             ; preds = %.critedge226
  %i.es = load i32, ptr %.0.i.i.i145, align 8
  %i.et = and i32 %i.es, -2130706432
  %or.cond.not.i.i.i147 = icmp eq i32 %i.et, 0
  br i1 %or.cond.not.i.i.i147, label %.lr.ph275, label %.critedge2.i.i.i.i148

.critedge2.i.i.i.i148:                            ; preds = %bb.x, %bb.y
  %.pn.i.i.i.i149 = phi ptr [ %storemerge.i.i.i.i151, %bb.y ], [ %.0.i.i.i145, %bb.x ]
  %storemerge.in.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i149, i64 24
  %storemerge.i.i.i.i151 = load ptr, ptr %storemerge.in.i.i.i.i150, align 8, !tbaa !222 ; 4 uses
  %.not.i.i.i.i152 = icmp eq ptr %storemerge.i.i.i.i151, null
  br i1 %.not.i.i.i.i152, label %.critedge285, label %bb.y

bb.y:                                             ; preds = %.critedge2.i.i.i.i148
  %i.eu = load i32, ptr %storemerge.i.i.i.i151, align 8
  %i.ev = and i32 %i.eu, -2130706432
end_hunk_0
