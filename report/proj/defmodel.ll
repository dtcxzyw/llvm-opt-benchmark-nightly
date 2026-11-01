Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEE7forwardERS4_ddddbRdS7_S7_:bb.a
  %.010.lcssa20.i.i.i.i.i.i = phi ptr [ %.01115.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.fi, %bb.af ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val367, i64 40
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !tbaa !64
  %i.hd = icmp eq ptr %.010.lcssa20.i.i.i.i.i.i, %.val9.i.i.i.i.i.i
  br i1 %i.hd, label %.thread.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i
  %i.he = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i.i.i) #40 ; 2 uses
  %.phi.trans.insert31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %.pre32.i.i.i.i.i = load ptr, ptr %.phi.trans.insert31.i.i.i.i.i, align 8, !tbaa !522
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i.i.i
  %i.hf = phi ptr [ %.pre32.i.i.i.i.i, %bb.ag ], [ %i.ha, %._crit_edge.i.i.i.i.i.i ]
  %.010.lcssa19.i.i.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i.i.i, %bb.ag ], [ %.01115.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ %i.he, %bb.ag ], [ %.01115.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ]
  %i.hg = icmp ult ptr %i.hf, %i.fg
  br i1 %i.hg, label %.thread.i.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i

bb.ai:                                            ; preds = %.noexc.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i20.i.i, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !522 ; 2 uses
  %i.hj = icmp ult ptr %i.fg, %i.hi
  br i1 %i.hj, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %.val367, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !65 ; 4 uses
  %i.hm = icmp eq ptr %i.hl, %.08.lcssa.i.i.i20.i.i
  br i1 %i.hm, label %bb.aw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i20.i.i) #40 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !522
  %i.hq = icmp ult ptr %i.hp, %i.fg
  br i1 %i.hq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hr = getelementptr i8, ptr %i.hn, i64 24
  %.val10.i.i.i.i.i = load ptr, ptr %i.hr, align 8, !tbaa !85
  %i.hs = icmp eq ptr %.val10.i.i.i.i.i, null     ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.hs, ptr null, ptr %.08.lcssa.i.i.i20.i.i
  %spec.select22.i.i.i.i.i = select i1 %i.hs, ptr %i.hn, ptr %.08.lcssa.i.i.i20.i.i
  br label %.thread.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %.01113.i16.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !65 ; 2 uses
  %.not14.i17.i.i.i.i.i = icmp eq ptr %.01113.i16.i.i.i.i.i, null
  br i1 %.not14.i17.i.i.i.i.i, label %._crit_edge.thread.i33.i.i.i.i.i, label %.lr.ph.i18.i.i.i.i.i

.lr.ph.i18.i.i.i.i.i:                             ; preds = %bb.am, %.lr.ph.i18.i.i.i.i.i
  %.01115.i19.i.i.i.i.i = phi ptr [ %.011.i22.i.i.i.i.i, %.lr.ph.i18.i.i.i.i.i ], [ %.01113.i16.i.i.i.i.i, %bb.am ] ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.01115.i19.i.i.i.i.i, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !522 ; 2 uses
  %i.hv = icmp ult ptr %i.fg, %i.hu               ; 2 uses
  %.in.v.i20.i.i.i.i.i = select i1 %i.hv, i64 16, i64 24
  %.in.i21.i.i.i.i.i = getelementptr i8, ptr %.01115.i19.i.i.i.i.i, i64 %.in.v.i20.i.i.i.i.i
  %.011.i22.i.i.i.i.i = load ptr, ptr %.in.i21.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %.011.i22.i.i.i.i.i, null
  br i1 %.not.i23.i.i.i.i.i, label %._crit_edge.i24.i.i.i.i.i, label %.lr.ph.i18.i.i.i.i.i, !llvm.loop !502

._crit_edge.i24.i.i.i.i.i:                        ; preds = %.lr.ph.i18.i.i.i.i.i
  br i1 %i.hv, label %._crit_edge.thread.i33.i.i.i.i.i, label %bb.ao

._crit_edge.thread.i33.i.i.i.i.i:                 ; preds = %._crit_edge.i24.i.i.i.i.i, %bb.am
  %.010.lcssa20.i34.i.i.i.i.i = phi ptr [ %.01115.i19.i.i.i.i.i, %._crit_edge.i24.i.i.i.i.i ], [ %i.fi, %bb.am ] ; 4 uses
  %i.hw = icmp eq ptr %.010.lcssa20.i34.i.i.i.i.i, %i.hl
  br i1 %i.hw, label %.thread.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i33.i.i.i.i.i
  %i.hx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i34.i.i.i.i.i) #40 ; 2 uses
  %.phi.trans.insert29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %.pre30.i.i.i.i.i = load ptr, ptr %.phi.trans.insert29.i.i.i.i.i, align 8, !tbaa !522
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i24.i.i.i.i.i
  %i.hy = phi ptr [ %.pre30.i.i.i.i.i, %bb.an ], [ %i.hu, %._crit_edge.i24.i.i.i.i.i ]
  %.010.lcssa19.i25.i.i.i.i.i = phi ptr [ %.010.lcssa20.i34.i.i.i.i.i, %bb.an ], [ %.01115.i19.i.i.i.i.i, %._crit_edge.i24.i.i.i.i.i ]
  %.sroa.01.0.i26.i.i.i.i.i = phi ptr [ %i.hx, %bb.an ], [ %.01115.i19.i.i.i.i.i, %._crit_edge.i24.i.i.i.i.i ]
  %i.hz = icmp ult ptr %i.hy, %i.fg
  br i1 %i.hz, label %.thread.i.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ai
  %i.ia = icmp ult ptr %i.hi, %i.fg
  br i1 %i.ia, label %bb.aq, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ib = getelementptr inbounds nuw i8, ptr %.val367, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !65 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %.08.lcssa.i.i.i20.i.i
  br i1 %i.id, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i20.i.i) #40 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !522
  %i.ih = icmp ult ptr %i.fg, %i.ig
  br i1 %i.ih, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ii = getelementptr i8, ptr %.08.lcssa.i.i.i20.i.i, i64 24
  %.val.i.i.i.i16.i = load ptr, ptr %i.ii, align 8, !tbaa !85
  %i.ij = icmp eq ptr %.val.i.i.i.i16.i, null     ; 2 uses
  %spec.select23.i.i.i.i.i = select i1 %i.ij, ptr null, ptr %i.ie
  %spec.select24.i.i.i.i.i = select i1 %i.ij, ptr %.08.lcssa.i.i.i20.i.i, ptr %i.ie
  br label %.thread.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %.01113.i37.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !65 ; 2 uses
  %.not14.i38.i.i.i.i.i = icmp eq ptr %.01113.i37.i.i.i.i.i, null
  br i1 %.not14.i38.i.i.i.i.i, label %._crit_edge.thread.i54.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.at, %.lr.ph.i39.i.i.i.i.i
  %.01115.i40.i.i.i.i.i = phi ptr [ %.011.i43.i.i.i.i.i, %.lr.ph.i39.i.i.i.i.i ], [ %.01113.i37.i.i.i.i.i, %bb.at ] ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01115.i40.i.i.i.i.i, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !522 ; 2 uses
  %i.im = icmp ult ptr %i.fg, %i.il               ; 2 uses
  %.in.v.i41.i.i.i.i.i = select i1 %i.im, i64 16, i64 24
  %.in.i42.i.i.i.i.i = getelementptr i8, ptr %.01115.i40.i.i.i.i.i, i64 %.in.v.i41.i.i.i.i.i
  %.011.i43.i.i.i.i.i = load ptr, ptr %.in.i42.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i44.i.i.i.i.i = icmp eq ptr %.011.i43.i.i.i.i.i, null
  br i1 %.not.i44.i.i.i.i.i, label %._crit_edge.i45.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, !llvm.loop !502

