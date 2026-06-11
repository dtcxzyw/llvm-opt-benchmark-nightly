inline.NumInlined: 893
inline.NumDeleted: 430
begin_hunk_0_@_ZN2v88internal8compiler13MoveOptimizer13OptimizeMergeEPNS1_16InstructionBlockE:bb.a
  %i.dx = icmp ult i64 %i.dd, %i.dw
  %.0.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i, i1 %i.du, i1 %i.dx ; 2 uses
  %.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.02630.i.i.i.i, i64 %.in.v.i.i.i.i
  %.026.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !noalias !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.026.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %.0.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.o

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i
  %.025.lcssa35.i.i.i.i = phi ptr [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.az, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i ] ; 4 uses
  %.val7.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !8
  %i.dy = icmp eq ptr %.025.lcssa35.i.i.i.i, %.val7.i.i.i.i
  br i1 %i.dy, label %select.unfold.i.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.dz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa35.i.i.i.i) #14, !noalias !8 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !8
  %.phi.trans.insert20.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %.pre21.i.i.i = load i64, ptr %.phi.trans.insert20.i.i.i, align 8, !noalias !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %i.ea = phi i64 [ %.pre21.i.i.i, %bb.n ], [ %i.dw, %._crit_edge.i.i.i.i ]
  %i.eb = phi i64 [ %.pre.i.i.i, %bb.n ], [ %i.ds, %._crit_edge.i.i.i.i ] ; 3 uses
  %.025.lcssa34.i.i.i.i = phi ptr [ %.025.lcssa35.i.i.i.i, %bb.n ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.016.0.i.i.i.i = phi ptr [ %i.dz, %bb.n ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ec = and i64 %i.eb, 7
  %i.ed = icmp eq i64 %i.ec, 4
  %i.ee = icmp ne ptr %.sroa.016.0.i.i.i.i, %i.dm
  %i.ef = icmp ne i64 %i.eb, %i.cb
  %.0.i.i.i.i14.i.i.i.i = select i1 %i.ed, i1 %i.ee, i1 %i.ef
  %i.eg = icmp ult i64 %i.eb, %i.cb
  %i.eh = icmp ult i64 %i.ea, %i.dd
  %.0.i.i15.i.i.i.i = select i1 %.0.i.i.i.i14.i.i.i.i, i1 %i.eg, i1 %i.eh
  br i1 %.0.i.i15.i.i.i.i, label %select.unfold.i.i.i, label %.thread321

select.unfold.i.i.i:                              ; preds = %bb.o, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.025.lcssa35.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.025.lcssa34.i.i.i.i, %bb.o ] ; 5 uses
  %i.ei = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.az
  br i1 %i.ei, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread.thread, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ek = icmp ne ptr %.sroa.4.0.i.ph.i.i.i, %i.dm
  %i.el = load i64, ptr %i.ej, align 8, !noalias !8 ; 2 uses
  %i.em = icmp ne i64 %i.cb, %i.el
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.cf, i1 %i.ek, i1 %i.em
  %i.en = icmp ult i64 %i.cb, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !8
  %i.eq = icmp ult i64 %i.dd, %i.ep
  %.0.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i, i1 %i.en, i1 %i.eq
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread.thread

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread.thread: ; preds = %select.unfold.i.i.i, %bb.p
  %i.er = phi i1 [ %.0.i.i.i.i.i.i.i, %bb.p ], [ true, %select.unfold.i.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.er, ptr noundef nonnull %i.dm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #13, !noalias !8
  %i.es = load i64, ptr %i.bb, align 8, !noalias !8
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.bb, align 8, !noalias !8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

bb.q:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !8
  store i64 %i.cb, ptr %2, align 8, !noalias !8
  store i64 %i.dd, ptr %.sroa.5263.0..sroa_idx, align 8, !noalias !8
  store i64 1, ptr %i.aw, align 8, !noalias !8
  %.not15.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not15.not.i, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread311, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i
  %.01316.i = phi i64 [ %i.fe, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i ], [ 0, %bb.q ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.01316.i ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !8 ; 2 uses
  %i.ew = and i64 %i.ev, 7
  %i.ex = icmp ne i64 %i.ew, 4
  %i.ey = icmp eq i64 %i.ev, %i.cb
  %.0.i.i.i.i.i.i17.i = and i1 %i.ey, %i.ex
  br i1 %.0.i.i.i.i.i.i17.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i: ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !8 ; 2 uses
  %i.fb = and i64 %i.fa, 7
  %i.fc = icmp ne i64 %i.fb, 4
  %i.fd = icmp eq i64 %i.fa, %i.dd
  %.0.i.i.i.i.i.i.i18.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %.0.i.i.i.i.i.i.i18.i, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit141, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i: ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i, %.lr.ph.i
  %i.fe = add nuw i64 %.01316.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fe, %.val.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !13

.critedge.i:                                      ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i
  %i.ff = icmp eq i64 %.val.i, 16
  br i1 %i.ff, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread311, !prof !14

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread311: ; preds = %bb.q, %.critedge.i
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.val.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !8
  %i.fh = add nuw i64 %.val.i, 1
  store i64 %i.fh, ptr %3, align 8, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit: ; preds = %.critedge.i
  call preserve_mostcc void @_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(400) %3), !noalias !8
  %i.fi = call fastcc { ptr, i8 } @_ZNSt3mapIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_mEEEE7emplaceIJSA_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !8 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.fi, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.fi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !8
  %i.fj = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.fj, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %.thread321

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit141: ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = add i64 %i.fl, 1                        ; 2 uses
  store i64 %i.fm, ptr %i.fk, align 8
  br label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit

.thread321:                                       ; preds = %bb.o, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit
  %.sroa.8.1278283 = phi ptr [ %.fca.0.extract.i, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit ], [ %.sroa.016.0.i.i.i.i, %bb.o ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.8.1278283, i64 48 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = add i64 %i.fo, 1                        ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8
  br label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit: ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit141, %.thread321
  %i.fq = phi i64 [ %i.fp, %.thread321 ], [ %i.fm, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit141 ]
  %i.fr = load ptr, ptr %i.c, align 8
  %i.fs = load ptr, ptr %i.a, align 8
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = icmp eq i64 %i.fq, %i.fw
  %i.fy = zext i1 %i.fx to i64
  %spec.select = add i64 %.1118355, %i.fy
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread.thread, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread311, %.preheader, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %.3120 = phi i64 [ %.1118355, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread.thread ], [ %.1118355, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit ], [ %.1118355, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit ], [ %spec.select, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorptEv.exit ], [ %.1118355, %.preheader ], [ %.1118355, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE7emplaceIJRS6_iEEESt4pairINSE_8iteratorEbEDpOT_.exit.thread311 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0124354, i64 8 ; 2 uses
  %.not134 = icmp eq ptr %i.fz, %i.bw
  br i1 %.not134, label %bb.r, label %.preheader

bb.r:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %.0123357, i64 4 ; 2 uses
  %.not133 = icmp eq ptr %i.ga, %i.d
  br i1 %.not133, label %._crit_edge361, label %bb.f

._crit_edge361:                                   ; preds = %bb.r
  %.val169.pre = load i64, ptr %3, align 8        ; 4 uses
  %.val170.pre = load i64, ptr %i.bb, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gc = icmp eq i64 %.val169.pre, -1            ; 3 uses
  %.v.i = select i1 %i.gc, i64 %.val170.pre, i64 %.val169.pre ; 2 uses
  %i.gd = icmp eq i64 %.v.i, 0
  %i.ge = icmp eq i64 %.3120, 0
  %or.cond = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge361
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 208
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gj
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %.not135 = icmp eq i64 %.3120, %.v.i
  br i1 %.not135, label %.loopexit332, label %.preheader448

.preheader448:                                    ; preds = %bb.s
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  store ptr %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.val1.i = load ptr, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gw = ptrtoint ptr %i.gt to i64               ; 2 uses
  %.sroa.0254.0.ph = select i1 %i.gc, ptr null, ptr %i.gt
  %.sroa.9257.0.ph = select i1 %i.gc, ptr %.val1.i, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge, %.preheader448
  %.val.i181.pre391.ph = phi i64 [ %.val169.pre, %.preheader448 ], [ %.val.i181.pre391.ph.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge ] ; 3 uses
  %.sroa.0254.0.ph508 = phi ptr [ %.sroa.0254.0.ph, %.preheader448 ], [ %.sroa.0254.0.ph508.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge ]
  %.sroa.9257.0.ph509 = phi ptr [ %.sroa.9257.0.ph, %.preheader448 ], [ %.sroa.9257.0.ph509.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge ]
  %i.gx = icmp eq i64 %.val.i181.pre391.ph, -1    ; 2 uses
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.val.i181.pre391.ph
  %.sroa.01.0.i = select i1 %i.gx, ptr null, ptr %i.gy
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer510

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer510: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer, %bb.af
  %.sroa.0254.0.ph511 = phi ptr [ %.sroa.0254.0.ph508, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer ], [ null, %bb.af ]
  %.sroa.9257.0.ph512 = phi ptr [ %.sroa.9257.0.ph509, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer ], [ %i.ii, %bb.af ] ; 5 uses
  %i.gz = icmp eq ptr %.sroa.9257.0.ph512, %i.gu
  %or.cond325 = select i1 %i.gx, i1 %i.gz, i1 false
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9257.0.ph512, i64 32
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer510, %bb.ae
  %.sroa.0254.0 = phi ptr [ %i.ih, %bb.ae ], [ %.sroa.0254.0.ph511, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer510 ] ; 5 uses
  %.not.i146 = icmp eq ptr %.sroa.0254.0, null    ; 2 uses
  br i1 %.not.i146, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154
  %i.hb = icmp eq ptr %.sroa.0254.0, %.sroa.01.0.i
  br i1 %i.hb, label %.preheader447.preheader, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit151

.preheader447.preheader:                          ; preds = %bb.u, %bb.t
  br label %.preheader447

bb.u:                                             ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154
  br i1 %or.cond325, label %.preheader447.preheader, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit151

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit151: ; preds = %bb.u, %bb.t
  %i.hc = phi ptr [ %.sroa.0254.0, %bb.t ], [ %i.ha, %bb.u ] ; 2 uses
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %.sroa.4250.0.copyload = load i64, ptr %.sroa.4250.0..sroa_idx, align 8
  %i.hd = load ptr, ptr %i.c, align 8
  %i.he = load ptr, ptr %i.a, align 8
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = ashr exact i64 %i.hh, 2
  %.not139 = icmp eq i64 %.sroa.4250.0.copyload, %i.hi
  br i1 %.not139, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit151
  %.sroa.3.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.3.0.copyload.le = load i64, ptr %.sroa.3.0..sroa_idx.le, align 8
  %i.hj = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.hk = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.hl = icmp ult ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.hm = load ptr, ptr %i.gp, align 8
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3
  %i.hr = add nsw i64 %i.hq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef %i.hr)
  %.pre.i.i = load ptr, ptr %i.gr, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit: ; preds = %bb.v, %bb.w
  %i.hs = phi ptr [ %i.hj, %bb.v ], [ %.pre.i.i, %bb.w ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.ht, ptr %i.gr, align 8
  store i64 %.sroa.3.0.copyload.le, ptr %i.hs, align 8
  %.val.i185 = load i64, ptr %3, align 8          ; 4 uses
  %i.hu = icmp eq i64 %.val.i185, -1
  br i1 %i.hu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9257.0.ph512) #14
  %i.hw = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.9257.0.ph512, ptr noundef nonnull align 8 dereferenceable(32) %i.gu) #13 ; 0 uses
  %i.hx = load i64, ptr %i.gb, align 8
  %i.hy = add i64 %i.hx, -1
  store i64 %i.hy, ptr %i.gb, align 8
  %.val.i181.pre.pre = load i64, ptr %3, align 8
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge: ; preds = %bb.x, %bb.ac, %bb.ab
  %.val.i181.pre391.ph.be = phi i64 [ %i.ic, %bb.ab ], [ %i.ib, %bb.ac ], [ %.val.i181.pre.pre, %bb.x ]
  %.sroa.0254.0.ph508.be = phi ptr [ %i.id, %bb.ab ], [ %.sroa.01.0.i.i, %bb.ac ], [ null, %bb.x ]
  %.sroa.9257.0.ph509.be = phi ptr [ null, %bb.ab ], [ %.sroa.3.0.i.i, %bb.ac ], [ %i.hv, %bb.x ]
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer, !llvm.loop !16

bb.y:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit
  %i.hz = ptrtoint ptr %.sroa.0254.0 to i64
  %i.ia = sub i64 %i.hz, %i.gw                    ; 3 uses
  %i.ib = sdiv exact i64 %i.ia, 24                ; 3 uses
  %.not2.i = icmp ugt i64 %i.ib, %.val.i185
  br i1 %.not2.i, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ic = add i64 %.val.i185, -1                  ; 4 uses
  store i64 %i.ic, ptr %3, align 8
  %.not.i186 = icmp eq i64 %i.ib, %i.ic
  br i1 %.not.i186, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.id = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ia ; 2 uses
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false)
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge

bb.ac:                                            ; preds = %bb.aa
  %i.if = icmp eq i64 %.val.i185, 0               ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ia
  %.sroa.01.0.i.i = select i1 %i.if, ptr null, ptr %i.ig
  %.sroa.3.0.i.i = select i1 %i.if, ptr %i.gu, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer.backedge

bb.ad:                                            ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit151
  br i1 %.not.i146, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0254.0, i64 24
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154, !llvm.loop !16

bb.af:                                            ; preds = %bb.ad
  %i.ii = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9257.0.ph512) #14
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit154.outer510, !llvm.loop !16

