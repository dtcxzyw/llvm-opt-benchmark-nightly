Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PHIEliminationUtils?download=true
inline.NumInlined: 195
inline.NumDeleted: 150
begin_hunk_0_@_ZN4llvm22findPHICopyInsertPointEPNS_17MachineBasicBlockES1_NS_8RegisterE:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !209
  %i.cb = icmp eq ptr %i.ca, %0
  br i1 %i.cb, label %bb.j, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cc = trunc nuw i8 %i.bw to i1
  br i1 %i.cc, label %bb.k, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cd = zext i32 %i.bu to i64
  %.idx.i.i = shl nuw nsw i64 %i.cd, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.cg, %.critedge.i.i ], [ %i.bv, %bb.k ] ; 2 uses
  %i.cf = load ptr, ptr %.023.i.i, align 8, !tbaa !210, !noalias !211
  %.not15.i.i = icmp eq ptr %i.cf, %i.by
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cg, %i.ce
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.k
  %i.ch = icmp ult i32 %i.bu, %i.bt
  br i1 %i.ch, label %bb.l, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ci = add nuw i32 %i.bu, 1
  store i32 %i.ci, ptr %i.ak, align 4, !tbaa !88, !noalias !211
  store ptr %i.by, ptr %i.ce, align 8, !tbaa !210, !noalias !211
  %i.cj = load ptr, ptr %3, align 8, !tbaa !84, !noalias !211
  %.pre = load i32, ptr %i.ak, align 4, !noalias !211 ; 2 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.j
  %i.ck = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull %i.by) #5, !noalias !211 ; 0 uses
  %.pre.i = load i8, ptr %i.al, align 8, !tbaa !89, !range !68, !noalias !211
  %.pre.fr.i = freeze i8 %.pre.i
  %.pre5.i = load ptr, ptr %3, align 8, !noalias !211
  %i.cl = load i32, ptr %i.ak, align 4, !noalias !211 ; 2 uses
  %i.cm = load i32, ptr %i.aj, align 8, !noalias !211
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.l, %.lr.ph
  %i.cn = phi i32 [ %i.bs, %.lr.ph ], [ %i.cl, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.l ], [ %i.bs, %.lr.ph.i.i ]
  %i.co = phi i32 [ %i.bt, %.lr.ph ], [ %i.cm, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.bt, %bb.l ], [ %i.bt, %.lr.ph.i.i ]
  %i.cp = phi i32 [ %i.bu, %.lr.ph ], [ %i.cl, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.l ], [ %i.bs, %.lr.ph.i.i ]
  %i.cq = phi ptr [ %i.bv, %.lr.ph ], [ %.pre5.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.cj, %bb.l ], [ %i.bv, %.lr.ph.i.i ]
  %i.cr = phi i8 [ %i.bw, %.lr.ph ], [ %.pre.fr.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 1, %bb.l ], [ 1, %.lr.ph.i.i ]
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !206
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit
  %.pr3.i = phi ptr [ %i.cu, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i ], [ %.sroa.061.086, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.pr3.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !204 ; 5 uses
  %.not.i.i32 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i32, label %._crit_edge.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = and i32 %i.cv, 16777216
  %.not.i.i.i33 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i33, label %._crit_edge.loopexit, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i: ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !206
  %i.cz = icmp eq ptr %i.cy, %i.cs
  br i1 %i.cz, label %bb.m, label %.lr.ph.loopexit, !llvm.loop !205

.lr.ph89:                                         ; preds = %_ZN4llvm17MachineBasicBlock6rbeginEv.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %.sroa.053.088 = phi ptr [ %.sroa.0.1.i.i.i.i46, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ %.sroa.0.1.i.i.i.i, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit ] ; 15 uses
  %i.da = load i8, ptr %i.al, align 8, !tbaa !89, !range !68, !noundef !69
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.o, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit

bb.o:                                             ; preds = %.lr.ph89
  %i.dc = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.dd = load i32, ptr %i.ak, align 4, !tbaa !88 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %.idx.i.i34 = shl nuw nsw i64 %i.de, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i.i34
  %.not17.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i35

bb.p:                                             ; preds = %.lr.ph.i.i35
  %i.dg = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dg, %i.df
  br i1 %.not.i.i37, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %bb.o, %bb.p
  %.01418.i.i = phi ptr [ %i.dg, %bb.p ], [ %i.dc, %bb.o ] ; 2 uses
  %i.dh = load ptr, ptr %.01418.i.i, align 8, !tbaa !210
  %.not15.i.i36 = icmp eq ptr %i.dh, %.sroa.053.088
  br i1 %.not15.i.i36, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69, label %bb.p

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit: ; preds = %.lr.ph89
  %i.di = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull %.sroa.053.088) #5
  %.not72 = icmp eq ptr %i.di, null
  br i1 %.not72, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit, %.lr.ph.i.i35
  %.0.copyload.i.i.i.i.i.i.i.i.i.i38 = load i64, ptr %.sroa.053.088, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i38, 4
  %.not.i.i.i.i39 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.i39, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.053.088, i64 44
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !71
  %i.dm = and i32 %i.dl, 8
  %.not34.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.do, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42 ], [ %.sroa.053.088, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !8  ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !71
  %i.dr = and i32 %i.dq, 8
  %.not3.i.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42, !llvm.loop !214

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69
  %.sroa.0.1.i.i.i.i40 = phi ptr [ %.sroa.053.088, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread69 ], [ %.sroa.053.088, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i41 ], [ %i.do, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i42 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i40, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !8
  br label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread: ; preds = %bb.p, %bb.o, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit
  br i1 %i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.053.088, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !71 ; 2 uses
  %i.dw = and i32 %i.dv, 12
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = and i32 %i.dv, 4
  %i.dz = icmp ne i32 %i.dy, 0
  %or.cond.i.i = or i1 %i.dx, %i.dz
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.053.088, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !215
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !216
  %i.ee = and i64 %i.ed, 128
  %.not73 = icmp eq i64 %i.ee, 0
  br i1 %.not73, label %bb.r, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit: ; preds = %bb.q
  %i.ef = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.053.088, i64 noundef 128, i32 noundef 1) #5
  br i1 %i.ef, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.r

bb.r:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE8containsEPKS1_.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.053.088, i64 52
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !83
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.0.copyload.i.i.i.i.i.i.i.i.i43 = load i64, ptr %.sroa.053.088, align 8
  %i.ej = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i43, -8
  %i.ek = inttoptr i64 %i.ej to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i44 = load i64, ptr %i.ek, align 8
  %i.el = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i44, 4
  %.not.i.i.i.i45 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i45, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47: ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.en = load i32, ptr %i.em, align 4, !tbaa !71
  %i.eo = and i32 %i.en, 4
  %.not45.i.i.i.i48 = icmp eq i32 %i.eo, 0
  br i1 %.not45.i.i.i.i48, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49
  %.sroa.0.06.i.i.i.i50 = phi ptr [ %i.eq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49 ], [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i51 = load i64, ptr %.sroa.0.06.i.i.i.i50, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i51, -8
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.es = load i32, ptr %i.er, align 4, !tbaa !71
  %i.et = and i32 %i.es, 4
  %.not4.i.i.i.i52 = icmp eq i32 %i.et, 0
  br i1 %.not4.i.i.i.i52, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49, !llvm.loop !81

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49, %bb.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47
  %.sroa.0.1.i.i.i.i46 = phi ptr [ %i.ek, %bb.s ], [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i47 ], [ %i.eq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i49 ] ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0.1.i.i.i.i46, %i.a
  br i1 %.not71, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph89, !llvm.loop !219

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, %.split, %bb.r, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.04.0 = phi ptr [ %i.dt, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.bi, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit ], [ %.sroa.053.088, %.split ], [ %i.bi, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ %.sroa.053.088, %bb.r ], [ %.sroa.053.088, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit ]
  %i.eu = call ptr @_ZN4llvm17MachineBasicBlock17SkipPHIsAndLabelsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %.sroa.04.0) #5
  %i.ev = load i8, ptr %i.al, align 8, !tbaa !89, !range !68, !noundef !69
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ex = load ptr, ptr %3, align 8, !tbaa !84
  call void @free(ptr noundef %i.ex) #5
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.b
  %.sroa.024.1 = phi ptr [ %i.f, %bb.b ], [ %i.eu, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ %i.ah, %.loopexit ]
  ret ptr %.sroa.024.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_ZN4llvm17MachineBasicBlock17SkipPHIsAndLabelsENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(360), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !10, i64 0, !12, i64 8}