._crit_edge.i45.i.i.i.i.i:                        ; preds = %.lr.ph.i39.i.i.i.i.i
  br i1 %i.im, label %._crit_edge.thread.i54.i.i.i.i.i, label %bb.av

._crit_edge.thread.i54.i.i.i.i.i:                 ; preds = %._crit_edge.i45.i.i.i.i.i, %bb.at
  %.010.lcssa20.i55.i.i.i.i.i = phi ptr [ %.01115.i40.i.i.i.i.i, %._crit_edge.i45.i.i.i.i.i ], [ %i.fi, %bb.at ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.val367, i64 40
  %.val9.i56.i.i.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !64
  %i.io = icmp eq ptr %.010.lcssa20.i55.i.i.i.i.i, %.val9.i56.i.i.i.i.i
  br i1 %i.io, label %.thread.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge.thread.i54.i.i.i.i.i
  %i.ip = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i55.i.i.i.i.i) #40 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !522
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i45.i.i.i.i.i
  %i.iq = phi ptr [ %.pre.i.i.i.i.i, %bb.au ], [ %i.il, %._crit_edge.i45.i.i.i.i.i ]
  %.010.lcssa19.i46.i.i.i.i.i = phi ptr [ %.010.lcssa20.i55.i.i.i.i.i, %bb.au ], [ %.01115.i40.i.i.i.i.i, %._crit_edge.i45.i.i.i.i.i ]
  %.sroa.01.0.i47.i.i.i.i.i = phi ptr [ %i.ip, %bb.au ], [ %.01115.i40.i.i.i.i.i, %._crit_edge.i45.i.i.i.i.i ]
  %i.ir = icmp ult ptr %i.iq, %i.fg
  br i1 %i.ir, label %.thread.i.i.i.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i

bb.aw:                                            ; preds = %bb.aq, %bb.aj
  %.sroa.021.2.i.i.i.i.i = phi ptr [ null, %bb.aq ], [ %i.hl, %bb.aj ] ; 2 uses
  %.sroa.12.2.i.i.i.i.i = phi ptr [ %i.ic, %bb.aq ], [ %i.hl, %bb.aj ] ; 2 uses
  %.not.i.i.i17.i = icmp eq ptr %.sroa.12.2.i.i.i.i.i, null
  br i1 %.not.i.i.i17.i, label %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.aw, %bb.av, %._crit_edge.thread.i54.i.i.i.i.i, %bb.as, %bb.ao, %._crit_edge.thread.i33.i.i.i.i.i, %bb.al, %bb.ah, %._crit_edge.thread.i.i.i.i.i.i, %bb.ae
  %.sroa.12.2.i20.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.aw ], [ %.010.lcssa19.i25.i.i.i.i.i, %bb.ao ], [ %.010.lcssa19.i.i.i.i.i.i, %bb.ah ], [ %spec.select22.i.i.i.i.i, %bb.al ], [ %.010.lcssa20.i55.i.i.i.i.i, %._crit_edge.thread.i54.i.i.i.i.i ], [ %.010.lcssa20.i34.i.i.i.i.i, %._crit_edge.thread.i33.i.i.i.i.i ], [ %.010.lcssa20.i.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %spec.select24.i.i.i.i.i, %bb.as ], [ %i.gv, %bb.ae ], [ %.010.lcssa19.i46.i.i.i.i.i, %bb.av ] ; 3 uses
  %.sroa.021.2.i19.i.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i.i, %bb.aw ], [ null, %bb.ao ], [ null, %bb.ah ], [ %spec.select.i.i.i.i.i, %bb.al ], [ null, %._crit_edge.thread.i54.i.i.i.i.i ], [ null, %._crit_edge.thread.i33.i.i.i.i.i ], [ null, %._crit_edge.thread.i.i.i.i.i.i ], [ %spec.select23.i.i.i.i.i, %bb.as ], [ null, %bb.ae ], [ null, %bb.av ]
  %.not.i.i9.i.i.i.i = icmp ne ptr %.sroa.021.2.i19.i.i.i.i, null
  %i.is = icmp eq ptr %.sroa.12.2.i20.i.i.i.i, %i.fi
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i9.i.i.i.i, i1 true, i1 %i.is
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.thread.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i20.i.i.i.i, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !522
  %i.iv = icmp ult ptr %i.fg, %i.iu
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread.i.i.i.i
  %i.iw = phi i1 [ %i.iv, %bb.ax ], [ true, %.thread.i.i.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.iw, ptr noundef nonnull %i.gq, ptr noundef nonnull %.sroa.12.2.i20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fi) #37
  %i.ix = getelementptr inbounds nuw i8, ptr %.val367, i64 56 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !79
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !79
  br label %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit

_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.ap, %bb.ao, %bb.ah
  %.sroa.011.0.ph.i.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i.i, %bb.aw ], [ %.sroa.01.0.i26.i.i.i.i.i, %bb.ao ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.ah ], [ %.sroa.01.0.i47.i.i.i.i.i, %bb.av ], [ %.08.lcssa.i.i.i20.i.i, %bb.ap ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 72) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 48) #38
  br label %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit

_ZNKSt14default_deleteIN12_GLOBAL__N_14GridEEclEPS1_.exit.i.i.i: ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 72) #38
  br label %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS1_EED2Ev.exit23.i: ; preds = %.critedge.i.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 72) #38
  br label %common.resume

_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit:         ; preds = %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridESt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS7_EESt4lessIS4_ESaISt4pairIKS4_SA_EEE4findERSE_.exit.i, %bb.ay, %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i, %_ZNKSt14default_deleteIN12_GLOBAL__N_14GridEEclEPS1_.exit.i.i.i
  %.sroa.027.0.i = phi ptr [ %.19.i.i.i.i, %_ZNSt3mapIPKN5osgeo4proj16GenericShiftGridESt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS7_EESt4lessIS4_ESaISt4pairIKS4_SA_EEE4findERSE_.exit.i ], [ %.19.i.i.i.i.i, %_ZNKSt14default_deleteIN12_GLOBAL__N_14GridEEclEPS1_.exit.i.i.i ], [ %i.gq, %bb.ay ], [ %.sroa.011.0.ph.i.i.i.i, %_ZNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i.i.i.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 40
  %.val15.i = load ptr, ptr %i.jb, align 8, !tbaa !199 ; 30 uses
  %i.jc = icmp eq ptr %.val15.i, null
  br i1 %i.jc, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread, label %bb.az

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !531 ; 3 uses
  %i.jf = icmp slt i32 %i.je, 2
  br i1 %i.jf, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jg = getelementptr inbounds nuw i8, ptr %.val15.i, i64 36
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !532 ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 2
  br i1 %i.ji, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jj = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.jl = load <2 x double>, ptr %.val15.i, align 8, !tbaa !59
  %i.jm = insertelement <2 x double> poison, double %.sroa.speculated473, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %.sroa.speculated464, i64 1
  %i.jo = fsub <2 x double> %i.jn, %i.jl
  %i.jp = load <2 x double>, ptr %i.jj, align 8, !tbaa !59
  %i.jq = fdiv <2 x double> %i.jo, %i.jp          ; 3 uses
  %i.jr = fcmp olt <2 x double> %i.jq, %i.ci      ; 2 uses
  %i.js = extractelement <2 x i1> %i.jr, i64 0
  %i.jt = extractelement <2 x i1> %i.jr, i64 1
  %or.cond = select i1 %i.js, i1 true, i1 %i.jt
  br i1 %or.cond, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ju = extractelement <2 x double> %i.jq, i64 0 ; 3 uses
  %i.jv = fadd double %i.ju, 1.000000e+00
  %i.jw = uitofp nneg i32 %i.je to double
  %i.jx = fadd double %i.ai, %i.jw
  %i.jy = fcmp ult double %i.jv, %i.jx
  br i1 %i.jy, label %bb.bd, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bd:                                            ; preds = %bb.bc
  %i.jz = extractelement <2 x double> %i.jq, i64 1 ; 3 uses
  %i.ka = fadd double %i.jz, 1.000000e+00
  %i.kb = uitofp nneg i32 %i.jh to double
  %i.kc = fadd double %i.ai, %i.kb
  %i.kd = fcmp ult double %i.ka, %i.kc
  br i1 %i.kd, label %bb.be, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.be:                                            ; preds = %bb.bd
  %16 = fptosi double %i.ju to i32
  %17 = add nsw i32 %i.je, -2
  %.sroa.speculated432 = call i32 @llvm.smin.i32(i32 %17, i32 %16) ; 13 uses
  %18 = fptosi double %i.jz to i32
  %19 = add nsw i32 %i.jh, -2
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %19, i32 %18) ; 13 uses
  %i.ke = add nsw i32 %.sroa.speculated432, 1     ; 10 uses
  %20 = add nsw i32 %.sroa.speculated, 1          ; 10 uses
  %21 = sitofp i32 %.sroa.speculated432 to double
  %22 = fsub double %i.ju, %21                    ; 4 uses
  %23 = sitofp i32 %.sroa.speculated to double
  %24 = fsub double %i.jz, %23                    ; 3 uses
  %i.kf = fsub double 1.000000e+00, %22           ; 2 uses
  %i.kg = fsub double 1.000000e+00, %24           ; 2 uses
  %i.kh = fmul double %i.kf, %i.kg                ; 6 uses
  %i.ki = fmul double %22, %i.kg                  ; 6 uses
  %i.kj = fmul double %i.kf, %24                  ; 6 uses
  %i.kk = fmul double %22, %24                    ; 6 uses
  %.val355 = load ptr, ptr %.sroa.0492.0679, align 8, !tbaa !166
  %i.kl = getelementptr inbounds nuw i8, ptr %.val355, i64 12
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !183 ; 2 uses
  %i.kn = icmp eq i32 %i.km, 2
  br i1 %i.kn, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !59
  %i.ko = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ko, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %bb.bf
  %i.kp = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.kp, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.kq = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.kq, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %bb.bh
  %i.kr = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.kr, label %bb.bj, label %.thread

.thread:                                          ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ks = load double, ptr %i.a, align 8, !tbaa !59
  %i.kt = load double, ptr %i.b, align 8, !tbaa !59
  %i.ku = fmul double %i.kj, %i.kt
  %i.kv = call double @llvm.fmuladd.f64(double %i.ks, double %i.kh, double %i.ku)
  %i.kw = load double, ptr %i.c, align 8, !tbaa !59
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %i.ki, double %i.kv)
  %i.ky = load double, ptr %i.d, align 8, !tbaa !59
  %i.kz = call double @llvm.fmuladd.f64(double %i.ky, double %i.kk, double %i.kx)
  %i.la = call double @llvm.fmuladd.f64(double %.0.i, double %i.kz, double %.0283685)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bk:                                            ; preds = %bb.be
  %i.lb = load i8, ptr %i.cf, align 8, !tbaa !159, !range !90, !noundef !91
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = icmp eq i32 %i.km, 1                    ; 2 uses
  br i1 %i.lc, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !59
  br i1 %i.ld, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.le = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.le, label %bb.bn, label %.thread546

bb.bn:                                            ; preds = %bb.bm
  %i.lf = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.lf, label %bb.bo, label %.thread546

bb.bo:                                            ; preds = %bb.bn
  %i.lg = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.lg, label %bb.bp, label %.thread546

bb.bp:                                            ; preds = %bb.bo
  %i.lh = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.lh, label %bb.bv, label %.thread546

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !59
  %i.li = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.li, label %bb.br, label %.thread542