.preheader447:                                    ; preds = %.preheader447.preheader, %bb.ai
  %.val.i196394 = phi i64 [ %.val.i196.ph, %bb.ai ], [ %.val.i181.pre391.ph, %.preheader447.preheader ] ; 2 uses
  %i.ij = icmp eq i64 %.val.i196394, -1           ; 2 uses
  %.val1.i191 = load ptr, ptr %i.gs, align 8
  %.sroa.0246.0.ph.a = select i1 %i.ij, ptr null, ptr %i.gt
  %.sroa.9.0.ph.a = select i1 %i.ij, ptr %.val1.i191, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge, %.preheader447
  %.val.i196.ph = phi i64 [ %.val.i196394, %.preheader447 ], [ %.val.i196.ph.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge ] ; 4 uses
  %.sroa.0246.0.ph480 = phi ptr [ %.sroa.0246.0.ph.a, %.preheader447 ], [ %.sroa.0246.0.ph480.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge ]
  %.sroa.9.0.ph481 = phi ptr [ %.sroa.9.0.ph.a, %.preheader447 ], [ %.sroa.9.0.ph481.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge ]
  %.0125.ph = phi i1 [ false, %.preheader447 ], [ true, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge ]
  %4 = icmp eq i64 %.val.i196.ph, -1              ; 2 uses
  %5 = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.val.i196.ph
  %.sroa.01.0.i197 = select i1 %4, ptr null, ptr %5
  %.val156.val = load ptr, ptr %i.gp, align 8     ; 4 uses
  %.val156.val157 = load ptr, ptr %i.gr, align 8  ; 5 uses
  %.not2.not.i.i = icmp eq ptr %.val156.val, %.val156.val157
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer482

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer482: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer, %bb.ax
  %.sroa.0246.0.ph484 = phi ptr [ %.sroa.0246.0.ph480, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer ], [ null, %bb.ax ]
  %.sroa.9.0.ph485 = phi ptr [ %.sroa.9.0.ph481, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer ], [ %i.la, %bb.ax ] ; 5 uses
  %i.ik = icmp eq ptr %.sroa.9.0.ph485, %i.gu
  %or.cond326 = select i1 %4, i1 %i.ik, i1 false
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph485, i64 32
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer482, %bb.aw
  %.sroa.0246.0 = phi ptr [ %i.kz, %bb.aw ], [ %.sroa.0246.0.ph484, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer482 ] ; 5 uses
  %.not.i143 = icmp eq ptr %.sroa.0246.0, null    ; 2 uses
  br i1 %.not.i143, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit
  %i.im = icmp eq ptr %.sroa.0246.0, %.sroa.01.0.i197
  br i1 %i.im, label %bb.ai, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit

