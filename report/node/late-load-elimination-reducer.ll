Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/late-load-elimination-reducer?download=true
inline.NumInlined: 4977
inline.NumDeleted: 2626
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer3RunEv:bb.a
  %i.eq = icmp eq i64 %i.ep, -1
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134, i64 96
  %i.es = load i64, ptr %i.er, align 8
  %i.et = select i1 %i.eq, i64 %i.es, i64 %i.ep
  %i.eu = icmp ult i64 %i.et, %i.eo
  br i1 %i.eu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0112.0134) #23
  %i.ew = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0112.0134, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) #22 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = icmp eq i64 %i.ey, -1
  br i1 %i.ez, label %bb.r, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit

bb.r:                                             ; preds = %bb.q
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, ptr noundef %i.fc)
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit: ; preds = %bb.q, %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 104) #24
  %i.fd = load i64, ptr %i.do, align 8
  %i.fe = add i64 %i.fd, -1
  store i64 %i.fe, ptr %i.do, align 8
  br label %bb.aa, !llvm.loop !34

bb.s:                                             ; preds = %bb.p
  %i.ff = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0112.0134) #23
  br label %bb.aa, !llvm.loop !34

bb.t:                                             ; preds = %bb.n
  %i.fg = add i64 %.sroa.4110.0.extract.shift, %i.ee
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i8, ptr %i.fh, align 4
  %i.fj = icmp eq i8 %i.fi, 77
  br i1 %i.fj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0112.0134) #23
  %i.fl = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0112.0134, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) #22 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = icmp eq i64 %i.fn, -1
  br i1 %i.fo, label %bb.v, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit75

bb.v:                                             ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef %i.fr)
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit75

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit75: ; preds = %bb.u, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 104) #24
  %i.fs = load i64, ptr %i.do, align 8
  %i.ft = add i64 %i.fs, -1
  store i64 %i.ft, ptr %i.do, align 8
  br label %bb.aa, !llvm.loop !34

bb.w:                                             ; preds = %bb.t
  %i.fu = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %bb.w, %.lr.ph.i.i.i76
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i76 ], [ %i.fu, %bb.w ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i76 ], [ %i.dl, %bb.w ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = icmp ult i32 %i.fw, %.sroa.4110.0.extract.trunc ; 2 uses
  %.19.i.i.i = select i1 %i.fx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE14_M_lower_boundEPSt13_Rb_tree_nodeISM_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i76, !llvm.loop !0

_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE14_M_lower_boundEPSt13_Rb_tree_nodeISM_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i76
  %i.fy = icmp eq ptr %.19.i.i.i, %i.dl
  br i1 %i.fy, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE14_M_lower_boundEPSt13_Rb_tree_nodeISM_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.fz, align 4
  %i.ga = icmp ugt i32 %.sroa.0.0.copyload.i.i.i, %.sroa.4110.0.extract.trunc
  br i1 %i.ga, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread, label %bb.y

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE14_M_lower_boundEPSt13_Rb_tree_nodeISM_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.w, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit
  %i.gb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0112.0134) #23
  %i.gc = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0112.0134, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) #22 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = icmp eq i64 %i.ge, -1
  br i1 %i.gf, label %bb.x, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit78

bb.x:                                             ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, ptr noundef %i.gi)
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit78

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit78: ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit.thread, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 104) #24
  %i.gj = load i64, ptr %i.do, align 8
  %i.gk = add i64 %i.gj, -1
  store i64 %i.gk, ptr %i.do, align 8
  br label %bb.aa, !llvm.loop !34

bb.y:                                             ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE4findERSA_.exit
  %i.gl = zext i32 %.sroa.046.0.copyload to i64
  %i.gm = add i64 %i.ee, %i.gl
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = lshr i64 %.sroa.02.0.copyload.i, 36
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = load i8, ptr %i.go, align 1
  %i.gt = call i8 @llvm.uadd.sat.i8(i8 %i.gr, i8 %i.gs)
  store i8 %i.gt, ptr %i.gq, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.gv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1                   ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134, i64 56 ; 2 uses
  %.sroa.3.0.i = select i1 %i.gw, ptr %i.gy, ptr null
  %.sroa.01.0.i = select i1 %i.gw, ptr null, ptr %i.gz
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0112.0134, i64 64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gv
  %.sroa.3.0.i79 = select i1 %i.gw, ptr %i.ha, ptr null
  %.sroa.01.0.i80 = select i1 %i.gw, ptr null, ptr %i.hb
  call void @_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE6insertINSK_8iteratorEEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(64) %i.gu, ptr %.sroa.01.0.i, ptr %.sroa.3.0.i, ptr %.sroa.01.0.i80, ptr %.sroa.3.0.i79)
  %i.hc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0112.0134) #23
  %i.hd = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0112.0134, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) #22 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = icmp eq i64 %i.hf, -1
  br i1 %i.hg, label %bb.z, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit84