bb.br:                                            ; preds = %bb.bq
  %i.lj = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br i1 %i.lj, label %bb.bs, label %.thread542

bb.bs:                                            ; preds = %bb.br
  %i.lk = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br i1 %i.lk, label %bb.bt, label %.thread542

bb.bt:                                            ; preds = %bb.bs
  %i.ll = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br i1 %i.ll, label %bb.bu, label %.thread542

.thread542:                                       ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  br label %.thread546

bb.bu:                                            ; preds = %bb.bt
  %i.lm = load double, ptr %i.m, align 8, !tbaa !59
  %i.ln = load double, ptr %i.n, align 8, !tbaa !59
  %i.lo = fmul double %i.kj, %i.ln
  %i.lp = call double @llvm.fmuladd.f64(double %i.lm, double %i.kh, double %i.lo)
  %i.lq = load double, ptr %i.o, align 8, !tbaa !59
  %i.lr = call double @llvm.fmuladd.f64(double %i.lq, double %i.ki, double %i.lp)
  %i.ls = load double, ptr %i.p, align 8, !tbaa !59
  %i.lt = call double @llvm.fmuladd.f64(double %i.ls, double %i.kk, double %i.lr)
  %i.lu = call double @llvm.fmuladd.f64(double %.0.i, double %i.lt, double %.0283685)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  br label %bb.bv

.thread546:                                       ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.thread542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread

bb.bv:                                            ; preds = %bb.bp, %bb.bu
  %.3286 = phi double [ %.0283685, %bb.bp ], [ %i.lu, %bb.bu ]
  %i.lv = load double, ptr %i.e, align 8, !tbaa !59
  %i.lw = load double, ptr %i.g, align 8, !tbaa !59
  %i.lx = load double, ptr %i.i, align 8, !tbaa !59
  %i.ly = load double, ptr %i.k, align 8, !tbaa !59
  %i.lz = load double, ptr %i.f, align 8, !tbaa !59
  %i.ma = load double, ptr %i.h, align 8, !tbaa !59
  %i.mb = load double, ptr %i.j, align 8, !tbaa !59
  %i.mc = load double, ptr %i.l, align 8, !tbaa !59
  %i.md = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.lw, i64 1
  %i.mh = fmul <2 x double> %i.me, %i.mg
  %i.mi = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.lv, i64 1
  %i.mk = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.ml, <2 x double> %i.mh)
  %i.mn = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.lx, i64 1
  %i.mp = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.mq, <2 x double> %i.mm)
  %i.ms = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.ly, i64 1
  %i.mu = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %i.mv, <2 x double> %i.mr)
  %i.mx = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.mw, <2 x double> %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bw:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #37
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #37
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #37
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #37
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #37
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #37
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !59
  br i1 %i.ld, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.na = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid24getEastingNorthingOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.na, label %bb.by, label %.thread558

bb.by:                                            ; preds = %bb.bx
  %i.nb = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid24getEastingNorthingOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br i1 %i.nb, label %bb.bz, label %.thread558

bb.bz:                                            ; preds = %bb.by
  %i.nc = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid24getEastingNorthingOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br i1 %i.nc, label %bb.ca, label %.thread558

bb.ca:                                            ; preds = %bb.bz
  %i.nd = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid24getEastingNorthingOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  br i1 %i.nd, label %bb.cg, label %.thread558

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #37
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #37
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #37
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #37
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !59
  %i.ne = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  br i1 %i.ne, label %bb.cc, label %.thread552

bb.cc:                                            ; preds = %bb.cb
  %i.nf = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.nf, label %bb.cd, label %.thread552

bb.cd:                                            ; preds = %bb.cc
  %i.ng = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.ng, label %bb.ce, label %.thread552

bb.ce:                                            ; preds = %bb.cd
  %i.nh = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ke, i32 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  br i1 %i.nh, label %bb.cf, label %.thread552

.thread552:                                       ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #37
  br label %.thread558

bb.cf:                                            ; preds = %bb.ce
  %i.ni = load double, ptr %i.y, align 8, !tbaa !59
  %i.nj = load double, ptr %i.z, align 8, !tbaa !59
  %i.nk = fmul double %i.kj, %i.nj
  %i.nl = call double @llvm.fmuladd.f64(double %i.ni, double %i.kh, double %i.nk)
  %i.nm = load double, ptr %i.aa, align 8, !tbaa !59
  %i.nn = call double @llvm.fmuladd.f64(double %i.nm, double %i.ki, double %i.nl)
  %i.no = load double, ptr %i.ab, align 8, !tbaa !59
  %i.np = call double @llvm.fmuladd.f64(double %i.no, double %i.kk, double %i.nn)
  %i.nq = call double @llvm.fmuladd.f64(double %.0.i, double %i.np, double %.0283685)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #37
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ca
  %.6289 = phi double [ %.0283685, %bb.ca ], [ %i.nq, %bb.cf ]
  %.val352 = load ptr, ptr %.sroa.0492.0679, align 8, !tbaa !166 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.val352, i64 8
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !182, !range !90, !noundef !91
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.nu = load double, ptr %i.q, align 8, !tbaa !59
  %i.nv = load double, ptr %i.s, align 8, !tbaa !59
  %i.nw = load double, ptr %i.u, align 8, !tbaa !59
  %i.nx = load double, ptr %i.w, align 8, !tbaa !59
  %i.ny = load double, ptr %i.r, align 8, !tbaa !59
  %i.nz = load double, ptr %i.t, align 8, !tbaa !59
  %i.oa = load double, ptr %i.v, align 8, !tbaa !59
  %i.ob = load double, ptr %i.x, align 8, !tbaa !59
  %i.oc = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.of = insertelement <2 x double> %i.oe, double %i.nv, i64 1
  %i.og = fmul <2 x double> %i.od, %i.of
  %i.oh = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.nu, i64 1
  %i.oj = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.ok, <2 x double> %i.og)
  %i.om = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.nw, i64 1
  %i.oo = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.op = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.op, <2 x double> %i.ol)
  %i.or = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.nx, i64 1
  %i.ot = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ou, <2 x double> %i.oq)
  %i.ow = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ox = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.ov, <2 x double> %i.ck)
  br label %bb.cp

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #37
  %i.oz = getelementptr inbounds nuw i8, ptr %.val352, i64 24
  %i.pa = getelementptr inbounds nuw i8, ptr %.val352, i64 40
  %.val.i.i = load ptr, ptr %i.pa, align 8, !tbaa !81 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.val352, i64 32 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.ci ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.pb, %bb.ci ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !199
  %i.pe = icmp ult ptr %i.pd, %.val15.i           ; 2 uses
  %.19.i.i.i = select i1 %i.pe, ptr %.083.i.i.i, ptr %.04.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.pe, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.pf = icmp eq ptr %.19.i.i.i, %i.pb
  br i1 %i.pf, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !199
  %i.pi = icmp ult ptr %.val15.i, %i.ph
  br i1 %i.pi, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.cj