bb.ah:                                            ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit
  br i1 %or.cond326, label %bb.ai, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.0125.ph, label %.preheader447, label %.loopexit332, !llvm.loop !17

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit: ; preds = %bb.ah, %bb.ag
  %i.in = phi ptr [ %.sroa.0246.0, %bb.ag ], [ %i.il, %bb.ah ] ; 3 uses
  br i1 %.not2.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit
  %.sroa.0.0.copyload383 = load i64, ptr %i.in, align 8
  %.fr.i.i = freeze i64 %.sroa.0.0.copyload383    ; 5 uses
  %i.io = and i64 %.fr.i.i, 7
  %i.ip = icmp samesign ugt i64 %i.io, 4
  %i.iq = and i64 %.fr.i.i, 8
  %i.ir = icmp eq i64 %i.iq, 0
  %i.is = and i64 %.fr.i.i, 3840
  %i.it = icmp ne i64 %i.is, 0
  %i.iu = and i1 %i.it, %i.ir
  %i.iv = and i64 %.fr.i.i, -4088
  %i.iw = select i1 %i.iu, i64 288, i64 0
  %i.ix = or disjoint i64 %i.iv, %i.iw
  %i.iy = or disjoint i64 %i.ix, 5
  br i1 %i.ip, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.al
  %.0133.us.i.i = phi ptr [ %i.jn, %bb.al ], [ %.val156.val, %.lr.ph.i.i ] ; 2 uses
  %i.iz = load i64, ptr %.0133.us.i.i, align 8    ; 5 uses
  %i.ja = and i64 %i.iz, 7                        ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 4
  br i1 %i.jb, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i
  %i.jc = icmp samesign ugt i64 %i.ja, 4
  br i1 %i.jc, label %bb.ak, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.jd = and i64 %i.iz, 8
  %i.je = icmp eq i64 %i.jd, 0
  %i.jf = and i64 %i.iz, 3840
  %i.jg = icmp ne i64 %i.jf, 0
  %i.jh = and i1 %i.jg, %i.je
  %i.ji = and i64 %i.iz, -4088
  %i.jj = select i1 %i.jh, i64 288, i64 0
  %i.jk = or disjoint i64 %i.ji, %i.jj
  %i.jl = or disjoint i64 %i.jk, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i: ; preds = %bb.ak, %bb.aj
  %.02.i.i.us.i.i = phi i64 [ %i.jl, %bb.ak ], [ %i.iz, %bb.aj ]
  %i.jm = icmp eq i64 %.02.i.i.us.i.i, %i.iy
  br i1 %i.jm, label %.loopexit.loopexit, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.us.i.i, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.0133.us.i.i, i64 8 ; 2 uses
  %.not.us.not.i.i = icmp eq ptr %i.jn, %.val156.val157
  br i1 %.not.us.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.ao
  %.0133.i.i = phi ptr [ %i.kc, %bb.ao ], [ %.val156.val, %.lr.ph.i.i ] ; 2 uses
  %i.jo = load i64, ptr %.0133.i.i, align 8       ; 5 uses
  %i.jp = and i64 %i.jo, 7                        ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 4
  br i1 %i.jq, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.i.i
  %i.jr = icmp samesign ugt i64 %i.jp, 4
  br i1 %i.jr, label %bb.an, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.js = and i64 %i.jo, 8
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = and i64 %i.jo, 3840
  %i.jv = icmp ne i64 %i.ju, 0
  %i.jw = and i1 %i.jv, %i.jt
  %i.jx = and i64 %i.jo, -4088
  %i.jy = select i1 %i.jw, i64 288, i64 0
  %i.jz = or disjoint i64 %i.jx, %i.jy
  %i.ka = or disjoint i64 %i.jz, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.02.i.i.i.i = phi i64 [ %i.ka, %bb.an ], [ %i.jo, %bb.am ]
  %i.kb = icmp eq i64 %.02.i.i.i.i, %.fr.i.i
  br i1 %i.kb, label %.loopexit.loopexit478, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.split.i.i, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.0133.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.kc, %.val156.val157
  br i1 %.not.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.split.i.i

.loopexit.loopexit:                               ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i
  %.sroa.5.0..sroa_idx.le561 = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.sroa.5.0.copyload.le = load i64, ptr %.sroa.5.0..sroa_idx.le561, align 8
  br label %.loopexit

.loopexit.loopexit478:                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %.sroa.5.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.sroa.5.0.copyload.le558 = load i64, ptr %.sroa.5.0..sroa_idx.le, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit478, %.loopexit.loopexit
  %.sroa.5.0.copyload542 = phi i64 [ %.sroa.5.0.copyload.le558, %.loopexit.loopexit478 ], [ %.sroa.5.0.copyload.le, %.loopexit.loopexit ]
  %i.kd = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.ke = icmp ult ptr %.val156.val157, %i.kd
  br i1 %i.ke, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit202, label %bb.ap, !prof !15

bb.ap:                                            ; preds = %.loopexit
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %.val156.val to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 3
  %i.kj = add nsw i64 %i.ki, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef %i.kj)
  %.pre.i.i201 = load ptr, ptr %i.gr, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit202

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit202: ; preds = %.loopexit, %bb.ap
  %i.kk = phi ptr [ %.val156.val157, %.loopexit ], [ %.pre.i.i201, %bb.ap ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.kl, ptr %i.gr, align 8
  store i64 %.sroa.5.0.copyload542, ptr %i.kk, align 8
  %.val.i203 = load i64, ptr %3, align 8          ; 4 uses
  %i.km = icmp eq i64 %.val.i203, -1
  br i1 %i.km, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit202
  %i.kn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9.0.ph485) #14
  %i.ko = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.9.0.ph485, ptr noundef nonnull align 8 dereferenceable(32) %i.gu) #13 ; 0 uses
  %i.kp = load i64, ptr %i.gb, align 8
  %i.kq = add i64 %i.kp, -1
  store i64 %i.kq, ptr %i.gb, align 8
  %.val.i196.pre.pre = load i64, ptr %3, align 8
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge: ; preds = %bb.aq, %bb.av, %bb.au
  %.val.i196.ph.be = phi i64 [ %i.ku, %bb.au ], [ %i.kt, %bb.av ], [ %.val.i196.pre.pre, %bb.aq ]
  %.sroa.0246.0.ph480.be = phi ptr [ %i.kv, %bb.au ], [ %.sroa.01.0.i.i210, %bb.av ], [ null, %bb.aq ]
  %.sroa.9.0.ph481.be = phi ptr [ null, %bb.au ], [ %.sroa.3.0.i.i211, %bb.av ], [ %i.kn, %bb.aq ]
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer, !llvm.loop !18

bb.ar:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit202
  %i.kr = ptrtoint ptr %.sroa.0246.0 to i64
  %i.ks = sub i64 %i.kr, %i.gw                    ; 3 uses
  %i.kt = sdiv exact i64 %i.ks, 24                ; 3 uses
  %.not2.i204 = icmp ugt i64 %i.kt, %.val.i203
  br i1 %.not2.i204, label %bb.as, label %bb.at, !prof !11

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ku = add i64 %.val.i203, -1                  ; 4 uses
  store i64 %i.ku, ptr %3, align 8
  %.not.i205 = icmp eq i64 %i.kt, %i.ku
  br i1 %.not.i205, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ks ; 2 uses
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.kw, i64 24, i1 false)
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge

bb.av:                                            ; preds = %bb.at
  %i.kx = icmp eq i64 %.val.i203, 0               ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ks
  %.sroa.01.0.i.i210 = select i1 %i.kx, ptr null, ptr %i.ky
  %.sroa.3.0.i.i211 = select i1 %i.kx, ptr %i.gu, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer.backedge

_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit: ; preds = %bb.ao, %bb.al, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratordeEv.exit
  br i1 %.not.i143, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0246.0, i64 24
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit, !llvm.loop !18

bb.ax:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit
  %i.la = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9.0.ph485) #14
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratorppEv.exit.outer482, !llvm.loop !18

.loopexit332:                                     ; preds = %bb.ai, %bb.s
  %.val167 = phi i64 [ %.val169.pre, %bb.s ], [ %.val.i196.ph, %bb.ai ] ; 2 uses
  %.val168 = load i64, ptr %i.gb, align 8
  %i.lb = icmp eq i64 %.val167, -1
  %.v.i213 = select i1 %i.lb, i64 %.val168, i64 %.val167
  %i.lc = icmp eq i64 %.v.i213, 0
  br i1 %i.lc, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit332
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.le = load ptr, ptr %i.ld, align 8            ; 5 uses
  %.not136 = icmp eq ptr %i.le, null              ; 2 uses
  br i1 %.not136, label %.thread305, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = icmp eq ptr %i.lg, %i.li
  br i1 %i.lj, label %_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.az
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8            ; 3 uses
  store ptr %i.ll, ptr %i.ld, align 8
  store ptr %i.le, ptr %i.lk, align 8
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %.thread305, label %_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit

.thread305:                                       ; preds = %bb.ay, %thread-pre-split
  %.pn = load ptr, ptr %i.gf, align 8
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ln = load ptr, ptr %.in, align 8             ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 3 uses
  %i.lr = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.ls = sub i64 %i.lp, %i.lr
  %i.lt = icmp ult i64 %i.ls, 32
  br i1 %i.lt, label %bb.ba, label %_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i, !prof !11

bb.ba:                                            ; preds = %.thread305
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ln, i64 noundef 32) #13
  %.pre.i.i.i214 = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i: ; preds = %bb.ba, %.thread305
  %i.lu = phi i64 [ %.pre.i.i.i214, %bb.ba ], [ %i.lr, %.thread305 ] ; 2 uses
  %i.lv = inttoptr i64 %i.lu to ptr               ; 4 uses
  %i.lw = add i64 %i.lu, 32
  store i64 %i.lw, ptr %i.lq, align 8
  store ptr %i.ln, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i8 0, i64 24, i1 false)
  store ptr %i.lv, ptr %i.ld, align 8
  br label %_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit

_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit: ; preds = %bb.az, %thread-pre-split, %_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i
  %.0128307 = phi i1 [ %.not136, %_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i ], [ false, %thread-pre-split ], [ true, %bb.az ]
  %i.ly = phi ptr [ %i.lv, %_ZN2v88internal4Zone3NewINS0_8compiler12ParallelMoveEJRPS1_EEEPT_DpOT0_.exit.i ], [ %i.ll, %thread-pre-split ], [ %i.le, %bb.az ] ; 2 uses
  %i.lz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ma = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not137368 = icmp eq ptr %i.lz, %i.ma
  br i1 %.not137368, label %._crit_edge372, label %.lr.ph371

