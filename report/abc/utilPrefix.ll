Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilPrefix?download=true
inline.NumInlined: 1954
inline.NumDeleted: 731
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z6greedyR5GraphbbPSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:bb.a
  br i1 %.not10.i24.i.i342, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351, label %.lr.ph.i25.i.i343

.lr.ph.i25.i.i343:                                ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340, %.lr.ph.i25.i.i343
  %.012.i26.i.i344 = phi ptr [ %.1.i31.i.i349, %.lr.ph.i25.i.i343 ], [ %i.lr, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340 ] ; 3 uses
  %.0811.i27.i.i345 = phi ptr [ %.19.i28.i.i346, %.lr.ph.i25.i.i343 ], [ %.02243.i.i330, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i26.i.i344, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !51
  %i.lx = icmp ult ptr %i.kl, %i.lw               ; 2 uses
  %.19.i28.i.i346 = select i1 %i.lx, ptr %.012.i26.i.i344, ptr %.0811.i27.i.i345 ; 2 uses
  %.1.in.v.i29.i.i347 = select i1 %i.lx, i64 16, i64 24
  %.1.in.i30.i.i348 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i344, i64 %.1.in.v.i29.i.i347
  %.1.i31.i.i349 = load ptr, ptr %.1.in.i30.i.i348, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i350 = icmp eq ptr %.1.i31.i.i349, null
  br i1 %.not.i32.i.i350, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351, label %.lr.ph.i25.i.i343, !llvm.loop !2

bb.ao:                                            ; preds = %bb.am, %.lr.ph.i.i328
  %.sink.i.i360 = phi i64 [ 24, %.lr.ph.i.i328 ], [ 16, %bb.am ]
  %.123.i.i361 = phi ptr [ %.02243.i.i330, %.lr.ph.i.i328 ], [ %.044.i.i329, %bb.am ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.044.i.i329, i64 %.sink.i.i360
  %.0.i.i362 = load ptr, ptr %i.ly, align 8, !tbaa !75 ; 2 uses
  %.not.i.i363 = icmp eq ptr %.0.i.i362, null
  br i1 %.not.i.i363, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351, label %.lr.ph.i.i328, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351: ; preds = %bb.ao, %.lr.ph.i25.i.i343, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340, %bb.al
  %.sroa.037.0.i.i352 = phi ptr [ %.08.lcssa.i.i.i341, %.lr.ph.i25.i.i343 ], [ %.08.lcssa.i.i.i341, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340 ], [ %i.lj, %bb.al ], [ %.123.i.i361, %bb.ao ] ; 3 uses
  %.sroa.3.0.i.i353 = phi ptr [ %.19.i28.i.i346, %.lr.ph.i25.i.i343 ], [ %.02243.i.i330, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i340 ], [ %i.lj, %bb.al ], [ %.123.i.i361, %bb.ao ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lg, i64 48 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !49
  %i.mc = icmp eq ptr %.sroa.037.0.i.i352, %i.mb
  %i.md = icmp eq ptr %.sroa.3.0.i.i353, %i.lj
  %or.cond.i354 = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %or.cond.i354, label %bb.ap, label %.critedge.i.i355

bb.ap:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lh, ptr noundef %.041.i.i326)
  store ptr null, ptr %i.li, align 8, !tbaa !78
  store ptr %i.lj, ptr %i.ma, align 8, !tbaa !49
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store ptr %i.lj, ptr %i.me, align 8, !tbaa !79
  store i64 0, ptr %i.lz, align 8, !tbaa !68
  br label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364

.critedge.i.i355:                                 ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i351
  %.not8.i.i356 = icmp eq ptr %.sroa.037.0.i.i352, %.sroa.3.0.i.i353
  br i1 %.not8.i.i356, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364, label %.lr.ph.i2.i357

.lr.ph.i2.i357:                                   ; preds = %.critedge.i.i355, %.lr.ph.i2.i357
  %.sroa.06.09.i.i358 = phi ptr [ %i.mf, %.lr.ph.i2.i357 ], [ %.sroa.037.0.i.i352, %.critedge.i.i355 ] ; 2 uses
  %i.mf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i358) #22 ; 2 uses
  %i.mg = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i358, ptr noundef nonnull align 8 dereferenceable(32) %i.lj) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 40) #26
  %i.mh = load i64, ptr %i.lz, align 8, !tbaa !68
  %i.mi = add i64 %i.mh, -1
  store i64 %i.mi, ptr %i.lz, align 8, !tbaa !68
  %.not.i3.i359 = icmp eq ptr %i.mf, %.sroa.3.0.i.i353
  br i1 %.not.i3.i359, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364, label %.lr.ph.i2.i357, !llvm.loop !4

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364: ; preds = %.lr.ph.i2.i357, %.critedge.i.i355, %bb.ap, %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit144
  %i.mj = load ptr, ptr %i.km, align 8, !tbaa !53 ; 7 uses
  %.not2.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not2.i.i.i.i, label %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 7 uses
  %.041.i.i287 = load ptr, ptr %i.ml, align 8, !tbaa !75 ; 3 uses
  %.not42.i.i288 = icmp eq ptr %.041.i.i287, null
  br i1 %.not42.i.i288, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312, label %.lr.ph.i.i289