_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.ci, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %i.pj = load double, ptr %i.jj, align 8, !tbaa !533 ; 2 uses
  %i.pk = fcmp olt double %i.pj, f0x3F91DF46A2529D39
  %i.pl = zext i1 %i.pk to i8
  %i.pm = fmul double %i.pj, 5.000000e-01         ; 2 uses
  %i.pn = call double @sin(double noundef %i.pm) #37
  %i.po = call double @cos(double noundef %i.pm) #37
  %i.pp = load double, ptr %i.jk, align 8, !tbaa !211 ; 2 uses
  %i.pq = call double @sin(double noundef %i.pp) #37
  %i.pr = call double @cos(double noundef %i.pp) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11.0..sroa_idx, i8 0, i64 128, i1 false)
  store ptr %.val15.i, ptr %15, align 8, !tbaa !535
  store ptr %.val15.i, ptr %i.cg, align 8, !tbaa !199
  store i8 %i.pl, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !213
  store double %i.pn, ptr %.sroa.5424.0..sroa_idx, align 8, !tbaa !59
  store double %i.po, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !59
  store double %i.pq, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !59
  store double %i.pr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !59
  store i32 -1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !34
  store i32 -1, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !34
  %i.ps = call fastcc ptr @_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE6insertIS9_IS3_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.oz, ptr noundef nonnull align 8 dereferenceable(192) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %.sroa.0426.0 = phi ptr [ %i.ps, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread ], [ %.19.i.i.i, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0426.0, i64 40
  %i.pu = load double, ptr %i.q, align 8, !tbaa !59
  %i.pv = load double, ptr %i.r, align 8, !tbaa !59
  %i.pw = load double, ptr %i.s, align 8, !tbaa !59
  %i.px = load double, ptr %i.t, align 8, !tbaa !59
  %i.py = load double, ptr %i.u, align 8, !tbaa !59
  %i.pz = load double, ptr %i.v, align 8, !tbaa !59
  %i.qa = load double, ptr %i.w, align 8, !tbaa !59
  %i.qb = load double, ptr %i.x, align 8, !tbaa !59
  call fastcc void @_ZN16DeformationModel6GridExIN12_GLOBAL__N_14GridEE21getBilinearGeocentricEiiddddddddddddRdS4_S4_(ptr noundef nonnull align 8 dereferenceable(184) %i.pt, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, double noundef %i.pu, double noundef %i.pv, double noundef %i.pw, double noundef %i.px, double noundef %i.py, double noundef %i.pz, double noundef %i.qa, double noundef %i.qb, double noundef %i.kh, double noundef %i.kj, double noundef %i.ki, double noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.qc = trunc nuw i8 %.0299684 to i1
  br i1 %i.qc, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qd = call double @sin(double noundef %.0512531) #37
  %i.qe = call double @cos(double noundef %.0512531) #37
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.1325 = phi double [ %.0324682, %bb.cj ], [ %i.qe, %bb.ck ] ; 2 uses
  %.1312 = phi double [ %.0311683, %bb.cj ], [ %i.qd, %bb.ck ] ; 2 uses
  %i.qf = fadd double %22, -5.000000e-01
  %i.qg = load double, ptr %i.jj, align 8, !tbaa !533
  %i.qh = fmul double %i.qf, %i.qg                ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0426.0, i64 48
  %i.qj = load i8, ptr %i.qi, align 8, !tbaa !536, !range !90, !noundef !91
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ql = fmul double %i.qh, %i.qh
  %i.qm = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> <double f0xBFC5555555555555, double -5.000000e-01>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.qp = extractelement <2 x double> %i.qo, i64 0
  %i.qq = fmul double %i.qh, %i.qp
  %i.qr = extractelement <2 x double> %i.qo, i64 1
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.qs = call double @sin(double noundef %i.qh) #37
  %i.qt = call double @cos(double noundef %i.qh) #37
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.qu = phi double [ %i.qq, %bb.cm ], [ %i.qs, %bb.cn ] ; 2 uses
  %i.qv = phi double [ %i.qr, %bb.cm ], [ %i.qt, %bb.cn ] ; 2 uses
  %i.qw = load double, ptr %i.ac, align 8, !tbaa !59
  %i.qx = load double, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.qy = fneg double %i.qu
  %i.qz = fmul double %i.qx, %i.qy
  %i.ra = load double, ptr %i.ae, align 8, !tbaa !59
  %i.rb = fneg double %i.qw                       ; 2 uses
  %i.rc = fmul double %i.qv, %i.qx
  %i.rd = call double @llvm.fmuladd.f64(double %i.rb, double %i.qv, double %i.qz)
  %i.re = fmul double %.1325, %i.ra
  %i.rf = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.rg = insertelement <2 x double> %i.rf, double %i.rb, i64 1
  %i.rh = insertelement <2 x double> poison, double %.1312, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.qu, i64 1
  %i.rj = insertelement <2 x double> poison, double %i.re, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.rc, i64 1
  %i.rl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.ri, <2 x double> %i.rk)
  %i.rm = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.rl, <2 x double> %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #37
  br label %bb.cp

.thread558:                                       ; preds = %bb.bx, %bb.ca, %bb.bz, %bb.by, %.thread552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread

bb.cp:                                            ; preds = %bb.ch, %bb.co
  %.3327 = phi double [ %.1325, %bb.co ], [ %.0324682, %bb.ch ]
  %.3314 = phi double [ %.1312, %bb.co ], [ %.0311683, %bb.ch ]
  %.3302 = phi i8 [ 1, %bb.co ], [ %.0299684, %bb.ch ]
  %i.rp = phi <2 x double> [ %i.ro, %bb.co ], [ %i.oy, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread: ; preds = %bb.p, %bb.aa, %bb.o, %bb.l, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit, %bb.bb, %bb.bd, %bb.bc, %bb.cp, %bb.bv, %bb.bj
  %.10334.ph = phi double [ %.3327, %bb.cp ], [ %.0324682, %bb.bv ], [ %.0324682, %bb.bj ], [ %.0324682, %bb.bc ], [ %.0324682, %bb.bd ], [ %.0324682, %bb.o ], [ %.0324682, %bb.bb ], [ %.0324682, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0324682, %bb.l ], [ %.0324682, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0324682, %bb.aa ], [ %.0324682, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0324682, %bb.p ] ; 2 uses
  %.10321.ph = phi double [ %.3314, %bb.cp ], [ %.0311683, %bb.bv ], [ %.0311683, %bb.bj ], [ %.0311683, %bb.bc ], [ %.0311683, %bb.bd ], [ %.0311683, %bb.o ], [ %.0311683, %bb.bb ], [ %.0311683, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0311683, %bb.l ], [ %.0311683, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0311683, %bb.aa ], [ %.0311683, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0311683, %bb.p ] ; 2 uses
  %.10309.ph = phi i8 [ %.3302, %bb.cp ], [ %.0299684, %bb.bv ], [ %.0299684, %bb.bj ], [ %.0299684, %bb.bc ], [ %.0299684, %bb.bd ], [ %.0299684, %bb.o ], [ %.0299684, %bb.bb ], [ %.0299684, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0299684, %bb.l ], [ %.0299684, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0299684, %bb.aa ], [ %.0299684, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0299684, %bb.p ] ; 2 uses
  %.14297.ph = phi double [ %.6289, %bb.cp ], [ %.3286, %bb.bv ], [ %i.la, %bb.bj ], [ %.0283685, %bb.bc ], [ %.0283685, %bb.bd ], [ %.0283685, %bb.o ], [ %.0283685, %bb.bb ], [ %.0283685, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0283685, %bb.l ], [ %.0283685, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0283685, %bb.aa ], [ %.0283685, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0283685, %bb.p ] ; 2 uses
  %i.rq = phi <2 x double> [ %i.cj, %bb.cp ], [ %i.mz, %bb.bv ], [ %i.cj, %bb.bj ], [ %i.cj, %bb.bc ], [ %i.cj, %bb.bd ], [ %i.cj, %bb.o ], [ %i.cj, %bb.bb ], [ %i.cj, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %i.cj, %bb.l ], [ %i.cj, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %i.cj, %bb.aa ], [ %i.cj, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %i.cj, %bb.p ] ; 2 uses
  %i.rr = phi <2 x double> [ %i.rp, %bb.cp ], [ %i.ck, %bb.bv ], [ %i.ck, %bb.bj ], [ %i.ck, %bb.bc ], [ %i.ck, %bb.bd ], [ %i.ck, %bb.o ], [ %i.ck, %bb.bb ], [ %i.ck, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %i.ck, %bb.l ], [ %i.ck, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %i.ck, %bb.aa ], [ %i.ck, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %i.ck, %bb.p ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0492.0679, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.rs, %.val
  br i1 %.not, label %._crit_edge.loopexit, label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread
  %i.rt = trunc nuw i8 %.10309.ph to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.0324.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.10334.ph, %._crit_edge.loopexit ] ; 2 uses
  %.0311.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.10321.ph, %._crit_edge.loopexit ]
  %.0299.lcssa = phi i1 [ false, %.critedge ], [ %i.rt, %._crit_edge.loopexit ] ; 2 uses
  %.0283.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.14297.ph, %._crit_edge.loopexit ]
  %i.ru = phi <2 x double> [ zeroinitializer, %.critedge ], [ %i.rq, %._crit_edge.loopexit ] ; 2 uses
  %i.rv = phi <2 x double> [ zeroinitializer, %.critedge ], [ %i.rr, %._crit_edge.loopexit ] ; 7 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rx = load i8, ptr %i.rw, align 8, !tbaa !159, !range !90, !noundef !91
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %._crit_edge
  %i.rz = load double, ptr %7, align 8, !tbaa !59
  %i.sa = extractelement <2 x double> %i.ru, i64 1
  %i.sb = fadd double %i.sa, %i.rz
  store double %i.sb, ptr %7, align 8, !tbaa !59
  %i.sc = load double, ptr %8, align 8, !tbaa !59
  %i.sd = extractelement <2 x double> %i.ru, i64 0
  %i.se = fadd double %i.sd, %i.sc
  store double %i.se, ptr %8, align 8, !tbaa !59
  br label %bb.da