.lr.ph371:                                        ; preds = %_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.bb

._crit_edge372:                                   ; preds = %._crit_edge367, %_ZN2v88internal8compiler11Instruction23GetOrCreateParallelMoveENS2_11GapPositionEPNS0_4ZoneE.exit
  br i1 %.0128307, label %bb.bk, label %bb.bj

bb.bb:                                            ; preds = %.lr.ph371, %._crit_edge367
  %.0127370 = phi ptr [ %i.lz, %.lr.ph371 ], [ %i.na, %._crit_edge367 ] ; 2 uses
  %.0129369 = phi i1 [ true, %.lr.ph371 ], [ false, %._crit_edge367 ]
  %i.me = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.0127370, align 4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = sext i32 %.sroa.0.0.copyload to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mh
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 120
  %i.mn = load i32, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 208
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = sext i32 %i.mn to i64
  %i.mr = getelementptr [8 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.mr, i64 -8
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8            ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8            ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %.not138363 = icmp eq ptr %i.mx, %i.mz
  br i1 %.not138363, label %._crit_edge367, label %.lr.ph366

._crit_edge367:                                   ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, %bb.bb
  %i.na = getelementptr inbounds nuw i8, ptr %.0127370, i64 4 ; 2 uses
  %.not137 = icmp eq ptr %i.na, %i.ma
  br i1 %.not137, label %._crit_edge372, label %bb.bb

.lr.ph366:                                        ; preds = %bb.bb, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread
  %.0115364 = phi ptr [ %i.pm, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread ], [ %i.mx, %bb.bb ] ; 2 uses
  %i.nb = load ptr, ptr %.0115364, align 8        ; 4 uses
  %i.nc = load i64, ptr %i.nb, align 8            ; 10 uses
  %i.nd = and i64 %i.nc, 7                        ; 3 uses
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph366
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %i.ng = icmp eq i64 %i.nd, 4                    ; 2 uses
  br i1 %i.ng, label %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge, label %bb.bd

._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge: ; preds = %bb.bc
  %.pre400 = load i64, ptr %i.nf, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309

bb.bd:                                            ; preds = %bb.bc
  %i.nh = icmp samesign ugt i64 %i.nd, 4
  br i1 %i.nh, label %bb.be, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215

bb.be:                                            ; preds = %bb.bd
  %i.ni = and i64 %i.nc, 8
  %i.nj = icmp eq i64 %i.ni, 0
  %i.nk = and i64 %i.nc, 3840
  %i.nl = icmp ne i64 %i.nk, 0
  %i.nm = and i1 %i.nl, %i.nj
  %i.nn = and i64 %i.nc, -4088
  %i.no = select i1 %i.nm, i64 288, i64 0
  %i.np = or disjoint i64 %i.nn, %i.no
  %i.nq = or disjoint i64 %i.np, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215: ; preds = %bb.be, %bb.bd
  %.02.i.i.i216 = phi i64 [ %i.nq, %bb.be ], [ %i.nc, %bb.bd ]
  %i.nr = load i64, ptr %i.nf, align 8            ; 6 uses
  %i.ns = and i64 %i.nr, 7
  %i.nt = icmp samesign ugt i64 %i.ns, 4
  br i1 %i.nt, label %bb.bf, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219

bb.bf:                                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215
  %i.nu = and i64 %i.nr, 8
  %i.nv = icmp eq i64 %i.nu, 0
  %i.nw = and i64 %i.nr, 3840
  %i.nx = icmp ne i64 %i.nw, 0
  %i.ny = and i1 %i.nx, %i.nv
  %i.nz = and i64 %i.nr, -4088
  %i.oa = select i1 %i.ny, i64 288, i64 0
  %i.ob = or disjoint i64 %i.nz, %i.oa
  %i.oc = or disjoint i64 %i.ob, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215, %bb.bf
  %.02.i4.i.i218 = phi i64 [ %i.oc, %bb.bf ], [ %i.nr, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215 ]
  %i.od = icmp eq i64 %.02.i.i.i216, %.02.i4.i.i218
  br i1 %i.od, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309: ; preds = %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219
  %i.oe = phi i64 [ %.pre400, %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge ], [ %i.nr, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219 ] ; 3 uses
  %.val8.i = load i64, ptr %3, align 8            ; 5 uses
  switch i64 %.val8.i, label %.lr.ph.i229 [
    i64 -1, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i
    i64 0, label %.critedge.i220
  ]

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309
  %.val.i.i.i = load ptr, ptr %i.mb, align 8      ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i, %.lr.ph.i.i.i.i224
  %.03.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i224 ], [ %.val.i.i.i, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i ] ; 6 uses
  %.082.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i224 ], [ %i.mc, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %i.og = load i64, ptr %i.of, align 8            ; 3 uses
  %i.oh = and i64 %i.og, 7
  %i.oi = icmp eq i64 %i.oh, 4
  %i.oj = icmp ne i64 %i.og, %i.nc
  %.0.i.i.i.i.i.i.i.i225 = or i1 %i.oj, %i.oi
  %i.ok = icmp ult i64 %i.og, %i.nc
  %i.ol = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 40
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = icmp ult i64 %i.om, %i.oe
  %.0.i.i.i.i.i.i226 = select i1 %.0.i.i.i.i.i.i.i.i225, i1 %i.ok, i1 %i.on ; 4 uses
  %.19.i.i.i.i = select i1 %.0.i.i.i.i.i.i226, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i226, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.03.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i227, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i224, !llvm.loop !19

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i224
  %i.oo = icmp eq ptr %.19.i.i.i.i, %i.mc
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13MoveOptimizer12MigrateMovesEPNS1_11InstructionES4_:bb.a
  br i1 %.not239, label %._crit_edge, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader201
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph215, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit99
  %.065214 = phi i64 [ 0, %.lr.ph215 ], [ %i.bp, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit99 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.065214
  %i.bd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bf = icmp ult ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit99, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.q, align 8
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.bl)
  %.pre.i.i98 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit99

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit99: ; preds = %bb.g, %bb.h
  %i.bm = phi ptr [ %i.bd, %bb.g ], [ %.pre.i.i98, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.s, align 8
  %i.bo = load i64, ptr %i.bc, align 8
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = add nuw nsw i64 %.065214, 1             ; 2 uses
  %i.bq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.br = and i32 %i.bq, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %i.bp, %i.bs
  br i1 %i.bt, label %bb.g, label %.preheader201, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101, %.preheader201
  %i.bu = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bv = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not218 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not218, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph217, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101
  %i.bx = phi i32 [ %i.ay, %.lr.ph217 ], [ %i.ct, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101 ] ; 2 uses
  %.066216 = phi i64 [ 0, %.lr.ph217 ], [ %i.cs, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101 ] ; 2 uses
  %i.by = and i32 %i.bx, 255
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i32 %i.bx, 8
  %i.cb = and i32 %i.ca, 65535
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.ba, i64 %i.bz
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %.066216
  %i.cg = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.q, align 8
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = add nsw i64 %i.cn, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.co)
  %.pre.i.i100 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit101: ; preds = %bb.i, %bb.j
  %i.cp = phi ptr [ %i.cg, %bb.i ], [ %.pre.i.i100, %bb.j ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.s, align 8
  %i.cr = load i64, ptr %i.cf, align 8
  store i64 %i.cr, ptr %i.cp, align 8
  %i.cs = add nuw nsw i64 %.066216, 1             ; 2 uses
  %i.ct = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cu = lshr i32 %i.ct, 24
  %i.cv = and i32 %i.cu, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %i.cs, %i.cw
  br i1 %i.cx, label %bb.i, label %._crit_edge, !llvm.loop !28

._crit_edge222.loopexit:                          ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %.pre = load ptr, ptr %i.g, align 8
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %._crit_edge
  %i.cy = phi ptr [ %.pre, %._crit_edge222.loopexit ], [ %i.bu, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cz = load ptr, ptr %0, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  store i64 0, ptr %4, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not72223 = icmp eq ptr %i.dc, %i.cy
  br i1 %.not72223, label %.thread, label %.lr.ph226

.lr.ph226:                                        ; preds = %._crit_edge222
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph221, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %.067219 = phi ptr [ %i.bu, %.lr.ph221 ], [ %i.ex, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ] ; 2 uses
  %i.di = load ptr, ptr %.067219, align 8         ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 5 uses
  %i.dk = and i64 %i.dj, 7                        ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dk, 4
  br i1 %i.dn, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp samesign ugt i64 %i.dk, 4
  br i1 %i.do, label %bb.n, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.dp = and i64 %i.dj, 8
  %i.dq = icmp eq i64 %i.dp, 0
  %i.dr = and i64 %i.dj, 3840
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = and i1 %i.ds, %i.dq
  %i.du = and i64 %i.dj, -4088
  %i.dv = select i1 %i.dt, i64 288, i64 0
  %i.dw = or disjoint i64 %i.du, %i.dv
  %i.dx = or disjoint i64 %i.dw, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i: ; preds = %bb.n, %bb.m
  %.02.i.i.i = phi i64 [ %i.dx, %bb.n ], [ %i.dj, %bb.m ]
  %i.dy = load i64, ptr %i.dm, align 8            ; 5 uses
  %i.dz = and i64 %i.dy, 7
  %i.ea = icmp samesign ugt i64 %i.dz, 4
  br i1 %i.ea, label %bb.o, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i
  %i.eb = and i64 %i.dy, 8
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = and i64 %i.dy, 3840
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = and i1 %i.ee, %i.ec
  %i.eg = and i64 %i.dy, -4088
  %i.eh = select i1 %i.ef, i64 288, i64 0
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = or disjoint i64 %i.ei, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i, %bb.o
  %.02.i4.i.i = phi i64 [ %i.ej, %bb.o ], [ %i.dy, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i ]
  %i.ek = icmp eq i64 %.02.i.i.i, %.02.i4.i.i
  br i1 %i.ek, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186: ; preds = %bb.l, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.el = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.en = icmp ult ptr %i.el, %i.em
  br i1 %i.en, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit103, label %bb.p, !prof !15

bb.p:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186
  %i.eo = load ptr, ptr %i.q, align 8
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 3
  %i.et = add nsw i64 %i.es, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.et)
  %.pre.i.i102 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit103

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit103: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186, %bb.p
  %i.eu = phi ptr [ %i.el, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread186 ], [ %.pre.i.i102, %bb.p ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ev, ptr %i.s, align 8
  %i.ew = load i64, ptr %i.dm, align 8
  store i64 %i.ew, ptr %i.eu, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread: ; preds = %bb.k, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit, %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit103
  %i.ex = getelementptr inbounds nuw i8, ptr %.067219, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.bv
  br i1 %.not, label %._crit_edge222.loopexit, label %bb.k

._crit_edge227:                                   ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit
  %.val88.pre = load i64, ptr %4, align 8
  %.val88.pre.fr = freeze i64 %.val88.pre         ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %.val89 = load i64, ptr %i.ey, align 8
  %i.ez = icmp eq i64 %.val88.pre.fr, -1
  %spec.select = select i1 %i.ez, i64 %.val89, i64 %.val88.pre.fr
  %i.fa = icmp eq i64 %spec.select, 0
  br i1 %i.fa, label %.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge227
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = ptrtoint ptr %i.fc to i64
  br label %.preheader317

bb.q:                                             ; preds = %.lr.ph226, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit
  %.069224 = phi ptr [ %i.dc, %.lr.ph226 ], [ %i.kd, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit ] ; 2 uses
  %i.fg = load ptr, ptr %.069224, align 8         ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 15 uses
  %i.fi = and i64 %i.fh, 7                        ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fl = icmp eq i64 %i.fi, 4                    ; 3 uses
  br i1 %i.fl, label %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187_crit_edge, label %bb.s

._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187_crit_edge: ; preds = %bb.r
  %.pre250.pre = load i64, ptr %i.fk, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187

bb.s:                                             ; preds = %bb.r
  %i.fm = icmp samesign ugt i64 %i.fi, 4
  br i1 %i.fm, label %bb.t, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104

bb.t:                                             ; preds = %bb.s
  %i.fn = and i64 %i.fh, 8
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = and i64 %i.fh, 3840
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = and i1 %i.fq, %i.fo
  %i.fs = and i64 %i.fh, -4088
  %i.ft = select i1 %i.fr, i64 288, i64 0
  %i.fu = or disjoint i64 %i.fs, %i.ft
  %i.fv = or disjoint i64 %i.fu, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104: ; preds = %bb.t, %bb.s
  %.02.i.i.i105 = phi i64 [ %i.fv, %bb.t ], [ %i.fh, %bb.s ]
  %i.fw = load i64, ptr %i.fk, align 8            ; 6 uses
  %i.fx = and i64 %i.fw, 7
  %i.fy = icmp samesign ugt i64 %i.fx, 4
  br i1 %i.fy, label %bb.u, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108

bb.u:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104
  %i.fz = and i64 %i.fw, 8
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = and i64 %i.fw, 3840
  %i.gc = icmp ne i64 %i.gb, 0
  %i.gd = and i1 %i.gc, %i.ga
  %i.ge = and i64 %i.fw, -4088
  %i.gf = select i1 %i.gd, i64 288, i64 0
  %i.gg = or disjoint i64 %i.ge, %i.gf
  %i.gh = or disjoint i64 %i.gg, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104, %bb.u
  %.02.i4.i.i107 = phi i64 [ %i.gh, %bb.u ], [ %i.fw, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i104 ]
  %i.gi = icmp eq i64 %.02.i.i.i105, %.02.i4.i.i107
  br i1 %i.gi, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187: ; preds = %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187_crit_edge, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108
  %.pre250 = phi i64 [ %.pre250.pre, %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187_crit_edge ], [ %i.fw, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108 ]
  %.fr.i.i = freeze i64 %.pre250                  ; 12 uses
  %.val85.val = load ptr, ptr %i.m, align 8       ; 3 uses
  %.val85.val86 = load ptr, ptr %i.o, align 8     ; 3 uses
  %.not2.not.i.i = icmp eq ptr %.val85.val, %.val85.val86
  br i1 %.not2.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187
  %i.gj = and i64 %.fr.i.i, 7
  %i.gk = icmp samesign ugt i64 %i.gj, 4
  %i.gl = and i64 %.fr.i.i, 8
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = and i64 %.fr.i.i, 3840
  %i.go = icmp ne i64 %i.gn, 0
  %i.gp = and i1 %i.go, %i.gm
  %i.gq = and i64 %.fr.i.i, -4088
  %i.gr = select i1 %i.gp, i64 288, i64 0
  %i.gs = or disjoint i64 %i.gq, %i.gr
  %i.gt = or disjoint i64 %i.gs, 5
  br i1 %i.gk, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.y
  %.0133.us.i.i = phi ptr [ %i.hj, %bb.y ], [ %.val85.val, %.lr.ph.i.i ] ; 3 uses
  %i.gu = load i64, ptr %.0133.us.i.i, align 8    ; 5 uses
  %i.gv = and i64 %i.gu, 7                        ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4
  br i1 %i.gw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gx = icmp samesign ugt i64 %i.gv, 4
  br i1 %i.gx, label %bb.w, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i

bb.w:                                             ; preds = %bb.v
  %i.gy = and i64 %i.gu, 8
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = and i64 %i.gu, 3840
  %i.hb = icmp ne i64 %i.ha, 0
  %i.hc = and i1 %i.hb, %i.gz
  %i.hd = and i64 %i.gu, -4088
  %i.he = select i1 %i.hc, i64 288, i64 0
  %i.hf = or disjoint i64 %i.hd, %i.he
  %i.hg = or disjoint i64 %i.hf, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i: ; preds = %bb.w, %bb.v
  %.02.i.i.us.i.i = phi i64 [ %i.hg, %bb.w ], [ %i.gu, %bb.v ]
  %i.hh = icmp eq i64 %.02.i.i.us.i.i, %i.gt
  br i1 %i.hh, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.us.i.i
  %i.hi = icmp eq ptr %.0133.us.i.i, %i.fk
  br i1 %i.hi, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.0133.us.i.i, i64 8 ; 2 uses
  %.not.us.not.i.i = icmp eq ptr %i.hj, %.val85.val86
  br i1 %.not.us.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.ac
  %.0133.i.i = phi ptr [ %i.hz, %bb.ac ], [ %.val85.val, %.lr.ph.i.i ] ; 3 uses
  %i.hk = load i64, ptr %.0133.i.i, align 8       ; 5 uses
  %i.hl = and i64 %i.hk, 7                        ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i.i
  %i.hn = icmp eq ptr %.0133.i.i, %i.fk
  br i1 %i.hn, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %i.ho = icmp samesign ugt i64 %i.hl, 4
  br i1 %i.ho, label %bb.ab, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.hp = and i64 %i.hk, 8
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = and i64 %i.hk, 3840
  %i.hs = icmp ne i64 %i.hr, 0
  %i.ht = and i1 %i.hs, %i.hq
  %i.hu = and i64 %i.hk, -4088
  %i.hv = select i1 %i.ht, i64 288, i64 0
  %i.hw = or disjoint i64 %i.hu, %i.hv
  %i.hx = or disjoint i64 %i.hw, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.02.i.i.i.i = phi i64 [ %i.hx, %bb.ab ], [ %i.hk, %bb.aa ]
  %i.hy = icmp eq i64 %.02.i.i.i.i, %.fr.i.i
  br i1 %i.hy, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i, %bb.z
  %i.hz = getelementptr inbounds nuw i8, ptr %.0133.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.hz, %.val85.val86
  br i1 %.not.not.i.i, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit, label %.lr.ph.split.i.i

_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit: ; preds = %bb.ac, %bb.y, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108.thread187
  %.val.i = load i64, ptr %4, align 8, !noalias !29 ; 6 uses
  %i.ia = icmp eq i64 %.val.i, -1
  br i1 %i.ia, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit
  %.val.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !29 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !29
  %i.id = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !noalias !29 ; 2 uses
  %i.if = sub i64 %i.ic, %i.ie
  %i.ig = icmp ult i64 %i.if, 56
  br i1 %i.ig, label %bb.ae, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i, !prof !11

bb.ae:                                            ; preds = %bb.ad
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i, i64 noundef 56) #13, !noalias !29
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.id, align 8, !noalias !29
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.ih = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.ae ], [ %i.ie, %bb.ad ] ; 2 uses
  %i.ii = inttoptr i64 %i.ih to ptr               ; 6 uses
  %i.ij = add i64 %i.ih, 56
  store i64 %i.ij, ptr %i.id, align 8, !noalias !29
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store i64 %i.fh, ptr %i.ik, align 8, !noalias !29
  %.sroa.6173.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  store i64 %.fr.i.i, ptr %.sroa.6173.0..sroa_idx176, align 8, !noalias !29
  %.02628.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !29 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %.02628.i.i.i.i, null
  br i1 %.not29.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i, %.lr.ph.i.i.i.i
  %.02630.i.i.i.i = phi ptr [ %.026.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02628.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i ] ; 7 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02630.i.i.i.i, i64 32
  %i.im = icmp ne ptr %.02630.i.i.i.i, %i.ii
  %i.in = load i64, ptr %i.il, align 8, !noalias !29 ; 3 uses
  %i.io = icmp ne i64 %i.fh, %i.in
  %.0.i.i.i.i.i.i.i.i = select i1 %i.fl, i1 %i.im, i1 %i.io
  %i.ip = icmp ult i64 %i.fh, %i.in
  %i.iq = getelementptr inbounds nuw i8, ptr %.02630.i.i.i.i, i64 40
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !29 ; 2 uses
  %i.is = icmp ult i64 %.fr.i.i, %i.ir
  %.0.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i, i1 %i.ip, i1 %i.is ; 2 uses
  %.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.02630.i.i.i.i, i64 %.in.v.i.i.i.i
  %.026.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !noalias !29 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.026.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %.0.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.ag

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i
  %.025.lcssa35.i.i.i.i = phi ptr [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.df, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_nodeC2IJRS4_SA_EEERSI_DpOT_.exit.i.i.i ] ; 4 uses
  %.val7.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !29
  %i.it = icmp eq ptr %.025.lcssa35.i.i.i.i, %.val7.i.i.i.i
  br i1 %i.it, label %select.unfold.i.i.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.iu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa35.i.i.i.i) #14, !noalias !29 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !29
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %.pre13.i.i.i = load i64, ptr %.phi.trans.insert12.i.i.i, align 8, !noalias !29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i
  %i.iv = phi i64 [ %.pre13.i.i.i, %bb.af ], [ %i.ir, %._crit_edge.i.i.i.i ]
  %i.iw = phi i64 [ %.pre.i.i.i, %bb.af ], [ %i.in, %._crit_edge.i.i.i.i ] ; 3 uses
  %.025.lcssa34.i.i.i.i = phi ptr [ %.025.lcssa35.i.i.i.i, %bb.af ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.016.0.i.i.i.i = phi ptr [ %i.iu, %bb.af ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ix = and i64 %i.iw, 7
  %i.iy = icmp eq i64 %i.ix, 4
  %i.iz = icmp ne ptr %.sroa.016.0.i.i.i.i, %i.ii
  %i.ja = icmp ne i64 %i.iw, %i.fh
  %.0.i.i.i.i14.i.i.i.i = select i1 %i.iy, i1 %i.iz, i1 %i.ja
  %i.jb = icmp ult i64 %i.iw, %i.fh
  %i.jc = icmp ult i64 %i.iv, %.fr.i.i
  %.0.i.i15.i.i.i.i = select i1 %.0.i.i.i.i14.i.i.i.i, i1 %i.jb, i1 %i.jc
  br i1 %.0.i.i15.i.i.i.i, label %select.unfold.i.i.i, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit

select.unfold.i.i.i:                              ; preds = %bb.ag, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.025.lcssa35.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.025.lcssa34.i.i.i.i, %bb.ag ] ; 5 uses
  %i.jd = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.df
  br i1 %i.jd, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSL_E.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %select.unfold.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.jf = icmp ne ptr %.sroa.4.0.i.ph.i.i.i, %i.ii
  %i.jg = load i64, ptr %i.je, align 8, !noalias !29 ; 2 uses
  %i.jh = icmp ne i64 %i.fh, %i.jg
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.fl, i1 %i.jf, i1 %i.jh
  %i.ji = icmp ult i64 %i.fh, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 40
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !29
  %i.jl = icmp ult i64 %.fr.i.i, %i.jk
  %.0.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i, i1 %i.ji, i1 %i.jl
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSL_E.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSL_E.exit.i.i.i: ; preds = %bb.ah, %select.unfold.i.i.i
  %i.jm = phi i1 [ %.0.i.i.i.i.i.i.i, %bb.ah ], [ true, %select.unfold.i.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jm, ptr noundef nonnull %i.ii, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.df) #13, !noalias !29
  %i.jn = load i64, ptr %i.dh, align 8, !noalias !29
  %i.jo = add i64 %i.jn, 1
  store i64 %i.jo, ptr %i.dh, align 8, !noalias !29
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit

bb.ai:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !29
  store i64 %i.fh, ptr %3, align 8, !noalias !29
  store i64 %.fr.i.i, ptr %.sroa.6173.0..sroa_idx, align 8, !noalias !29
  %.not15.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not15.not.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i
  %.01316.i = phi i64 [ %i.jz, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i ], [ 0, %bb.ai ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.01316.i ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !29 ; 2 uses
  %i.jr = and i64 %i.jq, 7
  %i.js = icmp ne i64 %i.jr, 4
  %i.jt = icmp eq i64 %i.jq, %i.fh
  %.0.i.i.i.i.i.i17.i = and i1 %i.jt, %i.js
  br i1 %.0.i.i.i.i.i.i17.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i: ; preds = %.lr.ph.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !29 ; 2 uses
  %i.jw = and i64 %i.jv, 7
  %i.jx = icmp ne i64 %i.jw, 4
  %i.jy = icmp eq i64 %i.jv, %.fr.i.i
  %.0.i.i.i.i.i.i.i18.i = and i1 %i.jx, %i.jy
  br i1 %.0.i.i.i.i.i.i.i18.i, label %.loopexit198, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i: ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i, %.lr.ph.i
  %i.jz = add nuw i64 %.01316.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jz, %.val.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !33

.critedge.i:                                      ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i
  %i.ka = icmp eq i64 %.val.i, 16
  br i1 %i.ka, label %bb.aj, label %.critedge.thread.i, !prof !14

bb.aj:                                            ; preds = %.critedge.i
  call preserve_mostcc void @_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(400) %4), !noalias !29
  call fastcc void @_ZNSt3mapIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES7_E5DummySt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE7emplaceIJSE_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(17) %3)
  br label %.loopexit198

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.ai
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.val.i ; 2 uses
  store i64 %i.fh, ptr %i.kb, align 8, !noalias !29
  %.sroa.6173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %.fr.i.i, ptr %.sroa.6173.0..sroa_idx174, align 8, !noalias !29
  %i.kc = add nuw i64 %.val.i, 1
  store i64 %i.kc, ptr %4, align 8, !noalias !29
  br label %.loopexit198