.lr.ph.i.i289:                                    ; preds = %bb.aq, %bb.at
  %.044.i.i290 = phi ptr [ %.0.i.i323, %bb.at ], [ %.041.i.i287, %bb.aq ] ; 7 uses
  %.02243.i.i291 = phi ptr [ %.123.i.i322, %bb.at ], [ %i.mm, %bb.aq ] ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.044.i.i290, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !51 ; 2 uses
  %i.mp = icmp ult ptr %i.mo, %i.kl
  br i1 %i.mp, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i289
  %i.mq = icmp ult ptr %i.kl, %i.mo
  br i1 %i.mq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mr = getelementptr inbounds nuw i8, ptr %.044.i.i290, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !76 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.044.i.i290, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i292 = icmp eq ptr %i.ms, null
  br i1 %.not10.i.i.i292, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %bb.as, %.lr.ph.i.i.i293
  %.012.i.i.i294 = phi ptr [ %.1.i.i.i299, %.lr.ph.i.i.i293 ], [ %i.ms, %bb.as ] ; 3 uses
  %.0811.i.i.i295 = phi ptr [ %.19.i.i.i296, %.lr.ph.i.i.i293 ], [ %.044.i.i290, %bb.as ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.012.i.i.i294, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !51
  %i.mx = icmp ult ptr %i.mw, %i.kl               ; 2 uses
  %.19.i.i.i296 = select i1 %i.mx, ptr %.0811.i.i.i295, ptr %.012.i.i.i294 ; 2 uses
  %.1.in.v.i.i.i297 = select i1 %i.mx, i64 24, i64 16
  %.1.in.i.i.i298 = getelementptr inbounds nuw i8, ptr %.012.i.i.i294, i64 %.1.in.v.i.i.i297
  %.1.i.i.i299 = load ptr, ptr %.1.in.i.i.i298, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %.1.i.i.i299, null
  br i1 %.not.i.i.i300, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301, label %.lr.ph.i.i.i293, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301: ; preds = %.lr.ph.i.i.i293, %bb.as
  %.08.lcssa.i.i.i302 = phi ptr [ %.044.i.i290, %bb.as ], [ %.19.i.i.i296, %.lr.ph.i.i.i293 ] ; 2 uses
  %.not10.i24.i.i303 = icmp eq ptr %i.mu, null
  br i1 %.not10.i24.i.i303, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312, label %.lr.ph.i25.i.i304

.lr.ph.i25.i.i304:                                ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301, %.lr.ph.i25.i.i304
  %.012.i26.i.i305 = phi ptr [ %.1.i31.i.i310, %.lr.ph.i25.i.i304 ], [ %i.mu, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301 ] ; 3 uses
  %.0811.i27.i.i306 = phi ptr [ %.19.i28.i.i307, %.lr.ph.i25.i.i304 ], [ %.02243.i.i291, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301 ]
  %i.my = getelementptr inbounds nuw i8, ptr %.012.i26.i.i305, i64 32
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !51
  %i.na = icmp ult ptr %i.kl, %i.mz               ; 2 uses
  %.19.i28.i.i307 = select i1 %i.na, ptr %.012.i26.i.i305, ptr %.0811.i27.i.i306 ; 2 uses
  %.1.in.v.i29.i.i308 = select i1 %i.na, i64 16, i64 24
  %.1.in.i30.i.i309 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i305, i64 %.1.in.v.i29.i.i308
  %.1.i31.i.i310 = load ptr, ptr %.1.in.i30.i.i309, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i311 = icmp eq ptr %.1.i31.i.i310, null
  br i1 %.not.i32.i.i311, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312, label %.lr.ph.i25.i.i304, !llvm.loop !2

bb.at:                                            ; preds = %bb.ar, %.lr.ph.i.i289
  %.sink.i.i321 = phi i64 [ 24, %.lr.ph.i.i289 ], [ 16, %bb.ar ]
  %.123.i.i322 = phi ptr [ %.02243.i.i291, %.lr.ph.i.i289 ], [ %.044.i.i290, %bb.ar ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.044.i.i290, i64 %.sink.i.i321
  %.0.i.i323 = load ptr, ptr %i.nb, align 8, !tbaa !75 ; 2 uses
  %.not.i.i324 = icmp eq ptr %.0.i.i323, null
  br i1 %.not.i.i324, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312, label %.lr.ph.i.i289, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312: ; preds = %bb.at, %.lr.ph.i25.i.i304, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301, %bb.aq
  %.sroa.037.0.i.i313 = phi ptr [ %.08.lcssa.i.i.i302, %.lr.ph.i25.i.i304 ], [ %.08.lcssa.i.i.i302, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301 ], [ %i.mm, %bb.aq ], [ %.123.i.i322, %bb.at ] ; 3 uses
  %.sroa.3.0.i.i314 = phi ptr [ %.19.i28.i.i307, %.lr.ph.i25.i.i304 ], [ %.02243.i.i291, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i301 ], [ %i.mm, %bb.aq ], [ %.123.i.i322, %bb.at ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mj, i64 48 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mj, i64 32 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !49
  %i.nf = icmp eq ptr %.sroa.037.0.i.i313, %i.ne
  %i.ng = icmp eq ptr %.sroa.3.0.i.i314, %i.mm
  %or.cond.i315 = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.i315, label %bb.au, label %.critedge.i.i316

bb.au:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.mk, ptr noundef %.041.i.i287)
  store ptr null, ptr %i.ml, align 8, !tbaa !78
  store ptr %i.mm, ptr %i.nd, align 8, !tbaa !49
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  store ptr %i.mm, ptr %i.nh, align 8, !tbaa !79
  store i64 0, ptr %i.nc, align 8, !tbaa !68
  br label %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit

.critedge.i.i316:                                 ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i312
  %.not8.i.i317 = icmp eq ptr %.sroa.037.0.i.i313, %.sroa.3.0.i.i314
  br i1 %.not8.i.i317, label %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit, label %.lr.ph.i2.i318

.lr.ph.i2.i318:                                   ; preds = %.critedge.i.i316, %.lr.ph.i2.i318
  %.sroa.06.09.i.i319 = phi ptr [ %i.ni, %.lr.ph.i2.i318 ], [ %.sroa.037.0.i.i313, %.critedge.i.i316 ] ; 2 uses
  %i.ni = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i319) #22 ; 2 uses
  %i.nj = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i319, ptr noundef nonnull align 8 dereferenceable(32) %i.mm) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef 40) #26
  %i.nk = load i64, ptr %i.nc, align 8, !tbaa !68
  %i.nl = add i64 %i.nk, -1
  store i64 %i.nl, ptr %i.nc, align 8, !tbaa !68
  %.not.i3.i320 = icmp eq ptr %i.ni, %.sroa.3.0.i.i314
  br i1 %.not.i3.i320, label %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit, label %.lr.ph.i2.i318, !llvm.loop !4

_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit: ; preds = %.lr.ph.i2.i318, %.critedge.i.i316, %bb.au, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit364
  %i.nm = getelementptr inbounds nuw i8, ptr %storemerge1114, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %storemerge1114, i64 40
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !78
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.nm, ptr noundef %i.no)
  call void @_ZdlPvm(ptr noundef nonnull %storemerge1114, i64 noundef 112) #26
  %.not1013 = icmp eq ptr %i.kk, %i.cb
  br i1 %.not1013, label %_ZSt9__advanceISt14_List_iteratorI4NodeElEvRT_T0_St26bidirectional_iterator_tag.exit131._crit_edge, label %.lr.ph.i133.preheader, !llvm.loop !147

_ZSt9__advanceISt14_List_iteratorI4NodeElEvRT_T0_St26bidirectional_iterator_tag.exit131._crit_edge: ; preds = %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit, %_ZN4Node12clear_faninsEv.exit
  %.sroa.0941.0.lcssa = phi ptr [ %i.hx, %_ZN4Node12clear_faninsEv.exit ], [ %.sroa.0941.3, %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit ] ; 4 uses
  %.sroa.9.0.lcssa = phi ptr [ %i.hz, %_ZN4Node12clear_faninsEv.exit ], [ %.sroa.9.2, %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit ] ; 2 uses
  %.sroa.16.0.lcssa = phi ptr [ %i.hz, %_ZN4Node12clear_faninsEv.exit ], [ %.sroa.16.3, %_ZNSt7__cxx114listI4NodeSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit ]
  %i.np = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.nq = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %.not10141117 = icmp eq ptr %i.np, %i.nq
  br i1 %.not10141117, label %.preheader1034, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %_ZSt9__advanceISt14_List_iteratorI4NodeElEvRT_T0_St26bidirectional_iterator_tag.exit131._crit_edge
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0972.01135, i64 80
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0972.01135, i64 72
  br label %bb.av

.preheader1034:                                   ; preds = %bb.dz, %_ZSt9__advanceISt14_List_iteratorI4NodeElEvRT_T0_St26bidirectional_iterator_tag.exit131._crit_edge
  %.not10151122 = icmp eq ptr %.sroa.0972.01135, %i.cb
  br i1 %.not10151122, label %.preheader1033, label %.lr.ph1124

bb.av:                                            ; preds = %.lr.ph1121, %bb.dz
  %.sroa.0924.01119 = phi ptr [ %i.np, %.lr.ph1121 ], [ %i.agx, %bb.dz ] ; 2 uses
  %.sroa.0927.01118 = phi ptr [ %i.cb, %.lr.ph1121 ], [ %.sroa.0927.1, %bb.dz ] ; 14 uses
  %i.nt = load ptr, ptr %.sroa.0924.01119, align 8, !tbaa !51 ; 7 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 60 ; 3 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !40
  %i.nw = load i32, ptr %i.cg, align 4, !tbaa !40
  %i.nx = icmp eq i32 %i.nv, %i.nw
  br i1 %i.nx, label %bb.aw, label %.preheader1028.preheader