bb.z:                                             ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hh, ptr noundef %i.hj)
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit84

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit84: ; preds = %bb.y, %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef 104) #24
  %i.hk = load i64, ptr %i.do, align 8
  %i.hl = add i64 %i.hk, -1
  store i64 %i.hl, ptr %i.do, align 8
  br label %bb.aa, !llvm.loop !34

bb.aa:                                            ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit75, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit84, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit78, %bb.s, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit
  %.sroa.0112.3 = phi ptr [ %i.ff, %bb.s ], [ %i.ev, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit ], [ %i.fk, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit75 ], [ %i.gb, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit78 ], [ %i.hc, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISL_E.exit84 ] ; 2 uses
  %i.hm = icmp eq ptr %.sroa.0112.3, %i.dl
  br i1 %i.hm, label %._crit_edge136.loopexit, label %bb.n

._crit_edge141:                                   ; preds = %.loopexit, %._crit_edge136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = shl i64 %i.hq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ho, i8 0, i64 %i.hr, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.ab:                                            ; preds = %.lr.ph140, %.loopexit
  %.sroa.0101.0138 = phi ptr [ %i.dq, %.lr.ph140 ], [ %i.jn, %.loopexit ] ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 32 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 40
  %i.hu = load i64, ptr %i.ht, align 8
  %.fr142 = freeze i64 %i.hu                      ; 3 uses
  %i.hv = icmp eq i64 %.fr142, -1                 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 96
  %i.hx = load i64, ptr %i.hw, align 8
  %.v.i = select i1 %i.hv, i64 %i.hx, i64 %.fr142 ; 2 uses
  %i.hy = icmp eq i64 %.v.i, 0
  br i1 %i.hy, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.011.0.copyload = load i32, ptr %i.hs, align 8
  %i.hz = lshr i32 %.sroa.011.0.copyload, 4
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1             ; 2 uses
  %i.id = icmp ne i8 %i.ic, -1
  %i.ie = zext i8 %i.ic to i64
  %i.if = icmp eq i64 %.v.i, %i.ie
  %or.cond = and i1 %i.id, %i.if
  br i1 %or.cond, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 56 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.fr142
  %.sroa.01.0.i90 = select i1 %i.hv, ptr null, ptr %i.ii
  br i1 %i.hv, label %.split137.preheader, label %.split137.us.outer

.split137.preheader:                              ; preds = %bb.ad
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0101.0138, i64 80
  %10 = load ptr, ptr %9, align 8
  br label %.split137.outer

.split137.outer:                                  ; preds = %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratoreqERKSL_.exit.thread, %.split137.preheader
  %.sroa.7.0.ph = phi ptr [ %i.jm, %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratoreqERKSL_.exit.thread ], [ %10, %.split137.preheader ] ; 3 uses
  %i.ij = icmp eq ptr %.sroa.7.0.ph, %i.ih
  br i1 %i.ij, label %.loopexit, label %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratoreqERKSL_.exit.thread

.split137.us:                                     ; preds = %.split137.us.outer, %bb.ae
  %.sroa.095.0.us = phi ptr [ %i.ix, %bb.ae ], [ %.sroa.095.0.us.ph, %.split137.us.outer ] ; 4 uses
  %.not.i.us = icmp eq ptr %.sroa.095.0.us, null  ; 2 uses
  br i1 %.not.i.us, label %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratordeEv.exit.us, label %.split.us

.split.us:                                        ; preds = %.split137.us
  %i.ik = icmp eq ptr %.sroa.095.0.us, %.sroa.01.0.i90
  br i1 %i.ik, label %.loopexit, label %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratordeEv.exit.us