.loopexit198:                                     ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i, %.critedge.thread.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !29
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE7emplaceIJRS6_SA_EEESt4pairINSI_8iteratorEbEDpOT_.exit: ; preds = %bb.z, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i, %bb.x, %bb.ag, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSL_E.exit.i.i.i, %bb.q, %.loopexit198, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit108
  %i.kd = getelementptr inbounds nuw i8, ptr %.069224, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.kd, %i.cy
  br i1 %.not72, label %._crit_edge227, label %bb.q

.preheader317:                                    ; preds = %.preheader, %bb.am
  %.val.i110253 = phi i64 [ %.val88.pre.fr, %.preheader ], [ %.val.i110.ph, %bb.am ] ; 2 uses
  %i.ke = icmp eq i64 %.val.i110253, -1           ; 2 uses
  %.val1.i = load ptr, ptr %i.fb, align 8
  %.sroa.0165.0.ph.a = select i1 %i.ke, ptr null, ptr %i.fc
  %.sroa.9.0.ph.a = select i1 %i.ke, ptr %.val1.i, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge, %.preheader317
  %.val.i110.ph = phi i64 [ %.val.i110253, %.preheader317 ], [ %.val.i110.ph.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge ] ; 3 uses
  %.sroa.0165.0.ph346 = phi ptr [ %.sroa.0165.0.ph.a, %.preheader317 ], [ %.sroa.0165.0.ph346.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge ]
  %.sroa.9.0.ph347 = phi ptr [ %.sroa.9.0.ph.a, %.preheader317 ], [ %.sroa.9.0.ph347.be, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge ]
  %.070.ph = phi i1 [ false, %.preheader317 ], [ true, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge ]
  %6 = icmp eq i64 %.val.i110.ph, -1              ; 2 uses
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.val.i110.ph
  %.sroa.01.0.i = select i1 %6, ptr null, ptr %7
  %.val84.val = load ptr, ptr %i.q, align 8       ; 4 uses
  %.val84.val87 = load ptr, ptr %i.s, align 8     ; 5 uses
  %.not2.not.i.i114 = icmp eq ptr %.val84.val, %.val84.val87
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer348

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer348: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer, %bb.bb
  %.sroa.0165.0.ph350 = phi ptr [ %.sroa.0165.0.ph346, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer ], [ null, %bb.bb ]
  %.sroa.9.0.ph351 = phi ptr [ %.sroa.9.0.ph347, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer ], [ %i.mv, %bb.bb ] ; 5 uses
  %i.kf = icmp eq ptr %.sroa.9.0.ph351, %i.fd
  %or.cond = select i1 %6, i1 %i.kf, i1 false
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph351, i64 32
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit: ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer348, %bb.ba
  %.sroa.0165.0 = phi ptr [ %i.mu, %bb.ba ], [ %.sroa.0165.0.ph350, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer348 ] ; 5 uses
  %.not.i75 = icmp eq ptr %.sroa.0165.0, null     ; 2 uses
  br i1 %.not.i75, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit
  %i.kh = icmp eq ptr %.sroa.0165.0, %.sroa.01.0.i
  br i1 %i.kh, label %bb.am, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratordeEv.exit