.preheader1028.preheader:                         ; preds = %bb.av
  %8 = load ptr, ptr %.sroa.0927.01118, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 16 ; 2 uses
  store i32 2147483647, ptr %i.h, align 4, !tbaa !50
  store i32 0, ptr %i.i, align 8, !tbaa !84
  store ptr null, ptr %i.j, align 8, !tbaa !78
  store <2 x ptr> %i.aj, ptr %i.k, align 8, !tbaa !75
  store i64 0, ptr %i.l, align 8, !tbaa !68
  store i8 0, ptr %i.m, align 8, !tbaa !72
  store ptr %9, ptr %i.n, align 8, !tbaa !52
  store ptr %i.nt, ptr %i.o, align 8, !tbaa !53
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = load i32, ptr %i.nt, align 4, !tbaa !48
  %12 = call i32 @llvm.smax.i32(i32 %10, i32 %11)
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %7, align 8, !tbaa !67
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 72
  %15 = load i32, ptr %14, align 8, !tbaa !45
  store i32 %15, ptr %i.p, align 8, !tbaa !45
  %16 = load i32, ptr %i.nu, align 4, !tbaa !40
  store i32 %16, ptr %i.q, align 4, !tbaa !40
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 32 ; 3 uses
  %.02022.i.i.i.i676 = load ptr, ptr %17, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i.i677 = icmp eq ptr %.02022.i.i.i.i676, null
  br i1 %.not23.i.i.i.i677, label %._crit_edge.thread.i.i.i.i708, label %.lr.ph.i.i.i.i678

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 16 ; 2 uses
  store i32 2147483647, ptr %i.s, align 4, !tbaa !50
  store i32 0, ptr %i.t, align 8, !tbaa !84
  store ptr null, ptr %i.u, align 8, !tbaa !78
  store <2 x ptr> %i.ah, ptr %i.v, align 8, !tbaa !75
  store i64 0, ptr %i.w, align 8, !tbaa !68
  store i8 0, ptr %i.x, align 8, !tbaa !72
  store ptr %i.ny, ptr %i.y, align 8, !tbaa !52
  store ptr %i.nt, ptr %i.z, align 8, !tbaa !53
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !48
  %i.oa = load i32, ptr %i.nt, align 4, !tbaa !48
  %i.ob = call i32 @llvm.smax.i32(i32 %i.nz, i32 %i.oa)
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %6, align 8, !tbaa !67
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 72
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !45
  store i32 %i.oe, ptr %i.aa, align 8, !tbaa !45
  %i.of = load i32, ptr %i.nu, align 4, !tbaa !40
  store i32 %i.of, ptr %i.ab, align 4, !tbaa !40
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 40
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 32 ; 3 uses
  %.02022.i.i.i.i366 = load ptr, ptr %i.og, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i.i367 = icmp eq ptr %.02022.i.i.i.i366, null
  br i1 %.not23.i.i.i.i367, label %._crit_edge.thread.i.i.i.i398, label %.lr.ph.i.i.i.i368

.lr.ph.i.i.i.i368:                                ; preds = %bb.aw, %.lr.ph.i.i.i.i368
  %.02024.i.i.i.i369 = phi ptr [ %.020.i.i.i.i372, %.lr.ph.i.i.i.i368 ], [ %.02022.i.i.i.i366, %bb.aw ] ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i369, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !51 ; 2 uses
  %i.ok = icmp ult ptr %6, %i.oj                  ; 2 uses
  %.in.v.i.i.i.i370 = select i1 %i.ok, i64 16, i64 24
  %.in.i.i.i.i371 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i369, i64 %.in.v.i.i.i.i370
  %.020.i.i.i.i372 = load ptr, ptr %.in.i.i.i.i371, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i373 = icmp eq ptr %.020.i.i.i.i372, null
  br i1 %.not.i.i.i.i373, label %._crit_edge.i.i.i.i374, label %.lr.ph.i.i.i.i368, !llvm.loop !5

._crit_edge.i.i.i.i374:                           ; preds = %.lr.ph.i.i.i.i368
  br i1 %i.ok, label %._crit_edge.thread.i.i.i.i398, label %bb.ay

._crit_edge.thread.i.i.i.i398:                    ; preds = %._crit_edge.i.i.i.i374, %bb.aw
  %.019.lcssa29.i.i.i.i399 = phi ptr [ %.02024.i.i.i.i369, %._crit_edge.i.i.i.i374 ], [ %i.oh, %bb.aw ] ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 48
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !49
  %i.on = icmp eq ptr %.019.lcssa29.i.i.i.i399, %i.om
  br i1 %i.on, label %select.unfold.i.i.i395, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.thread.i.i.i.i398
  %i.oo = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i399) #22
  %.phi.trans.insert.i.i.i400 = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %.pre.i.i.i401 = load ptr, ptr %.phi.trans.insert.i.i.i400, align 8, !tbaa !51
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i374
  %i.op = phi ptr [ %.pre.i.i.i401, %bb.ax ], [ %i.oj, %._crit_edge.i.i.i.i374 ]
  %.019.lcssa28.i.i.i.i375 = phi ptr [ %.019.lcssa29.i.i.i.i399, %bb.ax ], [ %.02024.i.i.i.i369, %._crit_edge.i.i.i.i374 ]
  %i.oq = icmp ult ptr %i.op, %6
  br i1 %i.oq, label %select.unfold.i.i.i395, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread

select.unfold.i.i.i395:                           ; preds = %bb.ay, %._crit_edge.thread.i.i.i.i398
  %.sroa.4.0.i.ph.i.i.i396 = phi ptr [ %.019.lcssa29.i.i.i.i399, %._crit_edge.thread.i.i.i.i398 ], [ %.019.lcssa28.i.i.i.i375, %bb.ay ] ; 3 uses
  %i.or = icmp eq ptr %.sroa.4.0.i.ph.i.i.i396, %i.oh
  br i1 %i.or, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376, label %bb.az

bb.az:                                            ; preds = %select.unfold.i.i.i395
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i396, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !51
  %i.ou = icmp ult ptr %6, %i.ot
  br label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376

_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376: ; preds = %select.unfold.i.i.i395, %bb.az
  %i.ov = phi i1 [ %i.ou, %bb.az ], [ true, %select.unfold.i.i.i395 ]
  %i.ow = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  store ptr %6, ptr %i.ox, align 8, !tbaa !51
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ov, ptr noundef nonnull %i.ow, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i396, ptr noundef nonnull align 8 dereferenceable(32) %i.oh) #23
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 64 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !68
  %i.pa = add i64 %i.oz, 1
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !68
  %.pre1236 = load ptr, ptr %i.z, align 8, !tbaa !53 ; 2 uses
  %.not4.i377 = icmp eq ptr %.pre1236, null
  br i1 %.not4.i377, label %_ZN4Node10ref_faninsEv.exit402, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread

_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread: ; preds = %bb.ay, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376
  %i.pb = phi ptr [ %.pre1236, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376 ], [ %i.nt, %bb.ay ] ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 3 uses
  %.02022.i.i.i5.i378 = load ptr, ptr %i.pc, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i6.i379 = icmp eq ptr %.02022.i.i.i5.i378, null
  br i1 %.not23.i.i.i6.i379, label %._crit_edge.thread.i.i.i23.i391, label %.lr.ph.i.i.i7.i380

