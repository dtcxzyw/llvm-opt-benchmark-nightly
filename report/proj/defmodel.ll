Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEE7forwardERS4_ddddbRdS7_S7_:bb.a
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
  %i.jd = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !531 ; 2 uses
  %i.jf = icmp slt i32 %i.je, 2
  br i1 %i.jf, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jg = getelementptr inbounds nuw i8, ptr %.val15.i, i64 36
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !532 ; 2 uses
  %i.ji = load <2 x i32>, ptr %i.jd, align 8, !tbaa !34
  %i.jj = icmp slt i32 %i.jh, 2
  br i1 %i.jj, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jk = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.jm = load <2 x double>, ptr %.val15.i, align 8, !tbaa !59
  %i.jn = insertelement <2 x double> poison, double %.sroa.speculated473, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %.sroa.speculated464, i64 1
  %i.jp = fsub <2 x double> %i.jo, %i.jm
  %i.jq = load <2 x double>, ptr %i.jk, align 8, !tbaa !59
  %i.jr = fdiv <2 x double> %i.jp, %i.jq
  %.fr = freeze <2 x double> %i.jr                ; 6 uses
  %16 = fcmp olt <2 x double> %.fr, %i.ci
  %17 = bitcast <2 x i1> %16 to i2
  %or.cond.not = icmp eq i2 %17, 0
  br i1 %or.cond.not, label %bb.bc, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bc:                                            ; preds = %bb.bb
  %i.js = extractelement <2 x double> %.fr, i64 0
  %i.jt = fadd double %i.js, 1.000000e+00
  %i.ju = uitofp nneg i32 %i.je to double
  %i.jv = fadd double %i.ai, %i.ju
  %i.jw = fcmp ult double %i.jt, %i.jv
  br i1 %i.jw, label %bb.bd, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bd:                                            ; preds = %bb.bc
  %i.jx = extractelement <2 x double> %.fr, i64 1
  %i.jy = fadd double %i.jx, 1.000000e+00
  %i.jz = uitofp nneg i32 %i.jh to double
  %i.ka = fadd double %i.ai, %i.jz
  %i.kb = fcmp ult double %i.jy, %i.ka
  br i1 %i.kb, label %bb.be, label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.be:                                            ; preds = %bb.bd
  %i.kc = add nsw <2 x i32> %i.ji, splat (i32 -2)
  %i.kd = fptosi <2 x double> %.fr to <2 x i32>
  %i.ke = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.kc, <2 x i32> %i.kd) ; 3 uses
  %i.kf = extractelement <2 x i32> %i.ke, i64 1   ; 12 uses
  %i.kg = extractelement <2 x i32> %i.ke, i64 0   ; 12 uses
  %i.kh = add nsw i32 %i.kg, 1                    ; 10 uses
  %i.ki = add nsw i32 %i.kf, 1                    ; 10 uses
  %i.kj = sitofp <2 x i32> %i.ke to <2 x double>  ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %.fr, %i.kj
  %i.kk = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop764 = fsub <2 x double> %.fr, %i.kj
  %i.kl = extractelement <2 x double> %foldExtExtBinop764, i64 1 ; 3 uses
  %i.km = fsub double 1.000000e+00, %i.kk         ; 2 uses
  %i.kn = fsub double 1.000000e+00, %i.kl         ; 2 uses
  %i.ko = fmul double %i.km, %i.kn                ; 6 uses
  %i.kp = fmul double %i.kk, %i.kn                ; 6 uses
  %i.kq = fmul double %i.km, %i.kl                ; 6 uses
  %i.kr = fmul double %i.kk, %i.kl                ; 6 uses
  %.val355 = load ptr, ptr %.sroa.0492.0679, align 8, !tbaa !166
  %i.ks = getelementptr inbounds nuw i8, ptr %.val355, i64 12
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !183 ; 2 uses
  %i.ku = icmp eq i32 %i.kt, 2
  br i1 %i.ku, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !59
  %i.kv = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.kv, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %bb.bf
  %i.kw = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.kw, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.kx = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.kx, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ky = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid10getZOffsetEiiRd(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.ky, label %bb.bj, label %.thread

.thread:                                          ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.kz = load double, ptr %i.a, align 8, !tbaa !59
  %i.la = load double, ptr %i.b, align 8, !tbaa !59
  %i.lb = fmul double %i.kq, %i.la
  %i.lc = call double @llvm.fmuladd.f64(double %i.kz, double %i.ko, double %i.lb)
  %i.ld = load double, ptr %i.c, align 8, !tbaa !59
  %i.le = call double @llvm.fmuladd.f64(double %i.ld, double %i.kp, double %i.lc)
  %i.lf = load double, ptr %i.d, align 8, !tbaa !59
  %i.lg = call double @llvm.fmuladd.f64(double %i.lf, double %i.kr, double %i.le)
  %i.lh = call double @llvm.fmuladd.f64(double %.0.i, double %i.lg, double %.0283685)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

bb.bk:                                            ; preds = %bb.be
  %i.li = load i8, ptr %i.cf, align 8, !tbaa !159, !range !90, !noundef !91
  %i.lj = trunc nuw i8 %i.li to i1
  %i.lk = icmp eq i32 %i.kt, 1                    ; 2 uses
  br i1 %i.lj, label %bb.bl, label %bb.bw

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
  br i1 %i.lk, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.ll = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.ll, label %bb.bn, label %.thread546

bb.bn:                                            ; preds = %bb.bm
  %i.lm = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.lm, label %bb.bo, label %.thread546

bb.bo:                                            ; preds = %bb.bn
  %i.ln = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.ln, label %bb.bp, label %.thread546

bb.bp:                                            ; preds = %bb.bo
  %i.lo = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.lo, label %bb.bv, label %.thread546

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !59
  %i.lp = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.lp, label %bb.br, label %.thread542

bb.br:                                            ; preds = %bb.bq
  %i.lq = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br i1 %i.lq, label %bb.bs, label %.thread542

bb.bs:                                            ; preds = %bb.br
  %i.lr = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kg, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br i1 %i.lr, label %bb.bt, label %.thread542

bb.bt:                                            ; preds = %bb.bs
  %i.ls = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid17getLongLatZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.kh, i32 noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br i1 %i.ls, label %bb.bu, label %.thread542

.thread542:                                       ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  br label %.thread546

bb.bu:                                            ; preds = %bb.bt
  %i.lt = load double, ptr %i.m, align 8, !tbaa !59
  %i.lu = load double, ptr %i.n, align 8, !tbaa !59
  %i.lv = fmul double %i.kq, %i.lu
  %i.lw = call double @llvm.fmuladd.f64(double %i.lt, double %i.ko, double %i.lv)
  %i.lx = load double, ptr %i.o, align 8, !tbaa !59
  %i.ly = call double @llvm.fmuladd.f64(double %i.lx, double %i.kp, double %i.lw)
  %i.lz = load double, ptr %i.p, align 8, !tbaa !59
  %i.ma = call double @llvm.fmuladd.f64(double %i.lz, double %i.kr, double %i.ly)
  %i.mb = call double @llvm.fmuladd.f64(double %.0.i, double %i.ma, double %.0283685)
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
  %.3286 = phi double [ %.0283685, %bb.bp ], [ %i.mb, %bb.bu ]
  %i.mc = load double, ptr %i.e, align 8, !tbaa !59
  %i.md = load double, ptr %i.g, align 8, !tbaa !59
  %i.me = load double, ptr %i.i, align 8, !tbaa !59
  %i.mf = load double, ptr %i.k, align 8, !tbaa !59
  %i.mg = load double, ptr %i.f, align 8, !tbaa !59
  %i.mh = load double, ptr %i.h, align 8, !tbaa !59
  %i.mi = load double, ptr %i.j, align 8, !tbaa !59
  %i.mj = load double, ptr %i.l, align 8, !tbaa !59
  %i.mk = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %i.md, i64 1
  %i.mo = fmul <2 x double> %i.ml, %i.mn
  %i.mp = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mc, i64 1
  %i.mr = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.ms, <2 x double> %i.mo)
  %i.mu = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.me, i64 1
  %i.mw = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mx, <2 x double> %i.mt)
  %i.mz = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.mf, i64 1
  %i.nb = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.nc = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.nc, <2 x double> %i.my)
  %i.ne = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.nd, <2 x double> %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
end_hunk_0