bb.al:                                            ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit
  br i1 %or.cond, label %bb.am, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratordeEv.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.070.ph, label %.preheader317, label %bb.bc, !llvm.loop !34

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratordeEv.exit: ; preds = %bb.al, %bb.ak
  %i.ki = phi ptr [ %.sroa.0165.0, %bb.ak ], [ %i.kg, %bb.al ] ; 3 uses
  br i1 %.not2.not.i.i114, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratordeEv.exit
  %.sroa.0.0.copyload = load i64, ptr %i.ki, align 8
  %.fr.i.i116 = freeze i64 %.sroa.0.0.copyload    ; 5 uses
  %i.kj = and i64 %.fr.i.i116, 7
  %i.kk = icmp samesign ugt i64 %i.kj, 4
  %i.kl = and i64 %.fr.i.i116, 8
  %i.km = icmp eq i64 %i.kl, 0
  %i.kn = and i64 %.fr.i.i116, 3840
  %i.ko = icmp ne i64 %i.kn, 0
  %i.kp = and i1 %i.ko, %i.km
  %i.kq = and i64 %.fr.i.i116, -4088
  %i.kr = select i1 %i.kp, i64 288, i64 0
  %i.ks = or disjoint i64 %i.kq, %i.kr
  %i.kt = or disjoint i64 %i.ks, 5
  br i1 %i.kk, label %.lr.ph.split.us.i.i123, label %.lr.ph.split.i.i117