.lr.ph.i.i.i7.i380:                               ; preds = %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread, %.lr.ph.i.i.i7.i380
  %.02024.i.i.i8.i381 = phi ptr [ %.020.i.i.i11.i384, %.lr.ph.i.i.i7.i380 ], [ %.02022.i.i.i5.i378, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread ] ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.02024.i.i.i8.i381, i64 32
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !51 ; 2 uses
  %i.pg = icmp ult ptr %6, %i.pf                  ; 2 uses
  %.in.v.i.i.i9.i382 = select i1 %i.pg, i64 16, i64 24
  %.in.i.i.i10.i383 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i8.i381, i64 %.in.v.i.i.i9.i382
  %.020.i.i.i11.i384 = load ptr, ptr %.in.i.i.i10.i383, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i12.i385 = icmp eq ptr %.020.i.i.i11.i384, null
  br i1 %.not.i.i.i12.i385, label %._crit_edge.i.i.i13.i386, label %.lr.ph.i.i.i7.i380, !llvm.loop !5

._crit_edge.i.i.i13.i386:                         ; preds = %.lr.ph.i.i.i7.i380
  br i1 %i.pg, label %._crit_edge.thread.i.i.i23.i391, label %bb.bb

._crit_edge.thread.i.i.i23.i391:                  ; preds = %._crit_edge.i.i.i13.i386, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread
  %.019.lcssa29.i.i.i24.i392 = phi ptr [ %.02024.i.i.i8.i381, %._crit_edge.i.i.i13.i386 ], [ %i.pd, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376.thread ] ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !49
  %i.pj = icmp eq ptr %.019.lcssa29.i.i.i24.i392, %i.pi
  br i1 %i.pj, label %select.unfold.i.i20.i388, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i.i.i23.i391
  %i.pk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i24.i392) #22
  %.phi.trans.insert.i.i25.i393 = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %.pre.i.i26.i394 = load ptr, ptr %.phi.trans.insert.i.i25.i393, align 8, !tbaa !51
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i.i.i13.i386
  %i.pl = phi ptr [ %.pre.i.i26.i394, %bb.ba ], [ %i.pf, %._crit_edge.i.i.i13.i386 ]
  %.019.lcssa28.i.i.i14.i387 = phi ptr [ %.019.lcssa29.i.i.i24.i392, %bb.ba ], [ %.02024.i.i.i8.i381, %._crit_edge.i.i.i13.i386 ]
  %i.pm = icmp ult ptr %i.pl, %6
  br i1 %i.pm, label %select.unfold.i.i20.i388, label %_ZN4Node10ref_faninsEv.exit402

select.unfold.i.i20.i388:                         ; preds = %bb.bb, %._crit_edge.thread.i.i.i23.i391
  %.sroa.4.0.i.ph.i.i21.i389 = phi ptr [ %.019.lcssa29.i.i.i24.i392, %._crit_edge.thread.i.i.i23.i391 ], [ %.019.lcssa28.i.i.i14.i387, %bb.bb ] ; 3 uses
  %i.pn = icmp eq ptr %.sroa.4.0.i.ph.i.i21.i389, %i.pd
  br i1 %i.pn, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i390, label %bb.bc

bb.bc:                                            ; preds = %select.unfold.i.i20.i388
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i21.i389, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !51
  %i.pq = icmp ult ptr %6, %i.pp
  br label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i390

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i390: ; preds = %bb.bc, %select.unfold.i.i20.i388
  %i.pr = phi i1 [ %i.pq, %bb.bc ], [ true, %select.unfold.i.i20.i388 ]
  %i.ps = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store ptr %6, ptr %i.pt, align 8, !tbaa !51
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pr, ptr noundef nonnull %i.ps, ptr noundef nonnull %.sroa.4.0.i.ph.i.i21.i389, ptr noundef nonnull align 8 dereferenceable(32) %i.pd) #23
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pb, i64 48 ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !68
  %i.pw = add i64 %i.pv, 1
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !68
  br label %_ZN4Node10ref_faninsEv.exit402

_ZN4Node10ref_faninsEv.exit402:                   ; preds = %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i376, %bb.bb, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i390
  %i.px = load i8, ptr %i.x, align 8, !tbaa !72, !range !73, !noundef !74
  store i8 %i.px, ptr %i.nr, align 8, !tbaa !72
  %i.py = load ptr, ptr %i.ia, align 8, !tbaa !52 ; 7 uses
  %.not.i.i146 = icmp eq ptr %i.py, null
  br i1 %.not.i.i146, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit596, label %bb.bd

bb.bd:                                            ; preds = %_ZN4Node10ref_faninsEv.exit402
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 24 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 7 uses
  %.041.i.i558 = load ptr, ptr %i.qa, align 8, !tbaa !75 ; 3 uses
  %.not42.i.i559 = icmp eq ptr %.041.i.i558, null
  br i1 %.not42.i.i559, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i583, label %.lr.ph.i.i560

