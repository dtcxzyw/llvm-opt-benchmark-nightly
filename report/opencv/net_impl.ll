Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/net_impl?download=true
inline.NumInlined: 8390
inline.NumDeleted: 2706
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606056detail11BlobManager5reuseERKNS2_8LayerPinES6_:bb.a
  br i1 %i.dr, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i69

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78: ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i67, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !340
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i79, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i69

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i79: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78, %bb.ac
  br label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i69

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i69: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i79, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78, %bb.ad
  %.sink.i.i.i70 = phi i64 [ 24, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i79 ], [ 16, %bb.ad ], [ 16, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78 ]
  %.19.i.i.i71 = phi ptr [ %.0812.i.i.i68, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i79 ], [ %.013.i.i.i67, %bb.ad ], [ %.013.i.i.i67, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i78 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i67, i64 %.sink.i.i.i70
  %.1.i.i.i72 = load ptr, ptr %i.dv, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %.1.i.i.i72, null
  br i1 %.not.i.i.i73, label %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i74, label %bb.ac, !llvm.loop !11

_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i74: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i69
  %i.dw = icmp eq ptr %.19.i.i.i71, %i.cw
  br i1 %i.dw, label %.lr.ph.i.i.i.i97.preheader, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i74
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i71, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !290 ; 2 uses
  %i.dz = icmp slt i32 %i.dm, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i.i97.preheader, label %bb.af

.lr.ph.i.i.i.i97.preheader:                       ; preds = %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i74, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i77, %bb.ae
  br label %.lr.ph.i.i.i.i97

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp eq i32 %i.dm, %i.dy
  br i1 %i.ea, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i77, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i77: ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i71, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !340
  %.not132 = icmp slt i32 %i.dn, %i.ec
  br i1 %.not132, label %.lr.ph.i.i.i.i97.preheader, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80: ; preds = %bb.af, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i77
  %i.ed = getelementptr inbounds nuw i8, ptr %.19.i.i.i71, i64 40
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !342
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80
  %.013.i.i.i.i83 = phi ptr [ %i.cv, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80 ], [ %.1.i.i.i.i88, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85 ] ; 5 uses
  %.0812.i.i.i.i84 = phi ptr [ %i.cw, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit80 ], [ %.19.i.i.i.i87, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i83, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !290 ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %i.cr
  br i1 %i.eh, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = icmp eq i32 %i.eg, %i.cr
  br i1 %i.ei, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94: ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i83, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !340
  %i.el = icmp slt i32 %i.ek, %i.cs
  br i1 %i.el, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94, %bb.ag
  br label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94, %bb.ah
  %.sink.i.i.i.i86 = phi i64 [ 24, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95 ], [ 16, %bb.ah ], [ 16, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94 ]
  %.19.i.i.i.i87 = phi ptr [ %.0812.i.i.i.i84, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i95 ], [ %.013.i.i.i.i83, %bb.ah ], [ %.013.i.i.i.i83, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i94 ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i83, i64 %.sink.i.i.i.i86
  %.1.i.i.i.i88 = load ptr, ptr %i.em, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %.1.i.i.i.i88, null
  br i1 %.not.i.i.i.i89, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i, label %bb.ag, !llvm.loop !11

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i85
  %i.en = icmp eq ptr %.19.i.i.i.i87, %i.cw
  br i1 %i.en, label %.critedge.i92, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i87, i64 32
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !290 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, %i.cr
  br i1 %i.eq, label %.critedge.i92, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = icmp eq i32 %i.ep, %i.cr
  br i1 %i.er, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i91, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i91: ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i87, i64 36
  %i.et = load i32, ptr %i.es, align 4, !tbaa !340
  %i.eu = icmp sgt i32 %i.et, %i.cs
  br i1 %i.eu, label %.critedge.i92, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit

.critedge.i92:                                    ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i91, %bb.ai, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %15, ptr %5, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ev = call ptr @_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.19.i.i.i.i87, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit: ; preds = %bb.aj, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i91, %.critedge.i92
  %.sroa.06.0.i90 = phi ptr [ %i.ev, %.critedge.i92 ], [ %.19.i.i.i.i87, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i91 ], [ %.19.i.i.i.i87, %bb.aj ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i90, i64 40 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !72
  %i.ey = add nsw i32 %i.ex, %i.ee
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !72
  %i.ez = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.19.i.i.i71, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 48) #28
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !131
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !131
  br label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit.thread

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97.preheader, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100
  %.013.i.i.i.i98 = phi ptr [ %.1.i.i.i.i103, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100 ], [ %i.cv, %.lr.ph.i.i.i.i97.preheader ] ; 5 uses
  %.0812.i.i.i.i99 = phi ptr [ %.19.i.i.i.i102, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100 ], [ %i.cw, %.lr.ph.i.i.i.i97.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i98, i64 32
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !290 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %i.cr
  br i1 %i.ff, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i97
  %i.fg = icmp eq i32 %i.fe, %i.cr
  br i1 %i.fg, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110: ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i98, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !340
  %i.fj = icmp slt i32 %i.fi, %i.cs
  br i1 %i.fj, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110, %.lr.ph.i.i.i.i97
  br label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110, %bb.ak
  %.sink.i.i.i.i101 = phi i64 [ 24, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111 ], [ 16, %bb.ak ], [ 16, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110 ]
  %.19.i.i.i.i102 = phi ptr [ %.0812.i.i.i.i99, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i.i111 ], [ %.013.i.i.i.i98, %bb.ak ], [ %.013.i.i.i.i98, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i.i110 ] ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i98, i64 %.sink.i.i.i.i101
  %.1.i.i.i.i103 = load ptr, ptr %i.fk, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %.1.i.i.i.i103, null
  br i1 %.not.i.i.i.i104, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i105, label %.lr.ph.i.i.i.i97, !llvm.loop !11

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i105: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i.i100
  %i.fl = icmp eq ptr %.19.i.i.i.i102, %i.cw
  br i1 %i.fl, label %.critedge.i108, label %bb.al

bb.al:                                            ; preds = %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i105
  %i.fm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i102, i64 32
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !290 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, %i.cr
  br i1 %i.fo, label %.critedge.i108, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = icmp eq i32 %i.fn, %i.cr
  br i1 %i.fp, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i107, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit112

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i107: ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i102, i64 36
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !340
  %i.fs = icmp sgt i32 %i.fr, %i.cs
  br i1 %i.fs, label %.critedge.i108, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit112

.critedge.i108:                                   ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i107, %bb.al, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE11lower_boundERS8_.exit.i105
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %15, ptr %3, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ft = call ptr @_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.19.i.i.i.i102, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit112

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit112: ; preds = %bb.am, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i107, %.critedge.i108
  %.sroa.06.0.i106 = phi ptr [ %i.ft, %.critedge.i108 ], [ %.19.i.i.i.i102, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i107 ], [ %.19.i.i.i.i102, %bb.am ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i106, i64 40 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !72
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !72
  br label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit.thread

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit.thread: ; preds = %bb.aa, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i62, %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEixERS8_.exit50, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEEixERS8_.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  ret void

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v202606056detail11BlobManager13reuseOrCreateERKNS_8MatShapeERKNS2_8LayerPinERNS_3MatERKi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %8 = alloca %"struct.cv::dnn::dnn5_v20260605::detail::LayerPin", align 8 ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060541getParam_DNN_DISABLE_MEMORY_OPTIMIZATIONSEv()
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 -1, ptr %8, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 -1, ptr %i.b, align 4, !tbaa !340
  %i.c = load i32, ptr %1, align 4, !tbaa !371    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.f = icmp ult i32 %i.c, 8
  br i1 %i.f, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new

_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02127.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %i.as, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72
  %i.i = zext i32 %i.h to i64
  %i.j = mul i64 %.02127.i, %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !72
  %i.n = zext i32 %i.m to i64
  %i.o = mul i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !72
  %i.s = zext i32 %i.r to i64
  %i.t = mul i64 %i.o, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !72
  %i.x = zext i32 %i.w to i64
  %i.y = mul i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !72
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !72
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !72
  %i.am = zext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul i64 %i.an, %i.ar                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !19

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.as, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %.02127.i.epil = phi i64 [ %.02127.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %i.aw, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %epil.iter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !72
  %i.av = zext i32 %i.au to i64
  %i.aw = mul i64 %.02127.i.epil, %i.av           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !1158

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.b
  %.021.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.as, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.aw, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %i.ax = trunc i64 %.021.lcssa.i to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !129 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not5658 = icmp eq ptr %i.az, %i.ba
  br i1 %.not5658, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %sext = shl i64 %.021.lcssa.i, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.critedge
  %.pr = load ptr, ptr %i.bb, align 8, !tbaa !83
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bg = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.be, %.lr.ph ] ; 2 uses
  %.02460 = phi i64 [ %.2, %.lr.ph.splitthread-pre-split ], [ 2147483647, %.lr.ph ] ; 9 uses
  %.sroa.048.059 = phi ptr [ %i.co, %.lr.ph.splitthread-pre-split ], [ %i.az, %.lr.ph ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.048.059, i64 32 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !290 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.048.059, i64 36
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !290 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bi
  br i1 %i.bn, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp eq i32 %i.bm, %i.bi
  br i1 %i.bo, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !340
  %i.br = icmp slt i32 %i.bq, %i.bk
  br i1 %i.br, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i, %bb.c
  br label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i, %bb.d
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.d ], [ %.013.i.i.i, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i.i ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %bb.c, !llvm.loop !11

_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.thread10.i.i.i
  %i.bt = icmp eq ptr %.19.i.i.i, %i.bc
  br i1 %i.bt, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !290 ; 2 uses
  %i.bw = icmp slt i32 %i.bi, %i.bv
  br i1 %i.bw, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = icmp eq i32 %i.bi, %i.bv
  br i1 %i.bx, label %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit

_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i: ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !340
  %.not57 = icmp slt i32 %i.bk, %i.bz
  br i1 %.not57, label %.critedge, label %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit

_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit: ; preds = %bb.f, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !342
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.048.059, i64 40 ; 5 uses
  %i.ce = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %.not = icmp ult i64 %i.ce, %i.bd
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.cg = icmp ult i64 %i.cf, %.02460
  br i1 %i.cg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.cd, align 8, !tbaa !336
  %i.ci = and i32 %i.ch, 4095
  %i.cj = load i32, ptr %4, align 4, !tbaa !72
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.cl = load i64, ptr %i.bh, align 8, !tbaa !72
  store i64 %i.cl, ptr %8, align 8, !tbaa !72
  %i.cm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cn = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %bb.e, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i, %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %.lr.ph.split, %bb.h, %bb.j, %bb.k, %bb.m, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit
  %.2 = phi i64 [ %i.cn, %bb.m ], [ %.02460, %_ZNSt3mapIN2cv3dnn14dnn5_v202606056detail8LayerPinEiSt4lessIS4_ESaISt4pairIKS4_iEEE4findERS8_.exit ], [ %.02460, %bb.h ], [ %.02460, %bb.k ], [ %.02460, %bb.j ], [ %.02460, %bb.e ], [ %.02460, %.lr.ph.split ], [ %.02460, %_ZNSt8_Rb_treeIN2cv3dnn14dnn5_v202606056detail8LayerPinESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i ], [ %.02460, %_ZNKSt4lessIN2cv3dnn14dnn5_v202606056detail8LayerPinEEclERKS4_S7_.exit.i.i ]
  %i.co = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.048.059) #33 ; 2 uses
  %.not56 = icmp eq ptr %i.co, %i.ba
  br i1 %.not56, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !1159

._crit_edge:                                      ; preds = %.critedge, %.lr.ph, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %i.cp = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge
  br i1 %i.cp, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ab

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv3dnn14dnn5_v202606056detail11BlobManager5reuseERKNS2_8LayerPinES6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef 1)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !1163
  store i64 9223372034707292160, ptr %5, align 8, !noalias !1163
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !1163
  store i32 0, ptr %6, align 4, !tbaa !1165, !noalias !1163
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.ax, ptr %i.cq, align 4, !tbaa !1166, !noalias !1163
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !1163
  invoke void @_ZNK2cv3Mat7reshapeEiRKNS_8MatShapeE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %1)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.aa unwind label %bb.w      ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.i, %bb.l, %bb.m, %bb.o, %._crit_edge
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.w ], [ %i.cu, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.ct, %bb.u ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.cs, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.s
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cw = load i32, ptr %1, align 4, !tbaa !371
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.cw, i32 0) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %narrow.i, ptr %i.cx, align 4, !tbaa !465
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %narrow.i, ptr %i.cy, align 8, !tbaa !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %.pn36.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  resume { ptr, i32 } %.pn36.pn

bb.ab:                                            ; preds = %.thread, %bb.a
  %i.cz = load i32, ptr %4, align 4, !tbaa !72
  call void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %i.cz)
  call void @_ZN2cv3dnn14dnn5_v202606056detail11BlobManager7addHostERKNS2_8LayerPinERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(208) %3)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not108 = icmp eq ptr %2, %3
  br i1 %.not108, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv8MatShapeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = sdiv exact i64 %i.c, 52                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !337  ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = sdiv exact i64 %i.m, 52                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2cv8MatShapeESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.013.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.014.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.08.013.i.i.i.i.i)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i.i, i64 52 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 52
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN2cv8MatShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1168

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #29 ; 0 uses
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.ai, %bb.n, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.v, %bb.f ], [ %i.aw, %bb.j ], [ %i.dl, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_move_aIPN2cv8MatShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !337
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c
  store ptr %i.z, ptr %i.g, align 8, !tbaa !337
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN2cv8MatShapeES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN2cv8MatShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ad = udiv exact i64 %i.ab, 52
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i51 ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i51 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i51 ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -52 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -52 ; 2 uses
  %i.ag = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.af, ptr noundef nonnull align 4 dereferenceable(52) %i.ae) ; 0 uses
  %i.ah = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN2cv8MatShapeES2_ET0_T_S4_S3_.exit, !llvm.loop !1169

_ZSt13move_backwardIPN2cv8MatShapeES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %_ZSt22__uninitialized_move_aIPN2cv8MatShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aj = icmp sgt i64 %i.c, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv8MatShapeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

end_hunk_0