.lr.ph.split.us.i.i123:                           ; preds = %.lr.ph.i.i115, %bb.ap
  %.0133.us.i.i124 = phi ptr [ %i.li, %bb.ap ], [ %.val84.val, %.lr.ph.i.i115 ] ; 2 uses
  %i.ku = load i64, ptr %.0133.us.i.i124, align 8 ; 5 uses
  %i.kv = and i64 %i.ku, 7                        ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 4
  br i1 %i.kw, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us.i.i123
  %i.kx = icmp samesign ugt i64 %i.kv, 4
  br i1 %i.kx, label %bb.ao, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i125

bb.ao:                                            ; preds = %bb.an
  %i.ky = and i64 %i.ku, 8
  %i.kz = icmp eq i64 %i.ky, 0
  %i.la = and i64 %i.ku, 3840
  %i.lb = icmp ne i64 %i.la, 0
  %i.lc = and i1 %i.lb, %i.kz
  %i.ld = and i64 %i.ku, -4088
  %i.le = select i1 %i.lc, i64 288, i64 0
  %i.lf = or disjoint i64 %i.ld, %i.le
  %i.lg = or disjoint i64 %i.lf, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i125

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i125: ; preds = %bb.ao, %bb.an
  %.02.i.i.us.i.i126 = phi i64 [ %i.lg, %bb.ao ], [ %i.ku, %bb.an ]
  %i.lh = icmp eq i64 %.02.i.i.us.i.i126, %i.kt
  br i1 %i.lh, label %.loopexit195.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.us.i.i123, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i125
  %i.li = getelementptr inbounds nuw i8, ptr %.0133.us.i.i124, i64 8 ; 2 uses
  %.not.us.not.i.i127 = icmp eq ptr %i.li, %.val84.val87
  br i1 %.not.us.not.i.i127, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128, label %.lr.ph.split.us.i.i123

.lr.ph.split.i.i117:                              ; preds = %.lr.ph.i.i115, %bb.as
  %.0133.i.i118 = phi ptr [ %i.lx, %bb.as ], [ %.val84.val, %.lr.ph.i.i115 ] ; 2 uses
  %i.lj = load i64, ptr %.0133.i.i118, align 8    ; 5 uses
  %i.lk = and i64 %i.lj, 7                        ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 4
  br i1 %i.ll, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.i.i117
  %i.lm = icmp samesign ugt i64 %i.lk, 4
  br i1 %i.lm, label %bb.ar, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i119

bb.ar:                                            ; preds = %bb.aq
  %i.ln = and i64 %i.lj, 8
  %i.lo = icmp eq i64 %i.ln, 0
  %i.lp = and i64 %i.lj, 3840
  %i.lq = icmp ne i64 %i.lp, 0
  %i.lr = and i1 %i.lq, %i.lo
  %i.ls = and i64 %i.lj, -4088
  %i.lt = select i1 %i.lr, i64 288, i64 0
  %i.lu = or disjoint i64 %i.ls, %i.lt
  %i.lv = or disjoint i64 %i.lu, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i119

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i119: ; preds = %bb.ar, %bb.aq
  %.02.i.i.i.i120 = phi i64 [ %i.lv, %bb.ar ], [ %i.lj, %bb.aq ]
  %i.lw = icmp eq i64 %.02.i.i.i.i120, %.fr.i.i116
  br i1 %i.lw, label %.loopexit195.loopexit344, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.i.i117, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i119
  %i.lx = getelementptr inbounds nuw i8, ptr %.0133.i.i118, i64 8 ; 2 uses
  %.not.not.i.i121 = icmp eq ptr %i.lx, %.val84.val87
  br i1 %.not.not.i.i121, label %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128, label %.lr.ph.split.i.i117

.loopexit195.loopexit:                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.us.i.i125
  %.sroa.5.0..sroa_idx.le411 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.5.0.copyload.le = load i64, ptr %.sroa.5.0..sroa_idx.le411, align 8
  br label %.loopexit195

.loopexit195.loopexit344:                         ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i119
  %.sroa.5.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.5.0.copyload.le408 = load i64, ptr %.sroa.5.0..sroa_idx.le, align 8
  br label %.loopexit195

.loopexit195:                                     ; preds = %.loopexit195.loopexit344, %.loopexit195.loopexit
  %.sroa.5.0.copyload398 = phi i64 [ %.sroa.5.0.copyload.le408, %.loopexit195.loopexit344 ], [ %.sroa.5.0.copyload.le, %.loopexit195.loopexit ]
  %i.ly = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.lz = icmp ult ptr %.val84.val87, %i.ly
  br i1 %i.lz, label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit130, label %bb.at, !prof !15

bb.at:                                            ; preds = %.loopexit195
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = ptrtoint ptr %.val84.val to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = ashr exact i64 %i.mc, 3
  %i.me = add nsw i64 %i.md, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.me)
  %.pre.i.i129 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit130

_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit130: ; preds = %.loopexit195, %bb.at
  %i.mf = phi ptr [ %.val84.val87, %.loopexit195 ], [ %.pre.i.i129, %bb.at ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %i.mg, ptr %i.s, align 8
  store i64 %.sroa.5.0.copyload398, ptr %i.mf, align 8
  %.val.i131 = load i64, ptr %4, align 8          ; 4 uses
  %i.mh = icmp eq i64 %.val.i131, -1
  br i1 %i.mh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit130
  %i.mi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9.0.ph351) #14
  %i.mj = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.9.0.ph351, ptr noundef nonnull align 8 dereferenceable(32) %i.fd) #13 ; 0 uses
  %i.mk = load i64, ptr %i.ey, align 8
  %i.ml = add i64 %i.mk, -1
  store i64 %i.ml, ptr %i.ey, align 8
  %.val.i110.pre.pre = load i64, ptr %4, align 8
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge: ; preds = %bb.au, %bb.az, %bb.ay
  %.val.i110.ph.be = phi i64 [ %i.mp, %bb.ay ], [ %i.mo, %bb.az ], [ %.val.i110.pre.pre, %bb.au ]
  %.sroa.0165.0.ph346.be = phi ptr [ %i.mq, %bb.ay ], [ %.sroa.01.0.i.i, %bb.az ], [ null, %bb.au ]
  %.sroa.9.0.ph347.be = phi ptr [ null, %bb.ay ], [ %.sroa.3.0.i.i, %bb.az ], [ %i.mi, %bb.au ]
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer, !llvm.loop !35