.lr.ph.i.i560:                                    ; preds = %bb.bd, %bb.bg
  %.044.i.i561 = phi ptr [ %.0.i.i594, %bb.bg ], [ %.041.i.i558, %bb.bd ] ; 7 uses
  %.02243.i.i562 = phi ptr [ %.123.i.i593, %bb.bg ], [ %i.qb, %bb.bd ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.044.i.i561, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !51 ; 2 uses
  %i.qe = icmp ult ptr %i.qd, %i.eu
  br i1 %i.qe, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i560
  %i.qf = icmp ult ptr %i.eu, %i.qd
  br i1 %i.qf, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qg = getelementptr inbounds nuw i8, ptr %.044.i.i561, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !76 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.044.i.i561, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i563 = icmp eq ptr %i.qh, null
  br i1 %.not10.i.i.i563, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i572, label %.lr.ph.i.i.i564

.lr.ph.i.i.i564:                                  ; preds = %bb.bf, %.lr.ph.i.i.i564
  %.012.i.i.i565 = phi ptr [ %.1.i.i.i570, %.lr.ph.i.i.i564 ], [ %i.qh, %bb.bf ] ; 3 uses
  %.0811.i.i.i566 = phi ptr [ %.19.i.i.i567, %.lr.ph.i.i.i564 ], [ %.044.i.i561, %bb.bf ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.012.i.i.i565, i64 32
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !51
  %i.qm = icmp ult ptr %i.ql, %i.eu               ; 2 uses
  %.19.i.i.i567 = select i1 %i.qm, ptr %.0811.i.i.i566, ptr %.012.i.i.i565 ; 2 uses
  %.1.in.v.i.i.i568 = select i1 %i.qm, i64 24, i64 16
  %.1.in.i.i.i569 = getelementptr inbounds nuw i8, ptr %.012.i.i.i565, i64 %.1.in.v.i.i.i568
  %.1.i.i.i570 = load ptr, ptr %.1.in.i.i.i569, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i571 = icmp eq ptr %.1.i.i.i570, null
  br i1 %.not.i.i.i571, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i572, label %.lr.ph.i.i.i564, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i572: ; preds = %.lr.ph.i.i.i564, %bb.bf
  %.08.lcssa.i.i.i573 = phi ptr [ %.044.i.i561, %bb.bf ], [ %.19.i.i.i567, %.lr.ph.i.i.i564 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z6greedyR5GraphbbPSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:bb.a

bb.ch:                                            ; preds = %.lr.ph.i.i638
  %i.wm = icmp ult ptr %6, %i.wk
  br i1 %i.wm, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wn = getelementptr inbounds nuw i8, ptr %.044.i.i639, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !76 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.044.i.i639, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i641 = icmp eq ptr %i.wo, null
  br i1 %.not10.i.i.i641, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650, label %.lr.ph.i.i.i642

.lr.ph.i.i.i642:                                  ; preds = %bb.ci, %.lr.ph.i.i.i642
  %.012.i.i.i643 = phi ptr [ %.1.i.i.i648, %.lr.ph.i.i.i642 ], [ %i.wo, %bb.ci ] ; 3 uses
  %.0811.i.i.i644 = phi ptr [ %.19.i.i.i645, %.lr.ph.i.i.i642 ], [ %.044.i.i639, %bb.ci ]
  %i.wr = getelementptr inbounds nuw i8, ptr %.012.i.i.i643, i64 32
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !51
  %i.wt = icmp ult ptr %i.ws, %6                  ; 2 uses
  %.19.i.i.i645 = select i1 %i.wt, ptr %.0811.i.i.i644, ptr %.012.i.i.i643 ; 2 uses
  %.1.in.v.i.i.i646 = select i1 %i.wt, i64 24, i64 16
  %.1.in.i.i.i647 = getelementptr inbounds nuw i8, ptr %.012.i.i.i643, i64 %.1.in.v.i.i.i646
  %.1.i.i.i648 = load ptr, ptr %.1.in.i.i.i647, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i649 = icmp eq ptr %.1.i.i.i648, null
  br i1 %.not.i.i.i649, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650, label %.lr.ph.i.i.i642, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650: ; preds = %.lr.ph.i.i.i642, %bb.ci
  %.08.lcssa.i.i.i651 = phi ptr [ %.044.i.i639, %bb.ci ], [ %.19.i.i.i645, %.lr.ph.i.i.i642 ] ; 2 uses
  %.not10.i24.i.i652 = icmp eq ptr %i.wq, null
  br i1 %.not10.i24.i.i652, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661, label %.lr.ph.i25.i.i653

.lr.ph.i25.i.i653:                                ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650, %.lr.ph.i25.i.i653
  %.012.i26.i.i654 = phi ptr [ %.1.i31.i.i659, %.lr.ph.i25.i.i653 ], [ %i.wq, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650 ] ; 3 uses
  %.0811.i27.i.i655 = phi ptr [ %.19.i28.i.i656, %.lr.ph.i25.i.i653 ], [ %.02243.i.i640, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650 ]
  %i.wu = getelementptr inbounds nuw i8, ptr %.012.i26.i.i654, i64 32
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !51
  %i.ww = icmp ult ptr %6, %i.wv                  ; 2 uses
  %.19.i28.i.i656 = select i1 %i.ww, ptr %.012.i26.i.i654, ptr %.0811.i27.i.i655 ; 2 uses
  %.1.in.v.i29.i.i657 = select i1 %i.ww, i64 16, i64 24
  %.1.in.i30.i.i658 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i654, i64 %.1.in.v.i29.i.i657
  %.1.i31.i.i659 = load ptr, ptr %.1.in.i30.i.i658, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i660 = icmp eq ptr %.1.i31.i.i659, null
  br i1 %.not.i32.i.i660, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661, label %.lr.ph.i25.i.i653, !llvm.loop !2

bb.cj:                                            ; preds = %bb.ch, %.lr.ph.i.i638
  %.sink.i.i670 = phi i64 [ 24, %.lr.ph.i.i638 ], [ 16, %bb.ch ]
  %.123.i.i671 = phi ptr [ %.02243.i.i640, %.lr.ph.i.i638 ], [ %.044.i.i639, %bb.ch ] ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.044.i.i639, i64 %.sink.i.i670
  %.0.i.i672 = load ptr, ptr %i.wx, align 8, !tbaa !75 ; 2 uses
  %.not.i.i673 = icmp eq ptr %.0.i.i672, null
  br i1 %.not.i.i673, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661, label %.lr.ph.i.i638, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661: ; preds = %bb.cj, %.lr.ph.i25.i.i653, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650, %bb.cg
  %.sroa.037.0.i.i662 = phi ptr [ %.08.lcssa.i.i.i651, %.lr.ph.i25.i.i653 ], [ %.08.lcssa.i.i.i651, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650 ], [ %i.wi, %bb.cg ], [ %.123.i.i671, %bb.cj ] ; 3 uses
  %.sroa.3.0.i.i663 = phi ptr [ %.19.i28.i.i656, %.lr.ph.i25.i.i653 ], [ %.02243.i.i640, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i650 ], [ %i.wi, %bb.cg ], [ %.123.i.i671, %bb.cj ] ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wf, i64 48 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wf, i64 32 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !49
  %i.xb = icmp eq ptr %.sroa.037.0.i.i662, %i.xa
  %i.xc = icmp eq ptr %.sroa.3.0.i.i663, %i.wi
  %or.cond.i664 = select i1 %i.xb, i1 %i.xc, i1 false
  br i1 %or.cond.i664, label %bb.ck, label %.critedge.i.i665

bb.ck:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.wg, ptr noundef %.041.i.i636)
  store ptr null, ptr %i.wh, align 8, !tbaa !78
  store ptr %i.wi, ptr %i.wz, align 8, !tbaa !49
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wf, i64 40
  store ptr %i.wi, ptr %i.xd, align 8, !tbaa !79
  store i64 0, ptr %i.wy, align 8, !tbaa !68
  br label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674

.critedge.i.i665:                                 ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i661
  %.not8.i.i666 = icmp eq ptr %.sroa.037.0.i.i662, %.sroa.3.0.i.i663
  br i1 %.not8.i.i666, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674, label %.lr.ph.i2.i667

.lr.ph.i2.i667:                                   ; preds = %.critedge.i.i665, %.lr.ph.i2.i667
  %.sroa.06.09.i.i668 = phi ptr [ %i.xe, %.lr.ph.i2.i667 ], [ %.sroa.037.0.i.i662, %.critedge.i.i665 ] ; 2 uses
  %i.xe = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i668) #22 ; 2 uses
  %i.xf = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i668, ptr noundef nonnull align 8 dereferenceable(32) %i.wi) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef 40) #26
  %i.xg = load i64, ptr %i.wy, align 8, !tbaa !68
  %i.xh = add i64 %i.xg, -1
  store i64 %i.xh, ptr %i.wy, align 8, !tbaa !68
  %.not.i3.i669 = icmp eq ptr %i.xe, %.sroa.3.0.i.i663
  br i1 %.not.i3.i669, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674, label %.lr.ph.i2.i667, !llvm.loop !4

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674: ; preds = %.lr.ph.i2.i667, %.critedge.i.i665, %bb.ck, %_ZN4Node10ref_faninsEv.exit440
  %i.xi = load ptr, ptr %i.z, align 8, !tbaa !53  ; 7 uses
  %.not2.i.i150 = icmp eq ptr %i.xi, null
  br i1 %.not2.i.i150, label %_ZN4NodeD2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 16 ; 7 uses
  %.041.i.i597 = load ptr, ptr %i.xk, align 8, !tbaa !75 ; 3 uses
  %.not42.i.i598 = icmp eq ptr %.041.i.i597, null
  br i1 %.not42.i.i598, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622, label %.lr.ph.i.i599