bb.cr:                                            ; preds = %._crit_edge
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !160, !range !90, !noundef !91
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.si = load i8, ptr %i.af, align 2, !tbaa !161, !range !90, !noundef !91
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sk = load double, ptr %7, align 8, !tbaa !59
  %i.sl = extractelement <2 x double> %i.rv, i64 1
  %i.sm = fadd double %i.sl, %i.sk
  store double %i.sm, ptr %7, align 8, !tbaa !59
  %i.sn = load double, ptr %8, align 8, !tbaa !59
  %i.so = extractelement <2 x double> %i.rv, i64 0
  %i.sp = fadd double %i.so, %i.sn
  store double %i.sp, ptr %8, align 8, !tbaa !59
  br label %bb.da

bb.cu:                                            ; preds = %bb.cs
  br i1 %.0299.lcssa, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sq = call double @cos(double noundef %.0512531) #37
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.12336 = phi double [ %.0324.lcssa, %bb.cu ], [ %i.sq, %bb.cv ] ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.st = load double, ptr %i.ss, align 8, !tbaa !158
  %i.su = fneg double %.12336
  %i.sv = call double @llvm.fmuladd.f64(double %i.su, double %.12336, double 1.000000e+00)
  %i.sw = fmul double %i.sv, %i.st
  %i.sx = fsub double 1.000000e+00, %i.sw         ; 2 uses
  %i.sy = call double @sqrt(double noundef %i.sx) #37 ; 2 uses
  %i.sz = load <2 x double>, ptr %i.sr, align 8, !tbaa !59 ; 3 uses
  %foldExtExtBinop.a = fmul <2 x double> %i.rv, %i.sz
  %i.ta = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.tb = fmul double %i.ta, %i.sy
  %i.tc = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.td = insertelement <2 x double> %i.tc, double %i.sx, i64 1
  %i.te = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.tf = insertelement <2 x double> %i.te, double %i.tb, i64 1
  %i.tg = fmul <2 x double> %i.td, %i.tf
  %i.th = insertelement <2 x double> %i.sz, double %.12336, i64 0
  %i.ti = fmul <2 x double> %i.th, %i.sz
  %i.tj = fdiv <2 x double> %i.tg, %i.ti          ; 2 uses
  %i.tk = load double, ptr %7, align 8, !tbaa !59
  %i.tl = extractelement <2 x double> %i.tj, i64 0
  %i.tm = fadd double %i.tk, %i.tl
  store double %i.tm, ptr %7, align 8, !tbaa !59
  %i.tn = load double, ptr %8, align 8, !tbaa !59
  %i.to = extractelement <2 x double> %i.tj, i64 1
  %i.tp = fadd double %i.tn, %i.to
  store double %i.tp, ptr %8, align 8, !tbaa !59
  br label %bb.da