_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratordeEv.exit.us: ; preds = %.split137.us, %.split.us
  %i.il = phi ptr [ %.sroa.095.0.us, %.split.us ], [ %i.iz, %.split137.us ]
  %i.im = load i64, ptr %i.il, align 4            ; 2 uses
  %.sroa.05.0.copyload.us = load i32, ptr %i.hs, align 8
  %.sroa.2.0.insert.ext.i.us = zext i32 %.sroa.05.0.copyload.us to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, 4
  %i.in = lshr i64 %i.im, 4
  %i.io = and i64 %i.in, 268435455
  %i.ip = load ptr, ptr %i.ds, align 8
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.io
  store i64 %.sroa.0.0.insert.insert.i.us, ptr %i.iq, align 4
  %sum.shift.us = lshr i64 %i.im, 36
  %i.ir = load ptr, ptr %i.ds, align 8
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %sum.shift.us
  store i64 -4294967293, ptr %i.is, align 4
  %.sroa.0.0.copyload.us = load i32, ptr %i.hs, align 8
  %i.it = lshr i32 %.sroa.0.0.copyload.us, 4
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = load ptr, ptr %i.ds, align 8
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu
  store i64 -4294967294, ptr %i.iw, align 4
  br i1 %.not.i.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratordeEv.exit.us
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.095.0.us, i64 8
  br label %.split137.us

bb.af:                                            ; preds = %_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratordeEv.exit.us
  %i.iy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.us.ph) #23
  br label %.split137.us.outer

.split137.us.outer:                               ; preds = %bb.ad, %bb.af
  %.sroa.7.0.us.ph = phi ptr [ %i.iy, %bb.af ], [ null, %bb.ad ] ; 2 uses
  %.sroa.095.0.us.ph = phi ptr [ null, %bb.af ], [ %i.ig, %bb.ad ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us.ph, i64 32
  br label %.split137.us

_ZNK2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE14const_iteratoreqERKSL_.exit.thread: ; preds = %.split137.outer
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.7.0.ph, i64 32
  %i.jb = load i64, ptr %i.ja, align 4            ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %i.hs, align 8
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.05.0.copyload to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 4
  %i.jc = lshr i64 %i.jb, 4
  %i.jd = and i64 %i.jc, 268435455
  %i.je = load ptr, ptr %i.ds, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jd
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.jf, align 4
  %sum.shift = lshr i64 %i.jb, 36
  %i.jg = load ptr, ptr %i.ds, align 8
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %sum.shift
  store i64 -4294967293, ptr %i.jh, align 4
  %.sroa.0.0.copyload = load i32, ptr %i.hs, align 8
  %i.ji = lshr i32 %.sroa.0.0.copyload, 4
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = load ptr, ptr %i.ds, align 8
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jj
  store i64 -4294967294, ptr %i.jl, align 4
  %i.jm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.ph) #23
  br label %.split137.outer

.loopexit:                                        ; preds = %.split.us, %.split137.outer, %bb.ac, %bb.ab
  %i.jn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0101.0138) #23 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.dl
  br i1 %i.jo, label %._crit_edge141, label %bb.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, i8 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.i.i.i = icmp eq i64 %i.l, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw nsw i64 %i.l, 3                  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.p) #22
  %.pre.i.i.i.i.i = load i64, ptr %i.s, align 8
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.z, ptr %i.o, align 8
  store ptr %i.z, ptr %i.n, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i ] ; 2 uses
  store ptr null, ptr %.09.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = icmp ult ptr %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, !llvm.loop !36

_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #22 ; 5 uses
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit
  %i.ao = icmp eq i64 %i.al, 1
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.ag, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.aq = icmp ult i64 %i.al, 2305843009213693951
  br i1 %i.aq, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ar = shl nuw i64 %i.al, 3                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = icmp ugt i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !23

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 noundef %i.ar) #22
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = add i64 %i.ay, %i.ar
  store i64 %i.ba, ptr %i.au, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.ar, i1 false)
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.az, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %i.af, align 8
  store i64 %i.al, ptr %i.ah, align 8
  br label %_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  tail call void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #22
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler10turboshaft16AnalyzerIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessBlockERKNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !19, !noundef !21
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer37StoreLoopSnapshotInForwardPredecessorERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.p, align 4, !noalias !39 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 8, !noalias !39 ; 2 uses
  %.not63 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.r = load ptr, ptr %i.o, align 8, !nonnull !21, !align !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAtomicRMWENS2_7OpIndexERKNS2_11AtomicRMWOpE.exit, %bb.f
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11FinishBlockEPKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef nonnull %1)
end_hunk_0