.lr.ph.i.i599:                                    ; preds = %bb.cl, %bb.co
  %.044.i.i600 = phi ptr [ %.0.i.i633, %bb.co ], [ %.041.i.i597, %bb.cl ] ; 7 uses
  %.02243.i.i601 = phi ptr [ %.123.i.i632, %bb.co ], [ %i.xl, %bb.cl ] ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.044.i.i600, i64 32
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !51 ; 2 uses
  %i.xo = icmp ult ptr %i.xn, %6
  br i1 %i.xo, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i599
  %i.xp = icmp ult ptr %6, %i.xn
  br i1 %i.xp, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xq = getelementptr inbounds nuw i8, ptr %.044.i.i600, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !76 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.044.i.i600, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i602 = icmp eq ptr %i.xr, null
  br i1 %.not10.i.i.i602, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611, label %.lr.ph.i.i.i603

.lr.ph.i.i.i603:                                  ; preds = %bb.cn, %.lr.ph.i.i.i603
  %.012.i.i.i604 = phi ptr [ %.1.i.i.i609, %.lr.ph.i.i.i603 ], [ %i.xr, %bb.cn ] ; 3 uses
  %.0811.i.i.i605 = phi ptr [ %.19.i.i.i606, %.lr.ph.i.i.i603 ], [ %.044.i.i600, %bb.cn ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.012.i.i.i604, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !51
  %i.xw = icmp ult ptr %i.xv, %6                  ; 2 uses
  %.19.i.i.i606 = select i1 %i.xw, ptr %.0811.i.i.i605, ptr %.012.i.i.i604 ; 2 uses
  %.1.in.v.i.i.i607 = select i1 %i.xw, i64 24, i64 16
  %.1.in.i.i.i608 = getelementptr inbounds nuw i8, ptr %.012.i.i.i604, i64 %.1.in.v.i.i.i607
  %.1.i.i.i609 = load ptr, ptr %.1.in.i.i.i608, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i610 = icmp eq ptr %.1.i.i.i609, null
  br i1 %.not.i.i.i610, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611, label %.lr.ph.i.i.i603, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611: ; preds = %.lr.ph.i.i.i603, %bb.cn
  %.08.lcssa.i.i.i612 = phi ptr [ %.044.i.i600, %bb.cn ], [ %.19.i.i.i606, %.lr.ph.i.i.i603 ] ; 2 uses
  %.not10.i24.i.i613 = icmp eq ptr %i.xt, null
  br i1 %.not10.i24.i.i613, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622, label %.lr.ph.i25.i.i614

.lr.ph.i25.i.i614:                                ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611, %.lr.ph.i25.i.i614
  %.012.i26.i.i615 = phi ptr [ %.1.i31.i.i620, %.lr.ph.i25.i.i614 ], [ %i.xt, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611 ] ; 3 uses
  %.0811.i27.i.i616 = phi ptr [ %.19.i28.i.i617, %.lr.ph.i25.i.i614 ], [ %.02243.i.i601, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611 ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i26.i.i615, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !51
  %i.xz = icmp ult ptr %6, %i.xy                  ; 2 uses
  %.19.i28.i.i617 = select i1 %i.xz, ptr %.012.i26.i.i615, ptr %.0811.i27.i.i616 ; 2 uses
  %.1.in.v.i29.i.i618 = select i1 %i.xz, i64 16, i64 24
  %.1.in.i30.i.i619 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i615, i64 %.1.in.v.i29.i.i618
  %.1.i31.i.i620 = load ptr, ptr %.1.in.i30.i.i619, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i621 = icmp eq ptr %.1.i31.i.i620, null
  br i1 %.not.i32.i.i621, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622, label %.lr.ph.i25.i.i614, !llvm.loop !2

bb.co:                                            ; preds = %bb.cm, %.lr.ph.i.i599
  %.sink.i.i631 = phi i64 [ 24, %.lr.ph.i.i599 ], [ 16, %bb.cm ]
  %.123.i.i632 = phi ptr [ %.02243.i.i601, %.lr.ph.i.i599 ], [ %.044.i.i600, %bb.cm ] ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.044.i.i600, i64 %.sink.i.i631
  %.0.i.i633 = load ptr, ptr %i.ya, align 8, !tbaa !75 ; 2 uses
  %.not.i.i634 = icmp eq ptr %.0.i.i633, null
  br i1 %.not.i.i634, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622, label %.lr.ph.i.i599, !llvm.loop !3

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622: ; preds = %bb.co, %.lr.ph.i25.i.i614, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611, %bb.cl
  %.sroa.037.0.i.i623 = phi ptr [ %.08.lcssa.i.i.i612, %.lr.ph.i25.i.i614 ], [ %.08.lcssa.i.i.i612, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611 ], [ %i.xl, %bb.cl ], [ %.123.i.i632, %bb.co ] ; 3 uses
  %.sroa.3.0.i.i624 = phi ptr [ %.19.i28.i.i617, %.lr.ph.i25.i.i614 ], [ %.02243.i.i601, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i611 ], [ %i.xl, %bb.cl ], [ %.123.i.i632, %bb.co ] ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xi, i64 48 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xi, i64 32 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !49
  %i.ye = icmp eq ptr %.sroa.037.0.i.i623, %i.yd
  %i.yf = icmp eq ptr %.sroa.3.0.i.i624, %i.xl
  %or.cond.i625 = select i1 %i.ye, i1 %i.yf, i1 false
  br i1 %or.cond.i625, label %bb.cp, label %.critedge.i.i626

bb.cp:                                            ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.xj, ptr noundef %.041.i.i597)
  store ptr null, ptr %i.xk, align 8, !tbaa !78
  store ptr %i.xl, ptr %i.yc, align 8, !tbaa !49
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  store ptr %i.xl, ptr %i.yg, align 8, !tbaa !79
  store i64 0, ptr %i.yb, align 8, !tbaa !68
  br label %_ZN4NodeD2Ev.exit

.critedge.i.i626:                                 ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i622
  %.not8.i.i627 = icmp eq ptr %.sroa.037.0.i.i623, %.sroa.3.0.i.i624
  br i1 %.not8.i.i627, label %_ZN4NodeD2Ev.exit, label %.lr.ph.i2.i628

.lr.ph.i2.i628:                                   ; preds = %.critedge.i.i626, %.lr.ph.i2.i628
  %.sroa.06.09.i.i629 = phi ptr [ %i.yh, %.lr.ph.i2.i628 ], [ %.sroa.037.0.i.i623, %.critedge.i.i626 ] ; 2 uses
  %i.yh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i629) #22 ; 2 uses
  %i.yi = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i629, ptr noundef nonnull align 8 dereferenceable(32) %i.xl) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef 40) #26
  %i.yj = load i64, ptr %i.yb, align 8, !tbaa !68
  %i.yk = add i64 %i.yj, -1
  store i64 %i.yk, ptr %i.yb, align 8, !tbaa !68
  %.not.i3.i630 = icmp eq ptr %i.yh, %.sroa.3.0.i.i624
  br i1 %.not.i3.i630, label %_ZN4NodeD2Ev.exit, label %.lr.ph.i2.i628, !llvm.loop !4

_ZN4NodeD2Ev.exit:                                ; preds = %.lr.ph.i2.i628, %.critedge.i.i626, %bb.cp, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit674
  %i.yl = load ptr, ptr %i.u, align 8, !tbaa !78
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.yl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dz