bb.av:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_110OperandSet8InsertOpERKNS1_18InstructionOperandE.exit130
  %i.mm = ptrtoint ptr %.sroa.0165.0 to i64
  %i.mn = sub i64 %i.mm, %i.ff                    ; 3 uses
  %i.mo = sdiv exact i64 %i.mn, 24                ; 3 uses
  %.not2.i = icmp ugt i64 %i.mo, %.val.i131
  br i1 %.not2.i, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.mp = add i64 %.val.i131, -1                  ; 4 uses
  store i64 %i.mp, ptr %4, align 8
  %.not.i132 = icmp eq i64 %i.mo, %i.mp
  br i1 %.not.i132, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mn ; 2 uses
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %i.mr, i64 24, i1 false)
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge

bb.az:                                            ; preds = %bb.ax
  %i.ms = icmp eq i64 %.val.i131, 0               ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mn
  %.sroa.01.0.i.i = select i1 %i.ms, ptr null, ptr %i.mt
  %.sroa.3.0.i.i = select i1 %i.ms, ptr %i.fd, ptr null
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer.backedge

_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128: ; preds = %bb.as, %bb.ap, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratordeEv.exit
  br i1 %.not.i75, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 24
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit, !llvm.loop !35

bb.bb:                                            ; preds = %_ZNK2v88internal8compiler12_GLOBAL__N_110OperandSet17ContainsOpOrAliasERKNS1_18InstructionOperandE.exit128
  %i.mv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.9.0.ph351) #14
  br label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratorppEv.exit.outer348, !llvm.loop !35

bb.bc:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.mw = load ptr, ptr %0, align 8
  store ptr %i.mw, ptr %5, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, i8 0, i64 24, i1 false)
  %i.my = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.mz = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not73229 = icmp eq ptr %i.my, %i.mz
  br i1 %.not73229, label %.loopexit, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.bc
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.bd

._crit_edge233:                                   ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre259 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre260 = load ptr, ptr %i.mx, align 8
  %i.nc = icmp eq ptr %.pre259, %.pre260
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %i.nc, label %.loopexit, label %bb.bj

bb.bd:                                            ; preds = %.lr.ph232, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread
  %.068230 = phi ptr [ %i.my, %.lr.ph232 ], [ %i.pr, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread ] ; 2 uses
  %i.ne = load ptr, ptr %.068230, align 8         ; 4 uses
  %i.nf = load i64, ptr %i.ne, align 8            ; 10 uses
  %i.ng = and i64 %i.nf, 7                        ; 3 uses
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 3 uses
  %i.nj = icmp eq i64 %i.ng, 4                    ; 2 uses
  br i1 %i.nj, label %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191_crit_edge, label %bb.bf

._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191_crit_edge: ; preds = %bb.be
  %.pre258 = load i64, ptr %i.ni, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191

bb.bf:                                            ; preds = %bb.be
  %i.nk = icmp samesign ugt i64 %i.ng, 4
  br i1 %i.nk, label %bb.bg, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136

bb.bg:                                            ; preds = %bb.bf
  %i.nl = and i64 %i.nf, 8
  %i.nm = icmp eq i64 %i.nl, 0
  %i.nn = and i64 %i.nf, 3840
  %i.no = icmp ne i64 %i.nn, 0
  %i.np = and i1 %i.no, %i.nm
  %i.nq = and i64 %i.nf, -4088
  %i.nr = select i1 %i.np, i64 288, i64 0
  %i.ns = or disjoint i64 %i.nq, %i.nr
  %i.nt = or disjoint i64 %i.ns, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136: ; preds = %bb.bg, %bb.bf
  %.02.i.i.i137 = phi i64 [ %i.nt, %bb.bg ], [ %i.nf, %bb.bf ]
  %i.nu = load i64, ptr %i.ni, align 8            ; 6 uses
  %i.nv = and i64 %i.nu, 7
  %i.nw = icmp samesign ugt i64 %i.nv, 4
  br i1 %i.nw, label %bb.bh, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140

bb.bh:                                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136
  %i.nx = and i64 %i.nu, 8
  %i.ny = icmp eq i64 %i.nx, 0
  %i.nz = and i64 %i.nu, 3840
  %i.oa = icmp ne i64 %i.nz, 0
  %i.ob = and i1 %i.oa, %i.ny
  %i.oc = and i64 %i.nu, -4088
  %i.od = select i1 %i.ob, i64 288, i64 0
  %i.oe = or disjoint i64 %i.oc, %i.od
  %i.of = or disjoint i64 %i.oe, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136, %bb.bh
  %.02.i4.i.i139 = phi i64 [ %i.of, %bb.bh ], [ %i.nu, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i136 ]
  %i.og = icmp eq i64 %.02.i.i.i137, %.02.i4.i.i139
  br i1 %i.og, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191: ; preds = %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191_crit_edge, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140
  %i.oh = phi i64 [ %.pre258, %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191_crit_edge ], [ %i.nu, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140 ] ; 3 uses
  %.val8.i = load i64, ptr %4, align 8            ; 5 uses
  switch i64 %.val8.i, label %.lr.ph.i150 [
    i64 -1, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE3mapEv.exit.i
    i64 0, label %.critedge.i141
  ]

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE3mapEv.exit.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191
  %.val.i.i.i = load ptr, ptr %i.na, align 8      ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread, label %.lr.ph.i.i.i.i145

.lr.ph.i.i.i.i145:                                ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE3mapEv.exit.i, %.lr.ph.i.i.i.i145
  %.03.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i145 ], [ %.val.i.i.i, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE3mapEv.exit.i ] ; 6 uses
  %.082.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i145 ], [ %i.fd, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE3mapEv.exit.i ] ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %i.oj = load i64, ptr %i.oi, align 8            ; 3 uses
  %i.ok = and i64 %i.oj, 7
  %i.ol = icmp eq i64 %i.ok, 4
  %i.om = icmp ne i64 %i.oj, %i.nf
  %.0.i.i.i.i.i.i.i.i146 = or i1 %i.om, %i.ol
  %i.on = icmp ult i64 %i.oj, %i.nf
  %i.oo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 40
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = icmp ult i64 %i.op, %i.oh
  %.0.i.i.i.i.i.i147 = select i1 %.0.i.i.i.i.i.i.i.i146, i1 %i.on, i1 %i.oq ; 4 uses
  %.19.i.i.i.i = select i1 %.0.i.i.i.i.i.i147, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i147, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.03.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i148, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i145, !llvm.loop !36

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i145
  %i.or = icmp eq ptr %.19.i.i.i.i, %i.fd
  br i1 %i.or, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_ZNS2_13MoveOptimizer12MigrateMovesEPNS2_11InstructionES9_E5DummyESt10_Select1stISB_ESt4lessIS4_ENS1_13ZoneAllocatorISB_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i147, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.os = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.ot = icmp ne i64 %i.nf, %i.os
  %.0.i.i.i.i.i.i.i149 = select i1 %i.nj, i1 true, i1 %i.ot
  %i.ou = icmp ult i64 %i.nf, %i.os
  %.19.i.i.i.i.sroa.sel180.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i147, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i
  %.19.i.i.i.i.sroa.sel180.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel180.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.ov = load i64, ptr %.19.i.i.i.i.sroa.sel180.v.sroa.sel.v.sroa.sel, align 8
  %i.ow = icmp ult i64 %i.oh, %i.ov
  %.0.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i149, i1 %i.ou, i1 %i.ow
  br i1 %.0.i.i.i.i.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEZNS4_13MoveOptimizer12MigrateMovesEPNS4_11InstructionES9_E5DummySt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitISD_EEE8iteratoreqERKSJ_.exit.thread

.lr.ph.i150:                                      ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i151
  %.014.i = phi i64 [ %i.ph, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i151 ], [ 0, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit140.thread191 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.014.i ; 3 uses
  %i.oy = load i64, ptr %i.ox, align 8            ; 2 uses
  %i.oz = and i64 %i.oy, 7
  %i.pa = icmp ne i64 %i.oz, 4
  %i.pb = icmp eq i64 %i.oy, %i.nf
  %.0.i.i.i.i.i.i9.i = and i1 %i.pb, %i.pa
  br i1 %.0.i.i.i.i.i.i9.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i153, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i151

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i153: ; preds = %.lr.ph.i150
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pd = load i64, ptr %i.pc, align 8            ; 2 uses
  %i.pe = and i64 %i.pd, 7
  %i.pf = icmp ne i64 %i.pe, 4
  %i.pg = icmp eq i64 %i.pd, %i.oh
  %.0.i.i.i.i.i.i.i10.i = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %.0.i.i.i.i.i.i.i10.i, label %.loopexit314, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i151

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i151: ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i153, %.lr.ph.i150
  %i.ph = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i152 = icmp eq i64 %i.ph, %.val8.i
end_hunk_1
