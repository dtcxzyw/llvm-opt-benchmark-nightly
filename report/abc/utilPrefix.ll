Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilPrefix?download=true
inline.NumInlined: 1954
inline.NumDeleted: 731
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z4seedR5Graph:bb.a
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i46 = icmp eq ptr %i.hx, null
  br i1 %.not10.i.i.i46, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.af, %.lr.ph.i.i.i47
  %.012.i.i.i48 = phi ptr [ %.1.i.i.i53, %.lr.ph.i.i.i47 ], [ %i.hx, %bb.af ] ; 3 uses
  %.0811.i.i.i49 = phi ptr [ %.19.i.i.i50, %.lr.ph.i.i.i47 ], [ %.044.i.i44, %bb.af ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !51
  %i.ic = icmp ult ptr %i.ib, %1                  ; 2 uses
  %.19.i.i.i50 = select i1 %i.ic, ptr %.0811.i.i.i49, ptr %.012.i.i.i48 ; 2 uses
  %.1.in.v.i.i.i51 = select i1 %i.ic, i64 24, i64 16
  %.1.in.i.i.i52 = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 %.1.in.v.i.i.i51
  %.1.i.i.i53 = load ptr, ptr %.1.in.i.i.i52, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %.1.i.i.i53, null
  br i1 %.not.i.i.i54, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55, label %.lr.ph.i.i.i47, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55: ; preds = %.lr.ph.i.i.i47, %bb.af
  %.08.lcssa.i.i.i56 = phi ptr [ %.044.i.i44, %bb.af ], [ %.19.i.i.i50, %.lr.ph.i.i.i47 ] ; 2 uses
  %.not10.i24.i.i57 = icmp eq ptr %i.hz, null
  br i1 %.not10.i24.i.i57, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66, label %.lr.ph.i25.i.i58

.lr.ph.i25.i.i58:                                 ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55, %.lr.ph.i25.i.i58
  %.012.i26.i.i59 = phi ptr [ %.1.i31.i.i64, %.lr.ph.i25.i.i58 ], [ %i.hz, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55 ] ; 3 uses
  %.0811.i27.i.i60 = phi ptr [ %.19.i28.i.i61, %.lr.ph.i25.i.i58 ], [ %.02243.i.i45, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55 ]
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i26.i.i59, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !51
  %i.if = icmp ult ptr %1, %i.ie                  ; 2 uses
  %.19.i28.i.i61 = select i1 %i.if, ptr %.012.i26.i.i59, ptr %.0811.i27.i.i60 ; 2 uses
  %.1.in.v.i29.i.i62 = select i1 %i.if, i64 16, i64 24
  %.1.in.i30.i.i63 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i59, i64 %.1.in.v.i29.i.i62
  %.1.i31.i.i64 = load ptr, ptr %.1.in.i30.i.i63, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i65 = icmp eq ptr %.1.i31.i.i64, null
  br i1 %.not.i32.i.i65, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66, label %.lr.ph.i25.i.i58, !llvm.loop !2

bb.ag:                                            ; preds = %bb.ae, %.lr.ph.i.i43
  %.sink.i.i75 = phi i64 [ 24, %.lr.ph.i.i43 ], [ 16, %bb.ae ]
  %.123.i.i76 = phi ptr [ %.02243.i.i45, %.lr.ph.i.i43 ], [ %.044.i.i44, %bb.ae ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.044.i.i44, i64 %.sink.i.i75
  %.0.i.i77 = load ptr, ptr %i.ig, align 8, !tbaa !75 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.0.i.i77, null
  br i1 %.not.i.i78, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66, label %.lr.ph.i.i43, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66: ; preds = %bb.ag, %.lr.ph.i25.i.i58, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55, %bb.ad
  %.sroa.037.0.i.i67 = phi ptr [ %.08.lcssa.i.i.i56, %.lr.ph.i25.i.i58 ], [ %.08.lcssa.i.i.i56, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55 ], [ %i.hr, %bb.ad ], [ %.123.i.i76, %bb.ag ] ; 3 uses
  %.sroa.3.0.i.i68 = phi ptr [ %.19.i28.i.i61, %.lr.ph.i25.i.i58 ], [ %.02243.i.i45, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i55 ], [ %i.hr, %bb.ad ], [ %.123.i.i76, %bb.ag ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 48 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !49
  %i.ik = icmp eq ptr %.sroa.037.0.i.i67, %i.ij
  %i.il = icmp eq ptr %.sroa.3.0.i.i68, %i.hr
  %or.cond.i69 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond.i69, label %bb.ah, label %.critedge.i.i70

bb.ah:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hp, ptr noundef %.041.i.i41)
  store ptr null, ptr %i.hq, align 8, !tbaa !78
  store ptr %i.hr, ptr %i.ii, align 8, !tbaa !49
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  store ptr %i.hr, ptr %i.im, align 8, !tbaa !79
  store i64 0, ptr %i.ih, align 8, !tbaa !68
  br label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79

.critedge.i.i70:                                  ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i66
  %.not8.i.i71 = icmp eq ptr %.sroa.037.0.i.i67, %.sroa.3.0.i.i68
  br i1 %.not8.i.i71, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79, label %.lr.ph.i2.i72

.lr.ph.i2.i72:                                    ; preds = %.critedge.i.i70, %.lr.ph.i2.i72
  %.sroa.06.09.i.i73 = phi ptr [ %i.in, %.lr.ph.i2.i72 ], [ %.sroa.037.0.i.i67, %.critedge.i.i70 ] ; 2 uses
  %i.in = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i73) #22 ; 2 uses
  %i.io = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i73, ptr noundef nonnull align 8 dereferenceable(32) %i.hr) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 40) #26
  %i.ip = load i64, ptr %i.ih, align 8, !tbaa !68
  %i.iq = add i64 %i.ip, -1
  store i64 %i.iq, ptr %i.ih, align 8, !tbaa !68
  %.not.i3.i74 = icmp eq ptr %i.in, %.sroa.3.0.i.i68
  br i1 %.not.i3.i74, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79, label %.lr.ph.i2.i72, !llvm.loop !4

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79: ; preds = %.lr.ph.i2.i72, %.critedge.i.i70, %bb.ah, %_ZN4Node10ref_faninsEv.exit119
  %i.ir = load ptr, ptr %i.i, align 8, !tbaa !53  ; 7 uses
  %.not2.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not2.i.i.i, label %_ZN6Column4linkERS_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 24 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 7 uses
  %.041.i.i = load ptr, ptr %i.it, align 8, !tbaa !75 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.al
  %.044.i.i = phi ptr [ %.0.i.i, %bb.al ], [ %.041.i.i, %bb.ai ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.al ], [ %i.iu, %bb.ai ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !51 ; 2 uses
  %i.ix = icmp ult ptr %i.iw, %1
  br i1 %i.ix, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.iy = icmp ult ptr %1, %i.iw
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iz = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !76 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ak, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ja, %bb.ak ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %.044.i.i, %bb.ak ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !51
  %i.jf = icmp ult ptr %i.je, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.jf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.jf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i39, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.ak
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.ak ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.jc, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.jc, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !51
  %i.ji = icmp ult ptr %1, %i.jh                  ; 2 uses
  %.19.i28.i.i = select i1 %i.ji, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.ji, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !2

bb.al:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.aj ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.aj ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.jj, align 8, !tbaa !75 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.al, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.ai
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.iu, %bb.ai ], [ %.123.i.i, %bb.al ] ; 3 uses
  %.sroa.3.0.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.iu, %bb.ai ], [ %.123.i.i, %bb.al ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !49
  %i.jn = icmp eq ptr %.sroa.037.0.i.i, %i.jm
  %i.jo = icmp eq ptr %.sroa.3.0.i.i, %i.iu
  %or.cond.i40 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond.i40, label %bb.am, label %.critedge.i.i

bb.am:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.is, ptr noundef %.041.i.i)
  store ptr null, ptr %i.it, align 8, !tbaa !78
  store ptr %i.iu, ptr %i.jl, align 8, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  store ptr %i.iu, ptr %i.jp, align 8, !tbaa !79
  store i64 0, ptr %i.jk, align 8, !tbaa !68
  br label %_ZN6Column4linkERS_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i
  br i1 %.not8.i.i, label %_ZN6Column4linkERS_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.jq, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.jq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.jr = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.iu) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 40) #26
  %i.js = load i64, ptr %i.jk, align 8, !tbaa !68
  %i.jt = add i64 %i.js, -1
  store i64 %i.jt, ptr %i.jk, align 8, !tbaa !68
  %.not.i3.i = icmp eq ptr %i.jq, %.sroa.3.0.i.i
  br i1 %.not.i3.i, label %_ZN6Column4linkERS_.exit, label %.lr.ph.i2.i, !llvm.loop !4