bb.cx:                                            ; preds = %bb.cr
  br i1 %.0299.lcssa, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tq = call double @sin(double noundef %.0512531) #37
  %i.tr = call double @cos(double noundef %.0512531) #37
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.13337 = phi double [ %.0324.lcssa, %bb.cx ], [ %i.tr, %bb.cy ]
  %.12323 = phi double [ %.0311.lcssa, %bb.cx ], [ %i.tq, %bb.cy ]
  %i.ts = call double @sin(double noundef %.4532) #37
  %i.tt = call double @cos(double noundef %.4532) #37
  %i.tu = extractelement <2 x double> %i.rv, i64 0 ; 2 uses
  %i.tv = fmul double %i.tu, %.12323
  %i.tw = fmul double %i.tu, %.13337
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val373 = load ptr, ptr %i.tx, align 8, !tbaa !143 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ty = getelementptr inbounds nuw i8, ptr %.val373, i64 120
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !537
  store double %.4532, ptr %13, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %.0512531, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !29, !alias.scope !805
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !29, !alias.scope !804
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !30, !alias.scope !805
  br label %_ZSt19__relocate_object_aIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !30, !alias.scope !804
  store ptr %i.ba, ptr %.0911.i.i.i19, align 8, !tbaa !26, !alias.scope !805
  store i64 0, ptr %i.bi, align 8, !tbaa !30, !alias.scope !805
  store i8 0, ptr %i.ba, align 8, !tbaa !29, !alias.scope !805
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !59, !alias.scope !805
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !59, !alias.scope !804
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !797