!10 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !11, i64 0}
!11 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !6, i64 0}
!12 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !49, i64 216}
!15 = !{!"_ZTSN4llvm17MachineBasicBlockE", !16, i64 0, !22, i64 16, !5, i64 24, !5, i64 28, !23, i64 32, !24, i64 40, !32, i64 64, !38, i64 112, !40, i64 144, !45, i64 168, !50, i64 184, !55, i64 208, !5, i64 212, !49, i64 216, !49, i64 217, !5, i64 220, !22, i64 224, !49, i64 232, !49, i64 233, !49, i64 234, !49, i64 235, !49, i64 236, !56, i64 240, !60, i64 256, !65, i64 320, !49, i64 328, !49, i64 329, !49, i64 330, !67, i64 336, !67, i64 344, !67, i64 352}
!16 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_17MachineBasicBlockENS_15MachineFunctionEJEEE", !17, i64 0}
!17 = !{!"_ZTSN4llvm10ilist_nodeINS_17MachineBasicBlockEJEEE", !18, i64 0}
!18 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !19, i64 0}
!19 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !20, i64 0}
!20 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !21, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !13, i64 0}
!22 = !{!"p1 _ZTSN4llvm10BasicBlockE", !13, i64 0}
!23 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !13, i64 0}
!24 = !{!"_ZTSN4llvm6iplistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEEE", !26, i64 0, !28, i64 8}
!26 = !{!"_ZTSN4llvm12ilist_traitsINS_12MachineInstrEEE", !27, i64 0}
!27 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !13, i64 0}
!28 = !{!"_ZTSN4llvm12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !29, i64 0}
!29 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !30, i64 0}
!30 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !31, i64 0}
!31 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !9, i64 0}
!32 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEE", !33, i64 0, !37, i64 16}
!33 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEEE", !34, i64 0}
!34 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EEE", !35, i64 0}
!35 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17MachineBasicBlockEvEE", !36, i64 0}
!36 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj4EEE", !6, i64 0}
!38 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEE", !33, i64 0, !39, i64 16}
!39 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj2EEE", !6, i64 0}
!40 = !{!"_ZTSSt6vectorIN4llvm17BranchProbabilityESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN4llvm17BranchProbabilityE", !13, i64 0}
!45 = !{!"_ZTSSt8optionalImE", !46, i64 0}
!46 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !48, i64 0}
!48 = !{!"_ZTSSt22_Optional_payload_baseImE", !6, i64 0, !49, i64 8}
!49 = !{!"bool", !6, i64 0}
!50 = !{!"_ZTSSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN4llvm17MachineBasicBlock16RegisterMaskPairE", !13, i64 0}
!55 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!56 = !{!"_ZTSSt8optionalIN4llvm10UniqueBBIDEE", !57, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseIN4llvm10UniqueBBIDELb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt17_Optional_payloadIN4llvm10UniqueBBIDELb1ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm10UniqueBBIDEE", !6, i64 0, !49, i64 8}
!60 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !61, i64 0, !64, i64 16}
!61 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !62, i64 0}
!62 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !63, i64 0}
!63 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !36, i64 0}
!64 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !6, i64 0}
!65 = !{!"_ZTSN4llvm12MBBSectionIDE", !66, i64 0, !5, i64 4}
!66 = !{!"_ZTSN4llvm12MBBSectionID11SectionTypeE", !6, i64 0}
!67 = !{!"p1 _ZTSN4llvm8MCSymbolE", !13, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!15, !49, i64 330}
!71 = !{!72, !5, i64 44}
!72 = !{!"_ZTSN4llvm12MachineInstrE", !73, i64 0, !75, i64 16, !27, i64 24, !76, i64 32, !5, i64 40, !77, i64 43, !5, i64 44, !6, i64 48, !5, i64 52, !5, i64 56, !78, i64 64, !79, i64 72}
!73 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !74, i64 0}
!74 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !30, i64 0}
!75 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !13, i64 0}
!76 = !{!"p1 _ZTSN4llvm14MachineOperandE", !13, i64 0}
!77 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !6, i64 0}
!78 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !6, i64 0}
!79 = !{!"_ZTSN4llvm8DebugLocE", !80, i64 0}
!80 = !{!"p1 _ZTSN4llvm10DILocationE", !13, i64 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!72, !5, i64 52}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !86, i64 0, !5, i64 8, !5, i64 12, !49, i64 16}
!86 = !{!"any p2 pointer", !13, i64 0}
!87 = !{!85, !5, i64 8}
!88 = !{!85, !5, i64 12}
!89 = !{!85, !49, i64 16}
!90 = !{!15, !23, i64 32}
!91 = !{!92, !97, i64 32}
!92 = !{!"_ZTSN4llvm15MachineFunctionE", !93, i64 0, !94, i64 8, !95, i64 16, !96, i64 24, !97, i64 32, !98, i64 40, !99, i64 48, !100, i64 56, !101, i64 64, !102, i64 72, !103, i64 80, !104, i64 88, !5, i64 112, !5, i64 116, !109, i64 120, !121, i64 200, !123, i64 208, !129, i64 288, !131, i64 296, !5, i64 312, !55, i64 316, !49, i64 317, !49, i64 318, !49, i64 319, !135, i64 320, !138, i64 328, !145, i64 336, !150, i64 360, !150, i64 384, !155, i64 408, !160, i64 432, !163, i64 456, !165, i64 480, !167, i64 504, !49, i64 528, !49, i64 529, !49, i64 530, !49, i64 531, !49, i64 532, !49, i64 533, !49, i64 534, !5, i64 536, !172, i64 540, !173, i64 544, !175, i64 568, !180, i64 592, !180, i64 616, !184, i64 640, !185, i64 648, !186, i64 656, !187, i64 664, !189, i64 688, !191, i64 712, !5, i64 856, !196, i64 864, !201, i64 1040, !49, i64 1064}
!93 = !{!"p1 _ZTSN4llvm8FunctionE", !13, i64 0}
!94 = !{!"p1 _ZTSN4llvm13TargetMachineE", !13, i64 0}
!95 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !13, i64 0}
!96 = !{!"p1 _ZTSN4llvm9MCContextE", !13, i64 0}
!97 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !13, i64 0}
!98 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !13, i64 0}
!99 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !13, i64 0}
!100 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !13, i64 0}
!101 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !13, i64 0}
!102 = !{!"p1 _ZTSN4llvm9MCSectionE", !13, i64 0}
!103 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !13, i64 0}
!104 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !105, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!108 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !86, i64 0}
!109 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !110, i64 0, !111, i64 8, !112, i64 16, !117, i64 64}
!110 = !{!"p1 omnipotent char", !13, i64 0}
!111 = !{!"long", !6, i64 0}
!112 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !113, i64 0, !116, i64 16}
!113 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !114, i64 0}
!114 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !115, i64 0}
!115 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !36, i64 0}
!116 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!117 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !118, i64 0}
!118 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !119, i64 0}
!119 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !120, i64 0}
!120 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !36, i64 0}
!121 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !122, i64 0}
!122 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !13, i64 0}
!123 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !124, i64 0}
!124 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !125, i64 0, !128, i64 16}
!125 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !126, i64 0}
!126 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !127, i64 0}
!127 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !36, i64 0}
!128 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !6, i64 0}
!129 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !130, i64 0}
!130 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !13, i64 0}
!131 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !132, i64 0}
!132 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !133, i64 0}
!133 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !134, i64 0}
!134 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !18, i64 0}
!135 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !136, i64 0}
!136 = !{!"_ZTSSt6bitsetILm12EE", !137, i64 0}
!137 = !{!"_ZTSSt12_Base_bitsetILm1EE", !111, i64 0}
!138 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !139, i64 0}
!139 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !140, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !141, i64 0}
!141 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !142, i64 0}
!142 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !143, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !144, i64 0}
!144 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !13, i64 0}
!145 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !146, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !147, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !148, i64 0}
end_hunk_0