.lr.ph.i.i.i.i678:                                ; preds = %.preheader1028.preheader, %.lr.ph.i.i.i.i678
  %.02024.i.i.i.i679 = phi ptr [ %.020.i.i.i.i682, %.lr.ph.i.i.i.i678 ], [ %.02022.i.i.i.i676, %.preheader1028.preheader ] ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i679, i64 32
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !51 ; 2 uses
  %i.yo = icmp ult ptr %7, %i.yn                  ; 2 uses
  %.in.v.i.i.i.i680 = select i1 %i.yo, i64 16, i64 24
  %.in.i.i.i.i681 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i679, i64 %.in.v.i.i.i.i680
  %.020.i.i.i.i682 = load ptr, ptr %.in.i.i.i.i681, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i683 = icmp eq ptr %.020.i.i.i.i682, null
  br i1 %.not.i.i.i.i683, label %._crit_edge.i.i.i.i684, label %.lr.ph.i.i.i.i678, !llvm.loop !5

._crit_edge.i.i.i.i684:                           ; preds = %.lr.ph.i.i.i.i678
  br i1 %i.yo, label %._crit_edge.thread.i.i.i.i708, label %bb.cr

._crit_edge.thread.i.i.i.i708:                    ; preds = %._crit_edge.i.i.i.i684, %.preheader1028.preheader
  %.019.lcssa29.i.i.i.i709 = phi ptr [ %.02024.i.i.i.i679, %._crit_edge.i.i.i.i684 ], [ %18, %.preheader1028.preheader ] ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 48
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !49
  %i.yr = icmp eq ptr %.019.lcssa29.i.i.i.i709, %i.yq
  br i1 %i.yr, label %select.unfold.i.i.i705, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.thread.i.i.i.i708
  %i.ys = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i709) #22
  %.phi.trans.insert.i.i.i710 = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %.pre.i.i.i711 = load ptr, ptr %.phi.trans.insert.i.i.i710, align 8, !tbaa !51
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge.i.i.i.i684
  %i.yt = phi ptr [ %.pre.i.i.i711, %bb.cq ], [ %i.yn, %._crit_edge.i.i.i.i684 ]
  %.019.lcssa28.i.i.i.i685 = phi ptr [ %.019.lcssa29.i.i.i.i709, %bb.cq ], [ %.02024.i.i.i.i679, %._crit_edge.i.i.i.i684 ]
  %i.yu = icmp ult ptr %i.yt, %7
  br i1 %i.yu, label %select.unfold.i.i.i705, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread

select.unfold.i.i.i705:                           ; preds = %bb.cr, %._crit_edge.thread.i.i.i.i708
  %.sroa.4.0.i.ph.i.i.i706 = phi ptr [ %.019.lcssa29.i.i.i.i709, %._crit_edge.thread.i.i.i.i708 ], [ %.019.lcssa28.i.i.i.i685, %bb.cr ] ; 3 uses
  %i.yv = icmp eq ptr %.sroa.4.0.i.ph.i.i.i706, %18
  br i1 %i.yv, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686, label %bb.cs

bb.cs:                                            ; preds = %select.unfold.i.i.i705
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i706, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !51
  %i.yy = icmp ult ptr %7, %i.yx
  br label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686

_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686: ; preds = %select.unfold.i.i.i705, %bb.cs
  %i.yz = phi i1 [ %i.yy, %bb.cs ], [ true, %select.unfold.i.i.i705 ]
  %i.za = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 32
  store ptr %7, ptr %i.zb, align 8, !tbaa !51
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.yz, ptr noundef nonnull %i.za, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i706, ptr noundef nonnull align 8 dereferenceable(32) %18) #23
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0927.01118, i64 64 ; 2 uses
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !68
  %i.ze = add i64 %i.zd, 1
  store i64 %i.ze, ptr %i.zc, align 8, !tbaa !68
  %.pre1235 = load ptr, ptr %i.o, align 8, !tbaa !53 ; 2 uses
  %.not4.i687 = icmp eq ptr %.pre1235, null
  br i1 %.not4.i687, label %_ZN4Node10ref_faninsEv.exit712, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread

_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread: ; preds = %bb.cr, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686
  %i.zf = phi ptr [ %.pre1235, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686 ], [ %i.nt, %bb.cr ] ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 3 uses
  %.02022.i.i.i5.i688 = load ptr, ptr %i.zg, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i6.i689 = icmp eq ptr %.02022.i.i.i5.i688, null
  br i1 %.not23.i.i.i6.i689, label %._crit_edge.thread.i.i.i23.i701, label %.lr.ph.i.i.i7.i690

.lr.ph.i.i.i7.i690:                               ; preds = %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread, %.lr.ph.i.i.i7.i690
  %.02024.i.i.i8.i691 = phi ptr [ %.020.i.i.i11.i694, %.lr.ph.i.i.i7.i690 ], [ %.02022.i.i.i5.i688, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread ] ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.02024.i.i.i8.i691, i64 32
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !51 ; 2 uses
  %i.zk = icmp ult ptr %7, %i.zj                  ; 2 uses
  %.in.v.i.i.i9.i692 = select i1 %i.zk, i64 16, i64 24
  %.in.i.i.i10.i693 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i8.i691, i64 %.in.v.i.i.i9.i692
  %.020.i.i.i11.i694 = load ptr, ptr %.in.i.i.i10.i693, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i12.i695 = icmp eq ptr %.020.i.i.i11.i694, null
  br i1 %.not.i.i.i12.i695, label %._crit_edge.i.i.i13.i696, label %.lr.ph.i.i.i7.i690, !llvm.loop !5

._crit_edge.i.i.i13.i696:                         ; preds = %.lr.ph.i.i.i7.i690
  br i1 %i.zk, label %._crit_edge.thread.i.i.i23.i701, label %bb.cu

._crit_edge.thread.i.i.i23.i701:                  ; preds = %._crit_edge.i.i.i13.i696, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread
  %.019.lcssa29.i.i.i24.i702 = phi ptr [ %.02024.i.i.i8.i691, %._crit_edge.i.i.i13.i696 ], [ %i.zh, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686.thread ] ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !49
  %i.zn = icmp eq ptr %.019.lcssa29.i.i.i24.i702, %i.zm
  br i1 %i.zn, label %select.unfold.i.i20.i698, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.thread.i.i.i23.i701
  %i.zo = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i24.i702) #22
  %.phi.trans.insert.i.i25.i703 = getelementptr inbounds nuw i8, ptr %i.zo, i64 32
  %.pre.i.i26.i704 = load ptr, ptr %.phi.trans.insert.i.i25.i703, align 8, !tbaa !51
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge.i.i.i13.i696
  %i.zp = phi ptr [ %.pre.i.i26.i704, %bb.ct ], [ %i.zj, %._crit_edge.i.i.i13.i696 ]
  %.019.lcssa28.i.i.i14.i697 = phi ptr [ %.019.lcssa29.i.i.i24.i702, %bb.ct ], [ %.02024.i.i.i8.i691, %._crit_edge.i.i.i13.i696 ]
  %i.zq = icmp ult ptr %i.zp, %7
  br i1 %i.zq, label %select.unfold.i.i20.i698, label %_ZN4Node10ref_faninsEv.exit712

select.unfold.i.i20.i698:                         ; preds = %bb.cu, %._crit_edge.thread.i.i.i23.i701
  %.sroa.4.0.i.ph.i.i21.i699 = phi ptr [ %.019.lcssa29.i.i.i24.i702, %._crit_edge.thread.i.i.i23.i701 ], [ %.019.lcssa28.i.i.i14.i697, %bb.cu ] ; 3 uses
  %i.zr = icmp eq ptr %.sroa.4.0.i.ph.i.i21.i699, %i.zh
  br i1 %i.zr, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i700, label %bb.cv