_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !107
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #38
  br label %_ZNSt12_Vector_baseIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !107
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel18EvaluatorExceptionE, i64 16), ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.f, ptr %i.a, align 8, !tbaa !28
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !26
  %i.i = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.i, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !29
  store i8 %i.k, ptr %i.j, align 1, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !30
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  resume { ptr, i32 } %i.p
}

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #21

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #21

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_defmodel.cpp() #30 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, i64 16), ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, i64 22), align 2, !tbaa !29
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL9STR_METREB5cxx11E, i64 16), ptr @_ZN16DeformationModelL9STR_METREB5cxx11E, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL9STR_METREB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL9STR_METREB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL9STR_METREB5cxx11E, i64 21), align 1, !tbaa !29
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL9STR_METREB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 16), ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, align 8, !tbaa !27
  store i64 7957695015292265569, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 24), align 8, !tbaa !29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, i64 16), ptr @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, i64 26), align 2, !tbaa !29
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL14STR_GEOCENTRICB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 16), ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, align 8, !tbaa !27
  store i64 8241980317954238818, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, i64 24), align 8, !tbaa !29
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL12STR_BILINEARB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, i64 16), ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 19, ptr %i.a, align 8, !tbaa !28
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, align 8, !tbaa !26
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, i64 16), align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.g, ptr noundef nonnull align 1 dereferenceable(19) @.str.10, i64 19, i1 false)
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, i64 8), align 8, !tbaa !30
  %i.i = load ptr, ptr @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL23STR_GEOCENTRIC_BILINEARB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL8STR_NONEB5cxx11E, i64 16), ptr @_ZN16DeformationModelL8STR_NONEB5cxx11E, align 8, !tbaa !27
  store i32 1701736302, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL8STR_NONEB5cxx11E, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL8STR_NONEB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL8STR_NONEB5cxx11E, i64 20), align 4, !tbaa !29
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL8STR_NONEB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 16), ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, i64 26), align 2, !tbaa !29
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL14STR_HORIZONTALB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 16), ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, align 8, !tbaa !27
  store i64 7809632533413520758, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, i64 24), align 8, !tbaa !29
  %i.n = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL12STR_VERTICALB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, i64 16), ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, align 8, !tbaa !27
  store i16 25651, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, i64 8), align 8, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL6STR_3DB5cxx11E, i64 18), align 2, !tbaa !29
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN16DeformationModelL6STR_3DB5cxx11E, ptr nonnull @__dso_handle) #37 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind }
attributes #38 = { builtin nounwind }
attributes #39 = { builtin allocsize(0) }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = distinct !{!3, !35}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{!6, !35}
!7 = distinct !{!7, !35}
!8 = distinct !{null, null, null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{!11, !35}
!12 = distinct !{null, null, null, null, null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !17, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !17, i64 16}
!26 = !{!25, !22, i64 0}
!27 = !{!23, !22, i64 0}
!28 = !{!24, !24, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!25, !24, i64 8}
!31 = !{!"double", !17, i64 0}
!32 = !{!"_ZTSN16DeformationModel5EpochE", !25, i64 0, !31, i64 32}
!33 = !{!32, !31, i64 32}
!34 = !{!18, !18, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTSN16DeformationModel10MasterFileE", !21, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN13proj_nlohmann6detail7value_tE", !17, i64 0}
!39 = !{!"_ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !38, i64 0, !17, i64 8}
!40 = !{!39, !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!"_ZTSSt14_Function_base", !17, i64 0, !21, i64 16}
!43 = !{!42, !21, i64 16}
!44 = !{!"vtable pointer", !16, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!"p1 _ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !21, i64 0}
!48 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!49 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEE", !48, i64 0}
!50 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEES4_ISE_SaISE_EEEE", !47, i64 0}
!51 = !{!"_ZTSN13proj_nlohmann6detail20primitive_iterator_tE", !24, i64 0}
!52 = !{!"_ZTSN13proj_nlohmann6detail17internal_iteratorINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !49, i64 0, !50, i64 8, !51, i64 16}
!53 = !{!"_ZTSN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !47, i64 0, !52, i64 8}
!54 = !{!53, !47, i64 0}
!55 = !{!51, !24, i64 0}
!56 = !{!47, !47, i64 0}
!57 = !{!49, !48, i64 0}
!58 = !{!50, !47, i64 0}
!59 = !{!31, !31, i64 0}
!60 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59, i64 24, i64 8, !59, i64 32, i64 8, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 8, !59}
!61 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!62 = !{!"_ZTSSt18_Rb_tree_node_base", !61, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!63 = !{!"_ZTSSt15_Rb_tree_header", !62, i64 0, !24, i64 32}
!64 = !{!63, !48, i64 16}
!65 = !{!48, !48, i64 0}
!66 = !{!"p1 _ZTSN16DeformationModel9ComponentE", !21, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN16DeformationModel9ComponentESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 16}
!70 = !{!"p1 _ZTSN16DeformationModel9Component12TimeFunctionE", !21, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!66, !66, i64 0}
!73 = !{!"_ZTSSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEE", !42, i64 0, !21, i64 24}
!74 = !{!73, !21, i64 24}
!75 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!76 = !{!75, !22, i64 0}
!77 = !{!75, !22, i64 16}
!78 = !{!63, !48, i64 24}
!79 = !{!63, !24, i64 32}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!63, !48, i64 8}
!82 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE", !21, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!62, !48, i64 16}
!85 = !{!62, !48, i64 24}
!86 = !{!"_ZTSNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!87 = !{!86, !47, i64 8}
!88 = !{!86, !47, i64 0}
!89 = !{!86, !47, i64 16}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!93 = !{!92, !22, i64 0}
!94 = !{!22, !22, i64 0}
!95 = !{!92, !22, i64 16}
!96 = !{!"p1 _ZTSN16DeformationModel10MasterFile4LinkE", !21, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN16DeformationModel10MasterFile4LinkESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 8}
!99 = !{!97, !96, i64 16}
!100 = !{!"_ZTSN16DeformationModel13SpatialExtentE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56}
!101 = !{ptr @_ZN16DeformationModel9Component12TimeFunctionD2Ev}
!102 = !{!"_ZTSN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleE", !32, i64 0, !31, i64 40}
!103 = !{!102, !31, i64 40}
!104 = !{!"p1 _ZTSN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleE", !21, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!106 = !{!105, !104, i64 8}
!107 = !{!105, !104, i64 16}
!108 = !{!"_ZTSN16DeformationModel9Component12TimeFunctionE", !25, i64 8}
!109 = !{!"_ZTSN16DeformationModel9Component23ExponentialTimeFunctionE", !108, i64 0, !32, i64 40, !32, i64 80, !31, i64 120, !31, i64 128, !31, i64 136, !31, i64 144}
!110 = !{!109, !31, i64 120}
!111 = !{!109, !31, i64 128}
!112 = !{!109, !31, i64 136}
!113 = !{!109, !31, i64 144}
!114 = !{!"p1 _ZTS6pj_ctx", !21, i64 0}
!115 = !{!"p1 _ZTS8ARG_list", !21, i64 0}
!116 = !{!"p1 _ZTS8PJconsts", !21, i64 0}
!117 = !{!"p1 _ZTS13geod_geodesic", !21, i64 0}
!118 = !{!"_ZTS11pj_io_units", !17, i64 0}
!119 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !21, i64 0}
!120 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!121 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0}
!122 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !122, i64 0}
!124 = !{!"bool", !17, i64 0}
!125 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !21, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !128, i64 0}
!130 = !{!"_ZTS7PJ_TYPE", !17, i64 0}
!131 = !{!"p1 _ZTS16PJCoordOperation", !21, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!133 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !132, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !133, i64 0}
!135 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !134, i64 0}
!136 = !{!"_ZTS8PJconsts", !114, i64 0, !22, i64 8, !22, i64 16, !115, i64 24, !22, i64 32, !116, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !117, i64 80, !21, i64 88, !18, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !21, i64 144, !21, i64 152, !21, i64 160, !31, i64 168, !31, i64 176, !31, i64 184, !31, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !31, i64 232, !31, i64 240, !31, i64 248, !31, i64 256, !31, i64 264, !31, i64 272, !31, i64 280, !31, i64 288, !31, i64 296, !31, i64 304, !31, i64 312, !31, i64 320, !31, i64 328, !31, i64 336, !18, i64 344, !18, i64 348, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !18, i64 368, !18, i64 372, !18, i64 376, !118, i64 380, !118, i64 384, !116, i64 392, !116, i64 400, !116, i64 408, !116, i64 416, !116, i64 424, !116, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !31, i64 480, !31, i64 488, !31, i64 496, !31, i64 504, !31, i64 512, !31, i64 520, !18, i64 528, !17, i64 536, !18, i64 592, !21, i64 600, !21, i64 608, !31, i64 616, !31, i64 624, !18, i64 632, !17, i64 636, !123, i64 640, !124, i64 656, !31, i64 664, !124, i64 672, !25, i64 680, !25, i64 712, !25, i64 744, !124, i64 776, !129, i64 784, !130, i64 808, !135, i64 816, !18, i64 840, !124, i64 844, !124, i64 845, !124, i64 846, !116, i64 848}
!137 = !{!136, !118, i64 380}
!138 = !{!136, !118, i64 384}
!139 = !{!"p1 _ZTSN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEE", !21, i64 0}
!140 = !{!"_ZTSSt10_Head_baseILm0EPN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEELb0EE", !139, i64 0}
!141 = !{!"_ZTSN12_GLOBAL__N_114EvaluatorIfaceE", !114, i64 0, !116, i64 8}
!142 = !{!141, !114, i64 0}
!143 = !{!141, !116, i64 8}
!144 = !{!136, !21, i64 88}
!145 = !{!136, !21, i64 152}
!146 = !{!"_ZTSSt10_Head_baseILm0EPN16DeformationModel10MasterFileELb0EE", !36, i64 0}
!147 = !{!"_ZTSSt11_Tuple_implILm0EJPN16DeformationModel10MasterFileESt14default_deleteIS1_EEE", !146, i64 0}
!148 = !{!"_ZTSSt5tupleIJPN16DeformationModel10MasterFileESt14default_deleteIS1_EEE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_implIN16DeformationModel10MasterFileESt14default_deleteIS1_EE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_dataIN16DeformationModel10MasterFileESt14default_deleteIS1_ELb1ELb1EE", !149, i64 0}
!151 = !{!"_ZTSSt10unique_ptrIN16DeformationModel10MasterFileESt14default_deleteIS1_EE", !150, i64 0}
end_hunk_1