_ZN6Column4linkERS_.exit:                         ; preds = %.lr.ph.i2.i, %.critedge.i.i, %bb.am, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit79
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !78
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.ju)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %indvars.iv.next = add nsw i64 %indvars.iv323, -2 ; 2 uses
  %.not30 = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %.not30, label %._crit_edge325, label %bb.d, !llvm.loop !152

._crit_edge:                                      ; preds = %._crit_edge325, %.peel.next, %bb.a, %bb.b
  ret void

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %.peel.next ], [ 3, %bb.b ] ; 4 uses
  %i.jv = lshr i64 %indvars.iv243, 1
  %i.jw = trunc nuw nsw i64 %i.jv to i32
  %i.jx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jw, i1 false)
  %i.jy = sub nuw nsw i32 32, %i.jx
  %i.jz = shl nuw i32 1, %i.jy                    ; 2 uses
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv243
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !47
  %i.kd = trunc nuw nsw i64 %indvars.iv243 to i32
  %i.ke = sub nsw i32 %i.kd, %i.jz
  %i.kf = sdiv i32 %i.jz, 2                       ; 2 uses
  %i.kg = srem i32 %i.ke, %i.kf
  %i.kh = add nsw i32 %i.kg, %i.kf
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !47
  call void @_ZN6Column4linkERS_(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %i.kk)
  %.pre248 = load i32, ptr %0, align 8, !tbaa !71
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %i.kl = sdiv i32 %.pre248, 2
  %i.km = shl nsw i32 %i.kl, 1
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next244, %i.kn
  br i1 %i.ko, label %.peel.next, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Column4linkERS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.Node, align 8                ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2147483647, ptr %i.i, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.j, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.j, ptr %i.m, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 0, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  store ptr %i.e, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.q, align 8, !tbaa !53
  %i.r = load i32, ptr %i.e, align 4, !tbaa !48
  %i.s = load i32, ptr %i.h, align 4, !tbaa !48
  %i.t = call i32 @llvm.smax.i32(i32 %i.r, i32 %i.s)
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %2, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.w, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !40
  call void @_ZN4Node10ref_faninsEv(ptr noundef nonnull align 8 dereferenceable(92) %2)
  call void @_ZNSt7__cxx114listI4NodeSaIS1_EE9_M_insertIJS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(92) %2)
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %2, ptr %i.a, align 8, !tbaa !51
  %i.ad = call noundef i64 @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %.not2.i.i = icmp eq ptr %i.ae, null
  br i1 %.not2.i.i, label %_ZN4NodeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %2, ptr %i.b, align 8, !tbaa !51
  %i.ag = call noundef i64 @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN4NodeD2Ev.exit