bb.cv:                                            ; preds = %select.unfold.i.i20.i698
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i21.i699, i64 32
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !51
  %i.zu = icmp ult ptr %7, %i.zt
  br label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i700

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i700: ; preds = %bb.cv, %select.unfold.i.i20.i698
  %i.zv = phi i1 [ %i.zu, %bb.cv ], [ true, %select.unfold.i.i20.i698 ]
  %i.zw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  store ptr %7, ptr %i.zx, align 8, !tbaa !51
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.zv, ptr noundef nonnull %i.zw, ptr noundef nonnull %.sroa.4.0.i.ph.i.i21.i699, ptr noundef nonnull align 8 dereferenceable(32) %i.zh) #23
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zf, i64 48 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !68
  %i.aaa = add i64 %i.zz, 1
  store i64 %i.aaa, ptr %i.zy, align 8, !tbaa !68
  br label %_ZN4Node10ref_faninsEv.exit712

_ZN4Node10ref_faninsEv.exit712:                   ; preds = %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertEOS1_.exit.i686, %bb.cu, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i22.i700
  %i.aab = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25 ; 13 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16 ; 9 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 20
  store i32 2147483647, ptr %i.aad, align 4, !tbaa !50
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 32 ; 3 uses
  store i32 0, ptr %i.aae, align 8, !tbaa !84
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 40
  store ptr null, ptr %i.aaf, align 8, !tbaa !78
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aab, i64 48
  store ptr %i.aae, ptr %i.aag, align 8, !tbaa !49
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aab, i64 56
  store ptr %i.aae, ptr %i.aah, align 8, !tbaa !79
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 64
  store i64 0, ptr %i.aai, align 8, !tbaa !68
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aab, i64 80
  store i8 0, ptr %i.aaj, align 8, !tbaa !72
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aab, i64 88 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aab, i64 96 ; 2 uses
  %i.aam = load ptr, ptr %i.n, align 8, !tbaa !52 ; 8 uses
  store ptr %i.aam, ptr %i.aak, align 8, !tbaa !52
  %i.aan = load ptr, ptr %i.o, align 8, !tbaa !53 ; 2 uses
  store ptr %i.aan, ptr %i.aal, align 8, !tbaa !53
  %i.aao = load i32, ptr %7, align 8, !tbaa !67
  store i32 %i.aao, ptr %i.aac, align 8, !tbaa !67
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aab, i64 72
  %i.aaq = load <2 x i32>, ptr %i.p, align 8, !tbaa !48
  store <2 x i32> %i.aaq, ptr %i.aap, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i.i.i, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %_ZN4Node10ref_faninsEv.exit712
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aam, i64 24 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 7 uses
  %.041.i.i869 = load ptr, ptr %i.aas, align 8, !tbaa !75 ; 3 uses
  %.not42.i.i870 = icmp eq ptr %.041.i.i869, null
  br i1 %.not42.i.i870, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i894, label %.lr.ph.i.i871

.lr.ph.i.i871:                                    ; preds = %bb.cw, %bb.cz
  %.044.i.i872 = phi ptr [ %.0.i.i905, %bb.cz ], [ %.041.i.i869, %bb.cw ] ; 7 uses
  %.02243.i.i873 = phi ptr [ %.123.i.i904, %bb.cz ], [ %i.aat, %bb.cw ] ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.044.i.i872, i64 32
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !51 ; 2 uses
  %i.aaw = icmp ult ptr %i.aav, %7
  br i1 %i.aaw, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i871
  %i.aax = icmp ult ptr %7, %i.aav
  br i1 %i.aax, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aay = getelementptr inbounds nuw i8, ptr %.044.i.i872, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !76 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.044.i.i872, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i874 = icmp eq ptr %i.aaz, null
  br i1 %.not10.i.i.i874, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883, label %.lr.ph.i.i.i875

.lr.ph.i.i.i875:                                  ; preds = %bb.cy, %.lr.ph.i.i.i875
  %.012.i.i.i876 = phi ptr [ %.1.i.i.i881, %.lr.ph.i.i.i875 ], [ %i.aaz, %bb.cy ] ; 3 uses
  %.0811.i.i.i877 = phi ptr [ %.19.i.i.i878, %.lr.ph.i.i.i875 ], [ %.044.i.i872, %bb.cy ]
  %i.abc = getelementptr inbounds nuw i8, ptr %.012.i.i.i876, i64 32
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !51
  %i.abe = icmp ult ptr %i.abd, %7                ; 2 uses
  %.19.i.i.i878 = select i1 %i.abe, ptr %.0811.i.i.i877, ptr %.012.i.i.i876 ; 2 uses
  %.1.in.v.i.i.i879 = select i1 %i.abe, i64 24, i64 16
  %.1.in.i.i.i880 = getelementptr inbounds nuw i8, ptr %.012.i.i.i876, i64 %.1.in.v.i.i.i879
  %.1.i.i.i881 = load ptr, ptr %.1.in.i.i.i880, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i882 = icmp eq ptr %.1.i.i.i881, null
  br i1 %.not.i.i.i882, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883, label %.lr.ph.i.i.i875, !llvm.loop !1

_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883: ; preds = %.lr.ph.i.i.i875, %bb.cy
  %.08.lcssa.i.i.i884 = phi ptr [ %.044.i.i872, %bb.cy ], [ %.19.i.i.i878, %.lr.ph.i.i.i875 ] ; 2 uses
  %.not10.i24.i.i885 = icmp eq ptr %i.abb, null
  br i1 %.not10.i24.i.i885, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i894, label %.lr.ph.i25.i.i886

.lr.ph.i25.i.i886:                                ; preds = %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883, %.lr.ph.i25.i.i886
  %.012.i26.i.i887 = phi ptr [ %.1.i31.i.i892, %.lr.ph.i25.i.i886 ], [ %i.abb, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883 ] ; 3 uses
  %.0811.i27.i.i888 = phi ptr [ %.19.i28.i.i889, %.lr.ph.i25.i.i886 ], [ %.02243.i.i873, %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i883 ]
  %i.abf = getelementptr inbounds nuw i8, ptr %.012.i26.i.i887, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !51
  %i.abh = icmp ult ptr %7, %i.abg                ; 2 uses
  %.19.i28.i.i889 = select i1 %i.abh, ptr %.012.i26.i.i887, ptr %.0811.i27.i.i888 ; 2 uses
  %.1.in.v.i29.i.i890 = select i1 %i.abh, i64 16, i64 24
  %.1.in.i30.i.i891 = getelementptr inbounds nuw i8, ptr %.012.i26.i.i887, i64 %.1.in.v.i29.i.i890
  %.1.i31.i.i892 = load ptr, ptr %.1.in.i30.i.i891, align 8, !tbaa !75 ; 2 uses
  %.not.i32.i.i893 = icmp eq ptr %.1.i31.i.i892, null
  br i1 %.not.i32.i.i893, label %_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i894, label %.lr.ph.i25.i.i886, !llvm.loop !2

bb.cz:                                            ; preds = %bb.cx, %.lr.ph.i.i871
  %.sink.i.i903 = phi i64 [ 24, %.lr.ph.i.i871 ], [ 16, %bb.cx ]
  %.123.i.i904 = phi ptr [ %.02243.i.i873, %.lr.ph.i.i871 ], [ %.044.i.i872, %bb.cx ] ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.044.i.i872, i64 %.sink.i.i903
end_hunk_1