_ZN4NodeD2Ev.exit:                                ; preds = %bb.c, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !78
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z7search2R4NodeR5GraphRSt6vectorIPS_SaIS4_EES7_iiiPSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = icmp eq i32 %i.b, %5
  %i.d = load ptr, ptr %3, align 8, !tbaa !56     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = load ptr, ptr %2, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp ult i64 %i.n, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP4NodeSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.n, %i.r
  %i.v = icmp ne ptr %7, null
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 0, ptr %9, align 4, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 1, ptr %i.w, align 4, !tbaa !62
  %i.x = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(5000) %7, ptr noundef nonnull align 4 dereferenceable(8) %9)
  %.not44 = icmp eq i32 %i.x, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP4NodeSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = load ptr, ptr %2, align 8, !tbaa !59
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = ptrtoint ptr %i.f to i64
  %i.ah = ptrtoint ptr %i.d to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = icmp ult i64 %i.af, %i.ak
  %i.am = icmp sgt i32 %6, 0
  %or.cond3 = and i1 %i.am, %i.al
  br i1 %or.cond3, label %bb.l, label %.loopexit

bb.k:                                             ; preds = %bb.i
  %.old2 = icmp sgt i32 %6, 0
  br i1 %.old2, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ap = sext i32 %i.b to i64
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65, !noalias !158 ; 2 uses
  %.not5455 = icmp eq ptr %i.as, %i.at
  br i1 %.not5455, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
end_hunk_0
